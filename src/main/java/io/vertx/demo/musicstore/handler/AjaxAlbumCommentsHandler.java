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

import com.mongodb.reactivestreams.client.MongoDatabase;
import io.reactivex.rxjava3.core.Flowable;
import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.demo.musicstore.BsonUtil;
import io.vertx.demo.musicstore.PathUtil;
import io.vertx.rxjava3.core.RxHelper;
import io.vertx.rxjava3.ext.web.RoutingContext;
import io.vertx.rxjava3.ext.web.templ.freemarker.FreeMarkerTemplateEngine;

import static com.mongodb.client.model.Filters.eq;
import static com.mongodb.client.model.Sorts.descending;

/**
 * @author Thomas Segismont
 */
public class AjaxAlbumCommentsHandler implements Handler<RoutingContext> {

  private final MongoDatabase mongoDatabase;
  private final FreeMarkerTemplateEngine templateEngine;

  public AjaxAlbumCommentsHandler(MongoDatabase mongoDatabase, FreeMarkerTemplateEngine templateEngine) {
    this.mongoDatabase = mongoDatabase;
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext routingContext) {
    var albumId = PathUtil.parseLongParam(routingContext.pathParam("albumId"));
    if (albumId == null) {
      routingContext.next();
      return;
    }

    var documents = mongoDatabase.getCollection("comments")
      .find(eq("albumId", albumId)).sort(descending("timestamp"))
      .limit(5);

    var vertx = routingContext.vertx();
    var scheduler = RxHelper.scheduler(vertx.getOrCreateContext());

    Flowable.fromPublisher(documents)
      .observeOn(scheduler)
      .collect(JsonArray::new, (jsonArray, document) -> jsonArray.add(BsonUtil.toJsonObject(document)))
      .flatMap(data -> {
        routingContext.put("comments", data);
        return templateEngine.rxRender(routingContext.data(), "templates/partials/album_comments");
      }).subscribe(routingContext.response()::end, routingContext::fail);
  }
}
