INSERT INTO copy_film_actor (film_id, actor_id)
SELECT film_id, actor_id
FROM film_actor
WHERE film_id BETWEEN 11 AND 20;

SELECT * 
FROM copy_film_actor;