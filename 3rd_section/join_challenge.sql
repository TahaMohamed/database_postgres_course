-- JOIN Challenge Tasks

-- #1

-- California sales tax laws have changed and we need to 
-- alert our customers to this through email.

-- What are the emails of the customers who live in California?

-- Two tables to join (address, customer)

SELECT email,district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';

-- #2

-- A customer walks in and is a huge fan of the actor “Nick Wahlberg” 
-- and wants to know which movies he is in.

-- Get a list of all the movies “Nick Wahlberg” has been in.

-- Tables to join (film, actor, film_actor(pivot table))

SELECT * FROM film;

SELECT * FROM actor;

SELECT * FROM film_actor;

SELECT film.title FROM film
LEFT JOIN film_actor
ON film.film_id = film_actor.film_id
LEFT JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg';


SELECT film.title FROM film_actor
INNER JOIN film
ON film.film_id = film_actor.film_id
INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg';
