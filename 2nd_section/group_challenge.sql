-- GROUP BY challenges

-- #1
-- We have two staff members, with Staff IDs 1 and 2. 
-- We want to give a bonus to the staff member that
-- handled the most payments. (Most in terms of
-- number of payments processed, not total
-- dollar mount)

-- How many payments did each staff member handle and who gets the bonus?
-- Solution

SELECT * FROM payment;

SELECT staff_id, COUNT(*)
FROM payment
GROUP BY staff_id;

-- #2
-- Corporate HQ conducting a study on the relationship between
-- replacement cost and a movie MPAA rating (e.g. G,PG,R,etc).

-- What's the average replacement cost per MPAA rating?
-- NOTE: You may need to expand the AVG column to view correct result.

SELECT * FROM film;

SELECT rating, ROUND(AVG(replacement_cost),2)
FROM film
GROUP BY rating;

SELECT rating, AVG(replacement_cost)
FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost) DESC;

-- #3
-- We are running a promotion to reward our top 5 customers with coupons.
-- What are the customer ids of the top 5 customers by total spend?

SELECT * FROM payment;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;
