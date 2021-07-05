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
--HireDate between '2008/01/24' and '2009-jan-24'
--JobTitle like '[b-c]%'
VacationHours between '8' and '80'

order by [Pozosta³o dni urlopu] asc