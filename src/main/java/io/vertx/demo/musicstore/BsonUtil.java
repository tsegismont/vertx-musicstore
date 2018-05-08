/*
 * Copyright 2018 Red Hat, Inc.
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
import org.bson.Document;
import org.bson.json.JsonMode;
import org.bson.json.JsonWriterSettings;

/**
 * @author Thomas Segismont
 */
public class BsonUtil {

  private static final JsonWriterSettings WRITER_SETTINGS = JsonWriterSettings.builder().outputMode(JsonMode.RELAXED).build();

  public static JsonObject toJsonObject(Document document) {
    return new JsonObject(document.toJson(WRITER_SETTINGS));
  }

  private BsonUtil() {
    // Utility
  }
}
