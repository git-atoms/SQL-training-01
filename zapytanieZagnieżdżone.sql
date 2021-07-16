select
max(salesytd) as "Najwy�sza sprzeda�",
min(salesytd) as "Najni�sza sprzeda�",
AVG(salesytd) as "�rednia sprzeda�"
from

(select
FirstName +' '+LastName as "Imi� i nazwisko",
SalesYTD
from Sales.SalesPerson as s

join
HumanResources.Employee as e
on
e.BusinessEntityID=s.BusinessEntityID

join
HumanResources.vEmployee as ve
on
ve.BusinessEntityID=s.BusinessEntityID) as Sale