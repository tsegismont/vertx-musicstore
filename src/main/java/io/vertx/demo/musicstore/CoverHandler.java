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

import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.rxjava.core.buffer.Buffer;
import io.vertx.rxjava.core.shareddata.LocalMap;
import io.vertx.rxjava.ext.jdbc.JDBCClient;
import io.vertx.rxjava.ext.sql.SQLConnection;
import io.vertx.rxjava.ext.sql.SQLRowStream;
import io.vertx.rxjava.ext.web.RoutingContext;
import io.vertx.rxjava.ext.web.client.HttpResponse;
import io.vertx.rxjava.ext.web.client.WebClient;
import io.vertx.rxjava.ext.web.codec.BodyCodec;
import rx.Single;

import java.util.Properties;

/**
 * @author Thomas Segismont
 */
public class CoverHandler implements Handler<RoutingContext> {
  private static final String USER_AGENT = "MusicStoreDemo ( https://github.com/tsegismont/vertx-musicstore )";

  private final JDBCClient dbClient;
  private final String findAlbumById;
  private final WebClient webClient;

  public CoverHandler(JDBCClient dbClient, Properties sqlQueries, WebClient webClient) {
    this.dbClient = dbClient;
    findAlbumById = sqlQueries.getProperty("findAlbumById");
    this.webClient = webClient;
  }

  @Override
  public void handle(RoutingContext rc) {
    Long albumId = PathUtil.parseLongParam(rc.pathParam("albumId"));
    if (albumId == null) {
      rc.next();
      return;
    }

    // Currently there's an issue with rx.Buffer as value type, so workaround with core Buffer
    LocalMap<Long, io.vertx.core.buffer.Buffer> covers = rc.vertx().sharedData().getLocalMap("covers");
    io.vertx.core.buffer.Buffer cached = covers.get(albumId);
    if (cached != null) {
      rc.response().end(Buffer.newInstance(cached));
      return;
    }

    download(rc, albumId)
      .doOnSuccess(buffer -> covers.put(albumId, buffer.getDelegate()))
      .subscribe(rc.response()::end, rc::fail);
  }

  private Single<Buffer> download(RoutingContext rc, Long albumId) {
    return dbClient.rxGetConnection().flatMap(sqlConnection -> {
      rc.addBodyEndHandler(v -> sqlConnection.close());

      return findAlbum(sqlConnection, albumId)
        .flatMap(album -> {
          return webClient
            .getAbs("http://coverartarchive.org")
            .putHeader("User-Agent", USER_AGENT)
            .uri("/release/" + album.getString("mbAlbumId") + "/front")
            .as(BodyCodec.buffer())
            .rxSend();
        }).flatMap(httpResponse -> followRedirect(webClient, httpResponse, 0));
    });
  }

  private Single<Buffer> followRedirect(WebClient webClient, HttpResponse<Buffer> httpResponse, int step) {
    if (step > 5) {
      return Single.error(new RuntimeException("Too many redirects"));
    }
    switch (httpResponse.statusCode()) {
      case 200:
        return Single.just(httpResponse.body());
      case 301:
      case 302:
      case 303:
      case 307:
      case 308:
        return webClient.getAbs(httpResponse.getHeader("Location"))
          .putHeader("User-Agent", USER_AGENT)
          .as(BodyCodec.buffer())
          .rxSend()
          .flatMap(res -> followRedirect(webClient, res, step + 1));
      default:
        return Single.just(Buffer.buffer());
    }
  }

  private Single<JsonObject> findAlbum(SQLConnection sqlConnection, Long albumId) {
    return sqlConnection.rxQueryStreamWithParams(findAlbumById, new JsonArray().add(albumId))
      .flatMapObservable(SQLRowStream::toObservable)
      .toSingle()
      .map(row -> new JsonObject()
        .put("id", albumId)
        .put("title", row.getString(0))
        .put("mbAlbumId", row.getString(1)));
  }
}
