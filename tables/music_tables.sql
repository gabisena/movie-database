-- Creating and dropping the music table
DROP TABLE IF EXISTS bands;
CREATE TABLE bands (
  band_name VARCHAR(255) primary key,
  style VARCHAR(255),
  members INT
);

-- Import data to the table in database (put in the terminal)
\COPY bands  FROM '/Users/gabrielasena/Desktop/sql-spiced/bands.csv' DELIMITER ',' CSV HEADER;