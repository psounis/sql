-- exercise04
SELECT *
FROM customers
WHERE customerName REGEXP '^B.*(Co\\.?|Inc\\.?)';

-- exercise05
SELECT *
FROM customers
WHERE contactLastName REGEXP '^[aeyuio].{6}';

-- exercise06
SELECT email
FROM employees
WHERE email NOT REGEXP '^[[:alpha:]]{2,}@[[:alpha:]]{3,}\\.com$';
