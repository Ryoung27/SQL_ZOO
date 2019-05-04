--1
SELECT population FROM world
WHERE name = 'GERMANY'
--2
SELECT name, population
FROM world
WHERE name in ('Sweden', 'Norway', 'Denmark')
--3
SELECT name, area FROM world
WHERE area between 200000 and 250000