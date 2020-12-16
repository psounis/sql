
SELECT cn.name AS country, ct.name AS city, ct.population,
	"Capital" AS description
FROM country cn LEFT JOIN city ct
	ON cn.capital = ct.ID
UNION
SELECT cn.name AS country, ct.name AS city, MAX(ct.population),
	"Largest City" AS description
FROM country cn LEFT JOIN city ct
	ON cn.code = ct.countrycode
GROUP BY cn.code
ORDER BY 1, 4;
