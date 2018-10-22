CREATE DATABASE ex_election;

\connect ex_election;

CREATE TABLE election(
  state TEXT,
  democrat_votes INTEGER,
  republican_votes INTEGER,
  other_votes INTEGER,
  year INTEGER
);

CREATE TABLE candidate(
  year INTEGER,
  party TEXT,
  candidate TEXT);

\copy election FROM 'election.csv' WITH DELIMITER ',' CSV HEADER;
\copy candidate FROM 'candidate.csv' WITH DELIMITER ',' CSV HEADER;
