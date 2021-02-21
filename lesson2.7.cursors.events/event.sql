SET GLOBAL event_scheduler=ON;

SHOW EVENTS;

DELIMITER $$
CREATE EVENT event_erase_xafies
ON SCHEDULE EVERY 1 MINUTE STARTS now()
DO
  BEGIN
    DELETE FROM xafies; 
  END$$
DELIMITER ;

SELECT * FROM xafies;

DROP EVENT event_erase_xafies;
SET GLOBAL event_scheduler=OFF; 