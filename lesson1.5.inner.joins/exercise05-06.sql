-- exercise 05
SELECT l.name, COUNT(*) AS total_movies
FROM film f JOIN language l
	ON f.language_id = l.language_id
GROUP BY f.language_id;

-- exercise 06 
SELECT CONCAT(a.first_name, ' ', a.last_name) AS actor_name,
	   COUNT(*) AS total_movies
FROM film_actor fa 
	JOIN actor a ON fa.actor_id = a.actor_id 
GROUP BY a.actor_id
ORDER BY 2 DESC;
