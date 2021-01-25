-- Select all the titles who contains "stories"
SELECT title 
FROM   books 
WHERE  title LIKE "%stories%"; 

-- Find the longest book
SELECT title, 
       pages 
FROM   books 
ORDER  BY pages DESC 
LIMIT  1; 

-- Print a summary containing title and released year, for the 3 most recent books
SELECT Concat(title, ' - ', released_year) AS 'summary' 
FROM   books 
ORDER  BY released_year DESC 
LIMIT  3; 

-- Find all books with an author_lname thta contains a space " "
SELECT title, 
       author_lname 
FROM   books 
WHERE  author_lname LIKE "% %"; 