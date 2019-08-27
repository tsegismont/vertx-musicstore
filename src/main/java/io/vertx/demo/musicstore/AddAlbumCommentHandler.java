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

import com.mongodb.client.model.InsertOneOptions;
import com.mongodb.reactivestreams.client.MongoDatabase;
import com.mongodb.reactivestreams.client.Success;
import io.reactivex.Flowable;
import io.reactivex.Scheduler;
import io.vertx.core.Handler;
import io.vertx.core.json.JsonObject;
import io.vertx.reactivex.core.RxHelper;
import io.vertx.reactivex.core.Vertx;
import io.vertx.reactivex.ext.auth.User;
import io.vertx.reactivex.ext.web.RoutingContext;
import org.bson.Document;
import org.reactivestreams.Publisher;

import static java.net.HttpURLConnection.HTTP_BAD_REQUEST;
import static java.net.HttpURLConnection.HTTP_UNAUTHORIZED;

/**
 * @author Thomas Segismont
 */
public class AddAlbumCommentHandler implements Handler<RoutingContext> {

  private final MongoDatabase mongoDatabase;

  public AddAlbumCommentHandler(MongoDatabase mongoDatabase) {
    this.mongoDatabase = mongoDatabase;
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

    String content = rc.getBodyAsString();
    if (content == null || content.isEmpty()) {
      rc.response().setStatusCode(HTTP_BAD_REQUEST).end();
      return;
    }

    long timestamp = System.currentTimeMillis();

    Document comment = new Document("albumId", albumId)
      .append("username", user.principal().getValue("username"))
      .append("timestamp", timestamp)
      .append("comment", content);

    Publisher<Success> insertOne = mongoDatabase.getCollection("comments")
      .insertOne(comment, new InsertOneOptions());

    Vertx vertx = rc.vertx();
    Scheduler scheduler = RxHelper.scheduler(vertx.getOrCreateContext());

    String address = "album." + albumId + ".comments.new";
    JsonObject eventBusMessage = BsonUtil.toJsonObject(comment);

    Flowable.fromPublisher(insertOne)
      .ignoreElements()
      .observeOn(scheduler)
      .doOnComplete(() -> {
        vertx.eventBus().publish(address, eventBusMessage);
      }).subscribe(rc.response()::end, rc::fail);
  }
}
