-- exercise 01
SELECT f.title AS MOVIE
FROM film f LEFT JOIN inventory i
	ON f.film_id = i.film_id
GROUP BY f.film_id
HAVING count(i.inventory_id)=0
ORDER BY 1;

-- exercise 01
SELECT f.title AS MOVIE, count(r.rental_id) AS TOTAL_RENTALS
FROM film f 
	LEFT JOIN inventory i ON f.film_id = i.film_id
    LEFT JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id
ORDER BY 2 DESC