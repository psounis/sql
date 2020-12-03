SELECT COUNT(*)
FROM customers;

SELECT COUNT(*)
FROM customers
WHERE salesRepEmployeeNumber IS NULL;

SELECT COUNT(*)
FROM customers c JOIN employees e
  ON c.salesRepEmployeeNumber = e.employeeNumber;