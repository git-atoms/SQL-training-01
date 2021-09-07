with JobDiff as
(select
ve.JobTitle as veStanowisko,
e.JobTitle as eStanowisko
from HumanResources.vEmployee as ve
inner join HumanResources.Employee as e
on ve.BusinessEntityID=e.BusinessEntityID)

select
veStanowisko,
eStanowisko,
case when veStanowisko =  eStanowisko then 'Match'
else 'False'
end as 'Dopasowanie'
from JobDiff