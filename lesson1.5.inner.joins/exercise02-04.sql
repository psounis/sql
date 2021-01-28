-- exercise 02
SELECT c.name as Country, cl.language, cl.Percentage
FROM countrylanguage cl JOIN country c
	ON cl.countryCode = c.Code;
    
-- exercise 03
SELECT p.productName, 
		pl.textDescription AS productLine, 
		p.quantityInStock
FROM products p JOIN productlines pl
	ON p.productLine = pl.productLine;

-- exercise 04
SELECT c.customerName AS customer,
	c.city,
    SUM(p.amount) AS total_amount, 
    c.creditLimit
FROM payments p JOIN customers c
	ON p.customerNumber = c.customerNumber
WHERE c.country IN ('France', 'USA')
GROUP BY p.customerNumber
ORDER BY creditLimit DESC
