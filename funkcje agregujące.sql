select
max(FirstName) as Maksimum
from HumanResources.vEmployee
;
select
min(FirstName) as Minimum
from HumanResources.vEmployee
;
select
count(FirstName) as "Zlicza iloœæ wyst¹pieñ"
from HumanResources.vEmployee
;
select
count(distinct FirstName) as "Zlicza iloœæ unikatowych wyst¹pieñ"
from HumanResources.vEmployee
