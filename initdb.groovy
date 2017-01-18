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

def addGenre = { String genre ->
  def keys = sql.executeInsert("INSERT INTO genres (name) VALUES (${genre})")
  genres.put(genre, keys[0][0] as Long)
}

def addArtist = { String artist ->
  def keys = sql.executeInsert("INSERT INTO artists (name) VALUES (${artist})")
  artists.put(artist, keys[0][0] as Long)
}

def addAlbum = { String album ->
  def keys = sql.executeInsert("INSERT INTO albums (title) VALUES (${album})")
  albums.put(album, keys[0][0] as Long)
}

def addTrack = { Long genreId, Long albumId, Long artistId, String title, String mbTrackId ->
  sql.executeInsert("""
INSERT INTO tracks (genre_id, album_id, artist_id, title, mb_track_id)
VALUES (${genreId},${artistId},${albumId},${title},${mbTrackId})
""")
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
    if (!artists.containsKey(artist)) {
      addArtist(artist)
    }

    String album = entry['album'].text()
    if (!albums.containsKey(album)) {
      addAlbum(album)
    }

    String title = entry['title'].text()
    String mbTrackId = entry['mb-trackid'].text()

    addTrack(genres[genre], artists[artist], albums[album], title, mbTrackId)
  }
}

println 'Done'