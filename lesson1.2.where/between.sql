-- example 2.1
SELECT * 
FROM orderdetails
WHERE priceEach BETWEEN 100 AND 120;

-- example 2.2
SELECT * 
FROM employees
WHERE firstName BETWEEN 'D' AND 'G';

-- example 2.3 
SELECT * 
FROM orders
WHERE shippedDate BETWEEN '2003-01-10' AND '2003-01-14';