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
public class AlbumHandler implements Handler<RoutingContext> {
  private final JDBCClient dbClient;
  private final String findAlbumById;
  private final String findTracksByAlbum;
  private final FreeMarkerTemplateEngine templateEngine;

  public AlbumHandler(JDBCClient dbClient, Properties sqlQueries, FreeMarkerTemplateEngine templateEngine) {
    this.dbClient = dbClient;
    findAlbumById = sqlQueries.getProperty("findAlbumById");
    findTracksByAlbum = sqlQueries.getProperty("findTracksByAlbum");
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext rc) {
    Long albumId = PathUtil.parseLongParam(rc.pathParam("albumId"));
    if (albumId == null) {
      rc.next();
      return;
    }

    dbClient.rxGetConnection().flatMap(sqlConnection -> {
      rc.addBodyEndHandler(v -> sqlConnection.close());

      Single<JsonObject> gs = findAlbum(sqlConnection, albumId);
      Single<JsonArray> ts = findTracks(sqlConnection, albumId);

      return Single.zip(gs, ts, (album, tracks) -> {
        Map<String, Object> data = new HashMap<>(2);
        data.put("album", album);
        data.put("tracks", tracks);
        return data;
      });
    }).flatMap(data -> {
      data.forEach(rc::put);
      return templateEngine.rxRender(rc, "templates/album");
    }).subscribe(rc.response()::end, rc::fail);
  }

  private Single<JsonObject> findAlbum(SQLConnection sqlConnection, Long albumId) {
    return sqlConnection.rxQueryStreamWithParams(findAlbumById, new JsonArray().add(albumId))
      .flatMapObservable(SQLRowStream::toObservable)
      .toSingle()
      .map(row -> new JsonObject().put("id", albumId).put("title", row.getString(0)));
  }

  private Single<JsonArray> findTracks(SQLConnection sqlConnection, Long albumId) {
    return sqlConnection.rxQueryStreamWithParams(findTracksByAlbum, new JsonArray().add(albumId))
      .flatMapObservable(SQLRowStream::toObservable)
      .map(row -> {
        return new JsonObject()
          .put("id", row.getLong(0))
          .put("track_number", row.getInteger(1))
          .put("title", row.getString(2))
          .put("mb_track_id", row.getString(3))
          .put("artist", new JsonObject()
            .put("id", row.getLong(4))
            .put("name", row.getString(5)));
      }).collect(JsonArray::new, JsonArray::add).toSingle();
  }
}
