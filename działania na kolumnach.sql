select
FirstName + ' ' + LastName as "Imi� i nazwisko",
VacationHours/8 as "Pozosta�o dni urlopu",
SickLeaveHours/8 "Pozosta�o dni na L4"
from HumanResources.Employee as s

inner join
Person.Person as p
on
p.BusinessEntityID=s.BusinessEntityID

order by 1 asc