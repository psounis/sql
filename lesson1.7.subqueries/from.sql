-- example 2.1
SELECT cust_address_details.full_name, cust_address_details.country, SUM(p.amount) AS total_amount
FROM payment p JOIN 
	(
     SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS full_name,
		a.address, a.district, a.postal_code, 
		ct.city, cn.country
	 FROM customer c
		JOIN address a ON c.address_id = a.address_id
		JOIN city ct ON a.city_id = ct.city_id
		JOIN country cn ON ct.country_id = cn.country_id
	 ) cust_address_details
     ON p.customer_id = cust_address_details.customer_id
GROUP BY p.customer_id;



-- example 2.1 - no subquery
SELECT CONCAT(c.first_name, ' ', c.last_name) AS full_name,
	cn.country, SUM(p.amount) AS total_amount
FROM customer c
	JOIN payment p ON c.customer_id = p.customer_id
	JOIN address a ON c.address_id = a.address_id
	JOIN city ct ON a.city_id = ct.city_id
	JOIN country cn ON ct.country_id = cn.country_id
GROUP BY p.customer_id;



-- example 2.2
SELECT AVG(max_amount) AS result
FROM
     (
	  SELECT CONCAT(c.first_name, ' ', c.last_name) AS full_name, MAX(p.amount) AS max_amount
      FROM customer c 
	      JOIN payment p ON c.customer_id = p.customer_id
      GROUP BY p.customer_id 
     ) max_payments;

