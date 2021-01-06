CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `wyswietl pracownikow starszych kiblowych` AS
    SELECT 
        `pracownicy`.`id_pracownika` AS `id_pracownika`,
        `pracownicy`.`IMIE` AS `IMIE`,
        `pracownicy`.`NAZWISKO` AS `NAZWISKO`,
        `pracownicy`.`SPECJALIZACJA` AS `SPECJALIZACJA`,
        `pracownicy`.`ZACHOWANIE` AS `ZACHOWANIE`,
        `pracownicy`.`id_szefa` AS `id_szefa`,
        `pracownicy`.`zarobkiSOCJALISTYCZNEXD` AS `zarobkiSOCJALISTYCZNEXD`
    FROM
        `pracownicy`
    WHERE
        `pracownicy`.`id_szefa` IN (SELECT 
                `sludzy`.`id_szefa`
            FROM
                `sludzy`
            WHERE
                `sludzy`.`id_pana` IN (SELECT 
                        `panowie`.`id_pana`
                    FROM
                        `panowie`
                    WHERE
                        (`panowie`.`ROLA` = 'STARSZY KIBLOWY')))