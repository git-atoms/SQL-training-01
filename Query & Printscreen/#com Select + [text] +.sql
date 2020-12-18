SELECT
FirstName
    +' | tutaj jest odstęp pomiędzy wynikami zapytania | '
    + LastName as 'Imię i nazwisko'

FROM
Person.Person

ORDER BY
FirstName