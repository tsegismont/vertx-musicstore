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
import io.vertx.pgclient.PgConnectOptions;

/**
 * @author Thomas Segismont
 */
public class DatasourceConfig {

  private final String host;
  private final int port;
  private final String database;
  private final String user;
  private final String password;

  public DatasourceConfig(JsonObject datasourceConfig) {
    host = datasourceConfig.getString("host", "localhost");
    port = datasourceConfig.getInteger("port", 5432);
    database = datasourceConfig.getString("database", "musicdb");
    user = datasourceConfig.getString("user", "music");
    password = datasourceConfig.getString("password", "music");
  }

  public String getHost() {
    return host;
  }

  public int getPort() {
    return port;
  }

  public String getDatabase() {
    return database;
  }

  public String getUser() {
    return user;
  }

  public String getPassword() {
    return password;
  }

  public PgConnectOptions toPgConnectOptions() {
    return new PgConnectOptions()
      .setHost(host)
      .setPort(port)
      .setDatabase(database)
      .setUser(user)
      .setPassword(password);
  }

  public String jdbcUrl() {
    return String.format("jdbc:postgresql://%s:%d/%s", host, port, database);
  }

  @Override
  public String toString() {
    return "DatasourceConfig{" +
      "host='" + host + '\'' +
      ", port=" + port +
      ", database='" + database + '\'' +
      ", user='" + user + '\'' +
      ", password='" + password + '\'' +
      '}';
  }
}
