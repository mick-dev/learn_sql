select *
from Customer c 
limit 10;

-- COALESCE: Handle with null value
select company, coalesce(company , 'End Customer') as cleanCompany
from Customer c ;

-- GROUP BY
select count(*) 
from Customer c ;

select country, count(*) as n
from Customer c 
group by country ;

select country, State, count(*) as a
from Customer c 
group by country , State ;

select g.GenreId , g.Name , count(t.Name ) as count_n, 
	AVG(t.Bytes / (1024.0 * 1024.0)) as avg_megabytes, 
	SUM(t.Milliseconds / 60000.0 / 60.0) as total_hours 
from Track t 
join Genre g 
on t.GenreId = g.GenreId 
group by 1, 2
order by 3 
limit 10;

-- HAVING: is WHERE for result of aggregate
-- ***use after GROUP BY
select country, count(*) as n
from Customer c 
group by country 
having n >= 5;

select country, count(*) as n 
from Customer c 
group by country 
having n >= 5 and country <> 'USA';

-- ORDER BY
select FirstName , Country 
from Customer c 
order by FirstName desc;

select FirstName , Country 
from Customer c 
order by 2 desc, 1 desc;