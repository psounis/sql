CREATE TABLE copy_country AS
SELECT * FROM country;

CREATE TABLE copy_city AS
SELECT * FROM city;

DELETE FROM copy_country
WHERE continent = 'Asia';

DELETE FROM copy_city
WHERE countryCode = 'AFG'
   OR countryCode = 'NLD';

DELETE FROM copy_city
WHERE countryCode IN
 (SELECT Code 
  FROM copy_country
  WHERE Continent='Africa');

DROP TABLE copy_city;
DROP TABLE copy_country;