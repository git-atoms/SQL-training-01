## SQL - język zapytań do bazy danych SQL Server

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
<br>
<br>

3. WHERE - Filtrowanie danych

<br>

> ### Podsumowanie:
>
> + Wielkość liter nie ma znaczenia przy imporcie zapytań bo **dane są niewrażliwe** na wielkość znaków (CI - Case Insensitive), chyba że w kolumnie są **dane wrażliwe** na wielkość znaków (CS - Case Sensitive).
>
><br>
>
> + Przy filtrowaniu WHERE możemy łączyć warunki przy pomocy operatorów AND czy OR [link do printscreena](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Where%20And%20Or.jpg). A link do zapytania SQL [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Where%20And%20Or.sql).<br>
>
> Przy czym AND ma pierwszeństwo wykonania przed OR, chyba że zapytanie OR znajduje się w nawiasie, wówczas będzie wykonane jako pierwsze bo nawias jest przed AND.

<br>
<br>


4. WHERE - Dodatkowe opcje filtrowania

<br>

> ### Podsumowanie:
>
> + WHERE [kolumna] **BETWEEN** 'b' **AND** 'e'
>
> Printscreen z opisem Between...And [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Between%20And.jpg), a plik z zapytaniem SQL do tego przykładu [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Between%20And.sql).
>
>
> <br>
>
>
> + WHERE [kolumna] **LIKE** 'e%' / '_e'
>
> Printscreen z opisem Like [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Like.jpg), a plik z zapytaniem SQL do tego przykładu [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Like.sql).
>
>
> <br>
>
>
> + WHERE [kolumna] **IN(konkretne wartości)**
>
> Pozwala na import wyników, które spełniają warunek, np. IN(41,45,50) i tylko te >wyniki będą wyświetlone.
>
>
> <br>
>
>
> + WHERE [kolumna] **IS NULL** / **IS NOT NULL**
>
> Printscreen z opisem IS NULL [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20IS%20NULL.jpg), plik z zapytaniem SQL do tego przykładu [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20IS%20NULL.sql), a screen z IS NOT NULL [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Where%20IsNotNull.jpg) i jego SQL query [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Where%20IsNotNull.sql).
>
>
> <br>

<br>
<br>


4. ORDER BY - Sortowanie danych

<br>

> ### Podsumowanie:
>
> + ORDER BY
> Printscreen [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Order%20By.jpg), oryginalne query [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Order%20By.sql).
>
<br>

> Ale jeśli jest np.
<br>

```sql
ORDER BY [kolumna_1] desc, [kolumna_2] asc
```
>to oznacza, że [kolumna_1] będzie sortowana malejąco ale jeśli znajdzie się w niej kilka takich samych wyszukań (np. kilka takich samych stanowisk pracy) to w [kolumna_2] będą one posortowane rosnąco.
>
>Printscreen z opisem [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Order%20By%20wielopoziomowe.jpg), a plik z zapytaniem SQL do tego przykładu [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20Order%20By%20wielopoziomowe.sql).

<br>


---

<br>

### Rozdział trzeci: Konwersja, walidacja i działania arytmetyczne na danych

<br>
<br>


1. CAST, CONVERT, STR - typy danych i ich konwersja

<br>

> ### Podsumowanie:
>
> + **DATEDIFF** - zwraca różnicę w latach, kwartałach, miesiącach, itd...
>
>Printscreen z opisem [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20DATEDIFF.jpg), a plik z zapytaniem SQL do tego przykładu [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20DATEDIFF.sql)
>
> <br>
>
> A [tutaj](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20DATEDIFF%20a.jpg) jeszcze inny screen i jego SQL [zapytanie](https://github.com/git-atoms/SQL-training-01/blob/master/Query%20%26%20Printscreen/%23com%20DATEDIFF%20a.sql) do bardziej rozbudowanego przykładu, w którym odejmuję od siebie wyniki innych odejmowań (różnice z innych operacji odejmowania).
>
>
> + **DATENAME**