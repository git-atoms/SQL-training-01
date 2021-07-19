/*INNER JOIN (nie trzeba pisaæ INNER, sam JOIN wystarczy).
£¹czy tylko te dane, które maj¹ swój odpowiednik w drugiej tabeli/widoku.
*/

select *
from
HumanResources.EmployeeDepartmentHistory as dh

inner join
HumanResources.Shift as s
on
s.ShiftID=dh.ShiftID

join --sam JOIN te¿ zadzia³a tak samo jak INNER
Person.Person as pp
on
pp.BusinessEntityID=dh.BusinessEntityID