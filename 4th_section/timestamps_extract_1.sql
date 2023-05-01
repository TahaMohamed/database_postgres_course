-- Timestamps & Extract
-- Timestamps
-- Display CURRENT time information
-- TIME => Contains only time
-- DATE => Contains only date
-- TIMESTAMP => Contains date and time
-- TIMESTAMPTZ => Contains date, time and timezone

-- Related functions
-- #1 TIMEZONE
-- #2 NOW
-- #3 TIMEOFDAY
-- #4 CURRENT_TIME
-- #5 CURRENT_DATE

-- SHOW statement
-- Show the value of a run-time paramter.
-- SHOW ALL|name;
-- return value of all|param in running time

SHOW ALL;

SHOW TIMEZONE;

SELECT NOW();

SELECT TIMEOFDAY();

SELECT CURRENT_TIME;

SELECT CURRENT_DATE;