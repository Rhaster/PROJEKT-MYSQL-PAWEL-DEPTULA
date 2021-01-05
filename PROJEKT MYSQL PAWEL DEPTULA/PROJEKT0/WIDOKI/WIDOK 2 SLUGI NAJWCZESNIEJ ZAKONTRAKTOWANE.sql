CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `tajnaorganizacja`.`2 najwczesniejszych slugi` AS
    SELECT 
        `tajnaorganizacja`.`sludzy`.`id_szefa` AS `id_szefa`,
        `tajnaorganizacja`.`sludzy`.`IMIE` AS `IMIE`,
        `tajnaorganizacja`.`sludzy`.`NAZWISKO` AS `NAZWISKO`,
        `tajnaorganizacja`.`sludzy`.`data_zakontraktowania` AS `data_zakontraktowania`,
        `tajnaorganizacja`.`sludzy`.`WYDZIAL` AS `WYDZIAL`,
        `tajnaorganizacja`.`sludzy`.`id_pana` AS `id_pana`
    FROM
        `tajnaorganizacja`.`sludzy`
    ORDER BY `tajnaorganizacja`.`sludzy`.`data_zakontraktowania` DESC
    LIMIT 2