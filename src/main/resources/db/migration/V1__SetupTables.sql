CREATE TABLE genres (
  id   BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE artists (
  id   BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(500)
);

CREATE TABLE albums (
  id    BIGSERIAL NOT NULL PRIMARY KEY,
  title VARCHAR(500)
);

CREATE TABLE tracks (
  id          BIGSERIAL NOT NULL PRIMARY KEY,
  title       VARCHAR(500),
  genre_id    BIGINT    NOT NULL REFERENCES genres,
  album_id    BIGINT    NOT NULL REFERENCES albums,
  artist_id   BIGINT    NOT NULL REFERENCES artists,
  mb_track_id VARCHAR(100)
);