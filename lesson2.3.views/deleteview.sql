-- some alterations
ALTER TABLE employees
  MODIFY birth_date DATE NOT NULL DEFAULT '1990-01-01',
  MODIFY hire_date DATE NOT NULL DEFAULT '2020-01-01';

-- create the view
CREATE OR REPLACE VIEW employee_names AS 
SELECT first_name, last_name
FROM employees;

-- insert some data
INSERT INTO employee_names
VALUES ('Samwise', 'Gamgee'),
	   ('Peregrin', 'Took'),
	   ('Meriadoc', 'Brandybuck');

-- confirm the insertions
SELECT * FROM employees;
SELECT * FROM employee_names;

-- delete from the view
DELETE FROM employee_names
WHERE first_name LIKE 'Per%';

-- confirm the deletion
SELECT * FROM employees;


-- revert to the original
ALTER TABLE employees
  MODIFY birth_date DATE NOT NULL,
  MODIFY hire_date DATE NOT NULL;
  
DELETE FROM employees;

DROP VIEW employee_names;