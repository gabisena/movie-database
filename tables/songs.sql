DROP TABLE IF EXISTS songs
CREATE TABLE songs(
    band_name VARCHAR(255),
    song VARCHAR(255));
    
\COPY songs FROM '/Users/gabrielasena/Desktop/sql-spiced/data/songs.csv' DELIMITER ',' CSV HEADER;

