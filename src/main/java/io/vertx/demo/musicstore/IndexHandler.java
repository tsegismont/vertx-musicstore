package io.vertx.demo.musicstore;

import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.rxjava.ext.jdbc.JDBCClient;
import io.vertx.rxjava.ext.sql.SQLConnection;
import io.vertx.rxjava.ext.sql.SQLRowStream;
import io.vertx.rxjava.ext.web.RoutingContext;
import io.vertx.rxjava.ext.web.templ.FreeMarkerTemplateEngine;
import rx.Single;

import java.util.Properties;

/**
 * @author Thomas Segismont
 */
public class IndexHandler implements Handler<RoutingContext> {

  private final JDBCClient dbClient;
  private final String findAllGenres;
  private final FreeMarkerTemplateEngine templateEngine;

  public IndexHandler(JDBCClient dbClient, Properties sqlQueries, FreeMarkerTemplateEngine templateEngine) {
    this.dbClient = dbClient;
    findAllGenres = sqlQueries.getProperty("findAllGenres");
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext rc) {
    dbClient.rxGetConnection().flatMap(sqlConnection -> {
      rc.addBodyEndHandler(v -> sqlConnection.close());
      return findGenres(sqlConnection);
    }).flatMap(genres -> {
      rc.put("genres", genres);
      return templateEngine.rxRender(rc, "templates/index");
    }).subscribe(rc.response()::end, rc::fail);
  }

  private Single<JsonArray> findGenres(SQLConnection sqlConnection) {
    return sqlConnection.rxQueryStream(findAllGenres)
      .flatMapObservable(SQLRowStream::toObservable)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("name", row.getString(1)))
      .collect(JsonArray::new, JsonArray::add)
      .toSingle();
  }
}
