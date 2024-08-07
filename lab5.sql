#lab 5

USE sakila;

SELECT * FROM inventory;

#1

SELECT COUNT(*) AS number_of_copies
FROM inventory
WHERE film_id = 
	(SELECT film_id FROM film WHERE title = 'Hunchback Impossible');

#2
#SELECT AVG(length) FROM film;
SELECT film_id, title, length
FROM film
WHERE length >=  (SELECT AVG(length) FROM film);

#3
SELECT first_name, last_name
FROM actor
WHERE actor_id IN (
    SELECT actor_id
    FROM film_actor
    WHERE film_id = (SELECT film_id FROM film WHERE title = 'Alone Trip')
);