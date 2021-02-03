CREATE OR REPLACE VIEW country_languages AS
SELECT cv.name AS country, COUNT(*) as languages
FROM country_vw cv JOIN countrylanguage cl
	ON cv.code = cl.countrycode
GROUP BY cv.code
ORDER BY 1;

SELECT *
FROM country_languages;

-- example is over. Drop the views
DROP VIEW country_languages;
DROP VIEW country_vw;