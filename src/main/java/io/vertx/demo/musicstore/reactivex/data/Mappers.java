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

package io.vertx.demo.musicstore.reactivex.data;

import io.vertx.demo.musicstore.rxjava3.data.AlbumRowMapper;
import io.vertx.demo.musicstore.rxjava3.data.ArtistRowMapper;
import io.vertx.demo.musicstore.rxjava3.data.GenreRowMapper;
import io.vertx.demo.musicstore.rxjava3.data.TrackRowMapper;

public class Mappers {

  public static final GenreRowMapper GENRE = GenreRowMapper.newInstance(io.vertx.demo.musicstore.data.GenreRowMapper.INSTANCE);
  public static final AlbumRowMapper ALBUM = AlbumRowMapper.newInstance(io.vertx.demo.musicstore.data.AlbumRowMapper.INSTANCE);
  public static final ArtistRowMapper ARTIST = ArtistRowMapper.newInstance(io.vertx.demo.musicstore.data.ArtistRowMapper.INSTANCE);
  public static final TrackRowMapper TRACK = TrackRowMapper.newInstance(io.vertx.demo.musicstore.data.TrackRowMapper.INSTANCE);

  private Mappers() {
    // Constants class
  }
}
