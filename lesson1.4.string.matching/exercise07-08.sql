SELECT *
FROM employees
WHERE lastName REGEXP '[^aeyuio]{2}'
  AND firstName LIKE 'L%'
  AND extension REGEXP '31|13';
  
-- exercise 08

SELECT customerNumber, SUM(amount) AS total_amount
FROM payments
WHERE checkNumber REGEXP '^[[:alpha:]]{2}[[:digit:]]{5}$'
GROUP BY customerNumber
HAVING total_amount > 100000
ORDER BY total_amount DESC;
