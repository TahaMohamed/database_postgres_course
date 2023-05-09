-- ALTER

-- The ALTER clause allows for changes to an existing table structure, such as:
-- Adding,dropping,or renaming columns
-- Changing a column’s data type
-- Set DEFAULT values for a column
-- Add CHECK constraints
-- Rename table

-- ALTER TABLE table_name action

-- Adding Columns
-- ALTER TABLE table_name 
-- ADD COLUMN new_col TYPE

-- Removing Columns
-- ALTER TABLE table_name 
-- DROP COLUMN col_name


-- Alter constraints
-- ALTER TABLE table_name 
-- ALTER COLUMN col_name
-- SET DEFAULT value

-- Or

-- ALTER TABLE table_name 
-- ALTER COLUMN col_name
-- DROP DEFAULT

-- Or

-- ALTER TABLE table_name 
-- ALTER COLUMN col_name
-- SET NOT NULL

CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
);


ALTER TABLE information
RENAME TO new_info;


ALTER TABLE new_info
RENAME COLUMN person TO people;

SELECT * FROM new_info;

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;


ALTER TABLE new_info
ALTER COLUMN people SET NOT NULL;

-- DROP

-- ALTER TABLE table_name
-- DROP COLUMN col_name;

-- ALTER TABLE table_name
-- DROP COLUMN col_name1,
-- DROP COLUMN col_name2;

-- ALTER TABLE table_name
-- DROP COLUMN col_name CASCADE;


-- ALTER TABLE table_name
-- DROP COLUMN IF EXISTS col_name

ALTER TABLE new_info
DROP COLUMN people;

SELECT * FROM new_info;

ALTER TABLE new_info
DROP COLUMN IF EXISTS people; 

