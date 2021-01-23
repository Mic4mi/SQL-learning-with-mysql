SELECT 
    author_fname AS  'first', author_lname as 'last',
    CONCAT (author_fname, ' ', author_lname) AS 'full'
    FROM books;