-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 books.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

-- Show Science Fiction books with a rating higher than 4.0
SELECT Title FROM Books
WHERE Genre = 'Science Fiction'
AND Rating > 4.0;

-- Show books published before 2000 and less than 300 pages
SELECT Title FROM Books
WHERE Published_Year < 2000
AND Pages < 300;

-- Show books that are in the Fantasy or Romance genre
SELECT Title FROM Books
WHERE Genre = 'Fantasy'
OR Genre = 'Romance';

-- Show books with a rating below 3.5 or more than 700 pages
SELECT Title FROM Books
WHERE Rating < 3.5
AND Pages > 700;

-- Show books with a title that starts with `The`
SELECT Title FROM Books
WHERE Title LIKE 'THE%';

-- Show books where the author's name contains a
SELECT Title, Author FROM Books
WHERE Author LIKE '%a%';

-- Show all books ordered by published year from oldest to newest
SELECT Title, Author, Published_Year FROM Books
ORDER BY Published_Year ASC;

-- Show all books ordered by rating from highest to lowest
SELECT Title, Author, Rating FROM Books
ORDER BY Rating DESC;

-- Show all mystery books ordered alphabetically by title
SELECT Title, Author, Genre FROM Books
WHERE Genre = 'Mystery'
ORDER BY Title;