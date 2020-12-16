## SQL - język zapytań do bay danych SQL Server

*(Samokształcenie: kurs z Udemy)*


---

<br>

### Rozdział pierwszy: Wstęp

<br>

1. Teoria baz danych.

2. Język zapytań SQL.

3. Instalacja [SQL Server](https://www.microsoft.com/pl-pl/sql-server/sql-server-downloads) oraz [SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15) (SSMS).

4. [Import bazy AdventureWorks2014](https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms).

5. [Wynik testu z rozdziału pierwszego.](https://github.com/git-atoms/SQL-training-01/blob/master/Testy/01%20Chapter%20One.jpg)

<br>

> ### Podsumowanie składni SQL:
> + **SELECT** - wybór tabel, kolumn (podaje się konkretne kolumny po nazwie albo * jako wszystko)
>
> + **FROM** - źródło danych bo może być z jednej tabeli, a może być z kilku tabel (np. FROM jedna tabel lub FROM kilka tabel)
>
> + **WHERE** - polecenie filtrujące przed zaimportowaniem danych (chcemy mieć te rekordy ale spełniające taki, a taki warunek)
>
> + **GROUP BY** - grupowanie danych: kiedy odfiltrowaliśmy już to co chcieliśmy, to teraz grupujemy te dane po konkretnej kolumnie (można też używać tu funkcji agregujących takich jak SUM, MIN, MAX)
>
> + **HAVING** - filtrowanie ale (grup!!!) i kiedy już zaimportujemy dane i chcemy odrzucić pewne grupy, które się potworzyły na skutek importu SELECT
>
> + **ORDER BY** - sortowanie: rosnąco lub malejąco po konkretnych kolumnach


<br>


> ### Podsumowanie podzbiorów SQL:<br>
> + DQL (**D**ata **Q**uery **L**anguage)<br>
Odpytywanie: SELECT, WHERE, GROUP BY
>
> + DML (**D**ata **M**anipulation **L**anguage)<br>
Modyfikacja: UPDATE, INSERT, DELETE
>
> + DDL (**D**ata **D**efinition **L**anguage)<br>
Tworzenie i modyfikacja obiektów: CREATE TABLE, ALTER VIEW, DROP
>
> + DCL (**D**ata **C**ontrol **L**anguage)<br>
Kontrola uprawnień: GRANT, DENY, REVOKE
>
> + TCL (**T**ransaction **C**ontrol **L**anguage)<br>
Obsługa transakcji: COMMIT, BEGIN TRAN, ROLLBACK
>
<br>

> Więcej o podzbiorach SQL pod tym [linkiem](https://pl.wikipedia.org/wiki/SQL).

<br>


---

<br>

### Rozdział drugi: Odpytywanie danych

<br>

```sql

1. SELECT - Wybór kolumn

> ### Podsumowanie:
>
> + SELECT TOP - Wyświetla wyniki nie tylko "od góry" ale jeśli posortuję ORDER BY DESC to wyświetli podaną ilość "od dołu".
>
> + SELECT DISTINCT - Wyświetla wartość unikalną danego zapytania, np. jeśli jest <br>
    - Jan Kowalski,
    <br>
    - Mateusz Kowalski,
    <br>
    - Andrzej Kowalski, itd...
><br>
> to
<br>
SELECT DISTINCT przy "ORDER BY Nazwisko" wyświetli jako wynik "Kowalski" ale tylko 1 raz.

<br>


2. SELECT - Wybór kolumn i modyfikacje