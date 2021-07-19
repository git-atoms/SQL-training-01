/*INNER JOIN (nie trzeba pisaæ INNER, sam JOIN wystarczy).
£¹czy tylko te dane, które maj¹ swój odpowiednik w obu tabelach.
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



--Inny sposób zapisania tego powy¿ej
select *
from
HumanResources.EmployeeDepartmentHistory as dh,
HumanResources.Shift as s
where dh.ShiftID=s.ShiftID