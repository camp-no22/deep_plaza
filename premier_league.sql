-- MySQL dump 10.13  Distrib 9.0.1, for macos14.4 (arm64)
--
-- Host: localhost    Database: premier_league
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `coach_id` int NOT NULL AUTO_INCREMENT,
  `team_id` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`coach_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `coaches_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_id` int NOT NULL AUTO_INCREMENT,
  `team_id` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (2,1,'カイル・ウォーカー','DF','イングランド','1990-05-28'),(3,1,'ルベン・ディアス','DF','ポルトガル','1997-05-14'),(4,1,'カルビン・フィリップス','MF','イングランド','1995-12-02'),(5,1,'ジョン・ストーンズ','DF','イングランド','1994-05-28'),(6,1,'ナタン・アケ','DF','オランダ','1994-02-18'),(7,1,'ジョアン・カンセロ','DF','ポルトガル','1994-05-27'),(8,1,'マテオ・コバチッチ','MF','クロアチア','1994-05-06'),(9,1,'アーリング・ハーランド','FW','ノルウェー','2000-07-21'),(10,1,'ジャック・グリーリッシュ','MF','イングランド','1995-09-10'),(11,1,'ジェレミー・ドク','MF','ベルギー','2002-05-27'),(16,1,'ロドリ','MF','スペイン','1996-06-22'),(17,1,'ケビン・デ・ブライネ','MF','ベルギー','1991-06-28'),(18,1,'シュテファン・オルテガ','GK','ドイツ','1992-11-06'),(19,1,'フリアン・アルバレス','FW','アルゼンチン','2000-01-31'),(20,1,'ベルナルド・シウバ','MF','ポルトガル','1994-08-10'),(24,1,'ヨシュコ・グバルディオル','DF','クロアチア','2002-01-23'),(25,1,'マヌエル・アカンジ','DF','スイス','1995-07-19'),(26,1,'サビオ','MF','ブラジル','2004-04-10'),(27,1,'マテウス・ヌネス','MF','ポルトガル','1998-08-27'),(32,1,'マキシモ・ベッローネ','MF','アルゼンチン','2003-01-07'),(33,1,'スコット・カーソン','GK','イングランド','1985-09-03'),(47,1,'フィル・フォーデン','MF','イングランド','2000-05-28'),(52,1,'オスカー・ボブ','MF','ノルウェー','2003-07-12'),(82,1,'リコ・ルイス','DF','イングランド','2004-11-21'),(87,1,'ジェームズ・マカティー','MF','イングランド','2002-10-18'),(97,1,'ジョシュ・ウィルソンエスブランド','DF','イングランド','2002-12-26');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `stadium` varchar(100) DEFAULT NULL,
  `founded_year` int DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Manchester City','Etihad Stadium',1880,'Manchester'),(2,'Arsenal','Emirates Stadium',1886,'London'),(3,'Manchester United','Old Trafford',1878,'Manchester'),(4,'Newcastle United','St James\' Park',1892,'Newcastle'),(5,'Liverpool','Anfield',1892,'Liverpool'),(6,'Tottenham Hotspur','Tottenham Hotspur Stadium',1882,'London'),(7,'Chelsea','Stamford Bridge',1905,'London'),(8,'Brighton & Hove Albion','Amex Stadium',1901,'Brighton'),(9,'Aston Villa','Villa Park',1874,'Birmingham'),(10,'West Ham United','London Stadium',1895,'London'),(11,'Brentford','Brentford Community Stadium',1889,'Brentford'),(12,'Fulham','Craven Cottage',1879,'London'),(13,'Crystal Palace','Selhurst Park',1905,'London'),(14,'Wolverhampton Wanderers','Molineux Stadium',1877,'Wolverhampton'),(15,'Everton','Goodison Park',1878,'Liverpool'),(16,'Nottingham Forest','City Ground',1865,'Nottingham'),(17,'Bournemouth','Vitality Stadium',1899,'Bournemouth'),(18,'Leeds United','Elland Road',1919,'Leeds'),(19,'Burnley','Turf Moor',1882,'Burnley'),(20,'Sheffield United','Bramall Lane',1889,'Sheffield');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-06 12:40:21
