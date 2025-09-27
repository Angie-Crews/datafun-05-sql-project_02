-- Inner Join between Authors and Books tables
SELECT 
    a.author_id,
    a.name AS author_name,
    b.book_id,
    b.title AS book_title
FROM authors a
INNER JOIN books b ON a.author_id = b.author_id;
