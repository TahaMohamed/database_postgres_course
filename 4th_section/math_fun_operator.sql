-- Math Functions & Operators

-- Divide
SELECT rental_rate/replacement_cost FROM film;

-- ROUND
SELECT ROUND(rental_rate/replacement_cost,2) FROM film;

-- Get Percnet
SELECT ROUND(rental_rate/replacement_cost,2)*100 AS percent_cost FROM film;

SELECT 0.1 * replacement_cost AS deposite FROM film;