select distinct 
FirstName as 'Imiê'
,
LastName as 'Nazwisko'

from [AdventureWorks2014].Person.Person

where
LastName
between 'b' and 'e'
--like 'e%o%'


order by
--FirstName
--,
LastName
desc