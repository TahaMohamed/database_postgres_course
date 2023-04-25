-- ORDER BY
-- SELECT col1, col2, ...
-- FROM table
-- ORDER BY col1 ASC/DESC (ASC by default if leave it blank)

-- SELLECT company, name, sales FROM table
-- ORDER BY company, sales

SELECT * 
FROM customer 
ORDER BY first_name DESC;

SELECT store_id, first_name, last_name
FROM customer 
ORDER BY store_id DESC, first_name ASC;

SELECT first_name, last_name
FROM customer 
ORDER BY store_id DESC, first_name;

-- LIMIT
-- Set returned number of rows

SELECT * 
FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5;

-- ORDER By Challenges
-- Challenge
-- We want to reward our first 10 paying customers.
-- What are the customer ids of the first 10 customers who created a payment?
-- Solution

SELECT customer_id
FROM payment
ORDER BY payment_date
LIMIT 10;

-- Challenge 2
-- What are the titles of the 5 shortest (in length of runtime) movies?
SELECT title, length 
FROM film
ORDER BY length 
LIMIT 5;

-- BONUS Question
-- if customer need to watch any movie that is 50 minutes or less in runtime
-- How many options does he have?

SELECT COUNT(*)
FROM film
WHERE length <= 50;
