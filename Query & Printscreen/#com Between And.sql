SELECT DISTINCT
FirstName AS 'Imię'
,
LastName AS 'Nazwisko'

FROM [AdventureWorks2014].Person.Person

WHERE
LastName
BETWEEN 'b' AND 'e'




ORDER BY
LastName
DESC