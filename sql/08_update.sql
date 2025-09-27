-- Update the genre of a specific book in the Books table
UPDATE books
SET genre = 'Fantasy'
WHERE title IN ('The Hobbit', 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Goblet of Fire',
                'Harry Potter and the Order of the Phoenix', 'Harry Potter and the Half-Blood Prince', 
                'Harry Potter and the Deathly Hallows', 'The Lord of the Rings');

UPDATE books
SET genre = 'Science Fiction'
WHERE title IN ('Fahrenheit 451', 'Brave New World');

UPDATE books
SET genre = 'Romantic Fiction'
WHERE title IN ('Pride and Prejudice');

UPDATE books
SET genre = 'Psychological Realism'
WHERE title IN ('The Catcher in the Rye');

UPDATE books
SET genre = 'Modernist Literature'
WHERE title IN ('The Great Gatsby');