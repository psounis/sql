DROP PROCEDURE IF EXISTS test;

DELIMITER $$
CREATE PROCEDURE test() 
BEGIN
    DECLARE current_error VARCHAR(100);
    DECLARE error_string VARCHAR(300) DEFAULT '';
    DECLARE error_number INT;
    DECLARE error_message VARCHAR(50);
    
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION 
      BEGIN
         GET DIAGNOSTICS CONDITION 1
			error_number = MYSQL_ERRNO, error_message = MESSAGE_TEXT;
         SET current_error = CONCAT(error_number, '-', error_message, '  ');
      END;
      
	START TRANSACTION;

	SET current_error='';
	
    INSERT INTO departments
		   (dept_no, dept_name)
	VALUES
		(1, 'it');
	
    IF LENGTH(current_error) > 0 THEN
		SET error_string = CONCAT(error_string, 'Q1: ', error_message, ' ');
	END IF; 
    -- ----
    
	SET current_error='';
    
	INSERT INTO employees
		(emp_no, birth_date, first_name, last_name, gender, hire_date)
	VALUES
		(1, '1970-01-01', 'Tywin', 'Lannister', 'M', '2020-01-01');

    IF LENGTH(current_error) > 0 THEN
		SET error_string = CONCAT(error_string, 'Q2: ', error_message, ' ');
	END IF; 
    -- ----

	SET current_error='';

	INSERT INTO dept_manager
		(dept_no, emp_no, from_date, to_date)
	VALUES
		(1, 1, '2020-01-01', '2021-01-01');

    IF LENGTH(current_error) > 0 THEN
		SET error_string = CONCAT(error_string, 'Q3: ', error_message, ' ');
	END IF; 
    -- ----
	
    
	IF LENGTH(error_string)>0 THEN
		ROLLBACK;
		SELECT error_string AS message;
	ELSE
		COMMIT;
		SELECT 'OK' AS message;
	END IF; 
    
END$$
DELIMITER ;

CALL test(); 
