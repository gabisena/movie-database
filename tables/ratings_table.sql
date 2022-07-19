DROP TABLE IF EXISTS ratings_table;
CREATE TABLE ratings_table(
  userId INT,
  movieID INT,
  rating NUMERIC,
  timestamp INT
);

\COPY ratings_table  FROM '../data/ratings.csv' DELIMITER ',' CSV HEADER;