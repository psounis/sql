SELECT customerName 
FROM customers
WHERE LENGTH(customerName) = (
	SELECT MAX(LENGTH(customerName))
    FROM customers
);