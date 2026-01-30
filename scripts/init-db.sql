-- init-db.sql — creates database + users table and inserts a sample row
CREATE DATABASE IF NOT EXISTS db_tentamen;
USE db_tentamen;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  email VARCHAR(255),
  password VARCHAR(255)
);

INSERT INTO users (username, email, password)
  VALUES ('alice','alice@example.com','pw')
  ON DUPLICATE KEY UPDATE username = username;
