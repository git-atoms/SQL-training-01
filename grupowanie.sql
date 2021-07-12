--select
--sum(VacationHours) as "Suma wszystkich godzin urlopu"
--from HumanResources.Employee
--group by JobTitle --(chocia� nie wyst�puje w SELECT to i tak mo�na pogrupowa� po nazwie stanowiska)

select
JobTitle,
sum(VacationHours) as "Suma godzin urlopu dla stanowiska"
from HumanResources.Employee
group by JobTitle
--having sum(VacationHours) > 17
having (JobTitle) > 'c'  --(wi�ksze od oznacza tu wi�ksze-r�wne)
--order by [Suma godzin urlopu dla stanowiska] asc
order by JobTitle asc