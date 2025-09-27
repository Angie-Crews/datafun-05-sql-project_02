-- Count total number of books in the books table
SELECT COUNT(*) AS total_books FROM books;

-- Count number of books by each author.id
SELECT author_id, COUNT(*) AS books_per_author
FROM books
GROUP BY author_id;