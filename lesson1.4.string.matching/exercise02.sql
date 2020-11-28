SELECT * FROM city WHERE name REGEXP '^a..n$';

SELECT * FROM city WHERE name REGEXP 'b...e';

SELECT * FROM city WHERE name REGEXP '...';

SELECT * FROM city WHERE name REGEXP '^...$';

SELECT * 
FROM city 
WHERE name REGEXP '^...$'
   OR name REGEXP '^..$'
   OR name REGEXP '^.$'
   OR name REGEXP '^$';
SELECT *
FROM city
WHERE name NOT REGEXP '....';