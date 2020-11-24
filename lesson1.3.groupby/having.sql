-- example 4.1
SELECT Continent, COUNT(*) AS Countries
FROM country
GROUP BY Continent
HAVING Countries > 50;

-- example 4.2
SELECT Continent, COUNT(*) AS Countries, 
	   AVG(Population) as avg_population
FROM country
WHERE IndepYear IS NOT NULL
GROUP BY Continent
HAVING Countries > 10
   AND MIN(SurfaceArea) > 10
ORDER BY Countries DESC
LIMIT 2;
