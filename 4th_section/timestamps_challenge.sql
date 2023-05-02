-- Timestamps challenge
-- #1
-- During which months did payments occur?
SELECT EXTRACT(MONTH FROM payment_date) FROM payment;
-- Format your answer to return back the full month name.
SELECT DISTINCT(TO_CHAR(payment_date, 'Month')) FROM payment;


-- #2

-- How many payments occurred on a Monday?
-- NOTE: We didn’t show you exactly how to do this, 
-- but use the documentation or Google to figure this out!

SELECT COUNT(*)
FROM payment
WHERE TRIM(TO_CHAR(payment_date, 'Day')) = 'Monday';


SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;

