SELECT CONCAT(e1.firstName, ' ', e1.lastName) AS employee,
	   CONCAT(e2.firstName, ' ', e2.lastName) AS reports_to
FROM employees e1 LEFT JOIN employees e2
	ON e1.reportsTo = e2.employeeNumber