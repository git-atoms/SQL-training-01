/* Polskie litery zamienia na angielskie,
d³ugoœæ s³owa liczy od 1 (nie od 0),
spacja to te¿ znak.
*/


select LOWER('Uczê siê SQL-a') as "Ma³e litery"

select UPPER('Uczê siê SQL-a') as "Kapitaliki"

select LEN('Uczê siê SQL-a') as "D³ugoœæ tekstu"

select LEFT('Uczê siê SQL-a', 7) as "Wyœwietla z lewej"

select RIGHT('Uczê siê SQL-a', 8) as "Wyœwietla z prawej"

select SUBSTRING('Uczê siê SQL-a', 3, 5) as "Fragment 5 znaków od trzeciej litery"

select REVERSE('Uczê siê SQL-a') as "Lustrzane odbicie"

select REPLACE('Uczê siê SQL-a', 'Uczê siê' ,'Lubie') as "Podmiana"

select LTRIM('      Uczê siê SQL-a') as "Bez spacji z lewej"

select RTRIM('Uczê siê SQL-a           ') as "Bez spacji z prawej"