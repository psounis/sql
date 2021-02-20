DROP PROCEDURE IF EXISTS test;

DELIMITER $$
CREATE PROCEDURE test() 
BEGIN	
	START TRANSACTION;
		
	INSERT INTO departments
		   (dept_no, dept_name)
	VALUES
		(2, 'hr');
        
	INSERT INTO employees
		(emp_no, birth_date, first_name, last_name, gender, hire_date)
	VALUES
		(1, '1990-01-01', 'Tyrion', 'Lannister', 'M', '2020-01-01');

	INSERT INTO dept_manager
		(dept_no, emp_no, from_date, to_date)
	VALUES
		(2, 2, '2020-01-01', '2021-01-01');

	COMMIT;
END$$
DELIMITER ;

CALL test(); 
