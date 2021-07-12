--select
--sum(VacationHours) as "Suma wszystkich godzin urlopu"
--from HumanResources.Employee
--group by JobTitle --(chocia¿ nie wystêpuje w SELECT to i tak mo¿na pogrupowaæ po nazwie stanowiska)

select
JobTitle,
sum(VacationHours) as "Suma godzin urlopu dla stanowiska"
from HumanResources.Employee
group by JobTitle
--having sum(VacationHours) > 17
having (JobTitle) > 'c'  --(wiêksze od oznacza tu wiêksze-równe)
--order by [Suma godzin urlopu dla stanowiska] asc
order by JobTitle asc