CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `tajnaorganizacja`.`ile osob pracuje dla tajnych` AS
    SELECT 
        COUNT(`tajnaorganizacja`.`pracownicy`.`IMIE`) AS `COUNT(pracownicy.IMIE)`,
        `tajnaorganizacja`.`sludzy`.`WYDZIAL` AS `WYDZIAL`
    FROM
        (`tajnaorganizacja`.`pracownicy`
        LEFT JOIN `tajnaorganizacja`.`sludzy` ON ((`tajnaorganizacja`.`pracownicy`.`id_szefa` = `tajnaorganizacja`.`sludzy`.`id_szefa`)))
    WHERE
        (`tajnaorganizacja`.`sludzy`.`WYDZIAL` LIKE 'TAJNY')