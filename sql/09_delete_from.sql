-- delete from books table any row with a book without the genre filled in
DELETE FROM books
WHERE genre IS NULL OR genre = '';
