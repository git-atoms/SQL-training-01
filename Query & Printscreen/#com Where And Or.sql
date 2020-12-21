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

AND HireDate > '20071111'
OR BirthDate < '19620913'

--AND (HireDate > '20071111' OR BirthDate < '19620913')