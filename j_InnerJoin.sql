--INNER JOIN (nie trzeba pisaæ INNER, sam JOIN wystarczy).

select *
from
HumanResources.EmployeeDepartmentHistory as dh

inner join --albo sam JOIN (te¿ zadzia³a)
HumanResources.Shift as s
on
dh.ShiftID=s.ShiftID