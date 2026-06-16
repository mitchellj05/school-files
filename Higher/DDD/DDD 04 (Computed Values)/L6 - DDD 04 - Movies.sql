.read setup.sql
.schema

.print
.print Question 1
.print

 SELECT title, international_sales - movie_budget
 FROM movie, box_office
 WHERE international_sales - movie_budget > 0
 AND movie.movie_id = box_office.movie_id
 ORDER BY international_sales - movie_budget desc;

.print
.print Question 2
.print

SELECT director, US_sales + international_sales
FROM movie, box_office
WHERE US_sales + international_sales > 0
AND movie.movie_id = box_office.movie_id
ORDER BY director, US_sales + international_sales asc;

.print
.print Question 3
.print

SELECT title, year_released, rating
FROM movie, box_office
WHERE international_sales > 150000000
AND movie.movie_id = box_office.movie_id
AND rating >= 8;

.print
.print Question 4
.print

SELECT title, director, rating
FROM movie, box_office
WHERE
AND movie.movie_id = box_office.movie.id

-- end with a blank line
.print
