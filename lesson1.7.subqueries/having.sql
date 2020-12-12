-- example 6.1
SELECT Continent, AVG(LifeExpectancy)
FROM country
GROUP BY Continent
HAVING AVG(LifeExpectancy) > (
	SELECT AVG(LifeExpectancy)
    FROM country )
ORDER BY 2 DESC;
    

