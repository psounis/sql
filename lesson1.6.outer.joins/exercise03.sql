SELECT r.rental_date, p.amount
FROM rental r LEFT JOIN payment p
	ON r.rental_id = p.rental_id
UNION
SELECT r.rental_date, p.amount
FROM rental r RIGHT JOIN payment p
	ON r.rental_id = p.rental_id