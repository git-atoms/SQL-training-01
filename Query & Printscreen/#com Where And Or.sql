use [AdventureWorks2014];
--


SELECT
JobTitle
,
BirthDate
,
Gender
,
HireDate


FROM
HumanResources.Employee

WHERE
MaritalStatus = 'M'
and HireDate > '20071111'
or BirthDate < '19620913'