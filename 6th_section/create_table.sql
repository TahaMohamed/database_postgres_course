-- Create Table

-- CREATE TABLE table_name(
-- 	col_name TYPE col_constraints,
-- 	col_name TYPE col_constraints,
-- 	table_constaraint table_constaraint 
-- )INHERITS existing_table_name;


-- CREATE TABLE players(
--   player_id SERIAL PRIMARY KEY,
--   age SMALLINT NOT NULL
--    );

CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	created_at TIMESTAMP NOT NULL,
	last_login TIMESTAMP
);

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE acount_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);