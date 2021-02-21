DROP PROCEDURE IF EXISTS total_population;

DELIMITER $$
CREATE PROCEDURE total_population() 
BEGIN
	DECLARE cur_pop INT;
    DECLARE total_pop BIGINT DEFAULT 0; 
    DECLARE finished INT DEFAULT 0;
    DECLARE cursor_population CURSOR FOR
		SELECT population FROM country
		WHERE population IS NOT NULL;
    
	DECLARE CONTINUE HANDLER FOR NOT FOUND 
      SET finished=1;
    
    OPEN cursor_population; 
    
    REPEAT
		FETCH cursor_population INTO cur_pop; 
		SET total_pop = total_pop + cur_pop;
	UNTIL finished=1
    END REPEAT; 

	CLOSE cursor_population;

	SELECT total_pop; 
    
END$$
DELIMITER ;

CALL total_population(); 

DROP PROCEDURE total_population; 
