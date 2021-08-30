select top 5
sale.[Imiê i nazwisko],
sale.SalesYTD,
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

group by
Sale.[Imiê i nazwisko],
Sale.SalesYTD
order by
3 desc,
1 asc