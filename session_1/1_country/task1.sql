-- Task 1

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task1.sql
-- 3. Exit SQLite: .exit

-- Retrieve all data from the countries table
SELECT * from Countries;

-- Select only country and population column
SELECT Country, Population from Countries;

-- Find all country names from Europe
SELECT Country from Countries
WHERE Continent = 'Europe';

-- Find all countries with a population greater than 100 million
SELECT Country from Countries
WHERE Population > 100000000;

-- Find countries in Asia with a GDP per capita greater than 20,000
SELECT Country from Countries
WHERE Continent = 'Asia' AND
GDPPerCapita > 20000;

-- Find all countries where literacy rate is below 70%
SELECT Country from Countries
WHERE LiteracyPercent < 70.0;

-- Find all countries with a coastline ratio of 0 (landlocked)
SELECT Country from Countries
WHERE CoastlineRatio = 0;

-- Find all countries with names starting with 'A'
SELECT Country from Countries
WHERE Country LIKE 'A%';

-- Find all countries with 'United' in their name
SELECT Country from Countries
WHERE Country LIKE 'United%';

-- Find countries where the birth rate is higher than the death rate
-- And the population is over 50 million
SELECT Country from Countries
WHERE Birthrate > Deathrate AND
Population > 50000000;
