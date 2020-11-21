-- exercise01
SELECT checkNumber, paymentDate, amount
FROM payments
WHERE customerNumber = 398
  AND (paymentDate >= '2004-01-01' AND paymentDate <= '2004-12-31');
  
-- exercise02
SELECT *
FROM payments
WHERE (amount >= 5000 AND amount <= 15000)
  AND (paymentDate >= '2004-01-01' AND paymentDate <= '2004-12-31');
  
-- exercise03
SELECT phone
FROM offices
WHERE city = 'London'
   OR city = 'Paris'
   OR city = 'Tokyo';
   
-- exercise04
SELECT CONCAT(addressLine1, ' ', addressLine2, ', ', state, ', ', country) AS address
FROM offices
WHERE country = 'USA';