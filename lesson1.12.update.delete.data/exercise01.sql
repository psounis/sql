-- 1.1
CREATE TABLE copy_customers AS 
SELECT * FROM customers;

-- 1.2
CREATE TABLE copy_employees AS 
SELECT * FROM employees;

-- 1.3
SELECT e.lastName, e.firstName, count(*)
FROM copy_employees e JOIN copy_customers c 
	ON c.salesRepEmployeeNumber = e.employeeNumber
GROUP BY e.employeeNumber
ORDER BY 3 DESC;

-- 1.4
UPDATE copy_customers
SET salesRepEmployeeNumber = 
(SELECT employeeNumber
 FROM copy_employees
 WHERE lastName = 'Murphy'
  AND firstName = 'Diane')
WHERE salesRepEmployeeNumber IN
(SELECT employeeNumber
 FROM copy_employees
 WHERE lastName = 'Castillo'
  AND firstName = 'Pamela');
  
-- 1.5
DROP TABLE copy_employees;
DROP TABLE copy_customers;