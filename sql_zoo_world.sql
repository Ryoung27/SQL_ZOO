-- 1
SELECT name FROM world
WHERE name LIKE 'Y%'
-- 2
SELECT name FROM world
WHERE name LIKE '%y'
-- 3
SELECT name FROM world
WHERE name LIKE '%x%'
-- 4
SELECT name FROM world
Where name LIKE '%land'
-- 6
SELECT name FROM world
WHERE name Like '%oo%'