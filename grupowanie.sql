--select
--sum(VacationHours) as "Suma wszystkich godzin urlopu"
--from HumanResources.Employee


select
JobTitle,
sum(VacationHours) as "Suma godzin urlopu dla stanowiska"
from HumanResources.Employee
group by JobTitle
having sum(VacationHours) > 17
order by [Suma godzin urlopu dla stanowiska] asc