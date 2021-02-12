DROP PROCEDURE IF EXISTS min_max_population;

DELIMITER $$
CREATE PROCEDURE min_max_population() 
BEGIN
	DECLARE min_country VARCHAR(80);
    DECLARE max_country VARCHAR(80);
    
    SELECT name
    INTO min_country
	FROM country 
	WHERE Population = (
	    SELECT MIN(population)
	    FROM country 
        WHERE population>0);

	SELECT name
    INTO max_country
	FROM country 
	WHERE Population = (
		SELECT MAX(population)
		FROM country);
    
    SELECT min_country, max_country;
END$$
DELIMITER ;

CALL min_max_population(); 
