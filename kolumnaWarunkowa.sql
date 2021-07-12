select distinct Name,

	case name
	when 'french' then 'Francuz' --nie jest CS
	when 'Hebrew' then '�yd'
	when 'Spanish' then 'Hiszpan'
	when 'Arabic' then cast(getdate() as char) --musz� mie� "then" musi mie� ten sam typ co "when"
	else ''
	end as "Obcokrajowcy"

from Production.Culture
order by Obcokrajowcy asc