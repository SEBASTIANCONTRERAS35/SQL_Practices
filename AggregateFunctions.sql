SELECT COUNT(*) as Numerodelibros FROM books;
 
SELECT COUNT(author_lname) FROM books;
 
SELECT COUNT(DISTINCT author_lname) FROM books;

SELECT author_lname, COUNT(*)  FROM books GROUP BY author_lname;
 
SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;

SELECT MAX(pages) FROM books;
 
SELECT MIN(author_lname) FROM books;

SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
 
SELECT MIN(released_year) FROM books;
 
SELECT title, released_year FROM books 
WHERE released_year = (SELECT MIN(released_year) FROM books);

SELECT author_lname, MIN(released_year) FROM books GROUP BY author_lname;
 
SELECT author_lname, MAX(released_year), MIN(released_year) FROM books GROUP BY author_lname;
 
SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
      MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname;
 
 
SELECT 
	author_lname, 
        author_fname,
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release
FROM books GROUP BY author_lname, author_fname;
SELECT SUM(pages) FROM books;
 
 
SELECT author_lname, COUNT(*), SUM(pages)
FROM books
GROUP BY author_lname;

SELECT AVG(pages) FROM books;
 
SELECT AVG(released_year) FROM books;
 
SELECT 
    released_year, 
    AVG(stock_quantity), 
    COUNT(*) FROM books
GROUP BY released_year;


SELECT released_year, COUNT(*) AS book_count FROM books GROUP BY released_year;
select sum(stock_quantity) as stock from books ;
select author_fname as autor,avg(released_year) as promedioAño from books group by author_fname;
select concat(author_fname,' ',author_lname) as autor,pages from books order by pages desc limit 1;

SELECT CONCAT(author_fname, ' ', author_lname) AS autor, pages
FROM books
WHERE pages = (
    SELECT MAX(pages)
    FROM books
);

select released_year as year,count(*) as books,avg(pages) from books group by released_year;
