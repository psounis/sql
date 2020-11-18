-- example 1.6.1 
SELECT name AS country, 2020-IndepYear AS years_free
FROM country;

-- example 1.6.2
SELECT CONCAT(HeadOfState, ' of ', name) AS ruler
FROM country;

-- example 1.6.3
SELECT AVG(LifeExpectancy)
FROM country;

-- example 2.1
SELECT 5+3/2;

-- example 2.2
SELECT * 
FROM city, country;