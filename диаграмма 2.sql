create table if not exists genre(
	id serial primary key,
	name varchar(40)
);

create table if not exists alboms(
	id serial primary key,
	name varchar(40),
	year integer
);

create table if not exists tracks(
	id serial primary key,
	name varchar(40),
	duration numeric,
	alboms_id integer not null references alboms(id) 
	
);

create table if not exists performers(
	id serial primary key,
	name varchar(80),
	genre_id integer not null references genre(id),
	alboms_id integer not null references alboms(id) 
);