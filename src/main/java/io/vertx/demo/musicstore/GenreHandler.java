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

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 * @author Thomas Segismont
 */
public class GenreHandler implements Handler<RoutingContext> {

  private final JDBCClient dbClient;
  private final String findGenreById;
  private final String findAlbumsByGenre;
  private final String findArtistsByGenre;
  private final FreeMarkerTemplateEngine templateEngine;

  public GenreHandler(JDBCClient dbClient, Properties sqlQueries, FreeMarkerTemplateEngine templateEngine) {
    this.dbClient = dbClient;
    findGenreById = sqlQueries.getProperty("findGenreById");
    findAlbumsByGenre = sqlQueries.getProperty("findAlbumsByGenre");
    findArtistsByGenre = sqlQueries.getProperty("findArtistsByGenre");
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
      Single<JsonArray> als = findAlbums(sqlConnection, genreId);
      Single<JsonArray> ars = findArtists(sqlConnection, genreId);

      return Single.zip(gs, als, ars, (genre, albums, artists) -> {
        Map<String, Object> data = new HashMap<>();
        data.put("genre", genre);
        data.put("albums", albums);
        data.put("artists", artists);
        return data;
      });
    }).flatMap(data -> {
      data.forEach(rc::put);
      return templateEngine.rxRender(rc, "templates/genre");
    }).subscribe(rc.response()::end, rc::fail);
  }

  private Single<JsonObject> findGenre(SQLConnection sqlConnection, Long genreId) {
    return sqlConnection.rxQueryStreamWithParams(findGenreById, new JsonArray().add(genreId))
      .flatMapObservable(SQLRowStream::toObservable)
      .toSingle()
      .map(row -> new JsonObject().put("id", genreId).put("name", row.getString(0)));
  }

  private Single<JsonArray> findAlbums(SQLConnection sqlConnection, Long genreId) {
    return sqlConnection.rxQueryStreamWithParams(findAlbumsByGenre, new JsonArray().add(genreId))
      .flatMapObservable(SQLRowStream::toObservable)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("title", row.getString(1)))
      .collect(JsonArray::new, JsonArray::add)
      .toSingle();
  }

  private Single<JsonArray> findArtists(SQLConnection sqlConnection, Long genreId) {
    return sqlConnection.rxQueryStreamWithParams(findArtistsByGenre, new JsonArray().add(genreId))
      .flatMapObservable(SQLRowStream::toObservable)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("name", row.getString(1)))
      .collect(JsonArray::new, JsonArray::add)
      .toSingle();
  }
}
