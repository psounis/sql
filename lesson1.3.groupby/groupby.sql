-- example 2.1
SELECT *
FROM country
GROUP BY continent;

-- example 2.2
SELECT Continent, COUNT(*) AS Countries
FROM country
GROUP BY Continent;

-- example 2.3
SELECT Continent, Region, COUNT(*) AS Countries
FROM country
GROUP BY Continent, Region;

-- example 2.4
SELECT Continent, Region, COUNT(*) AS Countries
FROM country
WHERE Continent IN ('Asia', 'Europe', 'Africa')
GROUP BY Continent, Region
ORDER BY Continent, Region DESC
LIMIT 10;


