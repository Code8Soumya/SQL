CREATE DATABASE my_data;
USE my_data;

CREATE TABLE dogs(
	name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);

SHOW TABLES;
SHOW COLUMNS FROM dogs;
DESC dogs;

SHOW TABLES;
DROP TABLE dogs;

DROP DATABASE my_data;
