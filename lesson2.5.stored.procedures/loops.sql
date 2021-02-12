DROP PROCEDURE IF EXISTS loops;

DELIMITER $$
CREATE PROCEDURE loops() 
BEGIN
	DECLARE str1,str2,str3 VARCHAR(80);
    DECLARE i INT;
    
    SET i = 0;
    SET str1 = '';
    WHILE i<5 DO
		SET str1 = CONCAT(str1,' ',i);
        SET i = i+1; 
	END WHILE;
    
    SET i = 0;
    SET str2 = '';
    REPEAT
		SET str2 = CONCAT(str2,' ',i);
        SET i = i+1; 
	UNTIL i>5
    END REPEAT;
    
    SET i = 0;
    SET str3 = '';
    myloop: LOOP
		SET str3 = CONCAT(str3,' ',i);
        IF i>5 THEN
			LEAVE myloop;
		END IF; 
        SET i = i+1; 
	END LOOP myloop;
    
    SELECT str1, str2, str3; 
END$$
DELIMITER ;

CALL loops(); 


