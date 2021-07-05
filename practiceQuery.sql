--select top(5) *
--from HumanResources.Employee
--;

--select
--FirstName + ' ' + LastName as Employee
--,JobTitle
--,BirthDate
--,HireDate
--from Person.Person as s
--join
--HumanResources.Employee as e
--on
--e.BusinessEntityID=s.BusinessEntityID

--order by HireDate asc
--;

select
FirstName + ' ' + LastName as Employee
,JobTitle
,BirthDate
,HireDate
,cast(VacationHours as float)/8 as 'Pozosta³o dni urlopu'

from Person.Person as s
join
HumanResources.Employee as e
on
e.BusinessEntityID=s.BusinessEntityID

order by HireDate asc