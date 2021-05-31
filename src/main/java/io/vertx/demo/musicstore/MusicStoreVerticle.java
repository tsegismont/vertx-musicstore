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

import com.mongodb.reactivestreams.client.MongoClient;
import com.mongodb.reactivestreams.client.MongoClients;
import com.mongodb.reactivestreams.client.MongoDatabase;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Single;
import io.vertx.core.json.JsonObject;
import io.vertx.demo.musicstore.handler.*;
import io.vertx.ext.auth.sqlclient.SqlAuthenticationOptions;
import io.vertx.ext.bridge.PermittedOptions;
import io.vertx.ext.web.handler.sockjs.SockJSBridgeOptions;
import io.vertx.rxjava3.core.AbstractVerticle;
import io.vertx.rxjava3.ext.auth.sqlclient.SqlAuthentication;
import io.vertx.rxjava3.ext.web.Router;
import io.vertx.rxjava3.ext.web.client.WebClient;
import io.vertx.rxjava3.ext.web.handler.*;
import io.vertx.rxjava3.ext.web.handler.sockjs.SockJSHandler;
import io.vertx.rxjava3.ext.web.sstore.LocalSessionStore;
import io.vertx.rxjava3.ext.web.templ.freemarker.FreeMarkerTemplateEngine;
import io.vertx.rxjava3.pgclient.PgPool;
import io.vertx.sqlclient.PoolOptions;
import org.flywaydb.core.Flyway;
import org.flywaydb.core.api.configuration.Configuration;
import org.flywaydb.core.api.configuration.FluentConfiguration;

import java.io.IOException;
import java.util.Properties;

/**
 * @author Thomas Segismont
 */
public class MusicStoreVerticle extends AbstractVerticle {

  private DatasourceConfig datasourceConfig;
  private PgPool dbClient;
  private Properties dbQueries;
  private MongoClient mongoClient;
  private MongoDatabase mongoDatabase;
  private SqlAuthentication authProvider;
  private FreeMarkerTemplateEngine templateEngine;

  @Override
  public Completable rxStart() {
    datasourceConfig = new DatasourceConfig(config().getJsonObject("database", new JsonObject()));
    dbClient = PgPool.pool(vertx, datasourceConfig.toPgConnectOptions(), new PoolOptions());
    templateEngine = FreeMarkerTemplateEngine.create(vertx);

    var connectionString = config().getJsonObject("mongo", new JsonObject()).getString("url", "mongodb://localhost");
    mongoClient = MongoClients.create(connectionString);
    mongoDatabase = mongoClient.getDatabase("music");

    var databaseSetup = updateDB()
      .andThen(loadDbQueries()).doOnSuccess(props -> dbQueries = props)
      .ignoreElement();

    return databaseSetup
      .andThen(Completable.fromAction(() -> setupAuthProvider()))
      .andThen(Completable.defer(() -> setupWebServer()));
  }

  private Completable updateDB() {
    return vertx.rxExecuteBlocking(future -> {
      Configuration config = new FluentConfiguration()
        .dataSource(datasourceConfig.jdbcUrl(), datasourceConfig.getUser(), datasourceConfig.getPassword());
      var flyway = new Flyway(config);
      flyway.migrate();
      future.complete();
    }).ignoreElement();
  }

  private Single<Properties> loadDbQueries() {
    return vertx.<Properties>rxExecuteBlocking(fut -> {
      var properties = new Properties();
      try (var is = getClass().getClassLoader().getResourceAsStream("db/queries.xml")) {
        properties.loadFromXML(is);
        fut.complete(properties);
      } catch (IOException e) {
        fut.fail(e);
      }
    }).toSingle();
  }

  private void setupAuthProvider() {
    var options = new SqlAuthenticationOptions()
      .setAuthenticationQuery(dbQueries.getProperty("authenticateUser"));
    authProvider = SqlAuthentication.create(dbClient, options);
  }

  private Completable setupWebServer() {
    var router = Router.router(vertx);

    var sockJSHandler = SockJSHandler.create(vertx);
    var bridgeOptions = new SockJSBridgeOptions()
      .addOutboundPermitted(new PermittedOptions().setAddressRegex("album\\.\\d+\\.comments\\.new"));
    router.mountSubRouter("/eventbus", sockJSHandler.bridge(bridgeOptions));

    router.route().handler(BodyHandler.create());

    var sessionHandler = SessionHandler.create(LocalSessionStore.create(vertx));
    router.route().handler(sessionHandler);

    var indexHandler = new IndexHandler(dbClient, dbQueries, templateEngine);
    router.get("/").handler(indexHandler);
    router.get("/index.html").handler(indexHandler);

    router.get("/genres/:genreId").handler(new GenreHandler(dbClient, dbQueries, templateEngine));
    router.get("/albums/:albumId").handler(new AlbumHandler(dbClient, dbQueries, templateEngine));
    router.get("/artists/:artistId").handler(new ArtistHandler(dbClient, dbQueries, templateEngine));
    router.get("/covers/:albumId").handler(new CoverHandler(dbClient, dbQueries, WebClient.create(vertx)));

    router.get("/ajax/albums/:albumId/comments")
      .handler(new AjaxAlbumCommentsHandler(mongoDatabase, templateEngine));

    router.post("/api/albums/:albumId/comments")
      .consumes("text/plain")
      .handler(new AddAlbumCommentHandler(mongoDatabase));

    router.get("/login").handler(new ReturnUrlHandler());
    router.get("/login").handler(rc -> templateEngine.rxRender(rc.data(), "templates/login")
      .subscribe(rc.response()::end, rc::fail));
    router.post("/login").handler(FormLoginHandler.create(authProvider));

    router.get("/add_user").handler(rc -> templateEngine.rxRender(rc.data(), "templates/add_user")
      .subscribe(rc.response()::end, rc::fail));
    router.post("/add_user").handler(new AddUserHandler(dbClient, dbQueries, authProvider));

    router.route().handler(StaticHandler.create());

    router.route().failureHandler(ErrorHandler.create(vertx));

    return vertx.createHttpServer()
      .requestHandler(router)
      .rxListen(8080)
      .ignoreElement();
  }

  @Override
  public Completable rxStop() {
    return vertx.rxExecuteBlocking(fut -> {
      if (mongoClient != null) {
        mongoClient.close();
      }
      fut.complete();
    }).ignoreElement();
  }
}
