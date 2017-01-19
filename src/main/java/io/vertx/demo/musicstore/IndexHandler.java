package io.vertx.demo.musicstore;

import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.rxjava.ext.jdbc.JDBCClient;
import io.vertx.rxjava.ext.sql.SQLRowStream;
import io.vertx.rxjava.ext.web.RoutingContext;
import io.vertx.rxjava.ext.web.templ.FreeMarkerTemplateEngine;
import rx.Observable;

/**
 * @author Thomas Segismont
 */
public class IndexHandler implements Handler<RoutingContext> {

  private final JDBCClient dbClient;
  private final FreeMarkerTemplateEngine templateEngine;

  public IndexHandler(JDBCClient dbClient, FreeMarkerTemplateEngine templateEngine) {
    this.dbClient = dbClient;
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext rc) {
    findGenres(rc)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("name", row.getString(1)))
      .reduce(new JsonArray(), JsonArray::add)
      .toSingle()
      .flatMap(genres -> {
        rc.put("genres", genres);
        return templateEngine.rxRender(rc, "templates/index");
      }).subscribe(rc.response()::end, rc::fail);
  }

  private Observable<JsonArray> findGenres(RoutingContext rc) {
    return dbClient.rxGetConnection()
      .flatMapObservable(sqlConnection -> {
        rc.addBodyEndHandler(v -> sqlConnection.close());
        return sqlConnection.rxQueryStream("select g.id, g.name from genres g").flatMapObservable(SQLRowStream::toObservable);
      });
  }
}
