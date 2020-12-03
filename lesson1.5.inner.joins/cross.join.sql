-- example 1.1
SELECT * 
FROM country, countrylanguage;

-- example 1.2
SELECT * 
FROM country CROSS JOIN countrylanguage;

-- example 1.3 
SELECT country.name, city.name
FROM country CROSS JOIN city; 

-- example 1.4
SELECT cn.name, ct.name 
FROM country cn CROSS JOIN city ct; 