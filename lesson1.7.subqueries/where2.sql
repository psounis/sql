-- example 4.1
SELECT CONCAT(firstName, ' ', lastName) AS supervisedSF
FROM employees
WHERE reportsTo IN 
	(
     SELECT employeeNumber
	 FROM offices o JOIN employees e
		 ON o.officeCode = e.officeCode
	 WHERE o.city = 'San Francisco'
	);
    
-- example 4.2
SELECT customerNumber 
FROM customers c
WHERE NOT EXISTS 
    (SELECT *
	 FROM orders o 
	 WHERE o.customerNumber = c.customerNumber)