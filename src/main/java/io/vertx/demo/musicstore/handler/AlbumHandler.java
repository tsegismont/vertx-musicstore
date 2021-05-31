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
import io.vertx.demo.musicstore.data.Track;
import io.vertx.demo.musicstore.reactivex.data.Mappers;
import io.vertx.rxjava3.ext.web.RoutingContext;
import io.vertx.rxjava3.ext.web.templ.freemarker.FreeMarkerTemplateEngine;
import io.vertx.rxjava3.pgclient.PgPool;
import io.vertx.rxjava3.sqlclient.templates.SqlTemplate;

import java.util.*;

/**
 * @author Thomas Segismont
 */
public class AlbumHandler implements Handler<RoutingContext> {

  private final PgPool dbClient;
  private final String findAlbumById;
  private final String findTracksByAlbum;
  private final FreeMarkerTemplateEngine templateEngine;

  public AlbumHandler(PgPool dbClient, Properties sqlQueries, FreeMarkerTemplateEngine templateEngine) {
    this.dbClient = dbClient;
    findAlbumById = sqlQueries.getProperty("findAlbumById");
    findTracksByAlbum = sqlQueries.getProperty("findTracksByAlbum");
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext rc) {
    var albumId = PathUtil.parseLongParam(rc.pathParam("albumId"));
    if (albumId == null) {
      rc.next();
      return;
    }

    var as = findAlbum(albumId);
    var ts = findTracks(albumId);

    Single.zip(as, ts, (album, tracks) -> {
      Map<String, Object> data = new HashMap<>(2);
      data.put("album", album);
      data.put("tracks", tracks);
      return data;
    }).flatMap(data -> {
      data.forEach(rc::put);
      return templateEngine.rxRender(rc.data(), "templates/album");
    }).subscribe(rc.response()::end, rc::fail);
  }

  private Single<Album> findAlbum(Long albumId) {
    return SqlTemplate.forQuery(dbClient, findAlbumById)
      .mapTo(Mappers.ALBUM)
      .rxExecute(Collections.singletonMap("id", albumId))
      .flatMapObservable(Observable::fromIterable)
      .singleOrError();
  }

  private Single<List<Track>> findTracks(Long albumId) {
    return SqlTemplate.forQuery(dbClient, findTracksByAlbum)
      .mapTo(Mappers.TRACK)
      .rxExecute(Collections.singletonMap("id", albumId))
      .flatMapObservable(Observable::fromIterable)
      .toList();
  }
}
