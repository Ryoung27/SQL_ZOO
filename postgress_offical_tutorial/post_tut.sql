SELECT * FROM cd.facilities

select name, membercost from cd.facilities;

SELECT * FROM cd.facilities
WHERE membercost > 0;

SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost > 0 and (membercost < (monthlymaintenance/50))

select * from cd.facilities
where name like '%Tennis%';