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