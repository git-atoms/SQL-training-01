select
sum(VacationHours) as "Suma wszystkich godzin urlopu"
from HumanResources.Employee
;

select
JobTitle,
sum(VacationHours) as "Suma godzin urlopu dla stanowiska"
from HumanResources.Employee
group by JobTitle