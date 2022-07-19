DROP TABLE IF EXISTS tags_table;
CREATE TABLE tags_table(
  movieID INT,
  psqluserId INT,
  tag VARCHAR(255),
  timestamp INT
);

\COPY tags_table  FROM '../data/tags.csv' DELIMITER ',' CSV HEADER;