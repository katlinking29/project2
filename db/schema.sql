
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

-- Table to store languages
CREATE TABLE languages
(
    id int NOT NULL AUTO_INCREMENT,
    language_name varchar(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE videos
(
    id int NOT NULL AUTO_INCREMENT,
    language_id int NOT NULL,
    name varchar(100) NOT NULL,
    channel varchar(100) NOT NULL,
    link varchar(100) NOT NULL,
  	PRIMARY KEY (id),
  	FOREIGN KEY (language_id) REFERENCES languages(id)
);

CREATE TABLE courses
(
    id int NOT NULL AUTO_INCREMENT,
    language_id int NOT NULL,
    name varchar(100) NOT NULL,
    path varchar(100) NOT NULL,
    company_name varchar(100) NOT NULL,
    link varchar(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

CREATE TABLE books
(
    id int NOT NULL AUTO_INCREMENT,
    language_id int NOT NULL,
    name varchar(100) NOT NULL,
    store_url varchar(100) NOT NULL,
    path varchar(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

