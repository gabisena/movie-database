-- CRUD--
-- 1. Display first 10 entries from the movies table.
SELECT * 
FROM movies_gabi 
LIMIT 10;

-- 2. Display title and genres of the first 10 entries from the movies table.
SELECT title, genres 
FROM movies_gabi;

-- 3. Display first 10 pure Drama movies. Only Drama is in the genre column
SELECT * 
FROM movies_gabi 
WHERE genres = 'Drama' 
ORDER BY movieid DESC
LIMIT 10;

-- 4. Display the last 10 Drama movies that can also contain other genres.
SELECT * 
FROM movies_gabi 
WHERE genres = 'Drama'
ORDER BY movieid DESC
LIMIT 10;

-- 5. Display the first 10 movies that were released in 2003 (Can be done without year column too!).
SELECT *
FROM movies_gabi
WHERE year = 2003
LIMIT 10;

-- 6. Retrieve all Star Wars movies from the movie table.
SELECT *
FROM movies_gabi
WHERE title LIKE '%Star Wars%'

-- 7. Find all movies with a year lower 1910 (Having the `year` column simplifies this!).
SELECT *
FROM movies_gabi
WHERE year < 1910;

-- 8. Filter out movies from 2003 and display the first 10 entries (Having the `year` column simplifies this!).  
SELECT *
FROM movies_gabi
WHERE year <> 2003
LIMIT 10;

-- AGGREGATING DATA WITH SQL

-- 1. Display the total row count of the movies table.
SELECT COUNT (*) 
FROM movies_gabi;
2. Display the total count of different genres combinations in the movies table.
SELECT COUNT (DISTINCT genres)
FROM movies_gabi;

-- 3. Display the 5 movies with the lowest movieids. Use movies table.
SELECT *
FROM movies_gabi
ORDER BY movieid ASC
LIMIT 5;

-- 4. Display the 10 movies with the most ratings. Use ratings table. Display movieid, count_movie_ratings
SELECT movieid, COUNT(rating) AS cnt
FROM ratings_table
GROUP BY movieid
ORDER BY cnt DESC
LIMIT 10;

-- 5. Display the count of movies in the years 1990-2000 using the movies table. Display year and movie_count
SELECT year, COUNT(title) AS movie_count
FROM movies_gabi
WHERE year >=1990 and year <=2000
GROUP BY year
ORDER BY year ASC;

-- 6. Which year had the highest number of movies?
SELECT year, COUNT (title) AS movie_count2
FROM movies_gabi
GROUP BY year
ORDER BY movie_count2 DESC;

-- 7. Display the top ten highest rated movies by average that have at least 50 ratings. Display the movieid, average rating and rating count.
-- Use the ratings table.
SELECT movieid, AVG(rating) AS rating_avg,
COUNT (rating) AS rating_cnt
FROM ratings_table
GROUP BY movieid
HAVING COUNT (rating) >=50
ORDER BY rating_avg DESC
LIMIT 10;

-- 8. Create a view that is a table of only movies that contain drama as one of it's genres. Display the first 10 movies in the view. 
CREATE VIEW drama_movies AS 
SELECT *
FROM movies_gabi
WHERE genres = 'Drama'
LIMIT 10;
SELECT * FROM drama_movies;
