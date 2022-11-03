DROP DATABASE IF EXISTS emp;
CREATE DATABASE emp;
USE emp;

CREATE TABLE employees (
	emp_no 		INT 	 	NOT NULL UNIQUE AUTO_INCREMENT,
    birth_date 	DATE 	 	NOT NULL,
    first_name 	VARCHAR(30)	NOT NULL,
    last_name	VARCHAR(50)	NOT NULL,
    gender		ENUM('M','F') NOT NULL DEFAULT 'M',
    hire_date	DATE		NOT NULL,
    full_name   VARCHAR(81) AS (CONCAT(first_name,' ',last_name)),
 	CONSTRAINT emp_pk PRIMARY KEY (emp_no)
);

INSERT INTO `emp`.`employees`
(`birth_date`,`first_name`,`last_name`,`gender`,`hire_date`)
VALUES
('1988-01-01', 'John', 'Wick', 'M', '2014-01-01');

SELECT * FROM employees;

