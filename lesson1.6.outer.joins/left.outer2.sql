-- example 2.1
SELECT c.customerName AS customer,
              e.lastName AS assigned_to
FROM customers c LEFT JOIN employees e
      ON c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY 2;
