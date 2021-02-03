CREATE OR REPLACE VIEW dpt_vw AS
SELECT dept_no 
FROM departments
WHERE dept_no<4
WITH CHECK OPTION;

-- some fresh data
DELETE FROM departments;

INSERT INTO departments 
VALUES (1, 'ΑΕΚ');
INSERT INTO departments
VALUES (2, 'παο');
INSERT INTO departments
VALUES (3, 'ΟΦΗ');
INSERT INTO departments
VALUES (4, 'οσφπ');
INSERT INTO departments
VALUES (5, 'όαχ');
INSERT INTO departments
VALUES (6, 'ΆΒΓ');
INSERT INTO departments
VALUES (7, 'ΆΖΚ');

-- let's see the table and the view
SELECT * FROM departments;
SELECT * FROM dpt_vw;

-- let's update
UPDATE dpt_vw 
SET dept_no = 9
WHERE dept_no = 1;

-- clean data and drop view
DELETE FROM departments;
DROP VIEW dpt_vw;
