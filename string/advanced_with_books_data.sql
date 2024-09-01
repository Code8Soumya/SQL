USE book_shop;

CREATE TABLE books (
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
	('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343),
	('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
	('fake_book', 'Freida', 'Harris', 2001, 287, 428),
	('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367)
;

SELECT * FROM books;

SELECT author_lname FROM books;
SELECT DISTINCT author_lname FROM books;
SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;
SELECT DISTINCT author_fname, author_lname FROM books;

SELECT title, pages FROM books ORDER BY pages;
SELECT title, pages FROM books ORDER BY pages ASC;
SELECT title, pages FROM books ORDER BY pages DESC;
SELECT title, pages FROM books ORDER BY title;
SELECT title, author_lname, pages FROM books ORDER BY 3; -- order by the third column e.g->pages
SELECT author_lname, released_year FROM books ORDER BY author_lname, released_year;
SELECT author_lname, released_year FROM books ORDER BY author_lname DESC, released_year ASC;
SELECT CONCAT(author_lname, ' ', author_fname) AS author FROM books ORDER BY author;

SELECT book_id, title, released_year FROM books ORDER BY released_year DESC LIMIT 5;
SELECT book_id, title, released_year FROM books ORDER BY released_year DESC LIMIT 2, 5;

SELECT book_id, author_fname FROM books WHERE author_fname LIKE '%da%';
SELECT * FROM books WHERE title LIKE '%:%';
SELECT * FROM books WHERE author_fname LIKE '_____';
SELECT * FROM books WHERE author_fname LIKE '%n';
SELECT * FROM books WHERE author_fname LIKE '%';
SELECT * FROM books WHERE title LIKE '%\%%';
SELECT * FROM books WHERE title LIKE '%\_%';

-- Exercise
SELECT title FROM books WHERE title LIKE '%stories%';
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
SELECT 
	CONCAT(title, ' - ', released_year) 
    AS summary
FROM books ORDER BY released_year DESC LIMIT 3;
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
SELECT 
	title, released_year, stock_quantity 
FROM books ORDER BY stock_quantity ASC LIMIT 3;
SELECT title, author_lname FROM books ORDER BY author_lname, title;
SELECT 
    UPPER(CONCAT('My favourite author is ',
                    author_fname,
                    ' ',
                    author_lname)) AS yell
FROM
    books
ORDER BY author_lname;




















































































































