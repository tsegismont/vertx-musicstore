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

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Single;
import io.vertx.core.Handler;
import io.vertx.demo.musicstore.PathUtil;
import io.vertx.demo.musicstore.data.Album;
import io.vertx.demo.musicstore.data.Artist;
import io.vertx.demo.musicstore.data.Genre;
import io.vertx.demo.musicstore.reactivex.data.Mappers;
import io.vertx.rxjava3.ext.web.RoutingContext;
import io.vertx.rxjava3.ext.web.templ.freemarker.FreeMarkerTemplateEngine;
import io.vertx.rxjava3.pgclient.PgPool;
import io.vertx.rxjava3.sqlclient.templates.SqlTemplate;

import java.util.*;

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
    var genreId = PathUtil.parseLongParam(rc.pathParam("genreId"));
    if (genreId == null) {
      rc.next();
      return;
    }

    var gs = findGenre(genreId);
    var als = findAlbums(genreId);
    var ars = findArtists(genreId);

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

  private Single<Genre> findGenre(Long genreId) {
    return SqlTemplate.forQuery(dbClient, findGenreById)
      .mapTo(Mappers.GENRE)
      .rxExecute(Collections.singletonMap("id", genreId))
      .flatMapObservable(Observable::fromIterable)
      .singleOrError();
  }

  private Single<List<Album>> findAlbums(Long genreId) {
    return SqlTemplate.forQuery(dbClient, findAlbumsByGenre)
      .mapTo(Mappers.ALBUM)
      .rxExecute(Collections.singletonMap("id", genreId))
      .flatMapObservable(Observable::fromIterable)
      .toList();
  }

  private Single<List<Artist>> findArtists(Long genreId) {
    return SqlTemplate.forQuery(dbClient, findArtistsByGenre)
      .mapTo(Mappers.ARTIST)
      .rxExecute(Collections.singletonMap("id", genreId))
      .flatMapObservable(Observable::fromIterable)
      .toList();
  }
}
