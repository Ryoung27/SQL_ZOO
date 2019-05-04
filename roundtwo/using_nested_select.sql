--1
SELECT name FROM world WHERE continent =
(SELECT continent
FROM world WHERE name = 'Brazil')
--2
SELECT name, continent FROM world
WHERE continent IN
  (SELECT continent
     FROM world WHERE name='Brazil'
                   OR name='Mexico')
--3
SELECT
 population/(SELECT population FROM world
             WHERE name='United Kingdom')
  FROM world
WHERE name = 'China'
--4
SELECT name FROM world
 WHERE population > ALL
      (SELECT population FROM world
        WHERE continent='Europe')
--2.2
SELECT name
FROM world
WHERE continent = 'Europe'
AND gdp/population > (
  SELECT gdp/population
  FROM world
  WHERE name = 'United Kingdom');
--3.3
SELECT name, continent FROM world
WHERE continent IN (SELECT continent FROM world
WHERE name in ('Argentina', 'Australia')) ORDER BY name