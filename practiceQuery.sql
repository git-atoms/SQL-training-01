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
,VacationHours
,cast(VacationHours as float)/8 as 'Pozosta³o dni urlopu'

from Person.Person as s
join
HumanResources.Employee as e
on
e.BusinessEntityID=s.BusinessEntityID

where
--HireDate >= '20080124'
--and HireDate <= '20090124'
HireDate between '20080124' and '20090124'

order by HireDate desc