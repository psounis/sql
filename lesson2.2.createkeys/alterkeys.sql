ALTER TABLE salaries
   DROP PRIMARY KEY;
   
ALTER TABLE salaries
   ADD PRIMARY KEY (emp_no, from_date);
   
ALTER TABLE salaries
	DROP FOREIGN KEY salaries_fk_emp;

ALTER TABLE salaries
	ADD CONSTRAINT salaries_fk_emp FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE;
