CREATE TABLE employees (
	emp_no 		INT 	 	NOT NULL UNIQUE AUTO_INCREMENT,
    birth_date 	DATE 	 	NOT NULL,
    first_name 	VARCHAR(30)	NOT NULL,
    last_name	VARCHAR(50)	NOT NULL,
    gender		ENUM('M','F') NOT NULL DEFAULT 'M',
    hire_date	DATE		NOT NULL
);
