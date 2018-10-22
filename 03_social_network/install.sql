CREATE DATABASE ex_social;

\connect ex_social

CREATE TABLE users(
  user_id INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT,
  house TEXT);

CREATE TABLE follows(
  user_id INTEGER,
  follows INTEGER,
  date_created TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (follows) REFERENCES users(user_id));
 
\copy users FROM 'users.csv' WITH DELIMITER ',' CSV HEADER;
\copy follows FROM 'follows.csv' WITH DELIMITER ',' CSV HEADER;
