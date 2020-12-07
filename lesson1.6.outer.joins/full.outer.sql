SELECT c.customerName AS customer,
              e.lastName AS assigned_to
FROM customers c LEFT JOIN employees e
      ON c.salesRepEmployeeNumber = e.employeeNumber
UNION
SELECT c.customerName AS customer,
              e.lastName AS assigned_to
FROM customers c RIGHT JOIN employees e
      ON c.salesRepEmployeeNumber = e.employeeNumber
