--select top(5) *
--from HumanResources.Employee

		
--select distinct ISnull(cast(hiredate as char), 'noNulls') as "Kolumna z nullem"
--from HumanResources.Employee

select distinct
nullif(MaritalStatus, Gender) as 'Column'
from HumanResources.Employee

where
'Column' is not null
order by 1 desc