--select
--GETDATE() as "Data i godzina",
--cast(getdate() as date) as "Tylko data bez godziny"
--;

--select cast(NationalIDNumber as decimal) as Numer
--from HumanResources.Employee
--order by 1 asc
--;

select BirthDate as "Data urodzin",
datename(MONTH, BirthDate) + ' ' +datename(weekday, BirthDate) as "Jaki to by� miesi�c i dzie� tygodnia?"
from HumanResources.Employee