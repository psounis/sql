SELECT YEAR(orderDate) as YEAR, 
	MONTHNAME(orderDate) as MONTH,
    COUNT(orderNumber) AS orders
FROM orders
GROUP BY YEAR(orderDate), MONTH(orderDate)
ORDER BY 1, 2;