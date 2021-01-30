DROP DATABASE IF EXISTS emp;
CREATE DATABASE emp;

USE emp;

CREATE TABLE employees (
	emp_no 		INT 	 	PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
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
	emp_no     	INT 		NOT NULL,
	dept_no 	CHAR(4) 	NOT NULL,
	from_date 	DATE 		NOT NULL,
	to_date 	DATE 		NOT NULL,
    CONSTRAINT dept_emp_pk PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
  dept_no 		CHAR(4) 	NOT NULL,
  emp_no 		INT 		NOT NULL,
  from_date 	DATE 		NOT NULL,
  to_date 		DATE 		NOT NULL
);

CREATE TABLE salaries (
  emp_no 		INT 		NOT NULL,
  salary 		INT 		NOT NULL,
  from_date 	DATE 		NOT NULL,
  to_date 		DATE 		NOT NULL
);


