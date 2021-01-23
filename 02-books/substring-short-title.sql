SELECT 
    CONCAT
    (
        SUBSTRING(title, 1, 10), 
        '...'
    ) AS 'Short title'
FROM books;