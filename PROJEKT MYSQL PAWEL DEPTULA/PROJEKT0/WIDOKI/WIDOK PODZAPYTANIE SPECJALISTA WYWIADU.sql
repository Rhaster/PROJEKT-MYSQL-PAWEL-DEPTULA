CREATE VIEW `podzapytanie specjalista wywiadu` AS SELECT IMIE,SPECJALIZACJA,ZACHOWANIE,id_szefa
FROM (SELECT id_pracownika as ID, IMIE, NAZWISKO, SPECJALIZACJA,ZACHOWANIE , id_szefa FROM pracownicy) as wszystko
WHERE SPECJALIZACJA LIKE 'SPECJALISTA WYWIADU';
