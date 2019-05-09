SELECT * FROM cd.facilities

select name, membercost from cd.facilities;

SELECT * FROM cd.facilities
WHERE membercost > 0;

SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost > 0 and (membercost < (monthlymaintenance/50))

select * from cd.facilities
where name like '%Tennis%';

SELECT * FROM cd.facilities
WHERE facid IN(1, 5)

SELECT name,
case when (monthlymaintenance > 100) then
'expensive'
else
'cheap'
end as cost
FROM cd.facilities

select memid, surname, firstname, joindate
	from cd.members
	where joindate >= '2012-09-01';

select distinct surname from cd.members order by surname limit 10;

select surname
	from cd.members
union
select name
	from cd.facilities;

    select max(joindate) as latest
	from cd.members;