package io.vertx.demo.musicstore;

import io.vertx.core.Handler;
import io.vertx.rxjava.ext.auth.jdbc.JDBCAuth;
import io.vertx.rxjava.ext.jdbc.JDBCClient;
import io.vertx.rxjava.ext.web.RoutingContext;

import static java.net.HttpURLConnection.*;

/**
 * @author Thomas Segismont
 */
public class AddAlbumCommentHandler implements Handler<RoutingContext> {

  private final JDBCClient dbClient;
  private final JDBCAuth authProvider;

  public AddAlbumCommentHandler(JDBCClient dbClient, JDBCAuth authProvider) {
    this.dbClient = dbClient;
    this.authProvider = authProvider;
  }

  @Override
  public void handle(RoutingContext rc) {
    if (rc.user() == null) {
      rc.response().setStatusCode(HTTP_UNAUTHORIZED).end();
      return;
    }

    String body = rc.getBodyAsString();
    if (body == null || body.isEmpty()) {
      rc.response().setStatusCode(HTTP_BAD_REQUEST).end();
      return;
    }

    // Temporary
    // We'll store the comment in a NoSQL datastore later...
    rc.response().end();
  }
}
