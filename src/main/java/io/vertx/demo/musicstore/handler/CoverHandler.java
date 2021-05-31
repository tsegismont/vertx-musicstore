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

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Single;
import io.vertx.core.Handler;
import io.vertx.demo.musicstore.PathUtil;
import io.vertx.demo.musicstore.data.Album;
import io.vertx.demo.musicstore.reactivex.data.Mappers;
import io.vertx.rxjava3.core.buffer.Buffer;
import io.vertx.rxjava3.core.shareddata.LocalMap;
import io.vertx.rxjava3.ext.web.RoutingContext;
import io.vertx.rxjava3.ext.web.client.HttpResponse;
import io.vertx.rxjava3.ext.web.client.WebClient;
import io.vertx.rxjava3.ext.web.codec.BodyCodec;
import io.vertx.rxjava3.pgclient.PgPool;
import io.vertx.rxjava3.sqlclient.templates.SqlTemplate;

import java.util.Collections;
import java.util.Properties;

/**
 * @author Thomas Segismont
 */
public class CoverHandler implements Handler<RoutingContext> {

  private final PgPool dbClient;
  private final String findAlbumById;
  private final WebClient webClient;

  public CoverHandler(PgPool dbClient, Properties sqlQueries, WebClient webClient) {
    this.dbClient = dbClient;
    findAlbumById = sqlQueries.getProperty("findAlbumById");
    this.webClient = webClient;
  }

  @Override
  public void handle(RoutingContext rc) {
    var albumId = PathUtil.parseLongParam(rc.pathParam("albumId"));
    if (albumId == null) {
      rc.next();
      return;
    }

    // Currently there's an issue with rx.Buffer as value type, so workaround with core Buffer
    LocalMap<Long, io.vertx.core.buffer.Buffer> covers = rc.vertx().sharedData().getLocalMap("covers");
    var cached = covers.get(albumId);
    if (cached != null) {
      rc.response().end(Buffer.newInstance(cached));
      return;
    }

    download(albumId)
      .doOnSuccess(buffer -> covers.put(albumId, buffer.getDelegate()))
      .subscribe(rc.response()::end, rc::fail, () -> rc.fail(404));
  }

  private Maybe<Buffer> download(Long albumId) {
    return findAlbum(albumId).flatMapMaybe(album -> {
      var musicBrainAlbumId = album.getMusicBrainAlbumId();
      return musicBrainAlbumId == null ? Maybe.empty():Maybe.just(musicBrainAlbumId);
    }).flatMap(mbAlbumId -> {
      return sendGetRequest(mbAlbumId).toMaybe();
    });
  }

  private Single<Buffer> sendGetRequest(String mbAlbumId) {
    return webClient
      .getAbs("http://coverartarchive.org")
      .uri("/release/" + mbAlbumId + "/front")
      .as(BodyCodec.buffer())
      .rxSend()
      .map(HttpResponse::body);
  }

  private Single<Album> findAlbum(Long albumId) {
    return SqlTemplate.forQuery(dbClient, findAlbumById)
      .mapTo(Mappers.ALBUM)
      .rxExecute(Collections.singletonMap("id", albumId))
      .flatMapObservable(Observable::fromIterable)
      .singleOrError();
  }
}
