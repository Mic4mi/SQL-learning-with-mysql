SELECT
    CONCAT
    (
        author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long'
    )
    AS 'how many characters does last name have?'
FROM books;