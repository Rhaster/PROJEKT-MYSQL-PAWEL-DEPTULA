CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `tajnaorganizacja`.`slugi zakontraktwoane w 2020` AS
    SELECT 
        `tajnaorganizacja`.`sludzy`.`IMIE` AS `imie`,
        `tajnaorganizacja`.`sludzy`.`data_zakontraktowania` AS `data_zakontraktowania`
    FROM
        `tajnaorganizacja`.`sludzy`
    WHERE
        (YEAR(`tajnaorganizacja`.`sludzy`.`data_zakontraktowania`) = '2020')