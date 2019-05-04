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
--4.4
SELECT name, population FROM world
WHERE population > (SELECT population FROM world WHERE name in ('Canada')) AND population < (SELECT population FROM world WHERE name in ('Poland'))
--5
SELECT name, CONCAT(ROUND(population/(SELECT population FROM world WHERE name = 'Germany')*100), '%') FROM world WHERE continent = 'Europe';
--6
SELECT name FROM world
WHERE gdp > ALL(SELECT gdp FROM world WHERE continent = 'EUROPE' and GDP > 0)
--7
SELECT continent, name, area FROM world x
WHERE area >= ALL(SELECT area FROM world y WHERE y.continent=x.continent AND y.area > 0)