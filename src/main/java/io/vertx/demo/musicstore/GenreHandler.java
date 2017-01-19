package io.vertx.demo.musicstore;

import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.rxjava.ext.jdbc.JDBCClient;
import io.vertx.rxjava.ext.sql.SQLConnection;
import io.vertx.rxjava.ext.sql.SQLRowStream;
import io.vertx.rxjava.ext.web.RoutingContext;
import io.vertx.rxjava.ext.web.templ.FreeMarkerTemplateEngine;
import rx.Observable;
import rx.Single;

/**
 * @author Thomas Segismont
 */
public class GenreHandler implements Handler<RoutingContext> {

  private final JDBCClient dbClient;
  private final FreeMarkerTemplateEngine templateEngine;

  public GenreHandler(JDBCClient dbClient, FreeMarkerTemplateEngine templateEngine) {
    this.dbClient = dbClient;
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext rc) {
    Long genreId = PathUtil.parseLongParam(rc.pathParam("genreId"));
    if (genreId == null) {
      rc.next();
      return;
    }

    getConnection(rc).flatMap(sqlConnection -> {
      rc.addBodyEndHandler(v -> sqlConnection.close());

      Single<JsonObject> gs = findGenre(sqlConnection, genreId);
      Single<JsonArray> as = findArtists(sqlConnection, genreId);

      return Single.zip(gs, as, (genre, artists) -> {
        rc.put("genre", genre).put("artists", artists);
        return null;
      }).flatMap(v -> templateEngine.rxRender(rc, "templates/genre"));
    }).subscribe(rc.response()::end, rc::fail);

  }

  private Single<JsonObject> findGenre(SQLConnection sqlConnection, Long genreId) {
    return sqlConnection.rxQueryWithParams("SELECT g.name FROM genres g WHERE g.id = ?", new JsonArray().add(genreId))
      .flatMapObservable(resultSet -> Observable.from(resultSet.getResults()))
      .toSingle()
      .map(row -> new JsonObject().put("id", genreId).put("name", row.getString(0)));
  }

  private Single<JsonArray> findArtists(SQLConnection sqlConnection, Long genreId) {
    return sqlConnection.rxQueryStreamWithParams("SELECT DISTINCT\n" +
      "  a.id,\n" +
      "  a.name\n" +
      "FROM tracks t, genres g, artists a\n" +
      "WHERE t.genre_id = g.id\n" +
      "      AND t.artist_id = a.id\n" +
      "      AND t.genre_id = ?\n" +
      "ORDER BY a.name;\n", new JsonArray().add(genreId))
      .flatMapObservable(SQLRowStream::toObservable)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("name", row.getString(1)))
      .reduce(new JsonArray(), JsonArray::add)
      .toSingle();
  }

  private Single<SQLConnection> getConnection(RoutingContext rc) {
    return dbClient.rxGetConnection()
      .doOnSuccess(conn -> rc.addBodyEndHandler(v -> conn.close()));
  }
}
