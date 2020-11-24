-- exercise02
SELECT CountryCode, COUNT(name), SUM(population), AVG(population)
FROM city
GROUP BY CountryCode WITH ROLLUP;

-- exercise03
SELECT Language, COUNT(CountryCode) AS countries
FROM countrylanguage
GROUP BY Language
ORDER BY countries DESC;

-- exercise04
SELECT GovernmentForm, COUNT(*), MAX(GNP), AVG(LifeExpectancy), SUM(SurfaceArea)
FROM country
GROUP BY GovernmentForm
ORDER BY GovernmentForm;

-- exercise04
SELECT GovernmentForm, COUNT(*), MAX(GNP), AVG(LifeExpectancy), SUM(SurfaceArea)
FROM country
WHERE Continent = 'Europe'
GROUP BY GovernmentForm
ORDER BY GovernmentForm;