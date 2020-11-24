-- example 1.1
SELECT COUNT(*) FROM country;

SELECT COUNT(IndepYear) FROM country;

SELECT COUNT(DISTINCT IndepYear) FROM country;

-- example 1.2
SELECT MIN(Name), MAX(Name)
FROM country;

-- example 1.3
SELECT SUM(Population), AVG(Population)
FROM country;
