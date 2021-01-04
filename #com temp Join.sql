select

s.FirstName +' '+ s.LastName as 'Imiê i nazwisko'
,
ad.AddressLine1 as 'Ulica'
,
ad.City as 'Miasto'


from
[AdventureWorks2014].Person.Person as s

join
[AdventureWorks2014].Person.Address as ad
on
ad.AddressID=s.BusinessEntityID