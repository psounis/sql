-- example 1.1
SELECT * 
FROM employees
WHERE NOT jobTitle = 'Sales Rep';

-- example 1.2
SELECT * 
FROM products
WHERE productLine = 'Classic Cars'
  AND productVendor = 'Min Lin Diecast';
  
-- example 1.3
SELECT productName, productLine, quantityInStock 
FROM products
WHERE productLine = 'Classic Cars'
   OR productLine = 'Motorcycles'
ORDER BY productLine, quantityInStock DESC;

-- example 1.3
SELECT productName, productLine, quantityInStock 
FROM products
WHERE productLine = 'Classic Cars'
   OR productLine = 'Motorcycles'
ORDER BY productLine, quantityInStock DESC;

-- example 1.4
SELECT * 
FROM orders
WHERE orderDate = '2004-04-13'
   OR orderDate >= '2004-05-01'
  AND orderDate <= '2004-05-31';
  
-- example 1.4 w parentheses
SELECT * 
FROM orders
WHERE orderDate = '2004-04-13'
   OR (orderDate >= '2004-05-01' AND orderDate <= '2004-05-31')