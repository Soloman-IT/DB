CREATE DATABASE hotel_hw4;
\c hotel_hw4

create table hotel (hotel_id serial primary key,
					name varchar(200),
					address varchar(200),
					category varchar(200));


create table position (position_id serial primary key,
					   name varchar(200) NOT NULL);
                       
create table staffer (staffer_id serial primary key,
					  name varchar(200)  NOT NULL,
					  salary varchar(200)  NOT NULL,
					  hotel_id integer REFERENCES hotel (hotel_id)  NOT NULL,
					  position_id integer REFERENCES position (position_id));
 
 
create table room (room_id serial primary key,
 number integer NOT NULL,
 number_seats integer NOT NULL,
 category varchar(200) NOT NULL,
 hotel_id integer REFERENCES hotel (hotel_id) NOT NULL);
 
 
 
create table cleaning (clean_id serial primary key,
					   time timestamp NOT NULL,
					   staffer_id integer REFERENCES staffer (staffer_id) NOT NULL ,
					   room_id integer REFERENCES room (room_id)NOT NULL);
 
 
create table guest (quest_id serial primary key,
 name varchar NOT NULL,
 documents varchar(200),
 phone_number varchar(200));
 
 
create table livings (living_id serial primary key,
 period varchar(200) NOT NULL,
 payment integer NOT NULL,
 quest_id integer REFERENCES guest (quest_id),
 room_id integer REFERENCES room (room_id) NOT NULL);