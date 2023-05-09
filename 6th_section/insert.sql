-- INSERT
 
--  INSERT INTO table_name(col1, col2,...,coln)
--  VALUES
--  (val1, val2,...,coln),
--  (val1, val2,...,coln),
--  ....
--  (val1, val2,...,coln);

--  INSERT INTO SELECT

-- INSERT INTO table_name(col1, col2,..., coln)
-- SELECT col1, col2,..., coln FROM another_table;

INSERT INTO account(username, email, password, created_at)
VALUES 
('taha', 'taha@email.com', 'password', CURRENT_TIMESTAMP),
('ali', 'ali@mail.com', 'password', CURRENT_TIMESTAMP);

SELECT * FROM account;

INSERT INTO job(name)
VALUES
('Austronaut'),
('Any Job');

ALTER TABLE acount_job
RENAME TO account_job;

INSERT INTO account_job(user_id, job_id, hire_date)
VALUES (1,2, CURRENT_TIMESTAMP);