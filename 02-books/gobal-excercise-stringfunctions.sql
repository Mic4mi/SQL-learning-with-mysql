-- Reverse "Why does my cat look at me with such hatred?"
SELECT REVERSE(UPPER("Why does my cat look at me with such hatred?"));

-- Replace ' ' with '->' on title
SELECT
    REPLACE(title, ' ', '->') AS 'title'
FROM books;

-- Print palindrome last name
SELECT
    author_lname as 'forwards',
    REVERSE(author_lname) as 'backwards'
FROM books;

-- Print full name in caps
SELECT
    UPPER(CONCAT(author_fname, ' ', author_lname))
    AS 'full name in caps'
FROM books;

-- Concat book title with release date
SELECT
    CONCAT(title, ' was released in ', released_year) AS 'blurb'
FROM books;

-- Print title and char count
SELECT
    title AS 'title',
    CHAR_LENGTH(title) AS 'character count'
FROM books;

-- Print short title with '...', lname, fname and stock quantity
SELECT
    CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
    CONCAT(author_lname,', ', author_fname) AS 'author',
    CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM books;

-- Make this happen
SELECT Upper(Concat('my favorite author is ', author_fname, ' ', author_lname, 
             '!')) AS 
       'yell' 
FROM   books 
ORDER  BY author_lname; 

-- Now distinct
SELECT DISTINCT Upper(Concat('my favorite author is ', author_fname, ' ', 
                      author_lname, '!')) AS 
                'yell' 
FROM   books 
ORDER  BY author_lname;  