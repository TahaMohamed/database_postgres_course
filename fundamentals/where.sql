-- SELECT WHERE
-- SELECT col1,col2, ...
-- FROM table
-- WHERE conditions;
-- Ex:
-- SELECT name, choice FROM table WHERE name = 'David' AND choice = 'Red'; 

SELECT * 
FROM customer
WHERE first_name = 'Jared';

SELECT title 
FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

SELECT COUNT(*) 
FROM film
WHERE rating = 'R' OR rating = 'PG-13';

SELECT * 
FROM film
WHERE rating != 'R';

-- Challenge Task
-- A customer forgot their wallet at our store!We need to track down their 
-- email to inform them.
-- What is the email for the customer with the name Nancy Thomas?
-- Solution

SELECT first_name, last_name, email
FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

-- Challenge Task. 
-- A customer wants to know what the movie "Outlaw Hanky" is about.
-- Could you give them the description for the movie "Outlaw Hanky"?
-- Solution
SELECT title, description Í
FROM film
WHERE title = 'Outlaw Hanky';

-- Last Challenge
-- Can you get the phone number for the customer who lives at '259 Ipoh Drive'?
SELECT phone
FROM address
WHERE address = '259 Ipoh Drive' OR address2 = '259 Ipoh Drive';