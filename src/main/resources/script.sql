INSERT INTO MOVIES (TITLE, RUNTIME, GENRE, IMDB_SCORE, RATING)
VALUES('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'),
('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
('Waltz With Basher', 90, 'Documentary', 8.0, 'R'),
('Spaceballs', 96, 'Comedy', 7.1, 'PG'),
('Monsters Inc', 92, 'Animation', 8.1, 'G'),
('Pulp Fiction', 178, 'Drama-Crime', 8.9, 'R'),
('Titanic', 195, 'Romance', 7.8, 'R'),
('Goodfellas', 148, 'Drama-Crime', 8.7, 'R'),
('Forest Gump', 142, 'Drama-Comedy', 8.8, 'PG-13');

SELECT *
FROM MOVIES
WHERE GENRE = 'Sci-Fi'

SELECT *
FROM MOVIES
WHERE IMDB_SCORE >= 6.5

SELECT *
FROM MOVIES
WHERE RATING = 'G' OR RATING = 'PG'

SELECT *
FROM MOVIES
WHERE RATING = 'G' OR RATING = 'PG'
AND RUNTIME < 100

SELECT AVG(RUNTIME)
FROM MOVIES
WHERE IMDB_SCORE < 7.5
GROUP BY GENRE

UPDATE MOVIES
SET RATING = 'R'
WHERE TITLE LIKE 'Star%'

SELECT ID, RATING
FROM MOVIES
WHERE GENRE = 'Horror' OR GENRE = 'Documentary'

SELECT AVG(IMDB_SCORE), MAX(IMDB_SCORE), MIN(IMDB_SCORE), RATING
FROM MOVIES
GROUP BY RATING

SELECT AVG(IMDB_SCORE), MAX(IMDB_SCORE), MIN(IMDB_SCORE), RATING
FROM MOVIES
GROUP BY RATING
HAVING COUNT (*) > 1

DELETE FROM MOVIES
WHERE RATING = 'R'




