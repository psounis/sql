-- example 1.1
SELECT DISTINCT continent 
FROM country
WHERE continent='Asia'
	OR continent=2
ORDER BY continent;
