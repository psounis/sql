CREATE TABLE actor AS 
SELECT * FROM sakila.actor;

RENAME TABLE actor TO actors;

TRUNCATE TABLE actors;
SELECT * FROM actors;
DROP TABLE actors;