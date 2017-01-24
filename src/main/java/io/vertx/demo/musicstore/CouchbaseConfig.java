package io.vertx.demo.musicstore;

import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Thomas Segismont
 */
public class CouchbaseConfig {

  private final List<String> nodes;

  public CouchbaseConfig(JsonObject datasourceConfig) {
    this.nodes = new ArrayList<>();
    JsonArray jsonArray = datasourceConfig.getJsonArray("nodes", new JsonArray().add("localhost"));
    jsonArray.forEach(o -> nodes.add((String) o));
  }

  public List<String> getNodes() {
    return nodes;
  }
}
