select
FirstName + ' ' + LastName as "Imiê i nazwisko",
VacationHours/8 as "Pozosta³o dni urlopu",
SickLeaveHours/8 "Pozosta³o dni na L4"
from HumanResources.Employee as s

inner join
Person.Person as p
on
p.BusinessEntityID=s.BusinessEntityID

order by 1 asc