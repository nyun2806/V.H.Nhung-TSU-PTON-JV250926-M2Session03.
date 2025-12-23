CREATE DATABASE users_management;
USE users_management;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY, 
    username VARCHAR(50) NOT NULL UNIQUE,   
    email VARCHAR(100) NOT NULL UNIQUE,     
    password VARCHAR(255) NOT NULL,          
    status TINYINT DEFAULT 1                
);
ALTER TABLE users ADD CONSTRAINT check_user_status CHECK (status IN (0, 1));