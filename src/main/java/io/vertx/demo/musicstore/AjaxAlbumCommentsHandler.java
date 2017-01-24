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

/**
 * @author Thomas Segismont
 */
public class AjaxAlbumCommentsHandler implements Handler<RoutingContext> {

  private final AsyncBucket albumCommentsBucket;
  private final FreeMarkerTemplateEngine templateEngine;

  public AjaxAlbumCommentsHandler(AsyncBucket albumCommentsBucket, FreeMarkerTemplateEngine templateEngine) {
    this.albumCommentsBucket = albumCommentsBucket;
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext rc) {
    Long albumId = PathUtil.parseLongParam(rc.pathParam("albumId"));
    if (albumId == null) {
      rc.next();
      return;
    }

    albumCommentsBucket.query(Query.parametrized("select username, timestamp,comment from `album-comments` where albumId = $1 order by timestamp desc", com.couchbase.client.java.document.json.JsonArray.from(albumId)))
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
