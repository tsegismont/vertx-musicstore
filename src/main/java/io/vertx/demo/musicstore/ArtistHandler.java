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
public class ArtistHandler implements Handler<RoutingContext> {
  private final JDBCClient dbClient;
  private final String findArtistById;
  private final String findAlbumsByArtist;
  private final FreeMarkerTemplateEngine templateEngine;

  public ArtistHandler(JDBCClient dbClient, Properties sqlQueries, FreeMarkerTemplateEngine templateEngine) {
    this.dbClient = dbClient;
    findArtistById = sqlQueries.getProperty("findArtistById");
    findAlbumsByArtist = sqlQueries.getProperty("findAlbumsByArtist");
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext rc) {
    Long artistId = PathUtil.parseLongParam(rc.pathParam("artistId"));
    if (artistId == null) {
      rc.next();
      return;
    }

    dbClient.rxGetConnection().flatMap(sqlConnection -> {
      rc.addBodyEndHandler(v -> sqlConnection.close());

      Single<JsonObject> ars = findArtist(sqlConnection, artistId);
      Single<JsonArray> als = findAlbums(sqlConnection, artistId);

      return Single.zip(ars, als, (artist, albums) -> {
        Map<String, Object> data = new HashMap<>(2);
        data.put("artist", artist);
        data.put("albums", albums);
        return data;
      });
    }).flatMap(data -> {
      data.forEach(rc::put);
      return templateEngine.rxRender(rc, "templates/artist");
    }).subscribe(rc.response()::end, rc::fail);
  }

  private Single<JsonObject> findArtist(SQLConnection sqlConnection, Long artistId) {
    return sqlConnection.rxQueryStreamWithParams(findArtistById, new JsonArray().add(artistId))
      .flatMapObservable(SQLRowStream::toObservable)
      .toSingle()
      .map(row -> new JsonObject().put("id", artistId).put("name", row.getString(0)));
  }

  private Single<JsonArray> findAlbums(SQLConnection sqlConnection, Long artistId) {
    return sqlConnection.rxQueryStreamWithParams(findAlbumsByArtist, new JsonArray().add(artistId))
      .flatMapObservable(SQLRowStream::toObservable)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("title", row.getString(1)))
      .collect(JsonArray::new, JsonArray::add)
      .toSingle();
  }
}
