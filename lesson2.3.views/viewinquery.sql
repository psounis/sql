SELECT cv.name AS country, COUNT(*) as cities 
FROM country_vw cv JOIN city ct
	ON cv.code = ct.countrycode
GROUP BY cv.code
ORDER BY 1;