--INNER JOIN (nie trzeba pisa� INNER, sam JOIN wystarczy).

select *
from
HumanResources.EmployeeDepartmentHistory as dh

inner join --albo sam JOIN (te� zadzia�a)
HumanResources.Shift as s
on
dh.ShiftID=s.ShiftID