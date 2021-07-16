-- Z tabeli [Person.Person] sprawdŸ jakie nazwisko pojawia siê najczêœciej.

select LastName,
count(*) as "Liczba takich samych nazwisk"
from Person.Person
group by LastName
order by 2 desc