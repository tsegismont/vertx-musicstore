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
