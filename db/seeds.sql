USE helloWorld_db

INSERT INTO users (email, password) VALUES ('jess@gmail.com', "admin");
INSERT INTO users (email, password) VALUES ('kyle@gmail.com', "admin");
INSERT INTO users (email, password) VALUES ('brenden@gmail.com', "admin");
INSERT INTO users (email, password) VALUES ('katlin@gmail.com', "admin");

INSERT INTO events (event_date, event_time, event_name, event_location, event_description)
VALUES ('2020-08-20', '18:00:00', 'Hacker Hour', '123 South Blvd, Charlotte, NC 28203', 'Join us for a happy hour to discuss full stack web development!');

INSERT INTO events (event_date, event_time, event_name, event_location, event_description)
VALUES ('2020-05-09', '10:00:00', 'Which libraries are the best?', '123 Church St, Charlotte, NC 28202', 'There are so many libraries to choose from! Join us for a discussion on libraries developers find most helpful, and the pros and cons of libraries they have used.');

INSERT INTO event_attendees (first_name, last_name, email, event_id)
VALUES ('Katlin', 'King', 'katlin@gmail.com','2020-08-10 19:31:05'l,'2020-08-10 19:31:05');
INSERT INTO event_attendees (first_name, last_name, email, event_id)
VALUES ('Jess', 'Moran', 'jess@gmail.com','2020-08-10 19:31:05'l,'2020-08-10 19:31:05');
INSERT INTO event_attendees (first_name, last_name, email, event_id)
VALUES ('Brenden', 'Forbis', 'brenden@gmail.com', '2020-08-10 19:31:05', '2020-08-10 19:31:05');
INSERT INTO event_attendees (first_name, last_name, email, event_id)
VALUES ('Kyle', 'Johnson', 'kyle@gmail.com', '2020-08-10 19:31:05', '2020-08-10 19:31:05');

-- Insert data into language table
INSERT INTO languages (language_name, createdAt, updatedAt)
VALUES ('JavaScript','2020-08-10 19:31:05', '2020-08-10 19:31:05'), ('Node JS','2020-08-10 19:31:05', '2020-08-10 19:31:05'), ('React','2020-08-10 19:31:05', '2020-08-10 19:31:05'),('My SQL','2020-08-10 19:31:05', '2020-08-10 19:31:05');

-- Insert data into videos table
INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('Async/Await', 'Fun Funfuntion', 'https://www.youtube.com/embed/568g8hxJJp4', '2020-08-10 19:31:05', '2020-08-10 19:31:05', 1);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('Javascript Functions Tutorial', 'LearnCode.academy', 'https://youtu.be/AY6X5jZZ_JE', '2020-08-10 19:31:05', '2020-08-10 19:31:05', 1);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('JavaScript Promises In 10 Minutes', 'Web Dev Simplified', 'https://youtu.be/DHvZLI7Db8E', '2020-08-10 19:31:05', '2020-08-10 19:31:05', 1);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('Learn Node in 1 Hour', 'Programming with Mosh', 'https://youtu.be/TlB_eWDSMt4', '2020-08-10 19:31:05', '2020-08-10 19:31:05', 2);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('Node JS Installation', 'Telusko', 'https://youtu.be/JINE4D0Syqw', '2020-08-10 19:31:05', '2020-08-10 19:31:05', 2);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('What is Node js?', 'Programming with Mosh','https://youtu.be/uVwtVBpw7RQ', '2020-08-10 19:31:05', '2020-08-10 19:31:05', 2);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('Programming with Mosh', 'Stefan Mischook', 'https://youtu.be/BJvGeOktipE', '2020-08-10 19:31:05', '2020-08-10 19:31:05', 3);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('Learn React In 2020', 'Mahmoud Shehata', 'https://youtu.be/NJWI1b1upps', '2020-08-10 19:31:05', '2020-08-10 19:31:05', 3);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('Dev Ed', 'Learn Node in 1 Hour', 'https://youtu.be/Law7wfdg_ls', '2020-08-10 19:31:05', '2020-08-10 19:31:05', 3);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('MySQL IN 10 MINUTES', '365 Data Science', 'https://youtu.be/2bW3HuaAUcY','2020-08-10 19:31:05', '2020-08-10 19:31:05', 4);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('SQL Basics for Beginners', 'edureka!', 'https://youtu.be/zbMHLJ0dY4w','2020-08-10 19:31:05', '2020-08-10 19:31:05', 4);

INSERT INTO videos ( video_name, video_channel, video_link, createdAt, updatedAt, languageId )
VALUES ('Danielle Thé', 'What is SQL?', 'https://youtu.be/27axs9dO7AE','2020-08-10 19:31:05', '2020-08-10 19:31:05', 4);

