CREATE DATABASE ex_seattle_weather;

\connect ex_seattle_weather;

CREATE TABLE weather(
  date_weather TIMESTAMP,
  inches_rain REAL,
  temp_max REAL,
  temp_min REAL,
  did_rain BOOLEAN);

\copy weather FROM 'cleaned_weather.csv' WITH DELIMITER ',' CSV HEADER;
