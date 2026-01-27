-- Task 2

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task2.sql
-- 3. Exit SQLite: .exit

-- Find the top 10 most populous countries
SELECT Country FROM countries ORDER BY
Population DESC LIMIT 10;

-- Smallest 5 countries by area
SELECT Country FROM countries ORDER BY
AreaSqMi ASC LIMIT 5;

-- Largest country in Europe
SELECT Country FROM countries
WHERE Continent = 'Europe'
ORDER BY Population DESC LIMIT 1;

-- Smallest 3 countries in Africa
SELECT Country FROM countries
WHERE Continent = 'Africa'
ORDER BY AreaSqMi ASC LIMIT 3;

-- 5 countries with the lowest literacy rate
SELECT Country FROM countries
ORDER BY LiteracyPercent ASC LIMIT 5;

-- 3 richest (by GDP) countries starting with 'C'
SELECT Country from Countries
WHERE Country LIKE 'C%'
ORDER BY GDPPerCapita DESC LIMIT 3;

-- Country with highest literacy rate
-- With an infant mortality rate above 50
SELECT Country from Countries
WHERE InfantMortalityPer1000 > 50
ORDER BY LiteracyPercent DESC LIMIT 1;

-- 5 countries with the lowest phones per 1000
-- With a GDP above 10000
SELECT Country from Countries
WHERE GDPPerCapita > 10000
ORDER BY PhonesPer1000 ASC LIMIT 5;

-- Richest landlocked country in South America
SELECT Country from Countries
WHERE Continent = 'South America' AND
CoastlineRatio = 0
ORDER BY GDPPerCapita DESC LIMIT 1;

-- Last 10 countries alphabetically
SELECT Country from Countries
ORDER BY Country DESC LIMIT 10;