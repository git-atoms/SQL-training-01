--create view SzybkiHR as
select
pp.FirstName +' '+pp.LastName as "Imi� i nazwisko",
hre.BirthDate as "Data urodzin",
hre.NationalIDNumber,
hre.VacationHours as "Pozosta�o godzin urlopu",
hre.VacationHours/8 as "Pozosta�o dni urlopu",
hre.SickLeaveHours as "Przechorowanych godzin",
hre.SickLeaveHours/8 as "Przechorowanych dni",
hrve.JobTitle,
hrve.PhoneNumber,
hrve.AddressLine1,
hrvedh.StartDate as "Data zatrudnienia",
DATEDIFF(year, hrvedh.StartDate,GETDATE()) as "Lat pracy"

--into HumanResources.SzybkiHR

from Person.Person as pp
inner join
HumanResources.Employee as hre
on
hre.BusinessEntityID = pp.BusinessEntityID
inner join
HumanResources.vEmployee as hrve
on
hrve.BusinessEntityID=pp.BusinessEntityID
inner join
HumanResources.vEmployeeDepartmentHistory as hrvedh
on
hrvedh.BusinessEntityID=pp.BusinessEntityID

--order by
--"Imi� i nazwisko"
--pp.FirstName