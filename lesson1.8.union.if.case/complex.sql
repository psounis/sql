-- case
SELECT CASE productLine
		WHEN 'Classic Cars' THEN 'Ground Vehicles'
        WHEN 'Motorcycles' THEN 'Ground Vehicles'
        WHEN 'Planes' THEN 'Air Vehicles'
        WHEN 'Ships' THEN 'Sea Vehicles'
        WHEN 'Trains' THEN 'Ground Vehicles'
        WHEN 'Trucks and Buses' THEN 'Ground Vehicles'
        WHEN 'Vintage Cars' THEN 'Ground Vehicles'
	   END AS vehicleType
FROM productlines;

-- joins
SELECT * 
FROM orderdetails od 
	JOIN orders o ON o.orderNumber = od.orderNumber
    JOIN products p ON od.productCode = p.productCode
    JOIN productlines pl ON p.productLine = pl.productLine
WHERE status = 'Shipped';

-- sub
SELECT o.orderNumber, o.customerNumber,
	   od.quantityOrdered * priceEach AS price,
       CASE pl.productLine
		WHEN 'Classic Cars' THEN 'Ground Vehicles'
        WHEN 'Motorcycles' THEN 'Ground Vehicles'
        WHEN 'Planes' THEN 'Air Vehicles'
        WHEN 'Ships' THEN 'Sea Vehicles'
        WHEN 'Trains' THEN 'Ground Vehicles'
        WHEN 'Trucks and Buses' THEN 'Ground Vehicles'
        WHEN 'Vintage Cars' THEN 'Ground Vehicles'
	   END AS vehicleType
FROM orderdetails od 
	JOIN orders o ON o.orderNumber = od.orderNumber
    JOIN products p ON od.productCode = p.productCode
    JOIN productlines pl ON p.productLine = pl.productLine
WHERE status = 'Shipped';
    
-- sub
SELECT c.customerNumber, o.country
FROM customers c 
	JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
	JOIN offices o ON e.officeCode = o.officeCode
WHERE o.country IN ('USA', 'France');

-- example 4.1
SELECT country, vehicleType, sum(price) AS totalAmount
FROM
	(SELECT o.orderNumber, o.customerNumber,
		   od.quantityOrdered * priceEach AS price,
		   CASE pl.productLine
			WHEN 'Classic Cars' THEN 'Ground Vehicles'
			WHEN 'Motorcycles' THEN 'Ground Vehicles'
			WHEN 'Planes' THEN 'Air Vehicles'
			WHEN 'Ships' THEN 'Sea Vehicles'
			WHEN 'Trains' THEN 'Ground Vehicles'
			WHEN 'Trucks and Buses' THEN 'Ground Vehicles'
			WHEN 'Vintage Cars' THEN 'Ground Vehicles'
		   END AS vehicleType
	FROM orderdetails od 
		JOIN orders o ON o.orderNumber = od.orderNumber
		JOIN products p ON od.productCode = p.productCode
		JOIN productlines pl ON p.productLine = pl.productLine
	WHERE status = 'Shipped') ovt
    JOIN 
	(SELECT c.customerNumber, o.country
	FROM customers c 
		JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
		JOIN offices o ON e.officeCode = o.officeCode
	WHERE o.country IN ('USA', 'France')) oc
    ON ovt.customerNumber = oc.customerNumber
GROUP BY country, vehicleType
ORDER BY totalAmount DESC;
