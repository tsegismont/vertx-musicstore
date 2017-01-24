package io.vertx.demo.musicstore;

import com.couchbase.client.java.AsyncBucket;
import com.couchbase.client.java.CouchbaseAsyncCluster;
import com.couchbase.client.java.env.DefaultCouchbaseEnvironment;
import com.couchbase.client.java.query.Query;
import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.web.handler.sockjs.BridgeOptions;
import io.vertx.ext.web.handler.sockjs.PermittedOptions;
import io.vertx.rxjava.core.AbstractVerticle;
import io.vertx.rxjava.core.RxHelper;
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
import io.vertx.rxjava.ext.web.handler.sockjs.SockJSHandler;
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
  private CouchbaseAsyncCluster couchbaseCluster;
  private AsyncBucket albumCommentsBucket;
  private FreeMarkerTemplateEngine templateEngine;

  @Override
  public void start(Future<Void> startFuture) throws Exception {
    datasourceConfig = new DatasourceConfig(config().getJsonObject("datasource", new JsonObject()));
    dbClient = JDBCClient.createNonShared(vertx, datasourceConfig.toJson());
    templateEngine = FreeMarkerTemplateEngine.create();
    createCouchbaseClient()
      .flatMap(this::openBucket).doOnSuccess(bucket -> this.albumCommentsBucket = bucket)
      .flatMap(this::setupBucket)
      .flatMap(v -> updateDB())
      .flatMap(v -> loadQueries())
      .map(this::setupAuthProvider)
      .flatMap(this::setupWebServer).subscribe(startFuture::complete, startFuture::fail);
  }

  private Single<CouchbaseAsyncCluster> createCouchbaseClient() {
    CouchbaseConfig couchbaseConfig = new CouchbaseConfig(config().getJsonObject("couchbase", new JsonObject()));
    return vertx.rxExecuteBlocking(fut -> {
      couchbaseCluster = CouchbaseAsyncCluster.create(DefaultCouchbaseEnvironment.builder()
        .queryEnabled(true)
        .build(), couchbaseConfig.getNodes());
      fut.complete(couchbaseCluster);
    });
  }

  private Single<AsyncBucket> openBucket(CouchbaseAsyncCluster cluster) {
    return cluster.openBucket("album-comments").toSingle().observeOn(RxHelper.scheduler(vertx));
  }

  private Single<Void> setupBucket(AsyncBucket bucket) {
    return bucket.query(Query.simple("SELECT * FROM system:indexes WHERE name=`album-comments-pi`"))
      .switchIfEmpty(bucket.query(Query.simple("CREATE PRIMARY INDEX `album-comments-pi` ON `album-comments` USING GSI")))
      .toSingle()
      .map(v -> (Void) null)
      .observeOn(RxHelper.scheduler(vertx));
  }

  private Single<Void> updateDB() {
    return vertx.rxExecuteBlocking(future -> {
      Flyway flyway = new Flyway();
      flyway.setDataSource(datasourceConfig.getUrl(), datasourceConfig.getUser(), datasourceConfig.getPassword());
      flyway.migrate();
      future.complete();
    });
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

  private Properties setupAuthProvider(Properties sqlQueries) {
    authProvider = JDBCAuth.create(dbClient)
      .setAuthenticationQuery(sqlQueries.getProperty("authenticateUser"))
      .setRolesQuery(sqlQueries.getProperty("findRolesByUser"))
      .setPermissionsQuery(sqlQueries.getProperty("findPermissionsByUser"));
    return sqlQueries;
  }

  private Single<Void> setupWebServer(Properties sqlQueries) {
    Router router = Router.router(vertx);

    SockJSHandler sockJSHandler = SockJSHandler.create(vertx);
    sockJSHandler.bridge(new BridgeOptions()
      .addOutboundPermitted(new PermittedOptions().setAddressRegex("album\\.\\d+\\.comments\\.new")));
    router.route("/eventbus/*").handler(sockJSHandler);

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

    router.get("/ajax/albums/:albumId/comments").handler(new AjaxAlbumCommentsHandler(albumCommentsBucket, templateEngine));

    router.post("/api/albums/:albumId/comments").consumes("text/plain").handler(new AddAlbumCommentHandler(albumCommentsBucket));

    router.get("/login").handler(new ReturnUrlHandler());
    router.get("/login").handler(rc -> templateEngine.rxRender(rc, "templates/login").subscribe(rc.response()::end, rc::fail));
    router.post("/login").handler(FormLoginHandler.create(authProvider));

    router.get("/add_user").handler(rc -> templateEngine.rxRender(rc, "templates/add_user").subscribe(rc.response()::end, rc::fail));
    router.post("/add_user").handler(new AddUserHandler(dbClient, sqlQueries));

    router.route().handler(StaticHandler.create());

    return vertx.createHttpServer().requestHandler(router::accept).rxListen(8080).map(server -> null);
  }

  @Override
  public void stop(Future<Void> stopFuture) throws Exception {
    vertx.<Void>rxExecuteBlocking(fut -> {
      if (couchbaseCluster != null) {
        couchbaseCluster.disconnect();
      }
      fut.complete();
    }).subscribe(stopFuture::complete, stopFuture::fail);
  }
}
