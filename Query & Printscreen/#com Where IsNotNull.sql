SELECT
FirstName +' '+ LastName as 'Imię i nazwisko'
,
MiddleName as 'Drugie imię'

FROM
[AdventureWorks2014].Person.Person

WHERE
MiddleName IS NOT NULL