CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- creates user
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- Grant privileges on the hbnb_dev_db database
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- Refresh the privilege tables
FLUSH PRIVILEGES;

-- Grant SELECT privilege on the mysql schema
GRANT SELECT ON mysql.* TO 'hbnb_dev'@'localhost';

-- Grant SELECT privilege on the performance_schema schema
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';

-- Refresh the privilege tables again
FLUSH PRIVILEGES;
