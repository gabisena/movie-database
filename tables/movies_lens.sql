DROP TABLE IF EXISTS movies_gabi;
CREATE TABLE movies_gabi(
  movieId INT primary key,
  title VARCHAR(255),
  genres VARCHAR(255)
);

\COPY movies_gabi  FROM '../data/movies.csv' DELIMITER ',' CSV HEADER;