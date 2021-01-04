SELECT productName, quantityInStock, buyPrice, 
	round(1.1*power(buyPrice, 1.1),2) AS sellPrice, 
    round((round(1.1*power(buyPrice, 1.1),2)-buyPrice)*quantityInStock,2) AS profit
FROM products;