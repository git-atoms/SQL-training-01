select
FirstName + ' ' + LastName as Employee
,JobTitle
,BirthDate
,datediff(year, BirthDate, cast(GETDATE() as date)) as "Wiek pracownika"
,HireDate
,DATEDIFF(year, HireDate, cast(getdate() as date)) as "Sta� pracy w latach"
,VacationHours
,cast(VacationHours as float)/8 as "Pozosta�o dni urlopu"



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

order by "Pozosta�o dni urlopu" desc