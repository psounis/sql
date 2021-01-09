SELECT orderNumber, 
	DATE_FORMAT(orderDate, '%d/%m/%Y') AS orderDate,
    DATE_FORMAT(requiredDate, '%d/%m/%Y') AS orderDate,
    DATE_FORMAT(shippedDate, '%a, %D %M %Y') AS shippedDate
FROM orders