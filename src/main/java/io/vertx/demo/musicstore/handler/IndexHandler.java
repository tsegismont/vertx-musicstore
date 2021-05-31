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
import io.vertx.demo.musicstore.data.Genre;
import io.vertx.demo.musicstore.reactivex.data.Mappers;
import io.vertx.rxjava3.ext.web.RoutingContext;
import io.vertx.rxjava3.ext.web.templ.freemarker.FreeMarkerTemplateEngine;
import io.vertx.rxjava3.pgclient.PgPool;
import io.vertx.rxjava3.sqlclient.templates.SqlTemplate;

import java.util.Collections;
import java.util.List;
import java.util.Properties;

/**
 * @author Thomas Segismont
 */
public class IndexHandler implements Handler<RoutingContext> {

  private final PgPool dbClient;
  private final String findAllGenres;
  private final FreeMarkerTemplateEngine templateEngine;

  public IndexHandler(PgPool dbClient, Properties sqlQueries, FreeMarkerTemplateEngine templateEngine) {
    this.dbClient = dbClient;
    findAllGenres = sqlQueries.getProperty("findAllGenres");
    this.templateEngine = templateEngine;
  }

  @Override
  public void handle(RoutingContext rc) {
    findGenres().flatMap(genres -> {
      rc.put("genres", genres);
      return templateEngine.rxRender(rc.data(), "templates/index");
    }).subscribe(rc.response()::end, rc::fail);
  }

  private Single<List<Genre>> findGenres() {
    return SqlTemplate.forQuery(dbClient, findAllGenres)
      .mapTo(Mappers.GENRE)
      .rxExecute(Collections.emptyMap())
      .flatMapObservable(Observable::fromIterable)
      .toList();
  }
}
