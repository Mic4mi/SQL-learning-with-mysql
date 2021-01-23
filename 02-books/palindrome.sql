 SELECT 
    CONCAT
        (
            author_fname, 
            REVERSE(author_fname)
        )
    AS 'Palindrome'
FROM books;