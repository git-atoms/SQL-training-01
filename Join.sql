/*CROSS JOIN (nawet nie trzeba u�ywac klauzuli JOIN, wystarczy poda� dwa �r�d�a przy FROM).
Wtedy warto�ci w z��czonej tabeli si� zwi�kszaj� bo nast�puje mno�enie ilo�ci danych z pierwszej tabeli/widoku
z ilo�ci� danych z drugiej tabeli/widoku.
*/

select *
from
HumanResources.EmployeeDepartmentHistory,
HumanResources.Shift