CREATE TABLE WLADCY(
	id_wladcy  INT auto_increment PRIMARY KEY,
	IMIE VARCHAR(69),
	NAZWISKO VARCHAR(255),
	HIERARHIA  ENUM("IMPERATOR","MISTRZ WOJNY","ZONA IMPERATORA","PIES SOMSIADA" )
	);