-- exercise07
SELECT * 
FROM country
WHERE name IN ('Afghanistan', 'Czech Republic', 'Nigeria');

SELECT name
FROM city
WHERE CountryCode IN ('AFG', 'CZE', 'NGA')
ORDER BY name;

-- exercise08
SELECT DISTINCT GovernmentForm
FROM country
WHERE GovernmentForm NOT IN ('Republic', 'Constitutional Monarchy')
ORDER BY GovernmentForm;