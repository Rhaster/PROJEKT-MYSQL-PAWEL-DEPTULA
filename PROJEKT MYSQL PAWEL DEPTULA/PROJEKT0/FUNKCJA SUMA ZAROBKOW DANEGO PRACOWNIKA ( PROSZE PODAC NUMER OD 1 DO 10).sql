CREATE DEFINER=`root`@`localhost` FUNCTION `suma zarobkow pracownikow danego szefa`(x int) RETURNS int
DETERMINISTIC
BEGIN
SELECT
SUM(zarobkiSOCJALISTYCZNEXD)
FROM pracownicy 
WHERE id_szefa=x INTO x;
RETURN x;
END
