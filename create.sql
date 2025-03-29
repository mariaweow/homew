create table if not exists genre(
	id serial primary key,
	title varchar(40) not null
);

create table if not exists performer(
	id serial primary key,
	name varchar(40) not null
);

create table if not exists genreperformer(
	genre_id integer references genre(id),
	performer_id integer references performer(id),
	constraint pk primary key (genre_id, performer_id)
);

create table if not exists album(
	id serial primary key,
	title varchar(40) not null,
	year integer not null
);

create table if not exists performeralbum(
	performer_id integer references performer(id),
	album_id integer references album(id),
	constraint pandak primary key (performer_id, album_id)
);

create table if not exists song(
	id serial primary key,
	album_id INTEGER NOT NULL REFERENCES Album(id),
	title varchar(40) not null,
	duration integer not null
);

create table if not exists collection(
	id serial primary key,
	title varchar(40) not null,
	year integer not null
);

create table if not exists collectionsong(
	song_id integer not null references Song(id),
	collection_id integer not null references Collection(id),
	constraint candsk primary key(song_id, collection_id)
);