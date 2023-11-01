-- MySQL setup script
-- Database and user information

SET hbnb_test_db = 'hbnb_test_db';
SET hbnb_test = 'hbnb_test';
SET hbnb_test_pwd = 'hbnb_test_pwd';

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- Create the user if it doesn't exist
CREATE USER IF NOT EXISTS hbnb_test@'localhost' IDENTIFIED BY hbnb_test_pwd;

-- Grant privileges to the user on the database
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO hbnb_test@'localhost';

-- Grant SELECT privilege on the performance_schema database
GRANT SELECT ON performance_schema.* TO hbnb_test@'localhost';
