DROP TABLE IF EXISTS links_table;
CREATE TABLE links_table(
  movieID INT REFERENCES movies(movieid),
  imdbId INT,
  rating INT
);

\COPY links_table  FROM '../data/links.csv' DELIMITER ',' CSV HEADER; 