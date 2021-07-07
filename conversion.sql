--select
--GETDATE() as "Data i godzina",
--cast(getdate() as date) as "Tylko data bez godziny"
--;

--select cast(NationalIDNumber as decimal) as Numer
--from HumanResources.Employee
--order by 1 asc
--;

select BirthDate as "Data urodzin",
datename(MONTH, BirthDate) + ' ' +datename(weekday, BirthDate) as "Jaki to by³ miesi¹c i dzieñ tygodnia?"
from HumanResources.Employee