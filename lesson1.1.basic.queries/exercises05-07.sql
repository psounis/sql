-- exercise05
SELECT customerName
FROM customers
WHERE contactFirstName = 'Elizabeth';

-- exercise06
SELECT customerName
FROM customers
WHERE creditLimit > 100000;

-- exercise07
SELECT CONCAT(firstName, ' ', lastName) AS full_name
FROM employees
WHERE jobTitle <> 'sales rep'