--1
SELECT SUM(population)
FROM world
--2
SELECT DISTINCT(continent)
FROM world
--3
SELECT SUM(gdp) FROM world
WHERE continent='Africa'
--4
SELECT  COUNT(name) FROM world
WHERE   area > 1000000
--5
SELECT  SUM(population)FROM world
WHERE name in ('Estonia', 'Latvia', 'Lithuania')