-- exercise06
SELECT city, count(*) AS customers
FROM customers
WHERE country = 'USA'
GROUP BY city
HAVING customers>=2
ORDER BY customers DESC;

-- exercise07
SELECT productVendor AS vendor, sum(quantityInStock * buyPrice) AS total_price
FROM products
GROUP BY productVendor
HAVING total_price > 2500000
ORDER BY total_price DESC;

-- exercise08
SELECT state, count(*) AS customers
FROM customers
GROUP BY state
ORDER BY customers DESC;

-- exercise08.2
SELECT state, count(*) AS customers
FROM customers
WHERE state IS NOT NULL
GROUP BY state
ORDER BY customers DESC;

-- exercise08.3
SELECT state, count(*) AS customers
FROM customers
GROUP BY state
HAVING state IS NOT NULL
ORDER BY customers DESC;
