CREATE OR REPLACE VIEW country_vw AS
SELECT Code, Name, Continent, Capital, Code2 
FROM country;

SELECT * FROM country;
SELECT * FROM country_vw;