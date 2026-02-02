.headers on

select constructors.name,count(distinct results.raceid)
from
constructors join results 
on constructors.constructorid=results.constructorid
group by constructors.name
order by count(distinct results.raceid) DESC
limit 5;