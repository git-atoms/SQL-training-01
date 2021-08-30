with Sale as
(select
FirstName +' '+LastName as "Imiê i nazwisko",
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

select top 3
Sale.[Imiê i nazwisko],
max(SalesYTD) as "Najwy¿sza sprzeda¿"

from Sale
group by [Imiê i nazwisko]
order by 2 desc