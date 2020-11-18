SELECT * 
FROM city
WHERE CountryCode = 'GRC'
ORDER BY Population DESC
LIMIT 5;

SELECT * 
FROM countrylanguage
WHERE language = 'Greek'
ORDER BY percentage DESC
LIMIT 2;

SELECT * 
FROM countrylanguage
WHERE language = 'Greek'
ORDER BY percentage DESC
LIMIT 3, 2;
