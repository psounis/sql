-- exercise 04
SELECT CONCAT(firstName, ' ', lastName) AS supervisedSF
FROM employees
WHERE reportsTo IN 
	(
     SELECT employeeNumber
	 FROM offices o JOIN employees e
		 ON o.officeCode = e.officeCode
	 WHERE o.city = 'San Francisco'
	);
    

 SELECT CONCAT(e2.firstName, ' ', e2.lastName) AS supervisedSF
 FROM offices o 
	JOIN employees e ON o.officeCode = e.officeCode
    JOIN employees e2 ON e2.reportsTo = e.employeeNumber
 WHERE o.city = 'San Francisco';
 
 
 -- exercise 05
 SELECT customerNumber 
FROM customers c
WHERE NOT EXISTS 
    (SELECT *
	 FROM orders o 
	 WHERE o.customerNumber = c.customerNumber);

SELECT c.customerNumber
FROM customers c 
	LEFT JOIN orders o ON c.customerNumber = o.customerNumber
WHERE o.orderNumber IS NULL;
 
