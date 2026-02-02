.headers on

select circuits.name,count(*)
from
races join circuits on races.circuitid=circuits.circuitid
group by circuits.name;