DROP DATABASE IF EXISTS emp;
CREATE DATABASE emp;
USE emp;

CREATE TABLE employees (
	emp_no 		INT 	 	NOT NULL UNIQUE AUTO_INCREMENT,
    birth_date 	DATE 	 	NOT NULL CHECK(birth_date>='1950-01-01'),
    first_name 	VARCHAR(30)	NOT NULL,
    last_name	VARCHAR(50)	NOT NULL,
    gender		ENUM('M','F') NOT NULL DEFAULT 'M',
    hire_date	DATE		NOT NULL,
 	CONSTRAINT emp_pk PRIMARY KEY (emp_no),
    CONSTRAINT date_constraint CHECK (birth_date<hire_date),
    CONSTRAINT last_name CHECK (LENGTH(last_name)>4)
);

INSERT INTO `emp`.`employees`
(`birth_date`,`first_name`,`last_name`,`gender`,`hire_date`)
VALUES
('1988-01-01', 'John', 'Wick', 'M', '2014-01-01');

SELECT * FROM employees;

INSERT INTO `emp`.`employees`
(`birth_date`,`first_name`,`last_name`,`gender`,`hire_date`)
VALUES
('2020-01-01', 'John', 'Wickrrr', 'M', '2014-01-01');

INSERT INTO `emp`.`employees`
(`birth_date`,`first_name`,`last_name`,`gender`,`hire_date`)
VALUES
('1900-01-01', 'John', 'Wickrrr', 'M', '2014-01-01');
