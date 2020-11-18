-- example 1.1
SELECT * 
FROM city;

-- example 1.2
SELECT id
FROM city;

-- example 1.3
SELECT id, name
FROM city;

-- example 1.4
SELECT id AS city_id, name
FROM city;

-- example 1.5.1
SELECT DISTINCT continent
FROM country;

-- example 1.5.2
SELECT ALL continent
FROM country;

-- example 1.5.3
SELECT continent
FROM country;
