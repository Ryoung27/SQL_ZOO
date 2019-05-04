--6
SELECT continent, COUNT(continent) FROM world
GROUP BY continent
--7
SELECT continent, COUNT(continent) FROM world
WHERE population >= 10000000
GROUP BY(continent)
--8
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000