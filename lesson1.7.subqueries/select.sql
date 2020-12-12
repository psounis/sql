-- example 1.1
SELECT c.customerName,
	(
		SELECT MAX(p.amount)
        FROM payments p
        WHERE p.customerNumber = c.customerNumber
    ) AS max_amount
FROM customers c
ORDER BY 2 DESC;


-- example 1.2 -- non-correlated query
SELECT c.customerName, 
	MAX(p.amount) cust_max_amount,
	(
		SELECT AVG(p1.amount)
        FROM payments p1
    ) AS total_avg_amount
FROM customers c JOIN payments p
	ON c.customerNumber = p.customerNumber
GROUP BY c.customerNumber
ORDER BY 2 DESC;