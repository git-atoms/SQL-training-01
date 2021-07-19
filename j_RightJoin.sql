/*RIGHT JOIN (LEFT OUTER JOIN)
Zwraca wszystkie rekordy z tabeli drugiej i tylko te pasuj¹ce z tabeli pierwszej.
*/

select *
from
Person.Person as pp

right join
Person.BusinessEntity as pbe
on pbe.BusinessEntityID=pp.BusinessEntityID