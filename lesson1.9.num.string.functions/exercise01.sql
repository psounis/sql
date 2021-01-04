SELECT o.orderNumber, c.customerName, ROUND(SUM(quantityOrdered*priceEach)) AS item_price
FROM orders o 
	JOIN customers c ON o.customerNumber = c.customerNumber
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY o.orderNumber