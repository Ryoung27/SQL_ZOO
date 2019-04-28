--1
SELECT yr, subject, winner
FROM nobel
WHERE yr =1950
--2
SELECT winner
FROM nobel
WHERE yr = 1962 AND subject = 'Literature'
--3
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'
--4
SELECT winner FROM nobel
WHERE yr >= 2000 AND
subject = 'Peace'
--5
SELECT yr, subject, winner FROM nobel
WHERE yr>= 1980 AND yr< 1990 AND
subject = 'Literature'
--6
SELECT * FROM nobel
WHERE winner in ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')
--7
SELECT winner FROM nobel
WHERE winner LIKE 'John_%'
--8
SELECT yr, subject, winner FROM nobel
WHERE (subject = 'Physics' and yr = 1980) OR
(subject = 'Chemistry' and yr = 1984)
--9
SELECT yr, subject, winner FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine')
--10
SELECT yr, subject, winner FROM nobel
WHERE subject = 'Medicine' AND yr < 1910 or subject = 'Literature' AND yr >= 2004
--11
SELECT *
FROM nobel
WHERE winner LIKE 'peter gr%nberg'
--12
SELECT *
FROM nobel
WHERE winner LIKE 'eugene o_neill'