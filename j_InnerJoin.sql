--INNER JOIN (nie trzeba pisa� INNER, sam JOIN wystarczy).

select *
from
HumanResources.EmployeeDepartmentHistory as dh

inner join
HumanResources.Shift as s
on
s.ShiftID=dh.ShiftID

join --sam JOIN te� zadzia�a tak samo jak INNER
Person.Person as pp
on
pp.BusinessEntityID=dh.BusinessEntityID