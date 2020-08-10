### Schema

DROP DATABASE IF EXISTS helloWorld_db;

CREATE DATABASE helloWorld_db;

USE helloWorld_db;

CREATE TABLE event_attendees
(
	id int NOT NULL AUTO_INCREMENT,
	first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    email varchar(100) NOT NULL,
    event_id int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (event_id) REFERENCES posted_meetups(id)
);
