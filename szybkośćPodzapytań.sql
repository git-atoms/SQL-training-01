--Executing time 5 seconds

SELECT Name,
       YearOpened,
       NumberEmployees
FROM   sales.vstorewithdemographics
WHERE  NumberEmployees > any (SELECT DISTINCT NumberEmployees
                           FROM   sales.vstorewithdemographics
                           WHERE  YearOpened = '1990')
and YearOpened <> '1990'
order by NumberEmployees
;

--Executing time NOW!
SELECT Name,
       YearOpened,
       NumberEmployees
FROM   sales.vstorewithdemographics



