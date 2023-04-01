CREATE DATABASE music_service;


CREATE TABLE collection (
id SERIAL PRIMARY KEY,
name VARCHAR(60),
release_year DATE
);


CREATE TABLE track (
id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL,
lenght TIME NOT NULL 
);


CREATE TABLE track_and_collection( 
id SERIAL PRIMARY KEY,
track_id INTEGER REFERENCES track(id),
collection_id INTEGER REFERENCES collection(id)
);


CREATE TABLE album(
id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL,
release_year DATE NOT NULL
);
ALTER TABLE track add album_id BIGINT REFERENCES album (id);


CREATE TABLE  singer(
id Serial PRIMARY KEY,
name VARCHAR(60) not null,
nickname VARCHAR(60) not null
);

CREATE TABLE singer_and_album(
id SERIAL PRIMARY KEY,
singer_id INTEGER REFERENCES singer(id),
album_id INTEGER REFERENCES album(id)
);


CREATE TABLE genre(
id Serial PRIMARY KEY,
NAME VARCHAR(60) NOT NULL
);


CREATE TABLE singers_and_genre(
id SERIAL PRIMARY KEY,
singer_id INTEGER REFERENCES singer(id),
genre_id INTEGER REFERENCES genre(id)
);









