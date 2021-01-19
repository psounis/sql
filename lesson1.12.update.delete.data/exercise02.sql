CREATE TABLE copy_country AS
SELECT * FROM country;

CREATE TABLE copy_city AS
SELECT * FROM city;

UPDATE copy_city
SET countryCode = 'BIM'
WHERE countryCode = 'BRB';

UPDATE copy_country
SET name = 'Bim',
    code = 'BIM'
WHERE name = 'Barbados';

DROP TABLE copy_country;
DROP TABLE copy_city;