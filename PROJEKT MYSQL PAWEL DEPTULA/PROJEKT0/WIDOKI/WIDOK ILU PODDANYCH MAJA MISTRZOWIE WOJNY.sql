CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `tajnaorganizacja`.`ilu poddanych maja mistrzowie wojny` AS
    SELECT 
        COUNT(`tajnaorganizacja`.`kosmici`.`IMIE`) AS `COUNT(kosmici.IMIE)`,
        `tajnaorganizacja`.`wladcy`.`IMIE` AS `IMIE`,
        `tajnaorganizacja`.`wladcy`.`HIERARHIA` AS `HIERARHIA`
    FROM
        (`tajnaorganizacja`.`kosmici`
        LEFT JOIN `tajnaorganizacja`.`wladcy` ON ((`tajnaorganizacja`.`kosmici`.`id_wladcy` = `tajnaorganizacja`.`wladcy`.`id_wladcy`)))
    WHERE
        (`tajnaorganizacja`.`wladcy`.`HIERARHIA` LIKE 'MISTRZ WOJNY')
    GROUP BY `tajnaorganizacja`.`wladcy`.`IMIE`