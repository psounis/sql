-- example 1: UNION ALL
SELECT Code, Name, Continent
FROM country
WHERE name like 'Ar%'
UNION ALL
SELECT Code, Name, Continent
FROM country
WHERE name like '%nia';

-- example 2: ORDER BY
SELECT contactLastName AS last_name, 
	   contactFirstName AS first_name, 
       addressLine1 AS address,
       city, country
FROM customers
UNION 
SELECT e.lastName, e.firstName, o.addressLine1, o.city, o.country
FROM employees e JOIN offices o 
	ON e.officeCode = o.officeCode
ORDER BY 1, 2