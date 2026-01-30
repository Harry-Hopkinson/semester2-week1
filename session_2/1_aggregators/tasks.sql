-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

-- Find the average population for each continent
SELECT Continent, AVG(Population) AS AveragePopulation
FROM Countries
GROUP BY Continent;

-- Find the total population for each continent
SELECT Continent, SUM(Population) AS TotalPopulation
FROM Countries
GROUP BY Continent;

-- Find the largest population of all countries in each continent
SELECT Continent, Country AS CountryName, Population
FROM Countries AS c1
WHERE Population = (SELECT MAX(Population)
                FROM Countries AS c2
                WHERE c1.Continent = c2.Continent);