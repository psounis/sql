CREATE TABLE xafies (
   user           VARCHAR(80),     
   action         VARCHAR(10),
   changes        VARCHAR(200),
   stamp		  TIMESTAMP
);

DELIMITER $$
CREATE TRIGGER tr_employees_after_insert
AFTER INSERT ON employees
FOR EACH ROW
	BEGIN
		DECLARE changes VARCHAR(200);
        
        SET changes = 
			CONCAT(NEW.emp_no, ', ',
				NEW.birth_date, ', ',
                NEW.first_name, ', ',
                NEW.last_name, ', ',
                NEW.gender, ', ',
                NEW.hire_date);
		
        INSERT INTO xafies
        VALUES(CURRENT_USER(), 'INSERT', changes, CURRENT_TIMESTAMP());
				
	END$$
DELIMITER ;

INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date)
VALUES ('2000-01-01', 'Joffrey', 'Baratheon', 'M', '2021-01-01');

SELECT * FROM employees;
SELECT * FROM xafies; 

DROP table xafies;
DROP TRIGGER tr_employees_after_insert;
DELETE FROM employees