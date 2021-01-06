CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `laczenie 3 tabel pokaz pracownikow bankierow` AS
    SELECT 
        `panowie`.`IMIE` AS `IMIE`,
        `panowie`.`ROLA` AS `ROLA`,
        `panowie`.`id_pana` AS `id_pana`,
        `sludzy`.`IMIE` AS `IMIESZEFAPOSREDNIEGO`,
        `sludzy`.`id_szefa` AS `id_szefa`,
        `pracownicy`.`IMIE` AS `IMIEPRACOWNIKA`,
        `pracownicy`.`SPECJALIZACJA` AS `SPECJALIZACJA`,
        `pracownicy`.`id_pracownika` AS `id_pracownika`
    FROM
        ((`panowie`
        LEFT JOIN `sludzy` ON ((`panowie`.`id_pana` = `sludzy`.`id_pana`)))
        JOIN `pracownicy` ON ((`pracownicy`.`id_szefa` = `sludzy`.`id_szefa`)))
    WHERE
        (`panowie`.`ROLA` = 'BANKIER')
    GROUP BY `panowie`.`IMIE`