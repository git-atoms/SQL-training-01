/*LEFT JOIN (LEFT OUTER JOIN)
Zwraca wszystkie rekordy z tabeli pierwszej i tylko te pasuj¹ce z tabeli drugiej.
*/

select *
from
Person.Person as pp

left join
Person.BusinessEntity as pbe
on pbe.BusinessEntityID=pp.BusinessEntityID