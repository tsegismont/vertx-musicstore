/*
 * Copyright 2017 Red Hat, Inc.
 *
 * Red Hat licenses this file to you under the Apache License, version 2.0
 * (the "License"); you may not use this file except in compliance with the
 * License.  You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

package io.vertx.demo.musicstore;

import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.reactivex.core.MultiMap;
import io.vertx.reactivex.ext.auth.jdbc.JDBCAuth;
import io.vertx.reactivex.ext.jdbc.JDBCClient;
import io.vertx.reactivex.ext.web.RoutingContext;
import io.vertx.reactivex.ext.web.Session;

import java.net.URI;
import java.net.URISyntaxException;
import java.security.SecureRandom;
import java.util.Properties;
import java.util.Random;

import static java.net.HttpURLConnection.HTTP_BAD_REQUEST;
import static java.net.HttpURLConnection.HTTP_MOVED_TEMP;

/**
 * @author Thomas Segismont
 */
public class AddUserHandler implements Handler<RoutingContext> {

  private final JDBCClient dbClient;
  private final String insertUser;
  private final JDBCAuth authProvider;

  public AddUserHandler(JDBCClient dbClient, Properties sqlQueries, JDBCAuth authProvider) {
    this.dbClient = dbClient;
    insertUser = sqlQueries.getProperty("insertUser");
    this.authProvider = authProvider;
  }

  @Override
  public void handle(RoutingContext rc) {
    MultiMap formAttributes = rc.request().formAttributes();

    String username = formAttributes.get("username");
    String password = formAttributes.get("password");
    String passwordConfirm = formAttributes.get("password-confirm");

    if (username == null || username.isEmpty()
      || password == null || password.isEmpty()
      || passwordConfirm == null || passwordConfirm.isEmpty()) {
      rc.response().setStatusCode(HTTP_BAD_REQUEST).end("Missing param");
      return;
    }

    if (!passwordConfirm.equals(password)) {
      rc.response().setStatusCode(HTTP_BAD_REQUEST).end("Password and confirmation differ");
      return;
    }

    rc.vertx().<JsonArray>rxExecuteBlocking(fut -> {

      Random r = new SecureRandom();
      byte[] salt = new byte[32];
      r.nextBytes(salt);

      String password_salt = authProvider.generateSalt();
      String hashedPassword = authProvider.computeHash(password, password_salt);

      JsonArray insertParams = new JsonArray()
        .add(username).add(hashedPassword).add(password_salt);

      fut.complete(insertParams);
    }).toSingle().flatMap(insertParams -> {
      return dbClient.rxGetConnection().flatMap(sqlConnection -> {
        return sqlConnection.rxUpdateWithParams(insertUser, insertParams).doAfterTerminate(sqlConnection::close);
      });
    }).subscribe(updateResult -> {
      StringBuilder location = new StringBuilder("/login");
      Session session = rc.session();
      String return_url = session == null ? null : session.get("return_url");
      if (return_url != null) {
        try {
          location.append("?return_url=").append(new URI(return_url).toASCIIString());
        } catch (URISyntaxException ignored) {
        }
      }
      rc.response().setStatusCode(HTTP_MOVED_TEMP).putHeader("Location", location.toString()).end();
    }, rc::fail);
  }
}
