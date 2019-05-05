--1
SELECT matchid, player FROM goal
  WHERE teamid = 'GER'
--2
SELECT id,stadium,team1,team2
  FROM game WHERE id = '1012'
--3
SELECT player,teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
WHERE teamid='GER'
--4
SELECT team1, team2, player
FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%'
--5
SELECT player, teamid,coach, gtime
  FROM goal JOIN eteam ON(teamid=id)
 WHERE gtime<=10
 --6
SELECT mdate, teamname
FROM game JOIN eteam ON (team1=eteam.id)
WHERE coach = 'Fernando Santos'
--7
SELECT player
FROM game JOIN goal ON (game.id = goal.matchid)
WHERE stadium = 'National Stadium, Warsaw'

--More Join
--1
SELECT id, title
 FROM movie
 WHERE yr=1962
 --2
 SELECT yr
FROM movie
WHERE title = 'Citizen Kane'
--3
SELECT id, title, yr
FROM movie
WHERE title LIKE ('%Trek%')
ORDER BY(yr)
--4
SELECT id
FROM actor
WHERE name = 'Glenn Close'
--5
SELECT id
FROM movie
WHERE title = 'Casablanca'
--6
SELECT name
FROM actor, casting
WHERE id=actorid AND movieid = (SELECT id FROM movie WHERE title = 'Casablanca')
--7
SELECT name
FROM actor, casting
WHERE id=actorid AND movieid = (SELECT id FROM movie WHERE title = 'alien')
--8
SELECT title
FROM movie
JOIN casting ON (id=movieid AND actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford'))
--10
SELECT title, name
FROM movie JOIN casting ON (id=movieid)
JOIN actor ON (actor.id = actorid)
WHERE ord=1 AND  yr = 1962