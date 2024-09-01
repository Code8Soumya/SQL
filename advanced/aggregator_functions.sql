USE book_shop;

SELECT COUNT(*) FROM books; -- rows
SELECT COUNT(author_fname) FROM books;
SELECT COUNT(DISTINCT author_fname) FROM books;
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

SELECT 
	author_lname, COUNT(*) AS books_written
FROM books GROUP BY author_lname ORDER BY books_written DESC;
SELECT
	released_year, COUNT(*) AS total_books
FROM books GROUP BY released_year ORDER BY released_year DESC;

SELECT MIN(released_year) FROM books;
SELECT MAX(author_lname) FROM books;

SELECT
	title, pages
FROM books WHERE pages=(SELECT MAX(pages) FROM books);
-- INSERT INTO books(title, pages) VALUES('I will die', 634);
SELECT 
	title, released_year
FROM books WHERE released_year=(SELECT MIN(released_year) FROM books);
SELECT
	author_fname, author_lname, COUNT(*)
FROM books GROUP BY author_lname, author_fname;
SELECT 
	author_lname AS 'Author',
    COUNT(*) AS 'Total Number Of Books',
    MIN(released_year) AS 'Oldest Book',
    MAX(released_year) AS 'Recent Book',
    MAX(pages) AS 'Pages In Longest Book',
    SUM(pages) AS 'Total Pages Written',
    AVG(pages) AS 'Average Pages Per Book'
FROM books GROUP BY author_lname, author_fname;

-- Exercise
SELECT COUNT(*) FROM books;
SELECT 
	released_year, COUNT(*) AS 'number of books released'
FROM books GROUP BY released_year;
SELECT SUM(stock_quantity) AS total_books_in_stock FROM books;
SELECT
	author_lname, AVG(released_year) AS avg_released_year
FROM books GROUP BY author_lname;
SELECT 
	CONCAT(author_fname, ' ', author_lname) AS fullname
FROM books WHERE pages = (SELECT MAX(pages) FROM books);
SELECT
	released_year AS year,
    COUNT(*) AS books,
    AVG(pages)
FROM books GROUP BY released_year ORDER BY year ASC;

SELECT * FROM books ;





















































































