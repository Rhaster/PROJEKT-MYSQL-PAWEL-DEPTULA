-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tajnaorganizacja
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `2 najwczesniejszych slugi`
--

DROP TABLE IF EXISTS `2 najwczesniejszych slugi`;
/*!50001 DROP VIEW IF EXISTS `2 najwczesniejszych slugi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `2 najwczesniejszych slugi` AS SELECT 
 1 AS `id_szefa`,
 1 AS `IMIE`,
 1 AS `NAZWISKO`,
 1 AS `data_zakontraktowania`,
 1 AS `WYDZIAL`,
 1 AS `id_pana`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ile osob pracuje dla tajnych`
--

DROP TABLE IF EXISTS `ile osob pracuje dla tajnych`;
/*!50001 DROP VIEW IF EXISTS `ile osob pracuje dla tajnych`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ile osob pracuje dla tajnych` AS SELECT 
 1 AS `COUNT(pracownicy.IMIE)`,
 1 AS `WYDZIAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ile wydajemy na pracownikow`
--

DROP TABLE IF EXISTS `ile wydajemy na pracownikow`;
/*!50001 DROP VIEW IF EXISTS `ile wydajemy na pracownikow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ile wydajemy na pracownikow` AS SELECT 
 1 AS `ILE WYDAJEMY NA PRACOWNIKOW`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ilosc kosmitow pod kazdym panem`
--

DROP TABLE IF EXISTS `ilosc kosmitow pod kazdym panem`;
/*!50001 DROP VIEW IF EXISTS `ilosc kosmitow pod kazdym panem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ilosc kosmitow pod kazdym panem` AS SELECT 
 1 AS `COUNT(kosmici.IMIE)`,
 1 AS `IMIE`,
 1 AS `HIERARHIA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ilu poddanych maja mistrzowie wojny`
--

DROP TABLE IF EXISTS `ilu poddanych maja mistrzowie wojny`;
/*!50001 DROP VIEW IF EXISTS `ilu poddanych maja mistrzowie wojny`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ilu poddanych maja mistrzowie wojny` AS SELECT 
 1 AS `COUNT(kosmici.IMIE)`,
 1 AS `IMIE`,
 1 AS `HIERARHIA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ilu pracuje w jawnych wydzialach`
--

DROP TABLE IF EXISTS `ilu pracuje w jawnych wydzialach`;
/*!50001 DROP VIEW IF EXISTS `ilu pracuje w jawnych wydzialach`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ilu pracuje w jawnych wydzialach` AS SELECT 
 1 AS `COUNT(pracownicy.IMIE)`,
 1 AS `WYDZIAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `kosmici`
--

DROP TABLE IF EXISTS `kosmici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kosmici` (
  `ID_KOSMITY` int NOT NULL AUTO_INCREMENT,
  `IMIE` varchar(69) DEFAULT NULL,
  `BRON` enum('plazmowa','laserowa','Grawitacyjna') DEFAULT NULL,
  `POZYCJA` enum('wojownik','NETRUNER','Sprzataczka','GENERAŁ') DEFAULT NULL,
  `id_wladcy` int DEFAULT NULL,
  PRIMARY KEY (`ID_KOSMITY`),
  KEY `id_wladcy` (`id_wladcy`),
  CONSTRAINT `kosmici_ibfk_1` FOREIGN KEY (`id_wladcy`) REFERENCES `wladcy` (`id_wladcy`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kosmici`
--

LOCK TABLES `kosmici` WRITE;
/*!40000 ALTER TABLE `kosmici` DISABLE KEYS */;
INSERT INTO `kosmici` VALUES (21,'Kar','laserowa','Sprzataczka',1),(22,'Silver','laserowa','wojownik',2),(23,'Mar','Grawitacyjna','NETRUNER',3),(24,'Johny','laserowa','GENERAŁ',5),(25,'CZAK','plazmowa','GENERAŁ',6),(26,'toby','laserowa','wojownik',7),(27,'Mar','Grawitacyjna','NETRUNER',9),(28,'Johny','plazmowa','GENERAŁ',4),(29,'CZAK','Grawitacyjna','GENERAŁ',10),(30,'toby','Grawitacyjna','wojownik',8);
/*!40000 ALTER TABLE `kosmici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panowie`
--

DROP TABLE IF EXISTS `panowie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panowie` (
  `id_pana` int NOT NULL AUTO_INCREMENT,
  `IMIE` varchar(69) DEFAULT NULL,
  `NAZWISKO` varchar(255) DEFAULT NULL,
  `LOJALNOSC` enum('NIEZACHWIANA','TENDENCJA DO ZDRADY') DEFAULT NULL,
  `ROLA` enum('PAN PANÓW','EGZEKUTOR','STARSZY KIBLOWY','BANKIER') DEFAULT NULL,
  `ID_KOSMITY` int DEFAULT NULL,
  PRIMARY KEY (`id_pana`),
  KEY `id_kosmity` (`ID_KOSMITY`),
  CONSTRAINT `panowie_ibfk_1` FOREIGN KEY (`ID_KOSMITY`) REFERENCES `kosmici` (`ID_KOSMITY`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panowie`
--

LOCK TABLES `panowie` WRITE;
/*!40000 ALTER TABLE `panowie` DISABLE KEYS */;
INSERT INTO `panowie` VALUES (41,'Eve','Far','NIEZACHWIANA','STARSZY KIBLOWY',21),(42,'baldguy','frombrazbers','NIEZACHWIANA','EGZEKUTOR',23),(43,'Karakan','Kaczor','TENDENCJA DO ZDRADY','PAN PANÓW',26),(44,'MATEO','MORAVIETTI','TENDENCJA DO ZDRADY','BANKIER',27),(45,'Zbysiu','Zero','TENDENCJA DO ZDRADY','EGZEKUTOR',28),(46,'Jack','Sasine','NIEZACHWIANA','STARSZY KIBLOWY',29),(47,'Karakan','Kaczor','NIEZACHWIANA','PAN PANÓW',30),(48,'MATHEF','MORAVIEC','TENDENCJA DO ZDRADY','BANKIER',22),(49,'Zbysiu','jeden','NIEZACHWIANA','EGZEKUTOR',21),(50,'juzef','Elrond','NIEZACHWIANA','STARSZY KIBLOWY',23);
/*!40000 ALTER TABLE `panowie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `podzapytanie ilu jest specjalista wywiadu`
--

DROP TABLE IF EXISTS `podzapytanie ilu jest specjalista wywiadu`;
/*!50001 DROP VIEW IF EXISTS `podzapytanie ilu jest specjalista wywiadu`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `podzapytanie ilu jest specjalista wywiadu` AS SELECT 
 1 AS `IMIE`,
 1 AS `SPECJALIZACJA`,
 1 AS `ZACHOWANIE`,
 1 AS `id_szefa`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownicy` (
  `id_pracownika` int NOT NULL AUTO_INCREMENT,
  `IMIE` varchar(67) DEFAULT NULL,
  `NAZWISKO` varchar(77) DEFAULT NULL,
  `SPECJALIZACJA` enum('CZYSCICIEL','SPECJALISTA WYWIADU','TECHNIK SEDESOWY') DEFAULT NULL,
  `ZACHOWANIE` enum('WIERNY SŁUGA','MIESO ARMATNIE','KULTYSTA') DEFAULT NULL,
  `id_szefa` int DEFAULT NULL,
  `zarobkiSOCJALISTYCZNEXD` int NOT NULL DEFAULT '3000',
  PRIMARY KEY (`id_pracownika`),
  KEY `id_szefa` (`id_szefa`),
  CONSTRAINT `pracownicy_ibfk_1` FOREIGN KEY (`id_szefa`) REFERENCES `sludzy` (`id_szefa`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (21,'Michal','Naizdup','CZYSCICIEL','KULTYSTA',1,3000),(22,'Ben','Arames','TECHNIK SEDESOWY','MIESO ARMATNIE',5,3000),(23,'Marian','Pazdzioch','TECHNIK SEDESOWY','WIERNY SŁUGA',6,3000),(24,'Jon','Szwaw','SPECJALISTA WYWIADU','MIESO ARMATNIE',5,3000),(25,'RYSIEK','KLANOWY','TECHNIK SEDESOWY','MIESO ARMATNIE',5,3000),(26,'Michael','Naizdup','CZYSCICIEL','MIESO ARMATNIE',2,3000),(27,'Edzio','listonosz','TECHNIK SEDESOWY','KULTYSTA',3,3000),(28,'Jon','Szwaw','SPECJALISTA WYWIADU','MIESO ARMATNIE',5,3000),(29,'RYSIEK','KLANOWY','TECHNIK SEDESOWY','WIERNY SŁUGA',6,3000),(30,'Michael','Naizdup','SPECJALISTA WYWIADU','MIESO ARMATNIE',8,3000);
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sludzy`
--

DROP TABLE IF EXISTS `sludzy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sludzy` (
  `id_szefa` int NOT NULL AUTO_INCREMENT,
  `IMIE` varchar(69) DEFAULT NULL,
  `NAZWISKO` varchar(255) DEFAULT NULL,
  `data_zakontraktowania` date DEFAULT NULL,
  `WYDZIAL` enum('TAJNY','HANDLOWY','SPRZATAJACY') DEFAULT NULL,
  `id_pana` int DEFAULT NULL,
  PRIMARY KEY (`id_szefa`),
  KEY `id_pana` (`id_pana`),
  CONSTRAINT `sludzy_ibfk_1` FOREIGN KEY (`id_pana`) REFERENCES `panowie` (`id_pana`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sludzy`
--

LOCK TABLES `sludzy` WRITE;
/*!40000 ALTER TABLE `sludzy` DISABLE KEYS */;
INSERT INTO `sludzy` VALUES (1,'elgeniusz','Naup','2020-12-11','TAJNY',41),(2,'Michal','Naza','2020-11-11','HANDLOWY',42),(3,'ERDER','ioch','2020-12-10','SPRZATAJACY',45),(4,'Norbi','Giercczak','1992-12-11','TAJNY',46),(5,'RYSIEK','BEZKLANOWY','2020-05-11','SPRZATAJACY',43),(6,'eugieniusz','malykot','2010-12-11','HANDLOWY',50),(7,'RYSIEK','BEZKLANOWY','2020-05-11','SPRZATAJACY',42),(8,'eugieniusz','malykot','2010-12-11','HANDLOWY',44),(9,'Osayah','gitburg','2010-12-11','HANDLOWY',44),(10,'Lysy','men','2010-12-11','HANDLOWY',47);
/*!40000 ALTER TABLE `sludzy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `slugi zakontraktwoane w 2020`
--

DROP TABLE IF EXISTS `slugi zakontraktwoane w 2020`;
/*!50001 DROP VIEW IF EXISTS `slugi zakontraktwoane w 2020`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `slugi zakontraktwoane w 2020` AS SELECT 
 1 AS `imie`,
 1 AS `data_zakontraktowania`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wladcy`
--

DROP TABLE IF EXISTS `wladcy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wladcy` (
  `id_wladcy` int NOT NULL AUTO_INCREMENT,
  `IMIE` varchar(69) DEFAULT NULL,
  `NAZWISKO` varchar(255) DEFAULT NULL,
  `HIERARHIA` enum('IMPERATOR','MISTRZ WOJNY','ZONA IMPERATORA','PIES SOMSIADA') DEFAULT NULL,
  PRIMARY KEY (`id_wladcy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wladcy`
--

LOCK TABLES `wladcy` WRITE;
/*!40000 ALTER TABLE `wladcy` DISABLE KEYS */;
INSERT INTO `wladcy` VALUES (1,'OZAJASZ','GOLDBERG','IMPERATOR'),(2,'Keanuł','riffs','PIES SOMSIADA'),(3,'GREGORI','BROUN','MISTRZ WOJNY'),(4,'Johny','Silverleg','PIES SOMSIADA'),(5,'ZŁOTY','TRON','ZONA IMPERATORA'),(6,'Jonah','KOKIN-MIKKERINI','ZONA IMPERATORA'),(7,'RUSKI','AGENT','MISTRZ WOJNY'),(8,'JACEK','SREBRNANOGA','PIES SOMSIADA'),(9,'BRONZOWY','TRON','ZONA IMPERATORA'),(10,'Joseph','KEK-MIKKERINI','ZONA IMPERATORA');
/*!40000 ALTER TABLE `wladcy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `wyswietl kosmitow sluzacych psu somsiada`
--

DROP TABLE IF EXISTS `wyswietl kosmitow sluzacych psu somsiada`;
/*!50001 DROP VIEW IF EXISTS `wyswietl kosmitow sluzacych psu somsiada`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wyswietl kosmitow sluzacych psu somsiada` AS SELECT 
 1 AS `IMIE`,
 1 AS `id_wladcy`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wyswietl pracownikow z zachowaniem mieso armatnie`
--

DROP TABLE IF EXISTS `wyswietl pracownikow z zachowaniem mieso armatnie`;
/*!50001 DROP VIEW IF EXISTS `wyswietl pracownikow z zachowaniem mieso armatnie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wyswietl pracownikow z zachowaniem mieso armatnie` AS SELECT 
 1 AS `id_pracownika`,
 1 AS `IMIE`,
 1 AS `NAZWISKO`,
 1 AS `SPECJALIZACJA`,
 1 AS `ZACHOWANIE`,
 1 AS `id_szefa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wyswietl slugi egzekutorow`
--

DROP TABLE IF EXISTS `wyswietl slugi egzekutorow`;
/*!50001 DROP VIEW IF EXISTS `wyswietl slugi egzekutorow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wyswietl slugi egzekutorow` AS SELECT 
 1 AS `id_szefa`,
 1 AS `IMIE`,
 1 AS `NAZWISKO`,
 1 AS `data_zakontraktowania`,
 1 AS `WYDZIAL`,
 1 AS `id_pana`,
 1 AS `ROLA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zony imperatora`
--

DROP TABLE IF EXISTS `zony imperatora`;
/*!50001 DROP VIEW IF EXISTS `zony imperatora`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zony imperatora` AS SELECT 
 1 AS `id_wladcy`,
 1 AS `IMIE`,
 1 AS `NAZWISKO`,
 1 AS `HIERARHIA`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `2 najwczesniejszych slugi`
--

/*!50001 DROP VIEW IF EXISTS `2 najwczesniejszych slugi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `2 najwczesniejszych slugi` AS select `sludzy`.`id_szefa` AS `id_szefa`,`sludzy`.`IMIE` AS `IMIE`,`sludzy`.`NAZWISKO` AS `NAZWISKO`,`sludzy`.`data_zakontraktowania` AS `data_zakontraktowania`,`sludzy`.`WYDZIAL` AS `WYDZIAL`,`sludzy`.`id_pana` AS `id_pana` from `sludzy` order by `sludzy`.`data_zakontraktowania` desc limit 2 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ile osob pracuje dla tajnych`
--

/*!50001 DROP VIEW IF EXISTS `ile osob pracuje dla tajnych`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ile osob pracuje dla tajnych` AS select count(`pracownicy`.`IMIE`) AS `COUNT(pracownicy.IMIE)`,`sludzy`.`WYDZIAL` AS `WYDZIAL` from (`pracownicy` left join `sludzy` on((`pracownicy`.`id_szefa` = `sludzy`.`id_szefa`))) where (`sludzy`.`WYDZIAL` like 'TAJNY') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ile wydajemy na pracownikow`
--

/*!50001 DROP VIEW IF EXISTS `ile wydajemy na pracownikow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ile wydajemy na pracownikow` AS select sum(`pracownicy`.`zarobkiSOCJALISTYCZNEXD`) AS `ILE WYDAJEMY NA PRACOWNIKOW` from `pracownicy` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ilosc kosmitow pod kazdym panem`
--

/*!50001 DROP VIEW IF EXISTS `ilosc kosmitow pod kazdym panem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ilosc kosmitow pod kazdym panem` AS select count(`kosmici`.`IMIE`) AS `COUNT(kosmici.IMIE)`,`wladcy`.`IMIE` AS `IMIE`,`wladcy`.`HIERARHIA` AS `HIERARHIA` from (`wladcy` left join `kosmici` on((`kosmici`.`id_wladcy` = `wladcy`.`id_wladcy`))) group by `wladcy`.`IMIE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ilu poddanych maja mistrzowie wojny`
--

/*!50001 DROP VIEW IF EXISTS `ilu poddanych maja mistrzowie wojny`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ilu poddanych maja mistrzowie wojny` AS select count(`kosmici`.`IMIE`) AS `COUNT(kosmici.IMIE)`,`wladcy`.`IMIE` AS `IMIE`,`wladcy`.`HIERARHIA` AS `HIERARHIA` from (`kosmici` left join `wladcy` on((`kosmici`.`id_wladcy` = `wladcy`.`id_wladcy`))) where (`wladcy`.`HIERARHIA` like 'MISTRZ WOJNY') group by `wladcy`.`IMIE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ilu pracuje w jawnych wydzialach`
--

/*!50001 DROP VIEW IF EXISTS `ilu pracuje w jawnych wydzialach`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ilu pracuje w jawnych wydzialach` AS select count(`pracownicy`.`IMIE`) AS `COUNT(pracownicy.IMIE)`,`sludzy`.`WYDZIAL` AS `WYDZIAL` from (`pracownicy` left join `sludzy` on((`pracownicy`.`id_szefa` = `sludzy`.`id_szefa`))) where (not((`sludzy`.`WYDZIAL` like 'TAJNY'))) group by `sludzy`.`WYDZIAL` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `podzapytanie ilu jest specjalista wywiadu`
--

/*!50001 DROP VIEW IF EXISTS `podzapytanie ilu jest specjalista wywiadu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `podzapytanie ilu jest specjalista wywiadu` AS select `wszystko`.`IMIE` AS `IMIE`,`wszystko`.`SPECJALIZACJA` AS `SPECJALIZACJA`,`wszystko`.`ZACHOWANIE` AS `ZACHOWANIE`,`wszystko`.`id_szefa` AS `id_szefa` from (select `pracownicy`.`id_pracownika` AS `ID`,`pracownicy`.`IMIE` AS `IMIE`,`pracownicy`.`NAZWISKO` AS `NAZWISKO`,`pracownicy`.`SPECJALIZACJA` AS `SPECJALIZACJA`,`pracownicy`.`ZACHOWANIE` AS `ZACHOWANIE`,`pracownicy`.`id_szefa` AS `id_szefa` from `pracownicy`) `wszystko` where (`wszystko`.`SPECJALIZACJA` like 'SPECJALISTA WYWIADU') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `slugi zakontraktwoane w 2020`
--

/*!50001 DROP VIEW IF EXISTS `slugi zakontraktwoane w 2020`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `slugi zakontraktwoane w 2020` AS select `sludzy`.`IMIE` AS `imie`,`sludzy`.`data_zakontraktowania` AS `data_zakontraktowania` from `sludzy` where (year(`sludzy`.`data_zakontraktowania`) = '2020') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wyswietl kosmitow sluzacych psu somsiada`
--

/*!50001 DROP VIEW IF EXISTS `wyswietl kosmitow sluzacych psu somsiada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wyswietl kosmitow sluzacych psu somsiada` AS select `kosmici`.`IMIE` AS `IMIE`,`kosmici`.`id_wladcy` AS `id_wladcy` from (`wladcy` left join `kosmici` on((`kosmici`.`id_wladcy` = `wladcy`.`id_wladcy`))) where (`wladcy`.`HIERARHIA` = 'PIES SOMSIADA') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wyswietl pracownikow z zachowaniem mieso armatnie`
--

/*!50001 DROP VIEW IF EXISTS `wyswietl pracownikow z zachowaniem mieso armatnie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wyswietl pracownikow z zachowaniem mieso armatnie` AS select `pracownicy`.`id_pracownika` AS `id_pracownika`,`pracownicy`.`IMIE` AS `IMIE`,`pracownicy`.`NAZWISKO` AS `NAZWISKO`,`pracownicy`.`SPECJALIZACJA` AS `SPECJALIZACJA`,`pracownicy`.`ZACHOWANIE` AS `ZACHOWANIE`,`pracownicy`.`id_szefa` AS `id_szefa` from `pracownicy` where (`pracownicy`.`ZACHOWANIE` like 'MIESO ARMATNIE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wyswietl slugi egzekutorow`
--

/*!50001 DROP VIEW IF EXISTS `wyswietl slugi egzekutorow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wyswietl slugi egzekutorow` AS select `sludzy`.`id_szefa` AS `id_szefa`,`sludzy`.`IMIE` AS `IMIE`,`sludzy`.`NAZWISKO` AS `NAZWISKO`,`sludzy`.`data_zakontraktowania` AS `data_zakontraktowania`,`sludzy`.`WYDZIAL` AS `WYDZIAL`,`sludzy`.`id_pana` AS `id_pana`,`panowie`.`ROLA` AS `ROLA` from (`panowie` left join `sludzy` on((`panowie`.`id_pana` = `sludzy`.`id_pana`))) where (`panowie`.`ROLA` like 'EGZEKUTOR') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zony imperatora`
--

/*!50001 DROP VIEW IF EXISTS `zony imperatora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zony imperatora` AS select `wladcy`.`id_wladcy` AS `id_wladcy`,`wladcy`.`IMIE` AS `IMIE`,`wladcy`.`NAZWISKO` AS `NAZWISKO`,`wladcy`.`HIERARHIA` AS `HIERARHIA` from `wladcy` where (`wladcy`.`HIERARHIA` like 'ZONA IMPERATORA') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-05 20:12:54
