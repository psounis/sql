SELECT c.customerName, MAX(p.amount) AS total_amount
FROM customers c LEFT JOIN payments p
	ON c.customerNumber = p.customerNumber
GROUP BY c.customerNumber
ORDER BY 2 DESC;
