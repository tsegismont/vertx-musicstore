package io.vertx.demo.musicstore;

import com.couchbase.client.java.AsyncBucket;
import com.couchbase.client.java.query.AsyncQueryResult;
import com.couchbase.client.java.query.Query;
import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.rxjava.core.RxHelper;
import io.vertx.rxjava.ext.web.RoutingContext;
import io.vertx.rxjava.ext.web.templ.FreeMarkerTemplateEngine;

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
  public void handle(RoutingContext rc) {
    Long albumId = PathUtil.parseLongParam(rc.pathParam("albumId"));
    if (albumId == null) {
      rc.next();
      return;
    }

    com.couchbase.client.java.document.json.JsonArray params = com.couchbase.client.java.document.json.JsonArray.from(albumId);
    albumCommentsBucket.query(Query.parametrized(findRecentCommentsByAlbum, params))
      .observeOn(RxHelper.scheduler(rc.vertx()))
      .flatMap(AsyncQueryResult::rows)
      .limit(5)
      .collect(JsonArray::new, (jsonArray, row) -> jsonArray.add(new JsonObject(row.value().toMap())))
      .toSingle()
      .flatMap(data -> {
        rc.put("comments", data);
        return templateEngine.rxRender(rc, "templates/partials/album_comments");
      }).subscribe(rc.response()::end, rc::fail);
  }
}
