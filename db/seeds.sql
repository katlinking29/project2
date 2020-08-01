INSERT INTO users (email, password) VALUES ('jess@gmail.com', "admin");
INSERT INTO users (email, password) VALUES ('kyle@gmail.com', "admin");
INSERT INTO users (email, password) VALUES ('brenden@gmail.com', "admin");
INSERT INTO users (email, password) VALUES ('katlin@gmail.com', "admin");

yyyy-mm-dd hh:mm:ss
INSERT INTO posted_meetups (event_date, event_time, event_name, event_location, event_description) 
VALUES ('2020-08-20', '18:00:00', 'Hacker Hour', '123 South Blvd, Charlotte, NC 28203', 'Join us for a happy hour to discuss full stack web development!');

INSERT INTO posted_meetups (event_date, event_time, event_name, event_location, event_description) 
VALUES ('2020-05-09', '10:00:00', 'Which libraries are the best?', '123 Church St, Charlotte, NC 28202', 'There are so many libraries to choose from! Join us for a discussion on libraries developers find most helpful, and the pros and cons of libraries they have used.');

INSERT INTO event_attendees (first_name, last_name, email, event_id)
VALUES ('Katlin', 'King', 'katlin@gmail.com', 1); 
INSERT INTO event_attendees (first_name, last_name, email, event_id)
VALUES ('Jess', 'Moran', 'jess@gmail.com', 1); 
INSERT INTO event_attendees (first_name, last_name, email, event_id)
VALUES ('Brenden', 'Forbis', 'brenden@gmail.com', 2); 
INSERT INTO event_attendees (first_name, last_name, email, event_id)
VALUES ('Kyle', 'Johnson', 'kyle@gmail.com', 2); 