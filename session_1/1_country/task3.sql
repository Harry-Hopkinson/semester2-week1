-- Task 3

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task3.sql
-- 3. Exit SQLite: .exit

-- Count the total number of countries in the dataset
SELECT COUNT(*) AS TotalCountries FROM Countries;

-- Find how many countries belong to each continent
SELECT Continent, COUNT(*) AS Count
FROM Countries
GROUP BY Continent;

-- Calculate the total population for each continent
SELECT Continent, SUM(Population) AS TotalPopulation
FROM Countries
GROUP BY Continent;

-- Find the average GDP per capita for each continent
SELECT Continent, AVG(GDPPerCapita) AS AverageGDPCapita
FROM Countries
GROUP BY Continent;

-- Find continents that have more than 5 countries
SELECT Continent, COUNT(*) AS CountryCount
FROM Countries
GROUP BY Continent
HAVING CountryCount > 5;

-- Find continents where the total population is greater than 1 billion
SELECT Continent, SUM(Population) AS TotalPopulation
FROM Countries
GROUP BY Continent
HAVING TotalPopulation > 1000000000;

-- Find the country with the highest population in each continent
SELECT Continent, Country AS CountryName, Population
FROM Countries AS c1
WHERE Population = (SELECT MAX(Population)
                FROM Countries AS c2
                WHERE c1.Continent = c2.Continent);

-- For each continent, find the average population density,
-- The highest population, and the lowest GDP per capita.
SELECT Continent,
       AVG(PopDensityPerSqMi) AS AveragePopulationDensity,
       MAX(Population) AS HighestPopulation,
       MIN(GDPPerCapita) AS LowestGDPCapita
FROM Countries
GROUP BY Continent;

-- Find continents where the average population density is greater than 100
-- And the total GDP per capita is greater than 5000.
SELECT Continent
FROM Countries
GROUP BY Continent
HAVING AVG(PopDensityPerSqMi) > 100
   AND SUM(GDPPerCapita) > 5000;

-- For each continent, calculate the total area, the total arable percentage,
-- And the average birthrate for countries with a population greater than 10 million.
SELECT Continent,
       SUM(AreaSqMi) AS TotalArea,
       SUM(ArablePercent) AS ArablePercentage,
       AVG(Birthrate) AS AverageBirthrate
FROM Countries
WHERE Population > 10000000
GROUP BY Continent;