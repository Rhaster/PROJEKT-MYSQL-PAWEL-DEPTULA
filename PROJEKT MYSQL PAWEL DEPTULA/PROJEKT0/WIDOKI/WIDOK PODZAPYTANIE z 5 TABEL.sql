CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `podzapytanie z 5 tabel` AS
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
                        `panowie`.`ID_KOSMITY` IN (SELECT 
                                `kosmici`.`ID_KOSMITY`
                            FROM
                                `kosmici`
                            WHERE
                                `kosmici`.`id_wladcy` IN (SELECT 
                                        `wladcy`.`id_wladcy`
                                    FROM
                                        `wladcy`
                                    WHERE
                                        (`wladcy`.`HIERARHIA` = 'PIES SOMSIADA')))))