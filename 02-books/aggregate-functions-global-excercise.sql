-- Print the number of books in the database
SELECT Count(book_id)
FROM   books;

-- Print out how many books where released in each year
SELECT Concat('In ', released_year, ' ', Count(*), ' book(s) released') AS
       'released books by year'
FROM   books
GROUP  BY released_year
ORDER  BY released_year;

-- Print out the total number of books in stock
SELECT Sum(stock_quantity) AS 'total number of books'
FROM   books;

-- Find the average released_year for each author
SELECT Concat(author_fname, ' ', author_lname) AS 'author',
       Avg(released_year)                      AS 'avg year'
FROM   books
GROUP  BY author_fname,
          author_lname;

-- Find the full-name of the author who released the longest book
-- With a subquery
SELECT author_fname,
       author_lname
FROM   books
WHERE  pages = (SELECT Max(pages)
                FROM   books);

-- Without a subquery
SELECT author_fname,
       author_lname,
       pages
FROM   books
ORDER  BY pages DESC
LIMIT  1;

-- final excercise 'has no name wo-hoo!'
SELECT released_year AS 'year',
       Count(*)      AS '#books',
       Avg(pages)    AS 'avg pages'
FROM   books
GROUP  BY released_year
ORDER  BY released_year DESC; 