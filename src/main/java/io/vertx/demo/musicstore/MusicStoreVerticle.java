package io.vertx.demo.musicstore;

import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;
import io.vertx.rxjava.core.AbstractVerticle;
import io.vertx.rxjava.ext.jdbc.JDBCClient;
import io.vertx.rxjava.ext.web.Router;
import io.vertx.rxjava.ext.web.handler.StaticHandler;
import io.vertx.rxjava.ext.web.templ.FreeMarkerTemplateEngine;
import org.flywaydb.core.Flyway;
import rx.Single;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author Thomas Segismont
 */
public class MusicStoreVerticle extends AbstractVerticle {

  private DatasourceConfig datasourceConfig;
  private JDBCClient dbClient;
  private FreeMarkerTemplateEngine templateEngine;

  @Override
  public void start(Future<Void> startFuture) throws Exception {
    datasourceConfig = new DatasourceConfig(config().getJsonObject("datasource", new JsonObject()));
    dbClient = JDBCClient.createNonShared(vertx, datasourceConfig.toJson());
    templateEngine = FreeMarkerTemplateEngine.create();
    updateDB()
      .flatMap(v -> loadQueries())
      .flatMap(this::setupWebServer)
      .subscribe(startFuture::complete, startFuture::fail);
  }

  private Single<Properties> loadQueries() {
    return vertx.rxExecuteBlocking(fut -> {
      Properties sqlQueries = new Properties();
      try (InputStream is = getClass().getClassLoader().getResourceAsStream("db/queries.xml")) {
        sqlQueries.loadFromXML(is);
        fut.complete(sqlQueries);
      } catch (IOException e) {
        fut.fail(e);
      }
    });
  }

  private Single<Void> updateDB() {
    return vertx.rxExecuteBlocking(future -> {
      Flyway flyway = new Flyway();
      flyway.setDataSource(datasourceConfig.getUrl(), datasourceConfig.getUser(), datasourceConfig.getPassword());
      flyway.migrate();
      future.complete();
    });
  }

  private Single<Void> setupWebServer(Properties sqlQueries) {
    StaticHandler staticHandler = StaticHandler.create();

    Router router = Router.router(vertx);

    IndexHandler indexHandler = new IndexHandler(dbClient, sqlQueries, templateEngine);
    router.get("/").handler(indexHandler);
    router.get("/index.html").handler(indexHandler);

    router.get("/genres/:genreId").handler(new GenreHandler(dbClient, sqlQueries, templateEngine));
    router.get("/albums/:albumId").handler(new AlbumHandler(dbClient, sqlQueries, templateEngine));

    router.route().handler(staticHandler);

    return vertx.createHttpServer().requestHandler(router::accept).rxListen(8080).map(server -> null);
  }
}
