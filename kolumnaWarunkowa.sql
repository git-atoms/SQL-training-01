select distinct Name,

	case name
	when 'French' then 'Francuz'
	when 'Hebrew' then '¯yd'
	when 'Spanish' then 'Hiszpan'
	end as "Obcokrajowcy"

from Production.Culture
