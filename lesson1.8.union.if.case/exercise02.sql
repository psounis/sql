SELECT o.orderNumber AS order_number,
	c.customerName AS customer_name,
    SUM(quantityOrdered*priceEach) AS total_amount,
    CONCAT("Shipped on ", ' ', o.shippedDate) AS description
FROM orders o 
	JOIN customers c ON c.customerNumber = o.customerNumber
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE o.status = 'Shipped'
GROUP BY o.orderNumber
UNION
SELECT o.orderNumber AS order_number,
	c.customerName AS customer_name,
    SUM(quantityOrdered*priceEach) AS total_amount,
    CONCAT("Pending...") AS description
FROM orders o 
	JOIN customers c ON c.customerNumber = o.customerNumber
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE o.status <> 'Shipped'
GROUP BY o.orderNumber
ORDER BY total_amount DESC;

