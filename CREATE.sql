
CREATE TABLE IF NOT EXISTS genres (
	genres_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT null UNIQUE	
); 

CREATE TABLE IF NOT EXISTS artist (
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT null UNIQUE
); 

CREATE TABLE IF NOT EXISTS genre (
	genre_id  INTEGER NOT NULL REFERENCES genres(genres_id),
	artist_id INTEGER NOT NULL REFERENCES artist(artist_id),
	
	CONSTRAINT genre_pk PRIMARY KEY (genre_id, artist_id)
	
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(120) NOT NULL,	
	date DATE not NULL,check (date > '1950-01-01')
);

CREATE TABLE IF NOT EXISTS albums (
	artist_id INTEGER NOT null UNIQUE REFERENCES artist(artist_id),
	album_id INTEGER NOT null UNIQUE REFERENCES album(album_id),
	CONSTRAINT albums_pk PRIMARY KEY (artist_id, album_id)
	);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(120) NOT null UNIQUE,
	duration time NOT NULL,
    album_id INTEGER NOT NULL REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(120) NOT NULL,
	date DATE not NULL, check (date > '1950-01-01')
);

CREATE TABLE IF NOT EXISTS collections (
	track_id INTEGER NOT null  REFERENCES tracks(track_id),
	collection_id INTEGER NOT NULL REFERENCES collection(collection_id),
	CONSTRAINT collections_pk PRIMARY KEY (track_id, collection_id)
	
);