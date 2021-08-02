--Executing time 5 seconds

SELECT Name,
       YearOpened,
       NumberEmployees
FROM   sales.vstorewithdemographics
WHERE  NumberEmployees IN (SELECT DISTINCT NumberEmployees
                           FROM   sales.vstorewithdemographics
                           WHERE  YearOpened = '1990') 
;

--Executing time NOW!
SELECT Name,
       YearOpened,
       NumberEmployees
FROM   sales.vstorewithdemographics