select

s.FirstName +' '+ s.LastName as 'Imiê i nazwisko'
,
ad.AddressLine1 as 'Ulica'
,
ad.City as 'Miasto'
,
hr.BirthDate as 'Data urodzenia'
,
DATEDIFF(year, hr.BirthDate, CAST(getdate() as date)) as 'Ile ma lat?'
,
hr.JobTitle as 'Stanowisko'
,
hr.
VacationHours as 'Pozosta³o urlopu'
,
hr.HireDate as 'Data zatrudnienia'
,
DATEDIFF(year, hr.HireDate, CAST(getdate() as date)) as 'Ile ju¿ u nas pracuje?'



from
[AdventureWorks2014].Person.Person as s

join
[AdventureWorks2014].Person.Address as ad
on
ad.AddressID=s.BusinessEntityID

join
[AdventureWorks2014].HumanResources.Employee as hr
on
hr.BusinessEntityID=s.BusinessEntityID

