select top 3
sale.[Imiê i nazwisko],
max(salesytd) as "Najwy¿sza sprzeda¿",
min(salesytd) as "Najni¿sza sprzeda¿",
AVG(salesytd) as "Œrednia sprzeda¿"

from 

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
ve.BusinessEntityID=s.BusinessEntityID) as Sale

group by sale.[Imiê i nazwisko]
order by 2 desc