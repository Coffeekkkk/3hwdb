CREATE TABLE IF NOT EXISTS style (
style_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS singers (
singer_id SERIAL PRIMARY KEY,
singer_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS style_singer_relation (
ssr_id SERIAL PRIMARY KEY,
style_id INT REFERENCES style(style_id),
singer_id INT REFERENCES singers(singer_id)
);

CREATE TABLE IF NOT EXISTS albums (
album_id SERIAL PRIMARY KEY,
album_name VARCHAR(60) NOT NULL,
release_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS albumsingers (
as_id SERIAL PRIMARY KEY,
singer_id INT REFERENCES singers(singer_id),
album_id INT REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS tracks (
track_id SERIAL PRIMARY KEY,
track_name VARCHAR(60) NOT NULL,
duration REAL NOT NULL,
album_id INT REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collection (
collection_id SERIAL PRIMARY KEY,
collection_name VARCHAR(60) NOT NULL,
year_of_release INT NOT NULL
);

CREATE TABLE IF NOT EXISTS trackcollection (
tk_id SERIAL PRIMARY KEY,
track_id INT REFERENCES tracks(track_id),
collection_id INT REFERENCES collection(collection_id)
);

ALTER SEQUENCE singers_singer_id_seq RESTART WITH 1
