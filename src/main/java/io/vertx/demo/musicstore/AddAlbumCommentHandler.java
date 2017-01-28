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

import com.couchbase.client.java.AsyncBucket;
import com.couchbase.client.java.document.JsonDocument;
import io.vertx.core.Handler;
import io.vertx.core.json.JsonObject;
import io.vertx.rxjava.core.RxHelper;
import io.vertx.rxjava.core.Vertx;
import io.vertx.rxjava.ext.auth.User;
import io.vertx.rxjava.ext.web.RoutingContext;

import static java.net.HttpURLConnection.*;

/**
 * @author Thomas Segismont
 */
public class AddAlbumCommentHandler implements Handler<RoutingContext> {

  private final AsyncBucket albumCommentsBucket;

  public AddAlbumCommentHandler(AsyncBucket albumCommentsBucket) {
    this.albumCommentsBucket = albumCommentsBucket;
  }

  @Override
  public void handle(RoutingContext rc) {
    Long albumId = PathUtil.parseLongParam(rc.pathParam("albumId"));
    if (albumId == null) {
      rc.next();
      return;
    }

    User user = rc.user();
    if (user == null) {
      rc.response().setStatusCode(HTTP_UNAUTHORIZED).end();
      return;
    }

    String comment = rc.getBodyAsString();
    if (comment == null || comment.isEmpty()) {
      rc.response().setStatusCode(HTTP_BAD_REQUEST).end();
      return;
    }

    long timestamp = System.currentTimeMillis();

    JsonObject content = new JsonObject()
      .put("albumId", albumId)
      .put("username", user.principal().getValue("username"))
      .put("timestamp", timestamp)
      .put("comment", comment);

    JsonDocument document = JsonDocument.create("comment::" + timestamp, com.couchbase.client.java.document.json.JsonObject.from(content.getMap()));
    Vertx vertx = rc.vertx();
    albumCommentsBucket.upsert(document)
      .toSingle()
      .observeOn(RxHelper.scheduler(vertx))
      .doOnSuccess(doc -> vertx.setTimer(1000, v -> {
        String address = "album." + albumId + ".comments.new";
        vertx.eventBus().<JsonObject>publish(address, content);
      }))
      .subscribe(doc -> rc.response().end(), rc::fail);
  }
}
