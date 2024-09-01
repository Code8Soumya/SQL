CREATE DATABASE book_shop;
USE book_shop;

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

SELECT * FROM books;
SELECT CONCAT(author_fname, ' ', author_lname) AS author_name FROM books;
SELECT CONCAT_WS(' - ', author_fname, author_lname) AS author_name FROM books;

-- SELECT SUBSTRING('hello',2,3);
-- SELECT SUBSTRING('hello world',3);
-- SELECT SUBSTRING('hello world',-1);
-- SELECT SUBSTRING('hello world',-4,2);
-- SUBSTRING() == SUBSTR()

SELECT SUBSTR(title, 1, 15) FROM books;
SELECT 
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title
FROM
    books; 

-- SELECT REPLACE('hello world', 'llo','&^%'); -- case sensitive

SELECT REPLACE(title, ' ','-') FROM books;

SELECT REVERSE(title) FROM books;
SELECT CHAR_LENGTH(title) FROM books; -- returns the length of the characters
SELECT LENGTH(title) FROM books; -- return the storage in bytes for the characters

-- SELECT CHAR_LENGTH('汉字'); -- ans=2
-- SELECT LENGTH('汉字'); -- ans=6
-- SELECT LENGTH('🤔🫡😴😴😴');
-- SELECT CHAR_LENGTH('🤔🫡😴😴😴');

SELECT UPPER(title) FROM books;
SELECT UCASE(title) FROM books;
SELECT LOWER(title) FROM books;
SELECT LCASE(title) FROM books;

-- SELECT INSERT('hello  bobby', 6, 0, 'there');
-- SELECT LEFT('foobarbar', 3);
-- SELECT RIGHT('foobarbar', 3);
-- SELECT REPEAT('ha',5);
-- SELECT TRIM('   bbsr   ');
-- SELECT TRIM(LEADING '.' FROM '.....bbsr...');
-- SELECT TRIM(TRAILING '.' FROM '.....bbsr...');
-- SELECT TRIM(BOTH '.' FROM '.....bbsr...');

SELECT REPLACE(title, ' ', '->') AS title FROM books;
SELECT author_fname AS forward, REVERSE(author_fname) AS backward FROM books;
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;

SELECT
	CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;

DROP TABLE books;











































































