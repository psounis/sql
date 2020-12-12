SELECT name AS country, indepYear
FROM country
WHERE indepYear < ALL
(
 SELECT indepYear
 FROM country
 WHERE Continent = 'Europe'
   AND IndepYear IS NOT NULL
);

SELECT name AS country, indepYear
FROM country
WHERE indepYear < 
(
 SELECT MIN(indepYear)
 FROM country
 WHERE Continent = 'Europe'
   AND IndepYear IS NOT NULL
);
