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
INSERT INTO `listino` VALUES (3,'Mezze Maniche al Pomodoro',6.00,'alto','primo','1'),(5,'Frittura Mista',14.00,'alto','secondo','1'),(2,'Mezze maniche arrabbiata',6.00,'alto','primo','1'),(1,'Gnocchetti Capesante, Zucchine e mandorle',10.00,'alto','primo','1'),(18,'Prosecco 1/2 Litro',4.00,'basso','bar','1'),(20,'Birra Bionda Piccola',3.00,'basso','bar','1'),(24,'Coca Cola Piccola',2.00,'basso','bar','1'),(25,'Coca Cola Media ',4.00,'basso','bar','1'),(22,'Birra Rossa Piccola',3.00,'basso','bar','1'),(23,'Birra Rossa Media ',5.00,'basso','bar','1'),(21,'Birra Bionda Media ',5.00,'basso','bar','1'),(19,'Prosecco 1 Litro',9.00,'basso','bar','1'),(6,'Filetto di Branzino alla Mediterranea',12.00,'alto','secondo','1'),(7,'Patate Fritte DA CUCINA',3.00,'alto','secondo','1'),(8,'Panino Onto',6.00,'alto','secondo','1'),(10,'Piatto di Porchetta e Formaggio',6.00,'alto','secondo','1'),(9,'Hot Dog',4.00,'alto','secondo','1'),(11,'Bovoletti',3.00,'alto','secondo','1'),(16,'LUNEDI 15 - Scogliera',12.00,'alto','primo','1'),(12,'Patate Fritte DA CHIOSCO',3.00,'alto','contorno','1'),(14,'SABATO 13 - Paella di Pesce',15.00,'alto','primo','1'),(13,'VENERDI 12 - Calamarata Pomodorini, calamari e Verdure',10.00,'alto','primo','1'),(15,'DOMENICA 14 - Risotto di Pesce',10.00,'alto','primo','1'),(17,'Prosecco Ombra',1.00,'basso','bar','1'),(26,'Fanta Lattina',2.00,'basso','bar','1'),(28,'The al limone Lattina',2.00,'basso','bar','1'),(27,'The alla Pesca Lattina',2.00,'basso','bar','1'),(29,'Acqua Gasata Bottiglietta 0,50 l',1.00,'basso','bar','1'),(30,'Acqua Naturale Bottiglietta 0,50 l',1.00,'basso','bar','1'),(36,'Dolce',3.00,'basso','bar','1'),(31,'Caffe',1.20,'basso','bar','1'),(32,'Decaffeinato',1.20,'basso','bar','1'),(33,'Orzo ',1.40,'basso','bar','1'),(34,'Gin Seng',1.50,'basso','bar','1'),(35,'Liquori',2.50,'basso','bar','1'),(4,'Insalata di Mare',14.00,'alto','secondo','0');
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
INSERT INTO `parametri` VALUES (1,'numero_scontrino','22'),(2,'stampante_cucina','Samsung-ML-2010'),(3,'stampante_cassa','Samsung-ML-2010'),(4,'logo','SagraAssunta.jpg'),(5,'intestazione','Sagra Assunta 2022'),(6,'scontrino_bar','1'),(7,'intestazione2',''),(8,'ultimo_indice','36'),(9,'abilita_stampa_cucina','1'),(10,'estensione_bar','1');
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
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scontrini`
--

LOCK TABLES `scontrini` WRITE;
/*!40000 ALTER TABLE `scontrini` DISABLE KEYS */;
INSERT INTO `scontrini` VALUES (1,'1','1',0,0,'Pasta al pomodoro','2','8','primo','utente1','2019-07-25','23:50:35',''),(2,'1','1',0,0,'Acqua frizzante','1','1','bar','utente1','2019-07-25','23:50:35',''),(3,'1','2',0,0,'Pasta al pomodoro','2','8','primo','utente1','2019-07-25','23:53:25',''),(4,'1','2',0,0,'Acqua naturale','1','1','bar','utente1','2019-07-25','23:53:25',''),(5,'1','3',0,0,'Pasta al pomodoro','2','8','primo','utente1','2019-07-25','23:59:58',''),(6,'1','3',0,0,'Acqua naturale','1','1','bar','utente1','2019-07-25','23:59:58',''),(7,'1','4',0,0,'Pasta al pomodoro','1','4','primo','utente1','2019-07-26','00:01:30',''),(8,'1','4',0,0,'Costiccine','1','6.5','primo','utente1','2019-07-26','00:01:30',''),(9,'1','4',0,0,'Pasta al ragù','1','4.5','primo','utente1','2019-07-26','00:01:30',''),(10,'1','5',0,0,'Pasta al pomodoro','1','4','primo','utente1','2019-07-26','00:02:15','Senza formaggio'),(11,'1','5',0,0,'Costiccine','1','6.5','primo','utente1','2019-07-26','00:02:15',''),(12,'1','5',0,0,'Birra','1','2.5','bar','utente1','2019-07-26','00:02:15','Fredda'),(13,'1','6',0,0,'Pasta al pomodoro','1','4','primo','utente1','2019-07-27','00:17:38',''),(14,'1','6',0,0,'Pasta al ragù','1','4.5','primo','utente1','2019-07-27','00:17:38',''),(15,'1','6',0,0,'Acqua naturale','1','1','bar','utente1','2019-07-27','00:17:38',''),(16,'1','7',0,0,'Costiccine','1','6.5','primo','utente3','2019-07-27','00:31:29',''),(17,'1','7',0,0,'Acqua naturale','2','2','bar','utente3','2019-07-27','00:31:29',''),(18,'1','8',0,0,'Piatto del giorno / Spaghetti al nero di seppia','1','7.5','primo','utente1','2019-08-06','16:02:12',''),(19,'1','8',0,0,'Pasticcio di Pesce','1','8','primo','utente1','2019-08-06','16:02:12',''),(20,'1','8',0,0,'Mix Grigliata ','1','10','secondo','utente1','2019-08-06','16:02:12',''),(21,'1','8',0,0,'Patate Fritte','2','4','contorno','utente1','2019-08-06','16:02:12',''),(22,'1','8',0,0,'Caraffa 1/2 Litro Vino Rosso/Bianco','1','3.5','bar','utente1','2019-08-06','16:02:12',''),(23,'1','8',0,0,'Caffè','1','1','bar','utente1','2019-08-06','16:02:12',''),(24,'1','8',0,0,'Caffè Deca / Orzo','1','1.1','bar','utente1','2019-08-06','16:02:12',''),(25,'1','1B',0,0,'Caraffa Vino Rosso/Bianco','2','12','bar','utente1','2019-08-06','16:02:53',''),(26,'0','9',0,1,'Birra Media Bionda','3','12','bar','utente1','2019-08-06','16:06:03',''),(27,'0','9',0,1,'Mix Grigliata ','3','30','secondo','utente1','2019-08-06','16:06:03',''),(28,'0','9',0,1,'Piatto Freddo (Porchetta, Formaggio, Fagioli, Pata','4','30','secondo','utente1','2019-08-06','16:06:03',''),(29,'0','9',0,1,'Caffè','2','2','bar','utente1','2019-08-06','16:06:03',''),(30,'0','9',0,1,'ESPORTAZIONE','1','0.50','secondo','utente1','2019-08-06','16:06:03',''),(31,'1','10',0,0,'Frittura Mista + Polenta','1','10','secondo','utente1','2019-08-06','16:06:44',''),(32,'1','10',0,0,'Patate Fritte','4','8','contorno','utente1','2019-08-06','16:06:44',''),(33,'1','10',0,0,'ESPORTAZIONE','1','0.50','secondo','utente1','2019-08-06','16:06:44',''),(34,'1','11',0,0,'Gnocchetti Capesante, Zucchine e mandorle','1','10','primo','utente1','2022-08-03','18:41:17','TAVOLO 3'),(35,'1','12',0,0,'Gnocchetti Capesante, Zucchine e mandorle','1','10','primo','utente1','2022-08-03','18:41:59',''),(36,'1','13',0,0,'Gnocchetti Capesante, Zucchine e mandorle','1','10','primo','utente1','2022-08-03','18:43:35',''),(37,'1','14',0,0,'Gnocchetti Capesante, Zucchine e mandorle','1','10','primo','utente1','2022-08-03','18:44:28',''),(38,'1','15',0,0,'Gnocchetti Capesante, Zucchine e mandorle','1','10','primo','utente1','2022-08-03','18:49:02',''),(39,'1','16',0,0,'Gnocchetti Capesante, Zucchine e mandorle','1','10','primo','utente2','2022-08-03','18:49:36',''),(40,'1','17',0,0,'Mezze Maniche al Pomodoro','1','6','primo','utente2','2022-08-03','18:50:25',''),(41,'1','18',0,0,'Gnocchetti Capesante, Zucchine e mandorle','4','40','primo','utente1','2022-08-03','18:50:49',''),(42,'0','19',0,0,'Bovoletti','2','6','secondo','utente1','2022-08-03','18:53:49',''),(43,'1','20',0,0,'Mezze maniche arrabbiata','1','6','primo','utente2','2022-08-03','18:54:01',''),(44,'1','21',0,0,'Gnocchetti Capesante, Zucchine e mandorle','1','10','primo','utente1','2022-08-03','18:54:35',''),(45,'1','21',0,0,'Coca Cola Media ','1','4','bar','utente1','2022-08-03','18:54:35',''),(46,'1','22',0,0,'Panino Onto','2','12','secondo','utente2','2022-08-03','18:54:49','');
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
INSERT INTO `users` VALUES ('utente1','b88d6b04a9dc38860301f6bdd81e5ccd','admin','AM','1000000000','Utente1','2012-08-30',NULL,'off',1659545552,NULL),('utente2','f7a88d7c3168218b580aa68ab3030491','admin','AM','1000000000','Utente2','2012-08-30',NULL,'on',1659545565,NULL),('utente3','d3dc39b29f873ec94631cdbe4e92dbf7','admin','AM','1000000000','Utente3','2012-08-30',NULL,'on',1564180266,NULL),('utente4','4ae57130f9a401c10ce0f017c628262d','admin','AM','1000000000','Utente4','2012-08-30',NULL,'on',1558175203,NULL);
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

-- Dump completed on 2022-08-03 18:56:13
