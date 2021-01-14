USE sakila;

DELETE FROM film_actor
WHERE actor_id = 201;

DELETE FROM actor
WHERE actor_id = 201;

DELETE FROM film
WHERE film_id = 1001;

DROP TABLE copy_actor;
DROP TABLE copy_film_actor;


USE world;
DROP TABLE copy_country;


USE classicmodels;
DROP TABLE copy_customers;