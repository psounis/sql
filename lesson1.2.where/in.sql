-- example 3.1
SELECT * 
FROM products
WHERE productLine IN ('Motorcycles', 'Classic Cars');

-- example 3.2
SELECT *
FROM offices
WHERE city NOT IN ('Boston', 'NYC');