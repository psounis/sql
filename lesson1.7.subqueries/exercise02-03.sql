-- exercise 02
SELECT productName, buyPrice
FROM products
WHERE buyPrice BETWEEN (
		SELECT AVG(buyPrice)
        FROM products
	)
    AND (
   		SELECT MAX(buyPrice)
        FROM products
    )
ORDER BY 2 DESC;

-- exercise 02
SELECT productName, buyPrice
FROM products
WHERE buyPrice >= (
		SELECT AVG(buyPrice)
        FROM products
	)
ORDER BY 2 DESC;


-- exercise 03
SELECT DISTINCT c.customerName
FROM customers c
	JOIN orders o ON c.customerNumber = o.customerNumber
    JOIN orderdetails od ON od.orderNumber = o.orderNumber
    JOIN products p ON p.productCode = od.productCode
WHERE buyPrice >= (
		SELECT AVG(buyPrice)
        FROM products
	)
ORDER BY c.customerName;
