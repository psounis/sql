SELECT continent, count(*) AS cities
FROM country cn
	JOIN city ct ON cn.code = ct.countrycode
GROUP BY continent
HAVING cities < (
	SELECT COUNT(*)
	FROM country cn
		JOIN city ct ON cn.code = ct.countrycode
	WHERE cn.name IN ('India', 'China')
);


