SELECT category_id, name FROM category;

-- Task

-- Use SELECT statement to grap the firsst and last names 
-- of every customer and their email address

-- Solution

SELECT first_name, last_name, email FROM customer;

-- SELECT DISTINCT
-- Remove duplicates
-- SELECT DISTINCT col_name FROM table_name
-- SELECT DISTINCT (col_name) FROM table_name
SELECT DISTINCT release_year FROM film;
SELECT DISTINCT(rental_rate) FROM film;

-- Task

-- Use what you've learned about SELECT DISTINCT 
-- to retrieve the distinct rating types our
-- films could have in our database.

-- Solution

SELECT DISTINCT(rating) FROM film;


