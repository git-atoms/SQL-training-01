with Sale as
(select
FirstName +' '+LastName as "Imi� i nazwisko",
SalesYTD
from Sales.SalesPerson as s

inner join
HumanResources.Employee as e
on
e.BusinessEntityID=s.BusinessEntityID

inner join
HumanResources.vEmployee as ve
on
ve.BusinessEntityID=s.BusinessEntityID)

select top 5
s1.[Imi� i nazwisko],
max(s1.SalesYTD) as "Najwy�sza sprzeda� w 1 grupie",
s2.[Imi� i nazwisko],
max(s2.SalesYTD) as "Najwy�sza sprzeda� w 2 grupie",
(max(s1.SalesYTD)-max(s2.SalesYTD)) as "2 grupa mniej o: "

from
Sale as s1
left join
Sale as s2
on s1.[Imi� i nazwisko] <> s2.[Imi� i nazwisko]
where
s1.SalesYTD <> s2.SalesYTD

group by
s1.SalesYTD,
s1.[Imi� i nazwisko],
s2.SalesYTD,
s2.[Imi� i nazwisko]

order by
--s1.SalesYTD desc,
--s2.SalesYTD desc,
[2 grupa mniej o: ] desc