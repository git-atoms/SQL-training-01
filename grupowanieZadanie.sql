-- Z tabeli [Person.Person] sprawd� jakie nazwisko pojawia si� najcz�ciej.

select LastName,
count(*) as "Liczba takich samych nazwisk"
from Person.Person
group by LastName
order by 2 desc