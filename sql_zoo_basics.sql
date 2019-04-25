SELECT population FROM world WHERE name = 'Germany'

SELECT name, population FROM world
WHERE name in ('Sweden', 'Norway', 'Denmark')

SELECT name, area FROM world
WHERE area between 200000 AND 250000