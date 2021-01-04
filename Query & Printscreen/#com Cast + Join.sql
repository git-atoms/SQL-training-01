SELECT

s.FirstName +' '+ s.LastName AS 'Imię i nazwisko'
,
e.BirthDate AS 'Data urodzenia'
,
e.HireDate AS 'Zatrudniony od'
,
CAST(e.VacationHours AS FLOAT)/8 AS 'Pozostało dni urlopu'


FROM
Person.Person AS s

JOIN
HumanResources.Employee as e
ON
e.BusinessEntityID=s.BusinessEntityID

ORDER BY
[Pozostało dni urlopu] desc
,
[Imię i nazwisko]