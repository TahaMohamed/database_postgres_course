-- GROUP BY challenges

-- #1
-- We have two staff members, with Staff IDs 1 and 2. 
-- We want to give abonus to the staff member that
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
