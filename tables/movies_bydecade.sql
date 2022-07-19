-- First VIEW
CREATE OR REPLACE VIEW ratings_full AS
SELECT ratings_table.*,movies_gabi.title,movies_gabi.genres, movies_gabi.year
FROM ratings_table
LEFT JOIN movies_gabi 
ON ratings_table.movieid = movies_gabi.movieid;

-- Secound VIEW 
CREATE OR REPLACE VIEW ratings_byyear AS
SELECT ratings_table.movieid,movies_gabi.title, movies_gabi.year, ROUND(AVG(rating),2) AS avg_rating, COUNT(rating) AS cnt_rating
FROM ratings_table
LEFT JOIN movies_gabi 
ON ratings_table.movieid = movies_gabi.movieid
GROUP BY ratings_table.movieid,movies_gabi.title,movies_gabi.year;

-- FILTERS
-- 70`s
SELECT * FROM ratings_byyear
WHERE year >=1970 and year <1980 and cnt_rating >=30
ORDER BY avg_rating DESC
LIMIT 10;
--80's
SELECT * FROM ratings_byyear
WHERE year >=1980 and year <1990 and cnt_rating >=30
ORDER BY avg_rating DESC
LIMIT 10;
-- 90's
SELECT * FROM ratings_byyear
WHERE year >=1990 and year <2000 and cnt_rating >=30
ORDER BY avg_rating DESC
LIMIT 10;