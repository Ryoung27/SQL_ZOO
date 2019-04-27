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
--5
SELECT name FROM world
WHERE name LIKE 'C%' and
name LIKE '%ia'
-- 6
SELECT name FROM world
WHERE name Like '%oo%'
--7
SELECT name FROM world
WHERE LOWER(name) LIKE '%a%a%a%'