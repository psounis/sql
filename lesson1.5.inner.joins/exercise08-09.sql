-- exercise 08
SELECT f.title AS movie_name
FROM film_category fc 
	JOIN film f ON fc.film_id = f.film_id
    JOIN category c ON fc.category_id = c.category_id
WHERE NOT f.rating IN ('R', 'NC-17')
	AND f.length BETWEEN 60 AND 90
    AND f.description REGEXP 'boring|love|documentary'
    AND f.replacement_cost <= 14.00
    AND c.name IN ('Travel', 'Family', 'Comedy', 'Classics');
    
-- exercise 09
SELECT DISTINCT c.name
FROM film_actor fa 
	JOIN actor a ON a.actor_id = fa.actor_id
    JOIN film f ON f.film_id = fa.film_id
    JOIN film_category fc ON fc.film_id = f.film_id
    JOIN category c ON c.category_id = fc.category_id
WHERE a.first_name = 'JULIA' 
   AND a.last_name = 'FAWCETT' 