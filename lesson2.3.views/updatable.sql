CREATE OR REPLACE VIEW dpt_vw AS
SELECT dept_name 
FROM departments;

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

-- let's update
UPDATE dpt_vw 
SET dept_name = 'Βύζας Μεγάρων'
WHERE dept_name = 'οσφπ';

-- let's see the original table
SELECT *
FROM departments;

-- clean data
DELETE FROM departments;
DROP VIEW dpt_vw;