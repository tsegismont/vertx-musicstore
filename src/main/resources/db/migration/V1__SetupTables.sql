CREATE TABLE genres (
  id   BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(100) UNIQUE
);

CREATE TABLE artists (
  id           BIGSERIAL NOT NULL PRIMARY KEY,
  name         VARCHAR(500) UNIQUE,
  mb_artist_id UUID
);

CREATE TABLE albums (
  id          BIGSERIAL NOT NULL PRIMARY KEY,
  title       VARCHAR(500) UNIQUE,
  disc_number SMALLINT,
  disc_total  SMALLINT,
  mb_album_id UUID
);

CREATE TABLE tracks (
  id           BIGSERIAL    NOT NULL PRIMARY KEY,
  genre_id     BIGINT       NOT NULL REFERENCES genres,
  album_id     BIGINT       NOT NULL REFERENCES albums,
  artist_id    BIGINT       NOT NULL REFERENCES artists,
  track_number SMALLINT,
  track_total  SMALLINT,
  title        VARCHAR(500) NOT NULL,
  mb_track_id  VARCHAR(100)
);