CREATE TABLE KOSMICI(
	ID_KOSMITY INT auto_increment PRIMARY KEY,
	IMIE VARCHAR(69),
	BRON ENUM("plazmowa","laserowa","Grawitacyjna"),
	POZYCJA ENUM("wojownik","NETRUNER","Sprzataczka","GENERAŁ" ), id_wladcy int,FOREIGN KEY(id_wladcy) REFERENCES WLADCY(id_wladcy)
	);