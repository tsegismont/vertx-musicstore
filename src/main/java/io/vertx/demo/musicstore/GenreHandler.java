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
public class GenreHandler implements Handler<RoutingContext> {

  private final JDBCClient dbClient;
  private final String findGenreById;
  private final String findArtitsByGenre;
  private final FreeMarkerTemplateEngine templateEngine;

  public GenreHandler(JDBCClient dbClient, Properties sqlQueries, FreeMarkerTemplateEngine templateEngine) {
    this.dbClient = dbClient;
    findGenreById = sqlQueries.getProperty("findGenreById");
    findArtitsByGenre = sqlQueries.getProperty("findArtitsByGenre");
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext rc) {
    Long genreId = PathUtil.parseLongParam(rc.pathParam("genreId"));
    if (genreId == null) {
      rc.next();
      return;
    }

    dbClient.rxGetConnection().flatMap(sqlConnection -> {
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
    return sqlConnection.rxQueryStreamWithParams(findGenreById, new JsonArray().add(genreId))
      .flatMapObservable(SQLRowStream::toObservable)
      .toSingle()
      .map(row -> new JsonObject().put("id", genreId).put("name", row.getString(0)));
  }

  private Single<JsonArray> findArtists(SQLConnection sqlConnection, Long genreId) {
    return sqlConnection.rxQueryStreamWithParams(findArtitsByGenre, new JsonArray().add(genreId))
      .flatMapObservable(SQLRowStream::toObservable)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("name", row.getString(1)))
      .reduce(new JsonArray(), JsonArray::add)
      .toSingle();
  }
}
