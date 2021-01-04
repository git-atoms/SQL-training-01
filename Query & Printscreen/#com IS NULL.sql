SELECT TOP 15

FirstName +' '+ LastName as 'Imię i nazwisko'
,
AdditionalContactInfo

FROM [AdventureWorks2014].Person.Person

WHERE AdditionalContactInfo IS NULL