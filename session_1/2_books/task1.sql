-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 books.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

-- Show all columns for all books
SELECT * FROM Books;

-- Show the title and author of every book
SELECT Title, Author FROM Books;

-- Show all books published after 2015
SELECT Title FROM Books
WHERE Published_Year > 2015;

-- Show all books with more than 400 pages
SELECT Title FROM Books
WHERE Pages > 400;

-- Show all books with a rating of 4.0 or higher
SELECT Title FROM Books
WHERE Rating >= 4.0;

-- Show all books in the Fantasy genre
SELECT Title FROM Books
WHERE Genre = 'Fantasy';

-- Show all books published before the year 2000
SELECT Title FROM Books
WHERE Published_Year < 2000;

-- Show all books with fewer than 300 pages
SELECT Title FROM Books
WHERE Pages < 300;