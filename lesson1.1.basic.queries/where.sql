-- example 3.1
SELECT productName, quantityInStock 
FROM products
WHERE quantityInStock >= 9000;

-- example 3.2
SELECT *
FROM products
WHERE productVendor = 'WELLY DIECAST PRODUCTIONS';

-- example 3.3
SELECT orderNumber, requiredDate, status 
FROM orders
WHERE orderDate > '2005-05-16';