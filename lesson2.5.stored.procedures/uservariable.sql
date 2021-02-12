DROP PROCEDURE IF EXISTS uservariable;

DELIMITER $$
CREATE PROCEDURE uservariable() 
BEGIN
    SET @x = @x + 1;
    SELECT @x;
END$$
DELIMITER ;

SET @x = 1;
CALL uservariable();
CALL uservariable();