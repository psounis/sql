INSERT INTO actor (first_name, last_name)
VALUES ('JOAQUIN', 'PHOENIX');

INSERT INTO film (title, language_id)
VALUES('JOKER', 1);

SELECT actor_id
FROM actor
WHERE last_name = 'PHOENIX';

SELECT film_id
FROM film
WHERE title = 'JOKER';

INSERT INTO film_actor (actor_id, film_id)
VALUES (202, 1002);

SELECT f.title, CONCAT(a.first_name, ' ', a.last_name)
FROM film_actor fa 
	JOIN film f ON fa.film_id = f.film_id
    JOIN actor a ON fa.actor_id = a.actor_id
WHERE f.title = 'JOKER';