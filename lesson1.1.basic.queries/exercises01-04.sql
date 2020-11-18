-- exercise01
SELECT contactFirstName, contactLastName
FROM customers;

-- exercise02
SELECT CONCAT(contactFirstName, ' ',contactLastName) AS contact_person
FROM customers;

-- exercise03
SELECT DISTINCT country
FROM customers;

-- exercise04
SELECT AVG(creditLimit), MIN(creditLimit), MAX(creditLimit)
FROM customers;