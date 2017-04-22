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
import io.vertx.ext.auth.jdbc.impl.JDBCAuthImpl;
import io.vertx.rxjava.core.MultiMap;
import io.vertx.rxjava.ext.auth.jdbc.JDBCAuth;
import io.vertx.rxjava.ext.jdbc.JDBCClient;
import io.vertx.rxjava.ext.web.RoutingContext;
import io.vertx.rxjava.ext.web.Session;

import java.net.URI;
import java.net.URISyntaxException;
import java.security.SecureRandom;
import java.util.Properties;
import java.util.Random;

import static java.net.HttpURLConnection.*;

/**
 * @author Thomas Segismont
 */
public class AddUserHandler implements Handler<RoutingContext> {

  private final JDBCClient dbClient;
  private final String insertUser;

  public AddUserHandler(JDBCClient dbClient, Properties sqlQueries) {
    this.dbClient = dbClient;
    insertUser = sqlQueries.getProperty("insertUser");
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

      //updated for stack 3.4.1
      JDBCAuth jdbcAuth = JDBCAuth.create(rc.vertx(),dbClient);

      String password_salt = jdbcAuth.generateSalt();
      String hashedPassword = jdbcAuth.computeHash(password, password_salt);

      JsonArray insertParams = new JsonArray()
        .add(username).add(hashedPassword).add(password_salt);

      fut.complete(insertParams);
    }).flatMap(insertParams -> {
      return dbClient.rxGetConnection().flatMap(sqlConnection -> {
        rc.addBodyEndHandler(v -> sqlConnection.close());

        return sqlConnection.rxUpdateWithParams(insertUser, insertParams);
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
