use mydata;

-- CREATE TABLE cats(
-- 	name VARCHAR(50) NOT NULL,
-- 	age INT NOT NULL
-- );

-- DESC cats;

-- INSERT INTO cats(name,age) VALUES('Bunny',8),('Sunny\'s cat',10),('"msuni" cat',9);
-- SELECT * FROM cats;

-- CREATE TABLE cats1(
-- 	name VARCHAR(50) DEFAULT 'Unknown',
--     age INT DEFAULT 10
-- );

-- INSERT INTO cats1 (age) VALUES(5);
-- INSERT INTO cats1 (name) VALUES('Honey');
-- INSERT INTO cats1 (name, age) VALUES(NULL, NULL); -- works fine
-- SELECT * FROM cats1;

-- CREATE TABLE cats2(
-- 	name VARCHAR(50) NOT NULL DEFAULT 'Unknown',
--     age INT NOT NULL DEFAULT 10
-- );

-- INSERT INTO cats2(name, age) VALUES(NULL, NULL); -- don't work
-- SELECT * FROM cats2;

DROP TABLE cats, cats1, cats2;