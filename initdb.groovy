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

import groovy.sql.Sql
import org.flywaydb.core.Flyway

def db = [
  url     : 'jdbc:postgresql://localhost:5432/musicdb',
  user    : 'music',
  password: 'music',
  driver  : 'org.postgresql.Driver'
]

def sql = Sql.newInstance(db.url, db.user, db.password, db.driver)

def flyway = new Flyway()
flyway.setDataSource(db.url, db.user, db.password)
flyway.clean()
flyway.migrate()

Map<String, Long> genres = [:]
Map<String, Long> artists = [:]
Map<String, Long> albums = [:]

def addGenre = { String name ->
  def keys = sql.executeInsert("INSERT INTO genres (name) VALUES (${name})")
  genres.put(name, keys[0][0] as Long)
}

def addArtist = { String name, UUID mbArtistId ->
  def keys = sql.executeInsert('INSERT INTO artists (name, mb_artist_id) VALUES (?,?)', [name, mbArtistId])
  artists.put(name, keys[0][0] as Long)
}

def addAlbum = { String title, Integer discNumber, Integer discTotal, UUID mbAlbumId ->
  def keys = sql.executeInsert('''
INSERT INTO albums (title, disc_number, disc_total, mb_album_id) VALUES (?,?,?,?)
''', [title, discNumber, discTotal, mbAlbumId])
  albums.put(title, keys[0][0] as Long)
}

def addTrack = { long genreId, long albumId, long artistId, Integer trackNumber, Integer trackTotal, String title, UUID mbTrackId ->
  sql.executeInsert('''
INSERT INTO tracks (genre_id, album_id, artist_id, track_number, track_total, title, mb_track_id)
VALUES (?,?,?,?,?,?,?)
''', [genreId, artistId, albumId, trackNumber, trackTotal, title, mbTrackId])
}

def rhythmdbFile = "${System.getProperty('user.home')}/.local/share/rhythmbox/rhythmdb.xml"
def rhythmdb = new XmlParser().parse(rhythmdbFile)

rhythmdb.entry.each { Node entry ->
  if ("song" == entry.@type) {
    String genre = entry['genre'].text()
    if (!genres.containsKey(genre)) {
      addGenre(genre)
    }

    String artist = entry['artist'].text()
    UUID mbArtistId
    try {
      mbArtistId = UUID.fromString(entry['mb-artistid'].text() as String)
    } catch (IllegalArgumentException ignored) {
      mbArtistId = null
    }
    if (!artists.containsKey(artist)) {
      addArtist(artist, mbArtistId)
    }

    String album = entry['album'].text()
    String discNumber = entry['disc-number'].text() as String
    String discTotal = entry['disc-total'].text() as String
    UUID mbAlbumId
    try {
      mbAlbumId = UUID.fromString(entry['mb-albumid'].text() as String)
    } catch (IllegalArgumentException ignored) {
      mbAlbumId = null
    }
    if (!albums.containsKey(album)) {
      addAlbum(album, discNumber.isInteger() ? discNumber.toInteger() : null, discTotal ? discTotal.toInteger() : null, mbAlbumId)
    }

    String trackNumber = entry['track-number'].text() as String
    String trackTotal = entry['track-total'].text() as String
    String title = entry['title'].text()
    UUID mbTrackId
    try {
      mbTrackId = UUID.fromString(entry['mb-trackid'].text() as String)
    } catch (IllegalArgumentException ignored) {
      mbTrackId = null
    }

    addTrack(genres[genre], artists[artist], albums[album], trackNumber.isInteger() ? trackNumber.toInteger() : null, trackTotal ? trackTotal.toInteger() : null, title, mbTrackId)
  }
}

println 'Done'