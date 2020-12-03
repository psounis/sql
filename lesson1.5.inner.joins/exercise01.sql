SELECT CONCAT(e.firstName, ' ', e.lastName) AS full_name,
	o.city AS city
FROM employees e JOIN offices o
	ON e.officeCode = o.officeCode;
    
SELECT CONCAT(e.firstName, ' ', e.lastName) AS full_name,
	o.city AS city
FROM employees e, offices o
WHERE e.officeCode = o.officeCode;

SELECT CONCAT(employees.firstName, ' ', employees.lastName) AS full_name,
	offices.city AS city
FROM employees JOIN offices
	ON employees.officeCode = offices.officeCode;
    
SELECT CONCAT(employees.firstName, ' ', employees.lastName) AS full_name,
	offices.city AS city
FROM employees, offices
WHERE employees.officeCode = offices.officeCode;