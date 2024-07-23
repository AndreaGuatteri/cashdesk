-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: cashdesk
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blocco`
--

DROP TABLE IF EXISTS `blocco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocco` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocco`
--

LOCK TABLES `blocco` WRITE;
/*!40000 ALTER TABLE `blocco` DISABLE KEYS */;
INSERT INTO `blocco` VALUES (12);
/*!40000 ALTER TABLE `blocco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caratteri`
--

DROP TABLE IF EXISTS `caratteri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caratteri` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `charset` varchar(30) NOT NULL,
  `euro` varchar(20) NOT NULL,
  `egrave` varchar(20) NOT NULL,
  `eacuto` varchar(20) NOT NULL,
  `agrave` varchar(20) NOT NULL,
  `igrave` varchar(20) NOT NULL,
  `ograve` varchar(20) NOT NULL,
  `ugrave` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caratteri`
--

LOCK TABLES `caratteri` WRITE;
/*!40000 ALTER TABLE `caratteri` DISABLE KEYS */;
INSERT INTO `caratteri` VALUES (1,'unicode','\\x80','\\xa8\\xa8','\\xa8\\xa6','\\xa8\\xa4','\\xa8\\xac','\\xa8\\xb0','\\xa8\\xb4'),(2,'CP858','\\xd5 ','\\x8a ','\\x82 ','\\x85 ','\\x8d ','\\x95 ','\\x97 '),(3,'mix','\\x80','\\x8a ','\\x82 ','\\x85 ','\\x8d ','\\x95 ','\\x97 ');
/*!40000 ALTER TABLE `caratteri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listino`
--

DROP TABLE IF EXISTS `listino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listino` (
  `id` int(11) NOT NULL,
  `descrizione` varchar(100) NOT NULL,
  `importo` float(4,2) NOT NULL,
  `posizione` varchar(10) NOT NULL,
  `tipo_piatto` varchar(10) NOT NULL,
  `disponibile` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listino`
--

LOCK TABLES `listino` WRITE;
/*!40000 ALTER TABLE `listino` DISABLE KEYS */;
INSERT INTO `listino` VALUES (1,'BIGOLI IN SALSA',7.50,'alto','primo','1'),(2,'GNOCCHI AL SALMONE',8.00,'alto','primo','1'),(6,'SARDE AI FERRI CON POLENTA',7.00,'alto','secondo','1'),(7,'SARDE FRITTE CON POLENTA',7.00,'alto','secondo','1'),(5,'SARDE IN SAOR CON PANE',8.00,'alto','secondo','1'),(4,'SPAGHETTI AL POMODORO',5.50,'alto','primo','1'),(3,'GNOCCHI AL POMODORO',6.50,'alto','primo','1'),(26,'BIRRA PICCOLA ALLA SPINA',3.00,'basso','bar','1'),(30,'CARAFFA VINO BIANCO FERMO GRANDE',7.00,'basso','bar','1'),(31,'CARAFFA RABOSELLO PICCOLA',4.00,'basso','bar','1'),(28,'CARAFFA BIRRA GRANDE',10.00,'basso','bar','1'),(29,'CARAFFA VINO BIANCO FERMO PICCOLA',4.00,'basso','bar','1'),(27,'BIRRA MEDIA ALLA SPINA',5.00,'basso','bar','1'),(25,'BIBITE IN LATTINA 33cl.',2.50,'basso','bar','1'),(8,'SARDE MISTE CON PANE E POLENTA',9.00,'alto','secondo','1'),(9,'INSALATA PRIMAVERA CON PANE',10.00,'alto','secondo','1'),(10,'ANELLI FRITTI CON POLENTA',12.00,'alto','secondo','1'),(12,'GRIGLIATA MISTA CON POLENTA',16.00,'alto','secondo','1'),(11,'FRITTURA MISTA CON POLENTA',12.00,'alto','secondo','1'),(13,'SEPPIOLINE AI FERRI CON POLENTA',11.00,'alto','secondo','1'),(17,'PATATE FRITTE',3.00,'alto','contorno','1'),(14,'PIATTO FREDDO CON POLENTA O PANE',6.50,'alto','secondo','1'),(16,'SOPRESSA CON POLENTA O PANE',6.50,'alto','secondo','1'),(15,'FORMAGGIO CON POLENTA O PANE',6.50,'alto','secondo','1'),(19,'FAGIOLI CON CIPOLLA',3.00,'alto','contorno','1'),(20,'INSALATA MISTA',3.00,'alto','contorno','1'),(24,'ACQUA 1/2 lt. NAT/FRIZZ',1.00,'basso','bar','1'),(32,'CARAFFA RABOSELLO GRANDE',7.00,'basso','bar','1'),(34,'CARAFFA PROSECCO GRANDE',9.00,'basso','bar','1'),(33,'CARAFFA PROSECCO PICCOLA',5.00,'basso','bar','1'),(23,'ESPORTAZIONE',0.50,'alto','primo','1'),(18,'FAGIOLI CON SEDANO',3.00,'alto','contorno','1'),(21,'AGGIUNTA POLENTA',0.50,'alto','contorno','1'),(22,'AGGIUNTA PANE',0.50,'alto','contorno','1');
/*!40000 ALTER TABLE `listino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametri`
--

DROP TABLE IF EXISTS `parametri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(50) NOT NULL,
  `valore` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametri`
--

LOCK TABLES `parametri` WRITE;
/*!40000 ALTER TABLE `parametri` DISABLE KEYS */;
INSERT INTO `parametri` VALUES (1,'numero_scontrino','0'),(2,'stampante_cucina','Samsung-ML-2010'),(3,'stampante_cassa','Samsung-ML-2010'),(4,'logo','LogoRobeganese.jpg'),(5,'intestazione','Festa dea Sardea 2022'),(6,'scontrino_bar','0'),(7,'intestazione2',''),(8,'ultimo_indice','34'),(9,'abilita_stampa_cucina','1'),(10,'estensione_bar','1');
/*!40000 ALTER TABLE `parametri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scontrini`
--

DROP TABLE IF EXISTS `scontrini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scontrini` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coperti` varchar(100) NOT NULL,
  `scontrino` varchar(10) NOT NULL,
  `nullo` int(5) NOT NULL DEFAULT '0',
  `omaggio` int(5) NOT NULL DEFAULT '0',
  `descrizione` varchar(50) NOT NULL,
  `qta` varchar(10) NOT NULL,
  `importo` varchar(10) NOT NULL,
  `tipo_piatto` varchar(30) NOT NULL,
  `cassiere` varchar(30) NOT NULL,
  `data` date NOT NULL,
  `ora` varchar(20) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scontrini`
--

LOCK TABLES `scontrini` WRITE;
/*!40000 ALTER TABLE `scontrini` DISABLE KEYS */;
/*!40000 ALTER TABLE `scontrini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stampanti`
--

DROP TABLE IF EXISTS `stampanti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stampanti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  `cucina` varchar(10) NOT NULL,
  `formatocarta` varchar(10) NOT NULL,
  `connessione` varchar(10) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `prodID` varchar(10) NOT NULL,
  `vendID` varchar(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `codec` varchar(20) NOT NULL DEFAULT 'CP858',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stampanti`
--

LOCK TABLES `stampanti` WRITE;
/*!40000 ALTER TABLE `stampanti` DISABLE KEYS */;
INSERT INTO `stampanti` VALUES (77,'ESC-POS','1','POS80','Rete','192.168.1.101','','','POSBianca','unicode'),(82,'ESC-POS','0','POS80','Rete','192.168.1.103','','','POSNera103','mix'),(83,'ESC-POS','0','POS80','Rete','192.168.1.104','','','POSBianca104','mix'),(84,'ESC-POS','0','POS56','USB','','0416','5011','IssyZonePOS','CP858');
/*!40000 ALTER TABLE `stampanti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `group` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `function` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `role` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `nome` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `CrDate` date NOT NULL,
  `e_mail` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `logon` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `SEC` double DEFAULT NULL,
  `customer_chk` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('utente1','b88d6b04a9dc38860301f6bdd81e5ccd','admin','AM','1000000000','Utente1','2012-08-30',NULL,'on',1564180972,NULL),('utente2','f7a88d7c3168218b580aa68ab3030491','admin','AM','1000000000','Utente2','2012-08-30',NULL,'on',1564179504,NULL),('utente3','d3dc39b29f873ec94631cdbe4e92dbf7','admin','AM','1000000000','Utente3','2012-08-30',NULL,'on',1564180266,NULL),('utente4','4ae57130f9a401c10ce0f017c628262d','admin','AM','1000000000','Utente4','2012-08-30',NULL,'on',1558175203,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-24 18:53:13
