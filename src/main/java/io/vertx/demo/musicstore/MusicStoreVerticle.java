package io.vertx.demo.musicstore;

import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;
import io.vertx.rxjava.core.AbstractVerticle;
import io.vertx.rxjava.ext.web.Router;
import io.vertx.rxjava.ext.web.handler.StaticHandler;
import org.flywaydb.core.Flyway;
import rx.Single;

/**
 * @author Thomas Segismont
 */
public class MusicStoreVerticle extends AbstractVerticle {

  @Override
  public void start(Future<Void> startFuture) throws Exception {
    updateDB()
      .flatMap(v -> setupWebServer())
      .subscribe(startFuture::complete, startFuture::fail);
  }

  private Single<Void> updateDB() {
    JsonObject ds = config().getJsonObject("datasource", new JsonObject());
    String url = ds.getString("url", "jdbc:postgresql://localhost:5432/musicdb");
    String user = ds.getString("user", "music");
    String password = ds.getString("password", "music");

    return vertx.rxExecuteBlocking(future -> {
      Flyway flyway = new Flyway();
      flyway.setDataSource(url, user, password);
      flyway.migrate();
      future.complete();
    });
  }

  private Single<Void> setupWebServer() {
    StaticHandler staticHandler = StaticHandler.create();

    Router router = Router.router(vertx);
    router.route().handler(staticHandler);

    return vertx.createHttpServer().requestHandler(router::accept).rxListen(8080).map(server -> null);
  }
}
