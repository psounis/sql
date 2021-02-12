DROP PROCEDURE IF EXISTS independence;

DELIMITER $$
CREATE PROCEDURE independence() 
BEGIN	
       DECLARE vyear INT DEFAULT 2100;
       DECLARE vdiff INT DEFAULT 100;

       IF vyear+vdiff > EXTRACT(YEAR FROM NOW()) THEN	
                SELECT 'invalid values' AS error_message;
       ELSE		
                 SELECT name, indepYear        
                 FROM country        
                 WHERE indepYear BETWEEN vyear-vdiff AND vyear+vdiff;
	   END IF; 
END$$
DELIMITER ;

CALL independence(); 
