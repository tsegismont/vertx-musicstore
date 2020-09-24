/*
 * Copyright 2020 Red Hat, Inc.
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

package io.vertx.demo.musicstore.data;

import io.vertx.codegen.annotations.DataObject;
import io.vertx.codegen.format.SnakeCase;
import io.vertx.core.json.JsonObject;
import io.vertx.sqlclient.templates.annotations.Column;
import io.vertx.sqlclient.templates.annotations.RowMapped;

@DataObject(generateConverter = true)
@RowMapped(formatter = SnakeCase.class)
public class Track {

  private Long id;
  private Short trackNumber;
  private Short trackTotal;
  private String title;
  @Column(name = "mb_track_id")
  private String musicBrainTrackId;
  private Long artistId;
  private String artistName;

  public Long getId() {
    return id;
  }

  public Track setId(Long id) {
    this.id = id;
    return this;
  }

  public Short getTrackNumber() {
    return trackNumber;
  }

  public Track setTrackNumber(Short trackNumber) {
    this.trackNumber = trackNumber;
    return this;
  }

  public Short getTrackTotal() {
    return trackTotal;
  }

  public Track setTrackTotal(Short trackTotal) {
    this.trackTotal = trackTotal;
    return this;
  }

  public String getTitle() {
    return title;
  }

  public Track setTitle(String title) {
    this.title = title;
    return this;
  }

  public String getMusicBrainTrackId() {
    return musicBrainTrackId;
  }

  public Track setMusicBrainTrackId(String musicBrainTrackId) {
    this.musicBrainTrackId = musicBrainTrackId;
    return this;
  }

  public JsonObject toJson() {
    JsonObject json = new JsonObject();
    TrackConverter.toJson(this, json);
    return json;
  }

  public Long getArtistId() {
    return artistId;
  }

  public Track setArtistId(Long artistId) {
    this.artistId = artistId;
    return this;
  }

  public String getArtistName() {
    return artistName;
  }

  public Track setArtistName(String artistName) {
    this.artistName = artistName;
    return this;
  }

  @Override
  public String toString() {
    return "Track{" +
      "id=" + id +
      ", trackNumber=" + trackNumber +
      ", trackTotal=" + trackTotal +
      ", title='" + title + '\'' +
      ", musicBrainTrackId='" + musicBrainTrackId + '\'' +
      ", artistId=" + artistId +
      ", artistName='" + artistName + '\'' +
      '}';
  }
}
