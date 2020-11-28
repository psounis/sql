-- exercise 1.1
SELECT count(*)
FROM city
WHERE name LIKE 'A%';

-- exercise 1.2
SELECT *
FROM city
WHERE name LIKE '_P%A';

-- exercise 1.3
SELECT *
FROM city
WHERE name LIKE 'M%O%A'
   OR name LIKE 'N%O%A';
   
-- exercise 1.4
SELECT *
FROM city
WHERE name LIKE '_____';