SELECT name AS Country, IndepYear AS 'Independence Year', 
       LifeExpectancy AS 'Life Expectancy', Continent,
	   Population, SurfaceArea AS Surface
FROM country
WHERE IndepYear IS NULL
  AND Continent IN ('Africa', 'Asia')
  AND Population >= 100000
  AND (SurfaceArea < 10000 OR SurfaceArea > 100000)
ORDER BY Population DESC;