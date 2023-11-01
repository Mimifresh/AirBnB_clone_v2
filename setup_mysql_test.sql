-- MySQL setup script
-- Database and user information

SET @DB_NAME = 'hbnb_test_db';
SET @DB_USER = 'hbnb_test';
SET @DB_PASSWORD = 'hbnb_test_pwd';

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS @DB_NAME;

-- Create the user if it doesn't exist
CREATE USER IF NOT EXISTS @DB_USER@'localhost' IDENTIFIED BY @DB_PASSWORD;

-- Grant privileges to the user on the database
GRANT ALL PRIVILEGES ON @DB_NAME.* TO @DB_USER@'localhost';

-- Grant SELECT privilege on the performance_schema database
GRANT SELECT ON performance_schema.* TO @DB_USER@'localhost';
