CREATE TABLE copy_film_actor LIKE film_actor;

INSERT INTO copy_film_actor
SELECT * 
FROM film_actor
WHERE film_id BETWEEN 1 AND 10;

SELECT * 
FROM copy_film_actor;

