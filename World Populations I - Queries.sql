--In this project, I worked on a dataset of world population by country data from a recent years. I will write queries to retrieve interesting data and answer a set of specific questions. Note that the databse was used was from the codeacdemy.com website which did not indicate where the data came from.  

-- What years are covered by the dataset?

SELECT DISTINCT year from population_years;


-- What is the largest population size for Gabon in this dataset?
SELECT MAX(population)
FROM population_years
WHERE country = 'Gabon';

--What were the 10 lowest population countries in 2005?
SELECT country
FROM population_years
WHERE year = 2005
ORDER BY population
LIMIT 10;


-- What are all the desitinct countries with a population of over 100 million in the year 2010?
--I don't think we need to use DISTINCT but the solution showed it.
SELECT DISTINCT country
FROM population_years
WHERE population > 100 
  AND year = 2010;


-- How many countries in this dataset have the word "Islands" in their name?
  -- Note that the LIKE operator performs a case-insensitive pattern match. Meaning, words like "Island", 'island', and 'ISLAND' will all be selected. 
SELECT COUNT(DISTINCT country)
FROM population_years
WHERE country LIKE '%islands%';


-- What is the difference in population between 2000 and 2010 in Indonesia?
--Note: It's okay to figure out the difference by hand after pulling the correct data.
SELECT year, country, population
FROM population_years
WHERE country = 'Indonesia'
  AND (year = 2000 OR year = 2010)
GROUP BY 1
ORDER BY 1 DESC;
-- The difference is 28 million

