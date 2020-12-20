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
> <br>
>
> + **FROM** - źródło danych bo może być z jednej tabeli, a może być z kilku tabel (np. FROM jedna tabel lub FROM kilka tabel)
>
> <br>
>
> + **WHERE** - polecenie filtrujące przed zaimportowaniem danych (chcemy mieć te rekordy ale spełniające taki, a taki warunek)
>
> <br>
>
> + **GROUP BY** - grupowanie danych: kiedy odfiltrowaliśmy już to co chcieliśmy, to teraz grupujemy te dane po konkretnej kolumnie (można też używać tu funkcji agregujących takich jak SUM, MIN, MAX)
>
> <br>
>
> + **HAVING** - filtrowanie ale (grup!!!) i kiedy już zaimportujemy dane i chcemy odrzucić pewne grupy, które się potworzyły na skutek importu SELECT
>
> <br>
>
> + **ORDER BY** - sortowanie: rosnąco lub malejąco po konkretnych kolumnach


<br>
<br>


> ### Podsumowanie podzbiorów SQL:<br>
> + DQL (**D**ata **Q**uery **L**anguage)<br>
Odpytywanie: SELECT, WHERE, GROUP BY
>
> <br>
>
> + DML (**D**ata **M**anipulation **L**anguage)<br>
Modyfikacja: UPDATE, INSERT, DELETE
>
> <br>
>
> + DDL (**D**ata **D**efinition **L**anguage)<br>
Tworzenie i modyfikacja obiektów: CREATE TABLE, ALTER VIEW, DROP
>
> <br>
>
> + DCL (**D**ata **C**ontrol **L**anguage)<br>
Kontrola uprawnień: GRANT, DENY, REVOKE
>
> <br>
>
> + TCL (**T**ransaction **C**ontrol **L**anguage)<br>
Obsługa transakcji: COMMIT, BEGIN TRAN, ROLLBACK
>
>
> (_Więcej o podzbiorach SQL pod tym [linkiem](https://pl.wikipedia.org/wiki/SQL)_)

<br>


---

<br>

### Rozdział drugi: Odpytywanie danych

<br>



1. SELECT - Wybór kolumn

<br>

> ### Podsumowanie:
>
> + **SELECT TOP** - Wyświetla wyniki nie tylko "od góry" ale jeśli posortuję ORDER BY DESC to wyświetli podaną ilość "od dołu".
>
> <br>
>
> + [**SELECT DISTINCT**](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Select%20Distinct.sql) (link to query) - Wyświetla wartość unikalną danego zapytania, np. jeśli jest <br>
    - Jan Kowalski,
    <br>
    - Mateusz Kowalski,
    <br>
    - Andrzej Kowalski, itd...
><br>
> to SELECT DISTINCT przy sortowaniu "ORDER BY Nazwisko" wyświetli jako wynik "Kowalski" ale już tylko 1 raz.<br>
>
> (_Więcej [pod tym linkiem](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Select%20Distinct.jpg)_)

<br>

2. SELECT - Wybór kolumn i modyfikacje

<br>

> ### Podsumowanie:
>
> + **SELECT [kolumna_1] + ' is a ' + [kolumna_2]** - Wyświetla łączone zapytanie (robi to w jednej kolumnie) ale dane w łączonej kolumnie muszą być tego samego typu.<br>
>
> Printscreen do tej konkatenacji z opisem [pod tym linkiem](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Select%20%2B%20%5Btext%5D%20%2B.jpg), 
a tutaj bezpośredni [link do tego zapytania](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Select%20%2B%20%5Btext%5D%20%2B.sql).
>
> (_Chcesz się dowiedzieć co to jest [konkatenacja](https://sites.google.com/site/leksykonsql/funkcje-tekstowe/laczenie-ciagow-tekstowych)?_)
>
>
><br>
>
>
> + **SELECT SUBSTRING**(wyrażenie/kolumna, start, długość) - wyświetla wyrażenie od podanego przez nas znaku, przez podaną przez nas ilość znaków.
>
> (_[Printscreen](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Substring.jpg) z wyjaśnieniem do tego zapytania oraz samo [zapytanie](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20SUBSTRING.sql)_)
>
>
> <br>
>
>
>
> + **CAST(**[kolumna/wyrażenie] **AS** [typ_danych]**)** - zmienia typ danych dla podanego przez nas wyrażenia/kolumny (np. liczby całkowite zmienia w zmiennoprzecinkowe AS FLOAT) <br>
>
> vs <br>
>
> + **CONVERT(**[typ_danych], [kolumna/wyrażenie]**)** - też zmienia typ danych; inny sposób składni <br>
>
> (_[Printscreen](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Cast%20vs%20Convert.jpg) oraz CAST vs CONVERT [query](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Cast%20vs%20Convert.sql) są tutaj._) <br>
>
><br>
>
> + 