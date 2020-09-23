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

package io.vertx.demo.musicstore.handler;

import io.reactivex.Observable;
import io.reactivex.Single;
import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.demo.musicstore.PathUtil;
import io.vertx.reactivex.ext.web.RoutingContext;
import io.vertx.reactivex.ext.web.templ.freemarker.FreeMarkerTemplateEngine;
import io.vertx.reactivex.pgclient.PgPool;
import io.vertx.reactivex.sqlclient.Tuple;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 * @author Thomas Segismont
 */
public class GenreHandler implements Handler<RoutingContext> {

  private final PgPool dbClient;
  private final String findGenreById;
  private final String findAlbumsByGenre;
  private final String findArtistsByGenre;
  private final FreeMarkerTemplateEngine templateEngine;

  public GenreHandler(PgPool dbClient, Properties sqlQueries, FreeMarkerTemplateEngine templateEngine) {
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

    Single<JsonObject> gs = findGenre(genreId);
    Single<JsonArray> als = findAlbums(genreId);
    Single<JsonArray> ars = findArtists(genreId);

    Single.zip(gs, als, ars, (genre, albums, artists) -> {
      Map<String, Object> data = new HashMap<>();
      data.put("genre", genre);
      data.put("albums", albums);
      data.put("artists", artists);
      return data;
    }).flatMap(data -> {
      data.forEach(rc::put);
      return templateEngine.rxRender(rc.data(), "templates/genre");
    }).subscribe(rc.response()::end, rc::fail);
  }

  private Single<JsonObject> findGenre(Long genreId) {
    return dbClient.preparedQuery(findGenreById).rxExecute(Tuple.of(genreId))
      .flatMapObservable(Observable::fromIterable)
      .map(row -> new JsonObject().put("id", genreId).put("name", row.getString(0)))
      .singleOrError();
  }

  private Single<JsonArray> findAlbums(Long genreId) {
    return dbClient.preparedQuery(findAlbumsByGenre).rxExecute(Tuple.of(genreId))
      .flatMapObservable(Observable::fromIterable)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("title", row.getString(1)))
      .collect(JsonArray::new, JsonArray::add);
  }

  private Single<JsonArray> findArtists(Long genreId) {
    return dbClient.preparedQuery(findArtistsByGenre).rxExecute(Tuple.of(genreId))
      .flatMapObservable(Observable::fromIterable)
      .map(row -> new JsonObject().put("id", row.getLong(0)).put("name", row.getString(1)))
      .collect(JsonArray::new, JsonArray::add);
  }
}
