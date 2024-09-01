USE book_shop;

SELECT * FROM books;

SELECT * FROM books WHERE released_year != 2017;
SELECT * FROM books WHERE author_lname != 'Gaiman';

SELECT title FROM books WHERE title NOT LIKE '% %';
SELECT title, author_fname, author_lname FROM books WHERE author_fname NOT LIKE 'da%';

SELECT * FROM books WHERE released_year >= 2005;
SELECT * FROM books WHERE pages >= 500;
SELECT * FROM books WHERE pages < 500;
SELECT 1 > NULL;

SELECT title FROM books WHERE author_lname = 'eggers' AND released_year >= 2010;
SELECT 
    *
FROM
    books
WHERE
	author_lname = 'eggers'
        AND released_year > 2010
        AND title LIKE '%novel%';
SELECT 
	title, pages
FROM 
	books 
WHERE 
	CHAR_LENGTH(title) > 30
	AND pages > 500;
    
SELECT 
	title, pages
FROM 
	books 
WHERE 
	CHAR_LENGTH(title) > 30
	OR pages > 500;

SELECT
	title, released_year
FROM
	books
WHERE
	released_year BETWEEN 2004 AND 2014;
SELECT
	title, released_year
FROM
	books
WHERE
	released_year NOT BETWEEN 2004 AND 2014;

SELECT * FROM people;

SELECT * FROM people WHERE YEAR(birthdate) < 2005;
SELECT CAST('09:00:00' AS TIME);
SELECT * FROM people WHERE birthtime BETWEEN '11:00:00' AND '16:00:00';
SELECT 
    *
FROM
    people
WHERE
    birthtime BETWEEN CAST('11:00:00' AS TIME) AND CAST('16:00:00' AS TIME);
    
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname IN ('carver' , 'lahiri', 'smith');
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname NOT IN ('carver' , 'lahiri', 'smith');
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year % 2 = 0;

SELECT 
    title,
    released_year,
    CASE
        WHEN released_year >= 2000 THEN 'modern lit'
        ELSE '20th century lit'
    END AS genre
FROM
    books;
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS stock
FROM
    books;

SELECT * FROM books WHERE author_lname IS NULL;
-- DELETE FROM books WHERE author_lname IS NULL;


-- Exercise
SELECT * FROM books;
SELECT * FROM books WHERE released_year < 1980;
SELECT * FROM books WHERE author_lname IN ('eggers', 'chabon');
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;
SELECT 
    *
FROM
    books
WHERE
    author_lname LIKE 'c%'
        OR author_lname LIKE 's%';
SELECT 
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN
            title LIKE '%just kids%'
                OR title LIKE '%a heartbreaking work%'
        THEN
            'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM
    books;
SELECT 
    author_fname,
    author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*), ' book')
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM
    books
GROUP BY author_lname , author_fname;

































































































