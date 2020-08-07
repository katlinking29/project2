INSERT INTO users (email, password) VALUES ('jess@gmail.com', "admin");
INSERT INTO users (email, password) VALUES ('kyle@gmail.com', "admin");
INSERT INTO users (email, password) VALUES ('brenden@gmail.com', "admin");
INSERT INTO users (email, password) VALUES ('katlin@gmail.com', "admin");

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

-- Insert data into language table
INSERT INTO languages (language_name)
VALUES ('JavaScript'), ('Node JS'), ('React'),('My SQL');

-- Insert data into videos table
INSERT INTO videos (language_id, name, channel, link)
VALUES (1, 'Async/Await', 'Fun Funfuntion', 'https://www.youtube.com/embed/568g8hxJJp4');

INSERT INTO videos (language_id, name, channel, link)
VALUES (1, 'Javascript Functions Tutorial', 'LearnCode.academy', 'https://youtu.be/AY6X5jZZ_JE');

INSERT INTO videos (language_id, name, channel, link)
VALUES (1, 'JavaScript Promises In 10 Minutes', 'Web Dev Simplified', 'https://youtu.be/DHvZLI7Db8E');

INSERT INTO videos (language_id, name, channel, link)
VALUES (2,'Learn Node in 1 Hour', 'Programming with Mosh', 'https://youtu.be/TlB_eWDSMt4');

INSERT INTO videos (language_id, name, channel, link)
VALUES (2, 'Node JS Installation', 'Telusko', 'https://youtu.be/JINE4D0Syqw');

INSERT INTO videos (language_id, name, channel, link)
VALUES (2, 'What is Node js?', 'Programming with Mosh','https://youtu.be/uVwtVBpw7RQ');

INSERT INTO videos (language_id, name, channel, link)
VALUES (3, 'Programming with Mosh', 'Stefan Mischook', 'https://youtu.be/BJvGeOktipE');

INSERT INTO videos (language_id, name, channel, link)
VALUES (3, 'Learn React In 2020', 'Mahmoud Shehata', 'https://youtu.be/NJWI1b1upps');

INSERT INTO videos (language_id, name, channel, link)
VALUES (3, 'Dev Ed', 'Learn Node in 1 Hour', 'https://youtu.be/Law7wfdg_ls');

INSERT INTO videos (language_id, name, channel, link)
VALUES (4, 'MySQL IN 10 MINUTES', '365 Data Science', 'https://youtu.be/2bW3HuaAUcY');

INSERT INTO videos (language_id, name, channel, link)
VALUES (4, 'SQL Basics for Beginners', 'edureka!', 'https://youtu.be/zbMHLJ0dY4w');

INSERT INTO videos (language_id, name, channel, link)
VALUES (4, 'Danielle Thé', 'What is SQL?', 'https://youtu.be/27axs9dO7AE');

-- Insert data into books table
INSERT INTO books (language_id, name, store_url, path)
VALUES (1, 'Interactive Front-End Web Development', 'shorturl.at/eoIM7', 'shorturl.at/blyHT');

INSERT INTO books (language_id, name, store_url, path)
VALUES (1, 'Secrets of the JavaScript Ninja', 'shorturl.at/kEKM3', 'shorturl.at/inADE');

INSERT INTO books (language_id, name, store_url, path)
VALUES (1, 'Learning JavaScript', 'shorturl.at/coQU9', 'shorturl.at/isDN5');

INSERT INTO books (language_id, name, store_url, path)
VALUES (2,'Beginning Node.js', 'shorturl.at/hoEN0', 'shorturl.at/hiuyE');

INSERT INTO books (language_id, name, store_url, path)
VALUES (2, 'Node JS Installation', 'Telusko', 'https://youtu.be/JINE4D0Syqw');

INSERT INTO books (language_id, name, store_url, path)
VALUES (2, "The Ultimate Beginner's Guide", 'shorturl.at/pqHZ3','shorturl.at/hMW12');

INSERT INTO books (language_id, name, store_url, path)
VALUES (3, 'React in Action', 'shorturl.at/atB05', 'shorturl.at/xzNU9');

INSERT INTO books (language_id, name, store_url, path)
VALUES (3, 'Learn React In 2020', 'Mahmoud Shehata', 'https://youtu.be/NJWI1b1upps');

INSERT INTO books (language_id, name, store_url, path)
VALUES (3, 'React: Up & Running', 'shorturl.at/vAHP1', 'shorturl.at/mGSZ4');

INSERT INTO books (language_id, name, store_url, path)
VALUES (4, 'High Performance MySQL:', 'shorturl.at/aboH3', 'shorturl.at/lmxM0');

INSERT INTO books (language_id, name, store_url, path)
VALUES (4, 'Your Step By Step Guide to Database Design', 'shorturl.at/rFOY1', 'shorturl.at/efrDF');

INSERT INTO books (language_id, name, store_url, path)
VALUES (4, 'A Step-by-Step Guide to Creating Dynamic Websites', 'shorturl.at/atLT0', 'shorturl.at/pzHTV');

-- Insert data into courses table
INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (1, 'JavaScript: Getting Started', '/images/pluralsight.png', 'Pluralsight', 'bit.ly/2PyDvTa');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (1, 'Front End Web Developer', 'images/udacity.png', 'Udacity', 'bit.ly/31q6ldL');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (1, 'Learn JavaScript', 'shorturl.at/isDN5', 'Codecademy', 'shorturl.at/mpuU0');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (2, 'Node.js: Getting Started', '/images/pluralsight.png', 'Pluralsight', 't.ly/qn2W');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (2, 'Learn and Understand NodeJS', '/images/udemy.png', 'Udacity', 'bit.ly/3ihC0ow');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (2, 'Learn Node.js', 'images/codecademy.png', 'Codecademy', 'shorturl.at/hiBG3');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (3, 'React: Getting Started', '/images/pluralsight.png', 'Pluralsight', 'bit.ly/33BTfgu');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (3, 'React Nanodegree Program', '/images/udacity.png', 'Udacity', 'bit.ly/30zoCGe');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (3, 'Create a front-end app with React', 'images/codecademy.png', 'Codecademy', 'shorturl.at/fiFO8');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (4, 'Designing and Implementing SQL Server Tables and Views', '/images/pluralsight.png', 'Pluralsight', 'bit.ly/3a4dCUx');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (4, 'School of Data Science SQL', '/images/udacity.png', 'Udacity', 'bit.ly/30xRj6E');

INSERT INTO courses (language_id, name, path, company_name, link)
VALUES (4, 'Learn SQL', 'images/codecademy.png', 'Codecademy', 'shorturl.at/delJ3');
