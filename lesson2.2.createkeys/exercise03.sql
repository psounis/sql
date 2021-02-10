DROP DATABASE IF EXISTS emp;
CREATE DATABASE emp;
USE emp;

CREATE TABLE employees (
	emp_no 		INT 	 	NOT NULL AUTO_INCREMENT,
    birth_date 	DATE 	 	NOT NULL,
    first_name 	VARCHAR(30)	NOT NULL,
    last_name	VARCHAR(50)	NOT NULL,
    gender		ENUM('M','F') NOT NULL DEFAULT 'M',
    hire_date	DATE		NOT NULL,
 	CONSTRAINT emp_pk PRIMARY KEY (emp_no)
);

CREATE TABLE departments (
	dept_no		CHAR(4)	 	NOT NULL,
    dept_name 	VARCHAR(40)	NOT NULL,
 	CONSTRAINT dept_pk PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
	emp_no     	INT 		NOT NULL REFERENCES employees(emp_no) ON DELETE CASCADE,
	dept_no 	CHAR(4) 	NOT NULL REFERENCES departments(dept_no) ON DELETE CASCADE,
	from_date 	DATE 		NOT NULL,
	to_date 	DATE 		NOT NULL,
    CONSTRAINT dept_emp_pk PRIMARY KEY (emp_no, dept_no),
    CONSTRAINT dept_emp_fk_emp FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE,
    CONSTRAINT dept_emp_fk_dept FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE
);

CREATE TABLE dept_manager (
	dept_no 	CHAR(4) 	NOT NULL,
	emp_no 		INT 		NOT NULL,
	from_date 	DATE 		NOT NULL,
	to_date 	DATE 		NOT NULL,
	CONSTRAINT dept_mgr_pk PRIMARY KEY (dept_no, emp_no),
    CONSTRAINT dept_mgr_fk_emp FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE,
    CONSTRAINT dept_mgr_fk_dept FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE
);

CREATE TABLE salaries (
  emp_no 		INT 		NOT NULL,
  salary 		INT 		NOT NULL,
  from_date 	DATE 		NOT NULL,
  to_date 		DATE 		NOT NULL,
  CONSTRAINT salaries_pk PRIMARY KEY (emp_no, from_date),
  CONSTRAINT salaries_fk_emp FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE
);