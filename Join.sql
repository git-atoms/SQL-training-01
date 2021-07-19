/*CROSS JOIN (nawet nie trzeba u¿ywac klauzuli JOIN, wystarczy podaæ dwa Ÿród³a przy FROM).
Wtedy wartoœci w z³¹czonej tabeli siê zwiêkszaj¹ bo nastêpuje mno¿enie iloœci danych z pierwszej tabeli/widoku
z iloœci¹ danych z drugiej tabeli/widoku.
*/

select *
from
HumanResources.EmployeeDepartmentHistory,
HumanResources.Shift