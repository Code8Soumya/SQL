CREATE DATABASE book_shop;
USE book_shop;

CREATE TABLE customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE orders(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8, 2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

INSERT INTO customers(first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders(order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
       
INSERT INTO orders(order_date, amount, customer_id) VALUES('2025-05-03', 99.99, 10);    -- foreign key constraint fails because customer with id 10 does not exist on customers table
       
SELECT id, order_date, amount FROM orders WHERE customer_id=(SELECT id FROM customers WHERE last_name='George');

SELECT * FROM customers, orders;
       
SELECT * FROM customers JOIN orders ON orders.customer_id = customers.id;    -- inner join

SELECT * FROM orders JOIN customers ON orders.customer_id = customers.id;

SELECT order_date, amount, first_name, last_name FROM orders JOIN customers ON orders.customer_id = customers.id;

SELECT first_name, last_name, SUM(amount) AS total_amount 
FROM 
	customers 
		JOIN 
	orders ON orders.customer_id = customers.id
GROUP BY 
	first_name, last_name
ORDER BY 
	total_amount DESC;

SELECT * FROM customers INNER JOIN orders ON customers.id = orders.customer_id;    -- inner join is same as join itself

SELECT * FROM customers LEFT JOIN orders ON customers.id = orders.customer_id;

SELECT first_name, last_name, IFNULL(SUM(amount), 0) AS total_amount
FROM customers LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY first_name, last_name
ORDER BY total_amount DESC;

SELECT * FROM orders RIGHT JOIN customers ON customers.id = orders.customer_id;

DELETE FROM customers WHERE last_name = 'George';    -- does not work because foreign key constraint fails

DROP TABLE orders;
DROP TABLE customers;

CREATE TABLE customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE orders(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8, 2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id) ON DELETE CASCADE
);

INSERT INTO customers(first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders(order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
       
SELECT * FROM customers;
SELECT * FROM orders;

DELETE FROM customers WHERE last_name = 'George';

SELECT * FROM customers;
SELECT * FROM orders;

DROP DATABASE book_shop;


-- exercise

CREATE DATABASE exercise;
USE exercise;

CREATE TABLE students(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100)
);

CREATE TABLE papers(
	title VARCHAR(200),
	grade INT,
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES students(id) ON DELETE CASCADE
);

INSERT INTO students(first_name) VALUES('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers(student_id, title, grade) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT * FROM students;
SELECT * FROM papers;

SELECT first_name, title, grade FROM students INNER JOIN papers ON students.id = papers.student_id ORDER BY first_name DESC, grade DESC;

SELECT first_name, IFNULL(title, 'MISSING') AS title, IFNULL(grade, 0) AS grade FROM students LEFT JOIN papers ON students.id = papers.student_id;

SELECT 
	first_name, 
    AVG(IFNULL(grade, 0)) AS average,  
	CASE 
		WHEN AVG(IFNULL(grade, 0)) >= 75 THEN 'PASSING'
		ELSE 'FAILING'
		END AS passing_status
FROM 
	students 
		LEFT JOIN 
    papers 
ON 
	students.id = papers.student_id 
GROUP BY 
	first_name 
ORDER BY 
	average DESC;

DROP DATABASE exercise;























































































































































































































