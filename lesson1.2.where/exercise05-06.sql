-- exercise05
SELECT *
FROM payments
WHERE amount BETWEEN 5000 AND 15000
  AND paymentDate BETWEEN '2004-01-01' AND '2004-12-31';
  
-- exercise06
SELECT customerName, country, creditLimit 
FROM customers
WHERE (country = 'USA' OR country = 'Spain' OR country = 'Italy')
  AND creditLimit BETWEEN 100000 AND 120000
ORDER BY country, creditLimit DESC;
  