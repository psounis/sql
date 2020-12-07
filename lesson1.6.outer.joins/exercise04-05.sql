-- exercise 04
SELECT CONCAT(e2.firstName, ' ', e2.lastName) AS supervisor,
       COUNT(*) AS employees
FROM employees e1 JOIN employees e2
	ON e1.reportsTo = e2.employeeNumber
GROUP BY supervisor;

-- exercise 05
SELECT DISTINCT o.city
FROM employees e1 
	RIGHT JOIN employees e2 ON e1.reportsTo = e2.employeeNumber
    JOIN offices o ON e2.officeCode = o.officeCode
GROUP BY e2.employeeNumber
HAVING COUNT(e1.employeeNumber)=0;
