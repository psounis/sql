-- example 5.1
SELECT CASE productLine
		WHEN 'Classic Cars' THEN 'Cars'
		WHEN 'Vintage Cars' THEN 'Cars'	
        WHEN 'Trucks and Buses' THEN 'Cars'
        ELSE 'Other'
	   END AS productLine, COUNT(*) AS total
FROM productlines
GROUP BY 1;

-- example 5.2
SELECT CASE 
		WHEN orderDate>='2003-01-01' AND
			 orderDate<='2003-12-31' THEN '2003'
		WHEN orderDate>='2004-01-01' AND
			 orderDate<='2004-12-31' THEN '2004'
        ELSE 'Other'
	   END AS order_date, COUNT(*)
FROM orders
GROUP BY 1;
