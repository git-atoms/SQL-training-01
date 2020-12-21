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
Gender = 'M'

-- data w formacie RRRR-MM-DD
AND HireDate > '2007' --data zatrudnienia wiêksza ni¿ rok 2007
OR BirthDate < '1962' --data urodzenia mniejsza ni¿ rok 1962

--AND (HireDate > '20071111' OR BirthDate < '19620913')