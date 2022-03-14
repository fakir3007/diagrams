CREATE table if not EXISTS  Perfomers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL unique,
	genre_id integer references genres(id) 
);


create table if not exists genres(
	id serial primary key,
	name VARCHAR(40) not null
	
);

create table if not exists albums (
	id serial primary key,
	name VARCHAR(40) NOT null,
	years integer check (years > 0) not null,
	perfomer_id integer references perfomers(id)

);

create table if not exists tracks(
	id serial primary key, 
	name VARCHAR(40) not null,
	duration integer check (duration > 0) not null,
	album_id integer references albums(id)
);
