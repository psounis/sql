-- example 1.1
SELECT cn.name AS country, count(ct.name) AS cities
FROM country cn JOIN city ct
	ON cn.Code = ct.CountryCode
GROUP BY cn.Name
ORDER BY 2, 1;

-- example 1.2
SELECT COUNT(*) AS countries
FROM country;

-- example 1.3
SELECT cn.name, count(ct.name)
FROM country cn LEFT JOIN city ct
	ON cn.Code = ct.CountryCode
GROUP BY cn.Name
ORDER BY 2, 1;
