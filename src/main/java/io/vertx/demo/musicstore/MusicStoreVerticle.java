package io.vertx.demo.musicstore;

import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;
import io.vertx.rxjava.core.AbstractVerticle;
import io.vertx.rxjava.ext.auth.jdbc.JDBCAuth;
import io.vertx.rxjava.ext.jdbc.JDBCClient;
import io.vertx.rxjava.ext.web.Router;
import io.vertx.rxjava.ext.web.client.WebClient;
import io.vertx.rxjava.ext.web.handler.BodyHandler;
import io.vertx.rxjava.ext.web.handler.CookieHandler;
import io.vertx.rxjava.ext.web.handler.FormLoginHandler;
import io.vertx.rxjava.ext.web.handler.SessionHandler;
import io.vertx.rxjava.ext.web.handler.StaticHandler;
import io.vertx.rxjava.ext.web.handler.UserSessionHandler;
import io.vertx.rxjava.ext.web.sstore.LocalSessionStore;
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
  private JDBCAuth authProvider;
  private FreeMarkerTemplateEngine templateEngine;

  @Override
  public void start(Future<Void> startFuture) throws Exception {
    datasourceConfig = new DatasourceConfig(config().getJsonObject("datasource", new JsonObject()));
    dbClient = JDBCClient.createNonShared(vertx, datasourceConfig.toJson());
    authProvider = JDBCAuth.create(dbClient);
    templateEngine = FreeMarkerTemplateEngine.create();
    updateDB()
      .flatMap(v -> loadQueries())
      .flatMap(sqlQueries -> {
        authProvider.setAuthenticationQuery(sqlQueries.getProperty("authenticateUser"))
          .setRolesQuery(sqlQueries.getProperty("findRolesByUser"))
          .setPermissionsQuery(sqlQueries.getProperty("findPermissionsByUser"));
        return setupWebServer(sqlQueries);
      }).subscribe(startFuture::complete, startFuture::fail);
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
    Router router = Router.router(vertx);

    router.route().handler(BodyHandler.create());

    router.route().handler(CookieHandler.create());
    router.route().handler(SessionHandler.create(LocalSessionStore.create(vertx)));
    router.route().handler(UserSessionHandler.create(authProvider));

    IndexHandler indexHandler = new IndexHandler(dbClient, sqlQueries, templateEngine);
    router.get("/").handler(indexHandler);
    router.get("/index.html").handler(indexHandler);

    router.get("/genres/:genreId").handler(new GenreHandler(dbClient, sqlQueries, templateEngine));
    router.get("/albums/:albumId").handler(new AlbumHandler(dbClient, sqlQueries, templateEngine));
    router.get("/artists/:artistId").handler(new ArtistHandler(dbClient, sqlQueries, templateEngine));
    router.get("/covers/:albumId").handler(new CoverHandler(dbClient, sqlQueries, WebClient.create(vertx)));

    router.post("/api/albums/:albumId/comments").consumes("text/plain").handler(new AddAlbumCommentHandler(dbClient, authProvider));

    router.get("/login").handler(new ReturnUrlHandler());
    router.get("/login").handler(rc -> templateEngine.rxRender(rc, "templates/login").subscribe(rc.response()::end, rc::fail));
    router.post("/login").handler(FormLoginHandler.create(authProvider));

    router.get("/add_user").handler(rc -> templateEngine.rxRender(rc, "templates/add_user").subscribe(rc.response()::end, rc::fail));
    router.post("/add_user").handler(new AddUserHandler(dbClient, sqlQueries));

    router.route().handler(StaticHandler.create());

    return vertx.createHttpServer().requestHandler(router::accept).rxListen(8080).map(server -> null);
  }
}
