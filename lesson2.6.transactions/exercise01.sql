DROP PROCEDURE IF EXISTS insert_employee_with_salary;

DELIMITER $$
CREATE PROCEDURE insert_employee_with_salary(
    IN in_first_name VARCHAR(30),
    IN in_last_name VARCHAR(30),
    IN in_gender ENUM('M', 'F'),
    IN in_birth_date DATE, 
    IN in_hire_date DATE,
    IN in_salary INT,
    IN in_from_date DATE,
    IN in_to_date DATE
) 
BEGIN
	DECLARE new_emp_no INT;
    DECLARE err INT DEFAULT 0;
    
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION 
      SET err=1;

	START TRANSACTION;
    
	INSERT INTO employees
		(birth_date, first_name, last_name, gender, hire_date)
	VALUES
		(in_birth_date, in_first_name, in_last_name, in_gender, in_hire_date);
    
	SAVEPOINT point1; 

	SELECT MAX(emp_no) INTO new_emp_no
    FROM employees;

	INSERT INTO salaries
		(emp_no, salary, from_date, to_date)
	VALUES
		(new_emp_no, in_salary, in_from_date, in_to_date);

  
	IF err=1 THEN
		ROLLBACK TO SAVEPOINT point1;
		SELECT error_string AS message;
	ELSE
		COMMIT;
		SELECT 'OK' AS message;
	END IF; 
    
END$$
DELIMITER ;

CALL insert_employee_with_salary('The', 'Mountain', 'M', 
'1970-01-01', '2000-01-01', 1000, '2021-01-01', '2021-01-30'); 
