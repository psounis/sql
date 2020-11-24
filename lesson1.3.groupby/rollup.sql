-- example 3.1
SELECT Continent, Region, COUNT(*) AS Countries
FROM country
GROUP BY Continent, Region WITH ROLLUP;