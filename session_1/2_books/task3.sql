-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 books.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

-- Show the top 5 highest-rated books
SELECT Title, Rating FROM Books
ORDER BY Rating DESC LIMIT 5;

-- Show the 3 most recently published books
SELECT Title, Published_Year FROM Books
ORDER BY Published_Year DESC LIMIT 3;

-- Show the 10 shortest books by page count
SELECT Title, Pages FROM Books
ORDER BY Pages ASC LIMIT 10;

-- Show the top 5 highest-rated books published after 2010
SELECT Title, Rating, Published_Year FROM Books
WHERE Published_Year > 2010
ORDER BY RATING DESC LIMIT 5;

-- Show fantasy books with more than 500 pages
-- Ordered by rating (highest first).
SELECT Title, Pages, Rating, Genre FROM Books
WHERE Genre = 'Fantasy'
AND Pages > 500
ORDER BY RATING DESC;

-- Show books published before 1980 with more than 300 pages
-- Ordered by published year.
SELECT Title, Pages, Published_Year FROM Books
WHERE Published_Year < 1980
AND Pages > 300
ORDER BY Published_Year ASC;

-- Show the 5 lowest-rated books in the Mystery genre.
SELECT Title, Rating, Genre FROM Books
WHERE Genre = 'Mystery'
ORDER BY Rating ASC LIMIT 5;

-- Show science fiction books published after 2000
-- Ordered by published year, limited to 5 results.
SELECT Title, Genre, Published_Year FROM Books
WHERE Genre = 'Science Fiction'
AND Published_Year > 2000
ORDER BY Published_Year DESC LIMIT 5;