CREATE DATABASE temp;

USE temp;

CREATE TABLE customer AS
SELECT * 
FROM sakila.customer;

SELECT * FROM customer;

DROP DATABASE temp;