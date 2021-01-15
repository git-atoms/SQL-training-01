select

s.FirstName +' '+ s.LastName as 'Imi� i nazwisko'
,hr.HireDate as 'Data zatrudnienia'
,DATENAME(weekday, hr.HireDate) as 'Jaki to dzie� tygodnia?'
,DATEDIFF(year, hr.HireDate, CAST(getdate() as date)) as 'Ile lat u nas pracuje?'
,DATEDIFF(year, cast(hr.BirthDate as date), CAST(hr.HireDate as date)) as 'Ile mia� lat jak podj�� prac�?'


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
