DROP FUNCTION IF EXISTS fname;

DELIMITER $$
CREATE FUNCTION fname(last_name_param VARCHAR(80)) 
RETURNS VARCHAR(80)
READS SQL DATA
BEGIN
	DECLARE first_name_var VARCHAR(80);
    
    SELECT first_name 
    INTO first_name_var
    FROM actor
    WHERE last_name = last_name_param
    LIMIT 1;
    
    RETURN first_name_var; 
END$$
DELIMITER ;

SELECT fname('GUINESS'); 
