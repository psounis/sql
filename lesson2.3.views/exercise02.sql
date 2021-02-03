CREATE OR REPLACE VIEW dpt_manager
AS SELECT d.dept_name AS department, 
		CONCAT(e.first_name, ' ', e.last_name) AS manager
FROM departments d 
	JOIN dept_manager dm ON dm.dept_no = d.dept_no
    JOIN employees e ON e.emp_no = dm.dept_no;
    
INSERT INTO departments
VALUES (1, 'Logistics');

INSERT INTO employees
VALUES (1, '1980-01-01', 'Gandalf', 'The Grey', 'M', '1981-01-01');

INSERT INTO dept_manager
VALUES (1, 1, '1990-01-01', '1995-01-01');

SELECT * FROM dpt_manager;

-- erase data and view
DELETE FROM departments;
DELETE FROM employees;
DELETE FROM dept_manager;
DROP VIEW dpt_manager;
