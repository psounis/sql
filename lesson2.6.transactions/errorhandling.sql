DROP PROCEDURE IF EXISTS test;

DELIMITER $$
CREATE PROCEDURE test() 
BEGIN
	DECLARE err TINYINT DEFAULT 0; 
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET err = 1;
    
	START TRANSACTION;
		
	INSERT INTO departments
		   (dept_no, dept_name)
	VALUES
		(1, 'it');
    
	INSERT INTO employees
		(emp_no, birth_date, first_name, last_name, gender, hire_date)
	VALUES
		(1, '1970-01-01', 'Tywin', 'Lannister', 'M', '2020-01-01');

	INSERT INTO dept_manager
		(dept_no, emp_no, from_date, to_date)
	VALUES
		(1, 1, '2020-01-01', '2021-01-01');
	
    
	IF err = 1 THEN
		ROLLBACK;
		SELECT 'An error occurred' AS message;
	ELSE
		COMMIT;
		SELECT 'OK' AS message;
	END IF; 
    
END$$
DELIMITER ;

CALL test(); 
