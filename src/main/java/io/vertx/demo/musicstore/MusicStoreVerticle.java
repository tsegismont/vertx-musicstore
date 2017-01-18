package io.vertx.demo.musicstore;

import io.vertx.rxjava.core.AbstractVerticle;
import io.vertx.rxjava.ext.web.Router;
import io.vertx.rxjava.ext.web.handler.StaticHandler;

/**
 * @author Thomas Segismont
 */
public class MusicStoreVerticle extends AbstractVerticle {

  @Override
  public void start() throws Exception {

    StaticHandler staticHandler = StaticHandler.create();

    Router router = Router.router(vertx);
    router.route().handler(staticHandler);

    vertx.createHttpServer().requestHandler(router::accept).listen(8080);
  }
}
