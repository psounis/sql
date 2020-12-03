SELECT ct.name AS city, 
       ct.population as population,
       COUNT(*) AS languages_spoken
FROM city ct 
    JOIN country cn ON ct.countrycode = cn.code
    JOIN countrylanguage cl ON cn.code = cl.countrycode
WHERE cn.name = 'Greece'
GROUP BY ct.name
ORDER BY population DESC
LIMIT 2