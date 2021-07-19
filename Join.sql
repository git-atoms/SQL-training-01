/*CROSS JOIN (nawet nie trzeba u¿ywac klauzuli JOIN, wystarczy podaæ dwa Ÿród³a przy FROM).
Wtedy wartoœci w z³¹czonej tabeli siê zwiêkszaj¹ bo nastêpuje mno¿enie iloœci danych z pierwszej tabeli/widoku
z iloœci¹ danych z drugiej tabeli/widoku. Dlatego trzeba u¿yæ filtra WHERE.
*/

select *
from
HumanResources.EmployeeDepartmentHistory as dh,
HumanResources.Shift as s
where dh.ShiftID=s.ShiftID