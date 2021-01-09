SELECT *
FROM orders
WHERE shippedDate >= DATE_ADD(orderDate, INTERVAL 8 DAY);
