-- exercise 10
SELECT SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
WHERE orderNumber BETWEEN 10100 AND 10199;

-- exercise 11
SELECT productName
FROM products
WHERE productLine IN ('Vintage Cars', 'Planes')
  AND productScale IN ('1:18', '1:32', '1:50')
ORDER BY buyPrice DESC
LIMIT 5;

-- exercise 12
SELECT city, phone, postalCode
FROM offices
WHERE state IS NULL;

SELECT city, phone, postalCode
FROM offices
WHERE state IS NULL
  AND country IN ('Japan', 'UK');
