CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `tajnaorganizacja`.`daaa` AS
    SELECT 
        `tajnaorganizacja`.`pracownicy`.`id_pracownika` AS `id_pracownika`,
        `tajnaorganizacja`.`pracownicy`.`IMIE` AS `IMIE`,
        `tajnaorganizacja`.`pracownicy`.`NAZWISKO` AS `NAZWISKO`,
        `tajnaorganizacja`.`pracownicy`.`SPECJALIZACJA` AS `SPECJALIZACJA`,
        `tajnaorganizacja`.`pracownicy`.`ZACHOWANIE` AS `ZACHOWANIE`,
        `tajnaorganizacja`.`pracownicy`.`id_szefa` AS `id_szefa`
    FROM
        `tajnaorganizacja`.`pracownicy`
    WHERE
        (`tajnaorganizacja`.`pracownicy`.`ZACHOWANIE` LIKE 'MIESO ARMATNIE')