/* Polskie litery zamienia na angielskie,
d�ugo�� s�owa liczy od 1 (nie od 0),
spacja to te� znak.
*/


select LOWER('Ucz� si� SQL-a') as "Ma�e litery"

select UPPER('Ucz� si� SQL-a') as "Kapitaliki"

select LEN('Ucz� si� SQL-a') as "D�ugo�� tekstu"

select LEFT('Ucz� si� SQL-a', 7) as "Wy�wietla z lewej"

select RIGHT('Ucz� si� SQL-a', 8) as "Wy�wietla z prawej"

select SUBSTRING('Ucz� si� SQL-a', 3, 5) as "Fragment 5 znak�w od trzeciej litery"

select REVERSE('Ucz� si� SQL-a') as "Lustrzane odbicie"

select REPLACE('Ucz� si� SQL-a', 'Ucz� si�' ,'Lubie') as "Podmiana"

select LTRIM('      Ucz� si� SQL-a') as "Bez spacji z lewej"

select RTRIM('Ucz� si� SQL-a           ') as "Bez spacji z prawej"