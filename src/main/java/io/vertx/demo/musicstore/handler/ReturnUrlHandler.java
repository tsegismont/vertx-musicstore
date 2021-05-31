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

import io.vertx.core.Handler;
import io.vertx.rxjava3.ext.web.RoutingContext;

/**
 * @author Thomas Segismont
 */
public class ReturnUrlHandler implements Handler<RoutingContext> {

  @Override
  public void handle(RoutingContext rc) {
    var returnUrl = rc.request().getParam("return_url");
    var session = rc.session();
    if (returnUrl != null && session != null) {
      session.put("return_url", returnUrl);
    }
    rc.next();
  }
}
