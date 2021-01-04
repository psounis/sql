SELECT IF(RIGHT(RTRIM(customerName),1)=',',
		LEFT(customerName, LENGTH(customerName)-1), 
         customerName) AS customerName
FROM (SELECT 
	CASE SUBSTRING_INDEX(customerName, ' ', -1)
		WHEN 'Ltd.' THEN
			LEFT(customerName, LENGTH(customerName)-5)
		WHEN 'Co.' THEN
			LEFT(customerName, LENGTH(customerName)-4)
        WHEN 'Inc.' THEN
			LEFT(customerName, LENGTH(customerName)-5)
		ELSE customerName
	END AS customerName
FROM customers) AS cust;

SELECT SUBSTRING(customerName, 1, LOCATE(' ', customerName)-1),
	   SUBSTRING(customerName, LOCATE(' ', customerName)+1)
FROM customers;