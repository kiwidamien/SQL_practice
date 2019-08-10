CREATE DATABASE ex_attendance;

\connect ex_attendance

CREATE TABLE students(
  student_id INTEGER PRIMARY KEY,
  grade_level TEXT NOT NULL,
  date_of_birth TIMESTAMP);

CREATE TABLE attendance(
  record_date TIMESTAMP,
  student_id INTEGER,
  attended BOOLEAN,
  FOREIGN KEY (student_id) REFERENCES students(student_id));
 
\copy students FROM 'student.csv' WITH DELIMITER ',' CSV HEADER;
\copy attendance FROM 'attendance.csv' WITH DELIMITER ',' CSV HEADER;
