CREATE TABLE copy_country AS 
SELECT * FROM country;

-- example 1.1
UPDATE copy_country
SET continent = 'Asia'
WHERE name = 'Aruba';

-- example 1.2
UPDATE copy_country
SET continent = 'Asia'
WHERE name LIKE 'A%';

-- example 1.3
UPDATE copy_country
SET continent = 'Asia', 
	region = 'Middle East'
WHERE name LIKE 'B%';

-- example 1.4
UPDATE copy_country
SET headOfState = 'Boris Johnson'
WHERE headofState = 'Elisabeth II'
   OR headofState = 'Jacques Chirac';

-- example 1.5
UPDATE copy_country
SET region = 'Caribbean';

SELECT * FROM world.copy_country;

DROP TABLE copy_country;
