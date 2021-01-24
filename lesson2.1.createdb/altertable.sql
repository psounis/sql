ALTER TABLE employees
	ADD email VARCHAR(100) NOT NULL AFTER last_name;
    
ALTER TABLE employees
	MODIFY email VARCHAR(50) NOT NULL AFTER gender;

ALTER TABLE employees
	DROP COLUMN email;