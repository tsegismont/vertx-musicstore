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

import io.reactivex.Single;
import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.reactivex.ext.jdbc.JDBCClient;
import io.vertx.reactivex.ext.sql.SQLConnection;
import io.vertx.reactivex.ext.sql.SQLRowStream;
import io.vertx.reactivex.ext.web.RoutingContext;
import io.vertx.reactivex.ext.web.templ.freemarker.FreeMarkerTemplateEngine;

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
      Single<JsonObject> gs = findGenre(sqlConnection, genreId);
      Single<JsonArray> als = findAlbums(sqlConnection, genreId);
      Single<JsonArray> ars = findArtists(sqlConnection, genreId);

      return Single.zip(gs, als, ars, (genre, albums, artists) -> {
        Map<String, Object> data = new HashMap<>();
        data.put("genre", genre);
        data.put("albums", albums);
        data.put("artists", artists);
        return data;
      }).doAfterTerminate(sqlConnection::close);
    }).flatMap(data -> {
      data.forEach(rc::put);
      return templateEngine.rxRender(rc.data(), "templates/genre");
    }).subscribe(rc.response()::end, rc::fail);
  }

  private Single<JsonObject> findGenre(SQLConnection sqlConnection, Long genreId) {
    return sqlConnection.rxQueryStreamWithParams(findGenreById, new JsonArray().add(genreId))
      .flatMapPublisher(SQLRowStream::toFlowable)
      .map(row -> new JsonObject().put("id", genreId).put("name", row.getString(0)))
      .singleOrError();
  }

  private Single<JsonArray> findAlbums(SQLConnection sqlConnection, Long genreId) {
    return sqlConnection.rxQueryStreamWithParams(findAlbumsByGenre, new JsonArray().add(genreId))
      .flatMapObservable(SQLRowStream::toObservable)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("title", row.getString(1)))
      .collect(JsonArray::new, JsonArray::add);
  }

  private Single<JsonArray> findArtists(SQLConnection sqlConnection, Long genreId) {
    return sqlConnection.rxQueryStreamWithParams(findArtistsByGenre, new JsonArray().add(genreId))
      .flatMapObservable(SQLRowStream::toObservable)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("name", row.getString(1)))
      .collect(JsonArray::new, JsonArray::add);
  }
}
