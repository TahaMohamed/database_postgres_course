-- SubQuery

-- This is where a subquery can help us get the result in a “single” query request.

-- SELECT student,grade 
-- FROM test_scores 
-- WHERE grade > (SELECT AVG(grade) 
-- FROM test_scores)

-- Multiple

-- A subquery can operate on a separate table:

-- SELECT student,grade 
-- FROM test_scores 
-- WHERE student  IN 
-- (SELECT student 
-- FROM honor_roll_table)


-- EXISTS() function
-- To check if any rows are returned with the subquery.

-- SELECT column_name 
-- FROM table_name
-- WHERE EXISTS
-- (SELECT column_name FROM table_name WHERE condition);

SELECT * FROM film;

-- SINGLE

SELECT AVG(rental_rate) FROM film;

SELECT title, rental_rate 
FROM film
WHERE rental_rate > 
-- Excute first subquery
(SELECT AVG(rental_rate) FROM film)
ORDER BY rental_rate;

-- MULTIPLE

SELECT * FROM rental;

SELECT * FROM inventory;

-- Get all films which returned dates are between '29-05-2005' and '30-05-2005'

SELECT * 
FROM rental
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';

SELECT inventory.film_id 
FROM inventory
INNER JOIN rental ON rental.inventory_id = inventory.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';

-- Get film title

SELECT title, film_id
FROM film
WHERE film_id IN
(SELECT inventory.film_id 
FROM inventory
INNER JOIN rental ON rental.inventory_id = inventory.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id;


-- EXISTS  

SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS (
	SELECT * 
	FROM payment AS p 
	WHERE p.customer_id = c.customer_id AND amount > 11
);

SELECT first_name, last_name
FROM customer AS c
WHERE NOT EXISTS (
	SELECT * 
	FROM payment AS p 
	WHERE p.customer_id = c.customer_id AND amount > 11
);