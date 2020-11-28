-- example 1.1
SELECT * 
FROM country 
WHERE Code LIKE 'GR_';

-- example 1.2
SELECT * 
FROM country 
WHERE Code LIKE '__C';

-- example 1.3
SELECT * 
FROM country 
WHERE name LIKE 'A%';

-- example 1.4
SELECT * 
FROM country 
WHERE name LIKE '%AN%E';
