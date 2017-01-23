package io.vertx.demo.musicstore;

import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.ext.auth.jdbc.impl.JDBCAuthImpl;
import io.vertx.rxjava.core.MultiMap;
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

      String password_salt = JDBCAuthImpl.bytesToHex(salt);
      String hashedPassword = JDBCAuthImpl.computeHash(password, password_salt, "SHA-512");

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
