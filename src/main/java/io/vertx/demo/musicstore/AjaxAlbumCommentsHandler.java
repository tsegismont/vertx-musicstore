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
import com.couchbase.client.java.query.AsyncQueryResult;
import com.couchbase.client.java.query.AsyncQueryRow;
import com.couchbase.client.java.query.ParametrizedQuery;
import com.couchbase.client.java.query.Query;
import hu.akarnokd.rxjava.interop.RxJavaInterop;
import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.reactivex.core.RxHelper;
import io.vertx.reactivex.ext.web.RoutingContext;
import io.vertx.reactivex.ext.web.templ.FreeMarkerTemplateEngine;
import rx.Observable;

import java.util.Properties;

/**
 * @author Thomas Segismont
 */
public class AjaxAlbumCommentsHandler implements Handler<RoutingContext> {

  private final AsyncBucket albumCommentsBucket;
  private final String findRecentCommentsByAlbum;
  private final FreeMarkerTemplateEngine templateEngine;

  public AjaxAlbumCommentsHandler(AsyncBucket albumCommentsBucket, Properties couchbaseQueries, FreeMarkerTemplateEngine templateEngine) {
    this.albumCommentsBucket = albumCommentsBucket;
    this.findRecentCommentsByAlbum = couchbaseQueries.getProperty("findRecentCommentsByAlbum");
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext routingContext) {
    Long albumId = PathUtil.parseLongParam(routingContext.pathParam("albumId"));
    if (albumId == null) {
      routingContext.next();
      return;
    }

    com.couchbase.client.java.document.json.JsonArray params = com.couchbase.client.java.document.json.JsonArray.from(albumId);
    ParametrizedQuery parametrizedQuery = Query.parametrized(findRecentCommentsByAlbum, params);
    Observable<AsyncQueryRow> rowsObservable = albumCommentsBucket.query(parametrizedQuery)
      .flatMap(AsyncQueryResult::rows);
    RxJavaInterop.toV2Flowable(rowsObservable)
      .observeOn(RxHelper.scheduler(routingContext.vertx().getOrCreateContext()))
      .limit(5)
      .collect(JsonArray::new, (jsonArray, row) -> jsonArray.add(new JsonObject(row.value().toMap())))
      .flatMap(data -> {
        routingContext.put("comments", data);
        return templateEngine.rxRender(routingContext, "templates/partials/album_comments");
      }).subscribe(routingContext.response()::end, routingContext::fail);
  }
}
