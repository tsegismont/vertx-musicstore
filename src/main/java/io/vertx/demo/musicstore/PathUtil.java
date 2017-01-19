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
