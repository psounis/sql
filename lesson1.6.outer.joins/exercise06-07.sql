-- exercise06.1
SELECT CONCAT(c.first_name, ' ', c.last_name) AS name,
	active, email, SUM(p.amount) AS total_amount
FROM payment p JOIN customer c
	ON p.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_amount DESC
LIMIT 10;

-- exercise06.2
SELECT CONCAT(c.first_name, ' ', c.last_name) AS name,
	active, email, SUM(p.amount) AS total_amount
FROM payment p RIGHT JOIN customer c
	ON p.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_amount ASC
LIMIT 100;

-- exercise 07
SELECT cn.country, SUM(p.amount) AS total_amount
FROM payment p 
	JOIN customer c ON c.customer_id = p.customer_id
    JOIN address a ON c.address_id = a.address_id
    JOIN city ct ON a.city_id = ct.city_id
    RIGHT JOIN country cn ON ct.country_id = cn.country_id
GROUP BY cn.country_id
ORDER BY total_amount DESC