-- example 4.1
SELECT * 
FROM country
WHERE IndepYear IS NULL;

-- example 4.2
SELECT * 
FROM country
WHERE IndepYear IS NOT NULL;

-- example 4.3
SELECT * 
FROM country
WHERE IndepYear <> 1919;
