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

package io.vertx.demo.musicstore.handler;

import io.vertx.core.Handler;
import io.vertx.rxjava3.ext.auth.VertxContextPRNG;
import io.vertx.rxjava3.ext.auth.sqlclient.SqlAuthentication;
import io.vertx.rxjava3.ext.web.RoutingContext;
import io.vertx.rxjava3.pgclient.PgPool;
import io.vertx.rxjava3.sqlclient.Tuple;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Properties;

import static java.net.HttpURLConnection.HTTP_BAD_REQUEST;
import static java.net.HttpURLConnection.HTTP_MOVED_TEMP;

/**
 * @author Thomas Segismont
 */
public class AddUserHandler implements Handler<RoutingContext> {

  private final PgPool dbClient;
  private final String insertUser;
  private final SqlAuthentication authProvider;

  public AddUserHandler(PgPool dbClient, Properties sqlQueries, SqlAuthentication authProvider) {
    this.dbClient = dbClient;
    insertUser = sqlQueries.getProperty("insertUser");
    this.authProvider = authProvider;
  }

  @Override
  public void handle(RoutingContext rc) {
    var formAttributes = rc.request().formAttributes();

    var username = formAttributes.get("username");
    var password = formAttributes.get("password");
    var passwordConfirm = formAttributes.get("password-confirm");

    if (username.isBlank() || password.isBlank() || passwordConfirm.isBlank()) {
      rc.response().setStatusCode(HTTP_BAD_REQUEST).end("Missing param");
      return;
    }

    if (!passwordConfirm.equals(password)) {
      rc.response().setStatusCode(HTTP_BAD_REQUEST).end("Password and confirmation differ");
      return;
    }

    var hash = authProvider.hash("pbkdf2", VertxContextPRNG.current().nextString(32), password);

    dbClient.preparedQuery(insertUser).rxExecute(Tuple.of(username, hash))
      .subscribe(updateResult -> {
        var location = new StringBuilder("/login");
        var session = rc.session();
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
