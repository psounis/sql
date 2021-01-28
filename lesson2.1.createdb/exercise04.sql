DROP DATABASE IF EXISTS emp;
CREATE DATABASE emp;

USE emp;

CREATE TABLE employees (
	emp_no 		INT 	 	NOT NULL UNIQUE AUTO_INCREMENT,
    birth_date 	DATE 	 	NOT NULL,
    first_name 	VARCHAR(30)	NOT NULL,
    last_name	VARCHAR(50)	NOT NULL,
    gender		ENUM('M','F') NOT NULL DEFAULT 'M',
    hire_date	DATE		NOT NULL
);

CREATE TABLE departments (
	dept_no		CHAR(4)	 	NOT NULL UNIQUE,
    dept_name 	VARCHAR(40)	NOT NULL
);

CREATE TABLE dept_emp (
	emp_no     	int 		NOT NULL,
	dept_no 	char(4) 	NOT NULL,
	from_date 	date 		NOT NULL,
	to_date 	date 		NOT NULL
);

CREATE TABLE dept_manager (
  dept_no 		char(4) 	NOT NULL,
  emp_no 		int 		NOT NULL,
  from_date 	date 		NOT NULL,
  to_date 		date 		NOT NULL
);

