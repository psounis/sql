SELECT * FROM city WHERE name REGEXP '^b.{7}';
SELECT * FROM city WHERE name REGEXP 'a{3}';
SELECT * FROM city WHERE name REGEXP '(a.*){5}'; -- .*(a.*)(a.*)(a.*)(a.*)(a.*).*

SELECT * 
FROM city 
WHERE name REGEXP '^b.{7}'
  AND name REGEXP '(a.*){5}';
  
SELECT * 
FROM city 
WHERE name REGEXP '^b.{6,}r$'
  AND name REGEXP '(a.*){5}';