SELECT
s.FirstName +' '+ s.LastName AS 'Imię i nazwisko'
,
p.PasswordSalt
,
p.ModifiedDate



FROM
[AdventureWorks2014].Person.Person AS s

JOIN
[AdventureWorks2014].Person.Password AS p
ON
p.BusinessEntityID=s.BusinessEntityID



ORDER BY
s.FirstName ASC
