DROP TABLE IF EXISTS test.performer CASCADE;
DROP TABLE IF EXISTS test.album CASCADE;
DROP TABLE IF EXISTS test.track CASCADE;
DROP TABLE IF EXISTS test.genre CASCADE;
DROP TABLE IF EXISTS test.employee CASCADE;
DROP TABLE IF EXISTS test.collection CASCADE;
DROP TABLE IF EXISTS test.performer_genre CASCADE;
DROP TABLE IF EXISTS test.performer_album CASCADE;
DROP TABLE IF EXISTS test.track_collection CASCADE;

create table if not exists test.performer (
	performer_id integer primary key,
	performer_name varchar(100)
);

create table if not exists test.album (
	album_id integer primary key,
	album_name varchar(1000),
	year integer
);

create table if not exists test.track (
	track_id integer primary key,
	track_name varchar(100),
	duration integer,
	album_id integer not null references test.album(album_id)
);

create table if not exists test.genre (
	genre_id integer primary key,
	genre_name varchar(100)
	);

create table if not exists test.employee(
	employee_id integer primary key,
	employee_name varchar(100),
	department varchar(100),
	boss integer references test.employee(employee_id)
	);

create table if not exists test.collection(
	collection_id integer primary key,
	collection_name varchar(100),
	year integer
	);

create table if not exists test.performer_genre(
	id integer primary key,
	performer_id integer not null references test.performer(performer_id),
	genre_id integer not null references test.genre(genre_id)
	);

create table if not exists test.performer_album(
	id integer primary key,
	performer_id integer not null references test.performer(performer_id),
	album_id integer not null references test.album(album_id)
	);

create table if not exists test.track_collection(
	id integer primary key,
	track_id integer not null references test.track(track_id),
	collection_id integer not null references test.collection(collection_id)
	);