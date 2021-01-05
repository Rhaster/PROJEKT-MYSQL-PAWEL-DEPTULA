CREATE DEFINER=`root`@`localhost` PROCEDURE `wyswietl boga imperatora`()
BEGIN
SELECT * FROM wladcy WHERE HIERARHIA LIKE "IMPERATOR";
END