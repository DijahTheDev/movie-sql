-- #1. 
SELECT *
FROM movieshw.movies;

-- #2. 
SELECT id, title
FROM movies
LIMIT
10;

-- #3. 
SELECT *
FROM movies
WHERE id=485;

-- #4. 
SELECT id
FROM movieshw.movies
WHERE title like"%Made in America%";

-- #5. 
SELECT *
FROM movieshw.movies
ORDER by title
LIMIT 10;

-- #6. 
SELECT * FROM movieshw
.movies
WHERE title LIKE '%2002%';

-- #7. 
SELECT *
FROM movieshw.movies
WHERE title LIKE '%Godfather, the%';

-- #8. 
SELECT *
FROM movieshw.movies
WHERE genres LIKE '%comedy%';

-- #9. 
SELECT *
FROM movieshw.movies
WHERE genres LIKE '%comedy%'
  AND title LIKE '%2000%';

-- #10. 
SELECT *
FROM movieshw.movies
WHERE genres LIKE '%comedy'
  AND title LIKE '%death';

-- #11. 
SELECT title
FROM movies
WHERE title LIKE '%super%' AND title LIKE '%(2002%)'
  OR title LIKE '%super%' AND title LIKE '%(2001%)';

-- #12.
CREATE TABLE 'movies'.'actors' ('id' INT NOT NULL AUTO_INCREMENT,
'fullName' VARCHAR
(45) NULL, 'characterName' VARCHAR
(45) NULL, 'DOB' DATE NULL, 'movieID' INT NULL, PRIMARY KEY
('id'));

-- #13.
UPDATE movieshw.movies
SET MPAA_RATING = 'E'
WHERE id = 107;

UPDATE movieshw.movies
SET MPAA_RATING = 'PG'
WHERE id = 3;

UPDATE movieshw.movies
SET MPAA_RATING = 'R'
WHERE id = 111;

UPDATE movieshw.movies
SET MPAA_RATING = 'PG-13'
WHERE id = 1221;

UPDATE movieshw.movies
SET MPAA_RATING = 'G'
WHERE id = 59;

-- #14.
SELECT column movieshw
.movies.rating
UPDATE movies SET MPAA = "G" WHERE id = 1;
UPDATE movies SET MPAA = "PG" WHERE id = 2;
UPDATE movies SET MPAA = "PG-13" WHERE id = 10;
UPDATE movies SET MPAA = "R" WHERE id = 23;
UPDATE movies SET MPAA = "R" WHERE id = 5110;

-- #15. 
SELECT movies.title, ratings.rating
FROM movies
  LEFT JOIN ratings ON movies.id = ratings.movie_id
WHERE movies.id = 858

-- #16. 
SELECT movies.title, ratings.rating
FROM movies
  LEFT JOIN ratings ON movies.id = ratings.movie_id
WHERE movies.id = 858
ORDER BY timestamp ASC

-- #17. 
SELECT movies.title, l.imdb_Id
FROM movieshw.movies
  LEFT JOIN links l ON movies.id = l.movies_Id
WHERE movies.title LIKE '%(2005)%'
-- #18. 
SELECT m.title, AVG(r.rating) as avgr
FROM movieshw.movies
  LEFT JOIN ratings r
  ON movies.id = r.movies_id
GROUP BY movies.id;

-- #19. 
SELECT movies.title, AVG(ratings.rating)
FROM movies
  LEFT JOIN ratings ON ratings.movie_id = movies.id
WHERE movie_id = 31
GROUP BY movies.title

-- #20.
SELECT movies.title, COUNT(ratings.rating)
FROM movies
  LEFT JOIN ratings ON ratings.movie_id = movies.id
WHERE movie_id = 31
GROUP BY movies.title
