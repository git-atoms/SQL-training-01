select
max(FirstName) as Maksimum
from HumanResources.vEmployee
;
select
min(FirstName) as Minimum
from HumanResources.vEmployee
;
select
count(FirstName) as "Zlicza ilo�� wyst�pie�"
from HumanResources.vEmployee
;
select
count(distinct FirstName) as "Zlicza ilo�� unikatowych wyst�pie�"
from HumanResources.vEmployee
