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

import io.vertx.core.json.JsonObject;

/**
 * @author Thomas Segismont
 */
public class DatasourceConfig {

  private final String url;
  private final String user;
  private final String password;

  public DatasourceConfig(JsonObject datasourceConfig) {
    url = datasourceConfig.getString("url", "jdbc:postgresql://localhost:5432/musicdb");
    user = datasourceConfig.getString("user", "music");
    password = datasourceConfig.getString("password", "music");
  }

  public String getUrl() {
    return url;
  }

  public String getUser() {
    return user;
  }

  public String getPassword() {
    return password;
  }

  public JsonObject toJson() {
    return new JsonObject().put("url", url).put("user", user).put("password", password);
  }
}
