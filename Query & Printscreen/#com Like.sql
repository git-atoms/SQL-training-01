SELECT 
FirstName AS 'Imiê'
,
LastName AS 'Nazwisko'

FROM [AdventureWorks2014].Person.Person

WHERE
LastName
LIKE 'e%o%'



ORDER BY
LastName
DESC