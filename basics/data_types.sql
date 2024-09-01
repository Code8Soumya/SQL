USE book_shop;

CREATE TABLE parent (children TINYINT UNSIGNED);
INSERT INTO parent (children) VALUES (3);
-- INSERT INTO parent (children) VALUES (-3);
SELECT * FROM parent;

CREATE TABLE products (price DECIMAL(5, 2));
INSERT INTO products(price) VALUES (4.99),(5.026);
SELECT * FROM products;

CREATE TABLE nums (x FLOAT, y DOUBLE); -- lose precision
INSERT INTO nums(x, y) VALUES (1.123456789, 1.123456789123456789123456789);
SELECT * FROM nums;

CREATE TABLE people(
	name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
INSERT INTO people(name, birthdate, birthtime, birthdt)
	VALUES 
		('Soumya', '2000-12-25', '11:00:00', '2000-12-25 11:00:00'),
		('Sam', CURDATE(), CURTIME(), NOW());
SELECT 
	birthdate, DAY(birthdate), DAYOFWEEK(birthdate), DAYOFYEAR(birthdate),
    MONTHNAME(birthdate), YEAR(birthdt)
FROM people;
SELECT
	name, HOUR(birthtime), MINUTE(birthdt), TIME(birthdt)
FROM people;
SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %d') FROM people;
SELECT birthdt, DATE_FORMAT(birthdt, 'Born On : %r') FROM people;
SELECT birthdate, DATEDIFF(CURDATE(), birthdate) FROM people;
SELECT birthdt, DATEDIFF(CURDATE(), birthdt) FROM people;
SELECT DATE_ADD(CURDATE(), INTERVAL 1 YEAR);
SELECT DATE_SUB(CURDATE(), INTERVAL 1 MONTH);
SELECT
	name, birthdate, DATE_ADD(birthdate, INTERVAL 18 YEAR) AS '18 at'
FROM people;
SELECT name, birthdate, birthdate - INTERVAL 18 YEAR FROM people;
SELECT * FROM people;

CREATE TABLE captions(
	text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP()
);
INSERT INTO captions(text) VALUES('Who are you ?');
UPDATE captions SET text='I love you!!!';
SELECT * FROM captions;










































































