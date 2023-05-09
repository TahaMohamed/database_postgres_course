-- UPDATE

-- UPDATE table_name 
-- SET col1 = val1,
-- 	col1 = val1,
-- 	....
-- 	coln = valn
-- WHERE condition;

-- Based on another column

-- UPDATE table_name
-- SET col1 = col2;

-- Using another table's values (UPDATE join)

--  Return affected rows

-- UPDATE table_name
-- SET col1 = col2
-- RETURNING col1, col2,..., coln;

UPDATE account
SET last_login = CURRENT_TIMESTAMP;

SELECT * FROM account;

UPDATE account
SET last_login = CURRENT_TIMESTAMP
WHERE user_id = 2;

UPDATE account
SET last_login = created_at
WHERE user_id = 1;

SELECT * FROM account_job;

UPDATE account_job 
SET hire_date = account.created_at
FROM account
WHERE account_job.user_id = account.user_id;


UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_at, last_login;