-- Insert data into books table
INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('Interactive Front-End Web Development', 'shorturl.at/eoIM7', 'shorturl.at/blyHT','2020-08-10 19:31:05', '2020-08-10 19:31:05', 1);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('Secrets of the JavaScript Ninja', 'shorturl.at/kEKM3', 'shorturl.at/inADE','2020-08-10 19:31:05', '2020-08-10 19:31:05', 1);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('Learning JavaScript', 'shorturl.at/coQU9', 'shorturl.at/isDN5','2020-08-10 19:31:05', '2020-08-10 19:31:05', 1);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('Beginning Node.js', 'shorturl.at/hoEN0', 'shorturl.at/hiuyE','2020-08-10 19:31:05', '2020-08-10 19:31:05', 2);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('Node JS Installation', 'Telusko', 'https://youtu.be/JINE4D0Syqw','2020-08-10 19:31:05', '2020-08-10 19:31:05', 2);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ("The Ultimate Beginner's Guide", 'shorturl.at/pqHZ3','shorturl.at/hMW12','2020-08-10 19:31:05', '2020-08-10 19:31:05', 2);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('React in Action', 'shorturl.at/atB05', 'shorturl.at/xzNU9','2020-08-10 19:31:05', '2020-08-10 19:31:05', 3);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('Learn React In 2020', 'Mahmoud Shehata', 'https://youtu.be/NJWI1b1upps','2020-08-10 19:31:05', '2020-08-10 19:31:05', 3);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('React: Up & Running', 'shorturl.at/vAHP1', 'shorturl.at/mGSZ4','2020-08-10 19:31:05', '2020-08-10 19:31:05', 3);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('High Performance MySQL:', 'shorturl.at/aboH3', 'shorturl.at/lmxM0','2020-08-10 19:31:05', '2020-08-10 19:31:05', 4);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('Your Step By Step Guide to Database Design', 'shorturl.at/rFOY1', 'shorturl.at/efrDF','2020-08-10 19:31:05', '2020-08-10 19:31:05', 4);

INSERT INTO books (book_name, store_url, book_img, createdAt, updatedAt, languageId)
VALUES ('A Step-by-Step Guide to Creating Dynamic Websites', 'shorturl.at/atLT0', 'shorturl.at/pzHTV','2020-08-10 19:31:05', '2020-08-10 19:31:05', 4);

-- Insert data into courses table
INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('JavaScript: Getting Started', '/images/pluralsight.png', 'Pluralsight', 'bit.ly/2PyDvTa', '2020-08-10 19:31:05', '2020-08-10 19:31:05',1);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('Front End Web Developer', 'images/udacity.png', 'Udacity', 'bit.ly/31q6ldL','2020-08-10 19:31:05', '2020-08-10 19:31:05',1);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('Learn JavaScript', 'shorturl.at/isDN5', 'Codecademy', 'shorturl.at/mpuU0','2020-08-10 19:31:05', '2020-08-10 19:31:05', 1);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('Node.js: Getting Started', '/images/pluralsight.png', 'Pluralsight', 't.ly/qn2W','2020-08-10 19:31:05', '2020-08-10 19:31:05', 2);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('Learn and Understand NodeJS', '/images/udemy.png', 'Udacity', 'bit.ly/3ihC0ow','2020-08-10 19:31:05', '2020-08-10 19:31:05', 2);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('Learn Node.js', 'images/codecademy.png', 'Codecademy', 'shorturl.at/hiBG3','2020-08-10 19:31:05', '2020-08-10 19:31:05', 2);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('React: Getting Started', '/images/pluralsight.png', 'Pluralsight', 'bit.ly/33BTfgu','2020-08-10 19:31:05', '2020-08-10 19:31:05', 3);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('React Nanodegree Program', '/images/udacity.png', 'Udacity', 'bit.ly/30zoCGe','2020-08-10 19:31:05', '2020-08-10 19:31:05', 3);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('Create a front-end app with React', 'images/codecademy.png', 'Codecademy', 'shorturl.at/fiFO8','2020-08-10 19:31:05', '2020-08-10 19:31:05', 3);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('Designing and Implementing SQL Server Tables and Views', '/images/pluralsight.png', 'Pluralsight', 'bit.ly/3a4dCUx','2020-08-10 19:31:05', '2020-08-10 19:31:05', 4);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('School of Data Science SQL', '/images/udacity.png', 'Udacity', 'bit.ly/30xRj6E','2020-08-10 19:31:05', '2020-08-10 19:31:05', 4);

INSERT INTO courses (course_name, course_path, company_name, course_link, createdAt, updatedAt, languageId)
VALUES ('Learn SQL', 'images/codecademy.png', 'Codecademy', 'shorturl.at/delJ3','2020-08-10 19:31:05', '2020-08-10 19:31:05', 4);
