--select top(5) *
--from HumanResources.Employee
--;
		
select distinct ISnumeric(cast(hiredate as char))
from HumanResources.Employee