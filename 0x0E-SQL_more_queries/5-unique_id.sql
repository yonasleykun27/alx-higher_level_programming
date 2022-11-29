-- Create table 'unique_id'
-- id INT default 1 unique, name VARCHAR(256)
-- If table already exists, script should not fail
CREATE TABLE IF NOT EXISTS unique_id
(
	id INT DEFAULT 1 UNIQUE,
	name VARCHAR(256)
);
