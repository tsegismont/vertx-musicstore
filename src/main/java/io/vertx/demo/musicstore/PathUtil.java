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

import java.util.regex.Pattern;

/**
 * @author Thomas Segismont
 */
public class PathUtil {

  private static final Pattern LONG_PATTERN = Pattern.compile("(-)?\\d+");

  public static Long parseLongParam(String param) {
    return LONG_PATTERN.matcher(param).matches() ? Long.valueOf(param) : null;
  }

  private PathUtil() {
    // Utility
  }
}
