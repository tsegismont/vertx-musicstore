package io.vertx.demo.musicstore;

import io.vertx.core.Handler;
import io.vertx.rxjava.ext.web.RoutingContext;
import io.vertx.rxjava.ext.web.Session;

/**
 * @author Thomas Segismont
 */
public class ReturnUrlHandler implements Handler<RoutingContext> {

  @Override
  public void handle(RoutingContext rc) {
    String return_url = rc.request().getParam("return_url");
    Session session = rc.session();
    if (return_url != null && session != null) {
      session.put("return_url", return_url);
    }
    rc.next();
  }
}
