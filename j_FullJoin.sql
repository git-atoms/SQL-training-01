/*FULL JOIN (FULL OUTER JOIN)
Zwraca wszystkie rekordy z tabeli pierwszej i wszystkie z tabeli drugiej.
*/

select *
from
Person.Person as pp

full join
Person.BusinessEntity as pbe
on pbe.BusinessEntityID=pp.BusinessEntityID