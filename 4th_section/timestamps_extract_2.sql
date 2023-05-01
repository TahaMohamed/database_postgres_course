-- Timestamps and Extract
-- Extract time and date information
-- EXTRACT()
-- AGE()
-- TO_CHAR() 

-- Extract(): Obtain sub-component of date;
-- YEAR => EXTRACT(YEAR FROM col_name)
-- MONTH => EXTRACT(MONTH FROM col_name)
-- WEEK => EXTRACT(WEEK FROM col_name)
-- DAY => EXTRACT(DAY FROM col_name)
-- QUARTER => EXTRACT(QUARTER FROM col_name)

-- AGE(): Calculates and returns the current age given a timestamp.
-- AGE(date_col) =>Output: 13 years 1 mon 5 days 12:23:13.003243

-- TO_CHAR(): General function to convert data types(int, float, date, ...) to text.
-- TO_NUMBER() - TO_TIMESTAMP() - TO_DATE() 
-- TO_CHAR(date_col, format);

SELECT EXTRACT(YEAR FROM payment_date) FROM payment;

SELECT EXTRACT(YEAR FROM payment_date) AS payment_year FROM payment;

SELECT EXTRACT(MONTH FROM payment_date) AS payment_month FROM payment;

SELECT EXTRACT(QUARTER FROM payment_date) AS month_quarter FROM payment;

SELECT AGE(payment_date) AS age FROM payment;

SELECT TO_CHAR(payment_date, 'YYYY-MM-DD') AS date_month FROM payment;

SELECT TO_CHAR(payment_date, 'YYYY-Month') AS date_month FROM payment;
SELECT TO_CHAR(payment_date, 'YYYY-Month-Day') AS date_month FROM payment;
