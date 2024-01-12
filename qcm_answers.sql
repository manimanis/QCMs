-- MariaDB dump 10.19  Distrib 10.10.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: qcm_answers
-- ------------------------------------------------------
-- Server version	10.10.2-MariaDB

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qcm_id` int(11) NOT NULL,
  `nom_prenom` varchar(255) NOT NULL,
  `date_rep` datetime NOT NULL,
  `ip_addr` varchar(128) NOT NULL,
  `reponse` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES
(13,23,'adem ghoufa _____ dania edaii','2022-10-03 09:24:22','192.168.0.102','1C2A3D4A5D6A7D8D9D10E'),
(14,23,'aymen mani','2022-10-03 09:25:24','192.168.0.105','1A2C3A4A5B6A7D8D9A10E'),
(15,23,'eya by isra lajmi','2022-10-03 09:27:25','192.168.0.104','1C2C3D4B5D6A7D8D9D10E'),
(16,23,'aymen mani','2022-10-03 09:29:47','192.168.0.105','1C2C3A4A5D6B7D8D9A10E'),
(17,23,'ahmed mbarek&rayen boughariou','2022-10-03 09:31:15','192.168.0.107','1C2B3A4A5B6B7D8D9B10E'),
(18,23,'aymen mani','2022-10-03 09:31:49','192.168.0.105','1C2A3A4A5C6A7D8D9A10E'),
(19,23,'ahmed brahim','2022-10-03 09:32:30','192.168.0.103','1A2C3A4C5C6B7D8C9A10E'),
(20,23,'eya by isra','2022-10-03 09:34:02','192.168.0.104','1C2A3A4B5D6A7D8D9D10E'),
(21,23,'aymen mani','2022-10-03 09:34:04','192.168.0.105','1C2A3C4C5A6A7D8D9A10E'),
(22,23,'eya by isra','2022-10-03 09:34:57','192.168.0.104','1B2A3A4B5B6B7D8D9D10E'),
(23,23,'Shahed toumia','2022-10-03 09:35:05','192.168.0.106','1C2B3A4D5B6A7D8D9D10D'),
(24,23,'aymen mani','2022-10-03 09:35:53','192.168.0.105','1C2A3A4A5B6B7D8D9C10E'),
(25,23,'Ahmed Ben Moussa - ahmed shimi','2022-10-03 09:37:35','192.168.0.101','1C2C3A4A5B6A7D8C9B10E'),
(26,23,'adem ghoufa denia edaii','2022-10-03 09:38:16','192.168.0.102','1C2A3A4A5B6B7D8D9A10E'),
(27,23,'ghofrane niana ben hassine','2022-10-03 11:33:55','192.168.0.112','1C2C3D3B4A5C6A7D8D9E10E'),
(28,23,'Mohamed Raed Mahfoudh','2022-10-03 11:34:17','192.168.0.105','1B2C3D4A5B6A7D8D9E10E'),
(29,23,'anas rouatbi','2022-10-03 11:34:35','192.168.0.111','1A2A3D4A5A6A7D8D9E10E'),
(30,23,'bachar','2022-10-03 11:37:11','192.168.0.102','1C2A3D4C5A6A7D8D9E10E'),
(31,23,'farah jbeli','2022-10-03 11:37:14','192.168.0.106','1C2C3D4A5A6A7A8D9D10C'),
(32,23,'mohamed amine sghaier . fedi ben abdallah','2022-10-03 11:37:21','192.168.0.104','1A2A3D4A5B6A7D8D9D10E'),
(33,23,'Omar Khessibi','2022-10-03 11:37:21','192.168.0.110','1C2C3D4A5B6A7D8D9E10E'),
(34,23,'Adem El Mezaz','2022-10-03 11:37:58','192.168.0.109','1A1C2C3D4A5B6A7D8D9E10E'),
(35,23,'fedi ben abdallah','2022-10-03 11:39:05','192.168.0.104','1A2A3C4A5B6A7D8D9D10E'),
(36,23,'Yassmin Yazid','2022-10-03 11:40:25','192.168.0.107','1C2A3D4A5D6B7D8D9E10E'),
(37,23,'yosri bemri & yaakoub arfaoui','2022-10-03 11:42:32','192.168.0.101','1C2A3D4A5D6B7D8D9E10E'),
(38,23,'med amine sghaier','2022-10-03 11:43:43','192.168.0.104','1A2A3C4A5B6A7D8D9E10E'),
(39,24,'adem gh','2022-10-17 09:54:35','192.168.0.106','1A2D3C4A5A6A7C8B9A10C11B12B13A14A15B'),
(40,24,'Dania','2022-10-17 09:59:56','192.168.0.102','1A2A3B4B5C6A7C8B9C10B11D12D13A14B15B'),
(41,24,'Ahmed shimi - ahmed ben moussa','2022-10-17 10:01:22','192.168.0.101','1C2D3C4C5D6B7C8B9D10C11C12B13D14A15B'),
(42,24,'ahmed  brahim/ahmed amin bayoudh','2022-10-17 10:02:51','192.168.0.103','1A2D3C4C5D6B7C8B9C10C11C12A13C14B15B'),
(43,24,'eya by israa','2022-10-17 10:03:13','192.168.0.105','1A2D3C4C5D6B7C8A9D10D11D12D13A14A15B'),
(44,24,'dania','2022-10-17 10:06:36','192.168.0.102','1A2D3B4C5C6A7D8D9C10C11B12C13D14A15B'),
(45,24,'ahmed mbarek (torchi)','2022-10-17 10:07:14','192.168.0.108','1C2D3C4C5D6B7C8B9D10C11B12D13D14A15B'),
(46,24,'Adem El Mezaz Aymen Mani','2022-10-17 10:08:43','192.168.0.104','1A2D3C4C5D6B7C8B9B10B11C12B13C14C15A'),
(47,24,'eya by isra','2022-10-17 10:09:24','192.168.0.105','1A2A3C4C5D6A7C8D9C10B11C12D13C14B15B'),
(48,24,'shahed toumia','2022-10-17 10:09:37','192.168.0.107','1A2D3B4C5A6A7C8A9D10C11B12A13D14B15A'),
(49,24,'ahmed brahim/ahmed','2022-10-17 10:12:31','192.168.0.103','1C2D3C4C5D6B7C8B9D10C11A12A13C14A15B'),
(50,24,'Aymen mani','2022-10-17 10:13:11','192.168.0.104','1A2A3C4C5D6B7C8A9C10A11C12A13C14A15B'),
(51,24,'ahmed shimi et ben mossa','2022-10-17 10:13:40','192.168.0.101','1C2D3C4C5D6B7C8B9D10C11B12B13D14A15B'),
(52,24,'aymen mani','2022-10-17 10:16:10','192.168.0.104','1A2D3C4C5D6B7C8B9A10D11C12B13C14A15C'),
(53,24,'aymen mani','2022-10-17 10:19:25','192.168.0.104','1A2D3C4C5D6B7C8B9D10D11C12B13C14D15B'),
(54,24,'torchi 2','2022-10-17 10:23:25','192.168.0.108','1C2D3C4C5D6B7C8B9D10C11B12B13D14A15B'),
(55,24,'torchi 2','2022-10-17 10:23:26','192.168.0.108','1C2D3C4C5D6B7C8B9D10C11B12B13D14A15B'),
(56,24,'fedibenabdallah','2022-10-17 11:50:43','192.168.0.109','1A2A3C4C5D6A7C8B9C10B11B12B13D14A15C'),
(57,24,'Omar Khessibi','2022-10-17 11:50:57','192.168.0.106','1C2D3C4C5D6C7C8B9C10B11C12B13B14C15B'),
(58,24,'rayen boughariou','2022-10-17 11:52:32','192.168.0.107','1B2B3C4C5C6C7C8D9D10C11C12B13D14A15B'),
(59,24,'Mohamed Raed Mahfoudh','2022-10-17 11:52:35','192.168.0.104','1C2D3C4C5D6A7C8B9D10C11B12B13D14A15B'),
(60,24,'Omar Ben Amor','2022-10-17 11:53:33','192.168.0.103','1C2D3B4C5D6B7C8B9D10C11B12B13B14A15B'),
(61,24,'med amine sghaier','2022-10-17 11:57:18','192.168.0.105','1C2D3C4C5D6B7C8B9C10B11C12D13C14C15C'),
(62,24,'yosri bemri','2022-10-17 11:57:31','192.168.0.101','1C2D3C4C5D6B7C8A9D10C11C12C13B14A15B'),
(63,24,'Yasmin Yazid','2022-10-17 12:00:34','192.168.0.108','1D2B3B4C5D6B7C8B9D10C11B12A13B14A15B'),
(64,24,'med amine sghaier','2022-10-17 12:02:33','192.168.0.105','1C2D3C4C5D6B7C8B9C10B11C12A13C14D15B'),
(65,26,'adem gh','2022-11-21 08:36:22','172.16.0.124','1B2C3C4C5C6B7A8D9C10C11D12C13B14A15A16C17A18A19A20A21A22B23C24C25C'),
(66,26,'ahmed ibrahim','2022-11-21 08:38:25','172.16.0.159','1B2C3C4B5A6B7B8C9C10B11A12D13C14A15A16C17C18C19A20D21C22A23A24C25B'),
(67,26,'Dania Eddai','2022-11-21 08:39:30','172.16.0.119','1A2C3A4D5C6C7A8B9C10C11B12D13A14A15B16B17A18A19B20A21B22A23A24B25B'),
(68,26,'Adem El Mezaz','2022-11-21 08:40:51','172.16.0.125','1B2C3C4D5B6A7B8A9C10B11D12B13C14C15A16C17A18A19C20C21C22B23C24C25D'),
(69,26,'eya by isra','2022-11-21 08:41:15','172.16.0.140','1B2C3D4B5C6D7D8A9B10A11C12A13B14B15C16D17C18A19B20D21C22A23B24A25B'),
(70,26,'aymen mani','2022-11-21 08:43:49','172.16.0.160','1B2C3D4B5C6C7D8A9C10C11D12D13C14C15A16C17A18A19D20A21C22C23C24B25B'),
(71,26,'Ahmed Ben Moussa ahmed shimi','2022-11-21 08:59:00','172.16.0.110','1B2C3D4C5C6B7B8C9C10B11D12D13C14C15A16C17A18A19C20A21C22A23C24B25D'),
(72,26,'eya','2022-11-21 08:59:16','172.16.0.140','1B2B3C4B5B6B7D8B9C10D11D12B13B14B15C16A17B18B19C20A21A22B23B24B25A'),
(73,26,'ahmed amine','2022-11-21 09:03:49','172.16.0.150','1B2C3C4A5B6D7D8C9C10B11C12D13C14C15A16C17C18B19B20A21C22B23C24B25D'),
(74,26,'ahmed mbarek','2022-11-21 09:07:41','172.16.0.114','1B2C3D4C5C6A7B8C9C10C11D12D13C14C15A16C17A18B19C20A21A22B23C24B25D'),
(75,26,'anas rouatbi & bachar karmani','2022-11-21 10:28:23','172.16.0.119','1B2C3C4B5D6D7B8C9D10B11D12D13C14C15C16C17A18A19D20B21A22C23C24A25C'),
(76,26,'Hachem Mhiri RAYEN BOUGHARIOU','2022-11-21 10:40:25','172.16.0.114','1B2C3C4B5C6D7D8B9C10A11D12B13C14B15C16C17A18C19D20A21D22B23A24B25D'),
(77,26,'Omar Khessibi','2022-11-21 10:43:15','172.16.0.160','1B2C3C4B5B6B7B8A9C10C11C12D13C14C15A16C17D18C19B20D21B22A23B24C25A'),
(78,26,'shahed toumia','2022-11-21 10:44:51','172.16.0.112','1C2A3D4B5B6C7B8B9D10B11A12C13B14A15B16D17A18A19D20A21A22C23B24B25C'),
(79,26,'Mohamed Raed Mahfoudh','2022-11-21 10:47:19','172.16.0.125','1B2C3D4C5C6A7B8C9C10C11D12D13C14C15A16C17A18B19D20A21A22B23C24C25D'),
(80,26,'Fadi et Omar','2022-11-21 10:49:55','172.16.0.159','1B2C3D4C5C6A7B8C9B10C11D12C13C14C15A16C17B18A19A20A21A22C23C24B25D'),
(81,26,'Yasmin','2022-11-21 10:50:04','172.16.0.150','1B2C3C4C5C6A7D8C9C10D11D12D13C14C15A16C17A18B19C20A21C22B23A24C25D'),
(82,26,'yosri bemri','2022-11-21 10:53:09','172.16.0.110','1B2C3D4B5C6A7B8B9B10C11D12C13C14C15A16C17A18A19A20B21A22C23C24C25D'),
(83,26,'Mohamed Amine Sghaier','2022-11-21 10:58:13','172.16.0.124','1B2C3C4C5C6B7D8C9B10B11C12C13C14C15A16B17D18A19B20D21C22B23C24C25B'),
(84,27,'isra lajmi','2023-02-23 14:33:30','192.168.0.106','1B2B3C4C5C6D7A8B9A10D11A12A13C14A15C16A17D18A19A20A'),
(85,27,'anas rouatbi','2023-02-23 14:45:21','192.168.0.107','1B2B3C4C5D6C7A8B9C10B11A12B13D14C15D16B17B18F19D20F'),
(86,27,'bachar karmeni','2023-02-23 14:49:34','192.168.0.109','1B2B3C4C5B6A7A8A9B10D11A12B13B14D15D16C17B18C19D20F'),
(87,27,'ahm','2023-02-23 14:54:01','192.168.0.102','1A2C3B4A5B6A7A8C9A10D11C12B13B14D15A16C17C18A19C20F'),
(88,27,'aymen mani','2023-02-23 14:54:21','192.168.0.104','1C2C3A4C5B6A7A8B9B10E11C12D13C14D15A16D17D18B19D20F'),
(89,27,'Ahmed shimi','2023-02-23 14:58:23','192.168.0.105','1C2C3A4C5B6D7A8A9C10D11A12B13C14D15C16D17D18D19C20E'),
(90,27,'ahmed brahim','2023-02-23 15:00:06','192.168.0.110','1A2B3A4C5B6A7B8B9A10E11A12C13A14D15A16C17D18E19B20B'),
(91,26,'Ahmed Ben Moussa','2023-02-23 15:00:31','192.168.0.103','1A2C3A4C5A6A7D8B9D10A11B12D13B14A15A16B17B18B19C20C21A22B23C24B25D'),
(92,27,'ahmed mbarek','2023-02-23 15:04:43','192.168.0.101','1C2B3A4C5A6C7C8A9C10D11C12B13C14D15D16D17D18D19D20D'),
(93,27,'eya lajmi','2023-02-23 15:24:12','192.168.0.106','1A2B3B4B5A6C7B8A9C10B11C12C13D14C15A16D17B18A19C20F'),
(94,27,'Dania eddai','2023-02-23 15:55:13','192.168.0.107','1A2C3B4A5B6B7C8A9B10D11B12C13B14C15B16A17C18E19C20B'),
(95,27,'rayen boughariou','2023-02-23 15:59:39','192.168.0.110','1B2A3A4B5D6B7A8B9C10C11A12B13A14D15A16C17C18A19D20F'),
(96,27,'omar ben amor','2023-02-23 16:00:36','192.168.0.104','1C2B3A4C5D6D7B8A9C10D11A12A13A14B15D16D17D18D19D20E'),
(97,27,'Shahed toumia','2023-02-23 16:00:58','192.168.0.105','1B2B3C4B5B6D7A8A9B10D11B12C13A14D15D16C17D18F19E20B'),
(98,27,'Khessibi Omar','2023-02-23 16:01:30','192.168.0.102','1C2B3A4C5D6B7C8B9C10D11A12D13C14D15D16A17C18A19C20F'),
(99,27,'Adem El Mezaz','2023-02-23 16:03:11','192.168.0.109','1C2B3C4A5B6B7B8B9A10D11C12A13A14D15D16C17B18B19C20E'),
(100,27,'med amine sghaier','2023-02-23 16:08:54','192.168.0.103','1C2B3A4C5D6C7A8A9C10D11A12B13A14D15D16D17D18D19C20E'),
(101,27,'Fedi Abdallah','2023-02-23 16:33:09','192.168.0.109','1A2B3A4C5D6D7A8B9A10D11B12B13D14C15C16C17B18F19E20F'),
(102,27,'Mohamed Amine Sahloul','2023-02-23 16:33:50','192.168.0.110','1A2B3C4B5D6D7B8B9B10B11B12D13A14B15C16D17B18E19D20D'),
(103,27,'Hachem Mhiri','2023-02-23 16:58:40','192.168.0.104','1B2B3C4C5B6C7C8C9B10E11A12A13A14D15C16C17C18A19F20F'),
(104,27,'Yasmin Yazid','2023-02-23 17:00:53','192.168.0.102','1B2B3A4C5D6A7B8A9C10D11A12A13C14C15B16C17D18C19D20D'),
(105,27,'yosri bemri','2023-02-23 17:01:33','192.168.0.105','1C2B3A4A5B6C7A8A9C10D11B12C13A14D15B16C17D18D19F20C');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eleves_classes`
--

DROP TABLE IF EXISTS `eleves_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eleves_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classe` varchar(16) NOT NULL,
  `nom_prenom` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eleves_classes`
--

LOCK TABLES `eleves_classes` WRITE;
/*!40000 ALTER TABLE `eleves_classes` DISABLE KEYS */;
INSERT INTO `eleves_classes` VALUES
(1,'2TI','Abrar Gaaloul'),
(2,'2TI','Ahmed Ben Moussa'),
(3,'2TI','Ahmed Ghemari'),
(4,'2TI','Ahmed Jegham'),
(5,'2TI','Adam Ben Hmida'),
(6,'2TI','Adam Mougou'),
(7,'2TI','Amel Ben Massaoud'),
(8,'2TI','Amel Krifa'),
(9,'2TI','Amir Jedidi'),
(10,'2TI','Ayhem Jedidi'),
(11,'2TI','Raed Chamsi'),
(12,'2TI','Raslène Gharzoul'),
(13,'2TI','Rayène Mkhinini'),
(14,'2TI','Zaineb Belkhiria'),
(15,'2TI','Safa Ziraoui'),
(16,'2TI','Abdelmalek Bourkhis'),
(17,'2TI','Fedi Khalifa'),
(18,'2TI','Kenza Laabidi'),
(19,'2TI','Louay Talbi'),
(20,'2TI','Lina Ben Amor'),
(21,'2TI','Mohamed Hédi Béjaoui'),
(22,'2TI','Mohamed Amine Sahloul'),
(23,'2TI','Mohamed Amine Kassouma'),
(24,'2TI','Mohamed Amine Msallem'),
(25,'2TI','Mohamed Bachar Khlifa'),
(26,'2TI','Mohamed Saïd Stoufa Sakji'),
(27,'2TI','Mohamed Mehdi Zayani'),
(28,'2TI','Mohamed Nour Ben Taher'),
(29,'2TI','Maryem Hassayoune'),
(30,'2TI','Menyar Bousnina'),
(31,'2TI','Miriam Rezgui'),
(32,'2TI','Nour Abdeljlil'),
(33,'2TI','Hachem Mhiri'),
(34,'2TI','Wiem Tounsi'),
(35,'2TI','Yassine Dahmene'),
(36,'2TI','Yosri Ayedi'),
(66,'4ECO','Adem Ben Kahla'),
(67,'4ECO','Eya Tayeb'),
(68,'4ECO','Eya Skander'),
(69,'4ECO','Eya Gandouz'),
(70,'4ECO','Ahmed Mahfoudh'),
(71,'4ECO','Ahmed Mhiri'),
(72,'4ECO','Ahmed Aziz Abid'),
(73,'4ECO','Arij Lamine'),
(74,'4ECO','Amira Morjène'),
(75,'4ECO','Israa Brahem'),
(76,'4ECO','Ikram Souhail'),
(77,'4ECO','Elyess Khechine'),
(78,'4ECO','Iheb Hkayem'),
(79,'4ECO','Balsem Halloul'),
(80,'4ECO','Bochra Lahouar'),
(81,'4ECO','Bochra Khalifa Hmissi'),
(82,'4ECO','Houssem Hmaissi'),
(83,'4ECO','Hassen Hichri'),
(84,'4ECO','Hayder Hamdi'),
(85,'4ECO','Rahma Mshekni'),
(86,'4ECO','Roua Said'),
(87,'4ECO','Zayneb Latiri'),
(88,'4ECO','Salma Jebali'),
(89,'4ECO','Sahar Ayed'),
(90,'4ECO','Ali Ben Hassen'),
(91,'4ECO','Mohamed Halim Bettaieb'),
(92,'4ECO','Mohamed Mokhtar Mani'),
(93,'4ECO','Modtadha Abbessi'),
(94,'4ECO','Monjieddine Mani'),
(95,'4ECO','Nour Dahmeni'),
(96,'4ECO','Wissal Lajmi'),
(97,'4T2','Eya Weslati'),
(98,'4T2','Eya Mechmech'),
(99,'4T2','Eya Daouas'),
(100,'4T2','Eya Weslati (Kamel)'),
(101,'4T2','Arij Hattab'),
(102,'4T2','Oussema Abdessaied'),
(103,'4T2','Ayoub Fedhlaoui'),
(104,'4T2','Israa Marzouki'),
(105,'4T2','Iheb Mbarek'),
(106,'4T2','Rima Ben Jaballah'),
(107,'4T2','Ranim Gebsi'),
(108,'4T2','Rayène Dahmen'),
(109,'4T2','Sirine Dziri'),
(110,'4T2','Chahd Sassi'),
(111,'4T2','Omar Hamadi'),
(112,'4T2','Aziz Meskine'),
(113,'4T2','Gaieth Bouzbida'),
(114,'4T2','Kaisser Ben Sma'),
(115,'4T2','Camilia Bouaziz'),
(116,'4T2','Mohamed Karim Sgahier'),
(117,'4T2','Mohamed Aziz Ben Kilani'),
(118,'4T2','Meriem Belkhiria'),
(119,'4T2','Maya Slimane'),
(120,'4T2','Molka Ben Hmida'),
(121,'4T2','May Farah Boussaadia'),
(122,'4T2','Mayssa Fakhreddine'),
(123,'4T2','Mohamed Salim Karaa'),
(124,'4T2','Mohamed Aziz Achour'),
(125,'4T2','Mohamed Yassine Mabruk'),
(126,'4T2','Nour Ben Jannet'),
(127,'4T2','Yassmine Bouaouina');
/*!40000 ALTER TABLE `eleves_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qcms`
--

DROP TABLE IF EXISTS `qcms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qcms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classe` varchar(16) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `nbr_questions` int(11) NOT NULL,
  `questions` text NOT NULL,
  `reponses` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qcms`
--

LOCK TABLES `qcms` WRITE;
/*!40000 ALTER TABLE `qcms` DISABLE KEYS */;
INSERT INTO `qcms` VALUES
(6,'2TI','Structures itératives','QCM Structures itératives',10,'[{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">for k in range(3):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"0 / 1 / 2\",\"0 / 3 / 6\",\"1 / 2 / 3\",\"0 / 1 / 2 / 3\"]},{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">for k in range(1, 7, 2):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"1 / 3 / 5\",\"1 / 3 / 5 / 7\",\"1 / 2 / 3 / 4 / 5 / 6\",\"1 / 2 / 3 / 4 / 5 / 6 / 1 / 2 / 3 / 4 / 5 / 6\"]},{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">for k in range(1, -8, -2):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"-1 / -3 / -5 / -7\",\"-1 / -3 / -5 / -7 / -8\",\"1 / -1 / -3 / -5 / -7\",\"1 / -1 / -3 / -5 / -7 / -9\"]},{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">ch = \\\"ab cd\\\"\\nfor k in range(len(ch)):\\n    print(k[i])</code></pre>\",\"is_single\":true,\"propositions\":[\"ab / cd\",\"ab cd\",\"a / b / / c / d\",\"a / b / c / d\"]},{\"enonce\":\"      <p><strong>Soit t un tableau qui contient les éléments : 1, 4, 3, 8, 2</strong></p>\\n      <p><strong>On exécute le programme suivant :</strong></p>\\n      <pre><code class=\\\"python\\\">s = 0\\nfor i in range(5):\\n    s += t[i]</code></pre>\\n      <p><strong>Quelle est la valeur de <code>s</code> à la fin de l\'exécution ?</strong></p>\",\"is_single\":true,\"propositions\":[\"1\",\"18\",\"8\",\"36\"]},{\"enonce\":\"      <p><strong>Soit t un tableau qui contient les éléments : 1, 2, 3, 4, 1, 2, 3, 4, 0, 2</strong></p>\\n      <p><strong>On exécute le programme suivant :</strong></p>\\n      <pre><code class=\\\"python\\\">c = 0\\nfor i in range(10):\\n    if t[i] == t[1]:\\n        c += 1</code></pre>\\n      <p><strong>Quelle est la valeur de <code>c</code> à la fin de l\'exécution ?</strong></p>\",\"is_single\":true,\"propositions\":[\"0\",\"2\",\"3\",\"10\"]},{\"enonce\":\"      <p><strong>Que contient la variable <code>a</code> sachant que :</strong></p>\\n      <pre><code class=\\\"python\\\">a = 1\\nwhile a &lt;= 14:\\n    a = a + 4</code></pre>\",\"is_single\":true,\"propositions\":[\"1\",\"14\",\"15\",\"17\"]},{\"enonce\":\"      <p><strong>Que contient la variable <code>a</code> sachant que :</strong></p>\\n      <pre><code class=\\\"python\\\">a = 5\\nwhile a > 13:\\n    a = a + 3</code></pre>\",\"is_single\":true,\"propositions\":[\"1\",\"5\",\"13\",\"15\"]},{\"enonce\":\"      <p><strong>Que contient la variable <code>s</code> sachant que :</strong></p>\\n      <pre><code class=\\\"python\\\">s = 0\\nn = 6\\nwhile n >= 0:\\n    s = s + n\\n    n = n - 1</code></pre>\",\"is_single\":true,\"propositions\":[\"0\",\"6\",\"15\",\"21\"]},{\"enonce\":\"<p><strong>Quelle est la valeur du couple <code>(s, i)</code> à la fin de l\'exécution du programme\\n          suivant :</strong></p>\\n      <pre><code class=\\\"python\\\">s = 0\\ni = 1\\nwhile i &lt; 5:\\n    s = s + i\\n    i = i + 1</code></pre>\",\"is_single\":true,\"propositions\":[\"(4, 5)\",\"(10, 4)\",\"(10, 5)\",\"(15, 5)\"]}]','1A2A3C4C5B6C7D8B9D10C'),
(22,'Dummy','Exemplaire de QCM','Ceci n\'est pas vraiment un QCM. Il est juste destiné comme modèle.',1,'[{\"enonce\":\"Quelle est la couleur du ciel lorsqu\'il est clair le matin ?\",\"is_single\":true,\"propositions\":[\"Le ciel est bleu\",\"Le ciel est gris\",\"Le ciel est noir\",\"Le ciel est rouge\"]}]','1A'),
(23,'2TI','Module sorties','QCM sur les sorties',10,'[{\"enonce\":\"<p>Quel est l\'affichage des instructions suivantes ?</p>\\n<pre class=\\\"python\\\"><code>x = 5\\ny = 4\\nz = x + y &lt; 10\\nprint(x + y, \\\"&lt; 10\\\", z)</code></pre>\",\"is_single\":false,\"propositions\":[\"x + y < 10 z\",\"9 < 10 False\",\"9 < 10 True\",\"x + y < 10 False\"]},{\"enonce\":\"<p>Quel est l\'affichage des instructions suivantes ?</p>\\n<pre class=\\\"python\\\"><code>print(12, end=\\\"+\\\")\\nprint(34, end=\\\"=\\\")\\nprint(46)</code></pre>\",\"is_single\":false,\"propositions\":[\"12+<br>34=<br>46\",\"12+34=46\",\"12 + 34 = 46\",\"12<br>34<br>46\"]},{\"enonce\":\"<p>Quel est l\'affichage des instructions suivantes ?</p>\\n<pre class=\\\"python\\\"><code>w1 = \\\"abra\\\"\\nw2 = \\\"cad\\\"\\nprint(w1, w1, sep=w2)</code></pre>\",\"is_single\":false,\"propositions\":[\"abraabracad\",\"abracad<br>\\nabra\",\"abracadabra\",\"abraabra<br>\\ncad\"]},{\"enonce\":\"<p>Quel est l\'affichage des instructions suivantes ?</p>\\n<pre class=\\\"python\\\"><code>a = \\\"5\\\"\\nb = 3\\nc = \\\"3\\\"\\nd = 5\\nprint(a*b + c*(d-b))</code></pre>\",\"is_single\":false,\"propositions\":[\"55533\",\"30\",\"33355\",\"abraabra<br>\\ncad\"]},{\"enonce\":\"<p>Quel est l\'affichage des instructions suivantes ?</p>\\n<pre class=\\\"python\\\"><code>x = 8\\ny = 1\\nz = (x > y) * x + (x <= y) * y\\nprint(z)</code></pre>\",\"is_single\":false,\"propositions\":[\"1\",\"8\",\"18\",\"81\"]},{\"enonce\":\"<p>Quel est l\'affichage des instructions suivantes ?</p>\\n<pre class=\\\"python\\\"><code>a = \\\"ah\\\"\\nb = \\\"Bon\\\"\\nprint(a, \\\">\\\", b, \\\"=\\\", a < b)</code></pre>\",\"is_single\":false,\"propositions\":[\"ah > Bon = True\",\"ah > Bon = False\",\"Bon > ah = Tue\",\"Bon > ah = False\"]},{\"enonce\":\"<p>Quel est l\'affichage des instructions suivantes ?</p>\\n<pre class=\\\"python\\\"><code>s1 = \\\"co\\\"\\ns2 = s1 * 2 + \\\"ri\\\" + s1\\nprint(s2)</code></pre>\",\"is_single\":false,\"propositions\":[\"coco\",\"rico\",\"ricorico\",\"cocorico\"]},{\"enonce\":\"<p>Quel est l\'affichage des instructions suivantes ?</p>\\n<pre class=\\\"python\\\"><code>a = 2\\nb = 3\\nc = a / b\\nd = b / a\\nprint(c * d)</code></pre>\",\"is_single\":false,\"propositions\":[\"0.3333\",\"1.5\",\"6\",\"1.0\",\"0\"]},{\"enonce\":\"<p>Quel est l\'affichage des instructions suivantes ?</p>\\n<pre class=\\\"python\\\"><code>a = 2\\nb = 3\\nc = a // b\\nd = b // a\\nprint(c * d)</code></pre>\",\"is_single\":false,\"propositions\":[\"0.3333\",\"1.5\",\"6\",\"1.0\",\"0\"]},{\"enonce\":\"<p>Quel est l\'affichage des instructions suivantes ?</p>\\n<pre class=\\\"python\\\"><code>c = 3\\ndc = c / 2\\naire = c*c+3.14+dc*dc\\nprint(aire)</code></pre>\",\"is_single\":false,\"propositions\":[\"1.5\",\"3\",\"4.5\",\"19.34\",\"14.39\"]}]','1C2B3C4A5B6B7D8D9E10E'),
(24,'2TI','Structures simples','Exercices sur les chaînes de caractères',15,'[{\"enonce\":\"Quel est le type de a ?\\n<pre class=\\\"python\\\"><code>a = \\\"20\\\"</code></pre>\",\"is_single\":true,\"propositions\":[\"int\",\"float\",\"str\",\"bool\"]},{\"enonce\":\"Qu\'affiche le programme suivant ?\\n<pre class=\\\"python\\\"><code>a = \\\"4*5\\\"\\nprint(a)</code></pre>\",\"is_single\":true,\"propositions\":[\"20\",\"20.0\",\"20,0\",\"4*5\"]},{\"enonce\":\"Qu\'affiche le programme suivant ?\\n<pre class=\\\"python\\\"><code>ch = \\\"cours python\\\"\\nprint(ch[7])</code></pre>\",\"is_single\":true,\"propositions\":[\"py\",\"p\",\"y\",\"t\"]},{\"enonce\":\"Qu\'affiche le programme suivant ?\\n<pre class=\\\"python\\\"><code>ch = \\\"cours python\\\"\\nprint(ch[2])</code></pre>\",\"is_single\":true,\"propositions\":[\"co\",\"o\",\"u\",\"r\"]},{\"enonce\":\"Qu\'affiche le programme suivant ?\\n<pre class=\\\"python\\\"><code>ch = \\\"cours python\\\"\\nprint(ch[10])</code></pre>\",\"is_single\":true,\"propositions\":[\"on\",\"t\",\"h\",\"o\"]},{\"enonce\":\"Qu\'affiche le programme suivant ?\\n<pre class=\\\"python\\\"><code>print(\\\"J\'arrive\\\" + \\\"Je suis là\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"J\'arrive Je suis là\",\"J\'arriveJe suis là\",\"J\'arrive+Je suis là\",\"J\'arriveJesuislà\"]},{\"enonce\":\"Qu\'affiche le programme suivant ?\\n<pre class=\\\"python\\\"><code>a = \\\"Bon\\\"\\nb = \\\"jour\\\"\\nprint(b + a)</code></pre>\",\"is_single\":true,\"propositions\":[\"b + a\",\"Bonjour\",\"jourBon\",\"ba\"]},{\"enonce\":\"Qu\'affiche le programme suivant ?\\n<pre class=\\\"python\\\"><code>a = \\\"10\\\"\\nb = \\\"2\\\"\\nprint(a + b)</code></pre>\",\"is_single\":true,\"propositions\":[\"12\",\"102\",\"210\",\"Erreur\"]},{\"enonce\":\"Quelle est la valeur de <code>a</code> ?\\n<pre class=\\\"python\\\"><code>ch = \\\"cours python\\\"\\na = len(ch)</code></pre>\",\"is_single\":true,\"propositions\":[\"9\",\"10\",\"11\",\"12\"]},{\"enonce\":\"Quelle est la valeur de <code>a</code> ?\\n<pre class=\\\"python\\\"><code>a = len(\\\"formation en python\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"17\",\"18\",\"19\",\"20\"]},{\"enonce\":\"Quelle est la valeur de <code>ch2</code> ?\\n<pre class=\\\"python\\\"><code>ch1 = \\\"cours python\\\"\\nch2 = ch1[0:5]</code></pre>\",\"is_single\":true,\"propositions\":[\"\\\"cour\\\"\",\"\\\"cours\\\"\",\"\\\"cours \\\"\",\"\\\"cours p\\\"\"]},{\"enonce\":\"Quelle est la valeur de <code>ch2</code> ?\\n<pre class=\\\"python\\\"><code>ch1 = \\\"cours python\\\"\\nch2 = ch1[6:8]</code></pre>\",\"is_single\":true,\"propositions\":[\"\\\" py\\\"\",\"\\\"py\\\"\",\"\\\" p\\\"\",\"\\\"yt\\\"\"]},{\"enonce\":\"Quelle est la valeur de <code>ch2</code> ?\\n<pre class=\\\"python\\\"><code>ch1 = \\\"formation en python\\\"\\nch2 = ch1[10:12]</code></pre>\",\"is_single\":true,\"propositions\":[\"\\\" en \\\"\",\"\\\" en\\\"\",\"\\\"en \\\"\",\"\\\"en\\\"\"]},{\"enonce\":\"Quelle est la valeur de <code>ch2</code> ?\\n<pre class=\\\"python\\\"><code>ch1 = \\\"python\\\"\\nch2 = ch1[:2]</code></pre>\",\"is_single\":true,\"propositions\":[\"\\\"py\\\"\",\"\\\"thon\\\"\",\"\\\"on\\\"\",\"\\\"pyth\\\"\"]},{\"enonce\":\"Quelle est la valeur de <code>ch2</code> ?\\n<pre class=\\\"python\\\"><code>ch1 = \\\"python\\\"\\nch2 = ch1[2:]</code></pre>\",\"is_single\":true,\"propositions\":[\"\\\"py\\\"\",\"\\\"thon\\\"\",\"\\\"on\\\"\",\"\\\"pyth\\\"\"]}]','1C2D3C4C5D6B7C8B9D10C11B12B13D14A15B'),
(25,'2TI','QCM Structures simples - Caractères','',18,'[{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(chr(72) + chr(73) + chr(53))</code></pre>\",\"is_single\":true,\"propositions\":[\"HI5\",\"hi5\",\"Hi5\",\"hI5\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(ord(\\\"7\\\") + ord(\\\"m\\\") + ord(\\\"I\\\"))</code></pre>\",\"is_single\":true,\"propositions\":[\"5510973\",\"237\",\"7mi\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(chr(ord(\\\"N\\\") + 32))</code></pre>\",\"is_single\":true,\"propositions\":[\"110\",\"N\",\"78\",\"n\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(chr(ord(\\\"n\\\") - 32))</code></pre>\",\"is_single\":true,\"propositions\":[\"110\",\"N\",\"78\",\"n\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(chr((ord(\\\"S\\\") - 65 + 13) % 26 + 65))</code></pre>\",\"is_single\":true,\"propositions\":[\"f\",\"F\",\"chr(31)\",\"` qui correspond à chr(96) \"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(ord(\\\"f\\\") % 32, ord(\\\"i\\\") % 32, ord(\\\"n\\\") % 32, ord(\\\"e\\\") % 32)</code></pre>\",\"is_single\":true,\"propositions\":[\"3 3 3 3\",\"5 8 13 4\",\"5 9 14 4\",\"6 9 14 5\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(chr((ord(\\\"0\\\") + ord(\\\"6\\\")) // 2) == \\\"3\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"51\",\"3\",\"True\",\"False\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(chr(48+1)+chr(48+6)+chr(48-2)+chr(48+2)+chr(48+5))</code></pre>\",\"is_single\":true,\"propositions\":[\"16.25\",\"252 (49+54+46+50+53 = 252)\",\"01060205\",\"49 54 46 50 53\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(\\\"101(2) =\\\", (ord(\\\"1\\\") - 48) * 4 + (ord(\\\"0\\\") - 48) * 2 + (ord(\\\"1\\\") - 48))</code></pre>\",\"is_single\":true,\"propositions\":[\"101(2) = 101\",\"101(2) = 53\",\"101(2) = 5\",\"101(2) = 6\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(\\\"A\\\" >= \\\"B\\\" or \\\"x\\\" > \\\"X\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(\\\"a\\\" < \\\"A\\\" or \\\"a\\\" > \\\"Z\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(\\\"a\\\" >= \\\"A\\\" and \\\"a\\\" <= \\\"Z\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print(\\\"Z\\\" >= \\\"X\\\" >= \\\"A\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<pre><code class=\\\"python\\\">print((\\\"A\\\" >= \\\"a\\\") == (\\\"B\\\" >= \\\"b\\\"))</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<b><i>L\'utilisateur saisit la valeur : </i></b> <code>5</code>\\n<pre><code class=\\\"python\\\">print(\\\"3\\\" >= input(\\\"Votre choix [1, 3]\\\") >= \\\"1\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<b><i>L\'utilisateur saisit la valeur : </i></b> <code>2</code>\\n<pre><code class=\\\"python\\\">print(\\\"3\\\" >= input(\\\"Votre choix [1, 3]\\\") >= \\\"1\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<b><i>L\'utilisateur saisit la valeur : </i></b> <code>G</code>\\n<pre><code class=\\\"python\\\">print(\\\"3\\\" >= input(\\\"Votre choix [1, 3]\\\") >= \\\"1\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<b>Quel est le résultat affiché par l\'instruction suivante ?</b>\\n<b><i>L\'utilisateur saisit la valeur : </i></b> <code>f</code>\\n<pre><code class=\\\"python\\\">print(\\\"3\\\" >= input(\\\"Votre choix [1, 3]\\\") >= \\\"1\\\")</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]}]','1A2B3D4B5B6D7C8A9C10A11A12B13A14A15B16A17A18B'),
(26,'2TI','QCM Structures simples - Chaînes','',25,'[{\"enonce\":\"<b>Quel est le type de la variable <code>c</code></b>\\n<pre><code class=\\\"python\\\">a = 20 ; b = 21\\nc = str(a) + str(b)</code></pre>\",\"is_single\":true,\"propositions\":[\"Caractère\",\"Chaîne\",\"Entier\",\"Booléen\"]},{\"enonce\":\"<b>Quel est le type de la variable <code>c</code></b>\\n<pre><code class=\\\"python\\\">a = 20 ; b = 21\\nc = str(a) + str(b)</code></pre>\",\"is_single\":true,\"propositions\":[\"41\",\"\\\"2120\\\"\",\"\\\"2021\\\"\",\"\\\"41\\\"\"]},{\"enonce\":\"<b>Quel est le type de la variable <code>c</code></b>\\n<pre><code class=\\\"python\\\">a = 20 ; b = 21\\nc = str(a + b)</code></pre>\",\"is_single\":true,\"propositions\":[\"41\",\"\\\"2120\\\"\",\"\\\"2021\\\"\",\"\\\"41\\\"\"]},{\"enonce\":\"<b>Quel est le type de la variable <code>c</code></b>\\n<pre><code class=\\\"python\\\">a = \\\"2021\\\"\\nc = a + str(len(a))</code></pre>\",\"is_single\":true,\"propositions\":[\"\\\"2021\\\"\",\"\\\"20212021\\\"\",\"\\\"20214\\\"\",\"\\\"2025\\\"\"]},{\"enonce\":\"<b>Quel est le type de la variable <code>c</code></b>\\n<pre><code class=\\\"python\\\">a = 75 ; b = 33\\nc = len(str(a + b))</code></pre>\",\"is_single\":true,\"propositions\":[\"Caractère\",\"Chaîne\",\"Entier\",\"Booléen\"]},{\"enonce\":\"<b>Quel est le type de la variable <code>c</code></b>\\n<pre><code class=\\\"python\\\">a = 75 ; b = 33\\nc = len(str(a + b))</code></pre>\",\"is_single\":true,\"propositions\":[\"3\",\"4\",\"108\",\"7533\"]},{\"enonce\":\"<b>Quel est le type de la variable <code>b</code></b>\\n<pre><code class=\\\"python\\\">a = \\\"Beau jour\\\"\\nb = a[:5]</code></pre>\",\"is_single\":true,\"propositions\":[\"\\\"Beau\\\"\",\"\\\"Beau&nbsp;\\\"\",\"\\\"Bea\\\"\",\"\\\"Beau j\\\"\"]},{\"enonce\":\"<p><b>Quelle est la valeur à affecter à la variable <code>b</code> pour trouver le mot \\\"Be\\\" dans la variable <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">a = \\\"Beau jour\\\"\\nb = ?\\nc = a[:b]</code></pre>\",\"is_single\":true,\"propositions\":[\"0\",\"1\",\"2\",\"\\\"e\\\"\"]},{\"enonce\":\"<p><b>Quelle est la valeur à affecter à la variable <code>b</code> pour trouver le mot \\\"jour\\\" dans la variable <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">a = \\\"Beau jour\\\"\\nb = ?\\nc = a[:b]</code></pre>\",\"is_single\":true,\"propositions\":[\"3\",\"4\",\"5\",\"6\"]},{\"enonce\":\"<p><b>Quelle est la valeur à affecter à la variable <code>b</code> pour trouver le mot \\\"do it!\\\" dans la variable <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">a = \\\"Yes You can do it!\\\"\\nb = ?\\nc = a[12:b]</code></pre>\",\"is_single\":true,\"propositions\":[\"16\",\"17\",\"18\",\"19\"]},{\"enonce\":\"<p><b>Quelle est la valeur à affecter à la variable <code>b</code> pour trouver le mot \\\"You can\\\" dans la variable <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">a = \\\"Yes You can do it!\\\"\\nb = ?\\nc = a[12:b]</code></pre>\",\"is_single\":true,\"propositions\":[\"4:7\",\"4:9\",\"4:10\",\"4:11\"]},{\"enonce\":\"<p><b>Quelle est la valeur à affecter à la variable <code>b</code> pour trouver le mot \\\"You can\\\" dans la variable <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">a = \\\"Yes You can do it!\\\"\\nb = len(\\\"yes\\\")\\nc = a[?:?]</code></pre>\",\"is_single\":true,\"propositions\":[\"b:b*3\",\"b+1:b*3\",\"b:b*3+2\",\"b+1:b*3+2\"]},{\"enonce\":\"<p><b>Quel est l\'indice de \\\"y\\\" dans cette phrase <code>a</code> ?</b></p>\\n<pre><code class=\\\"python\\\">a = \\\"Thank you\\\"</code></pre>\",\"is_single\":true,\"propositions\":[\"5\",\"7\",\"-3\",\"-6\"]},{\"enonce\":\"<p><b>Quel est le caractère qui se trouve à la position -11 dans la phrase suivante ?</b></p>\\n<pre><code class=\\\"python\\\">a = \\\"I hope you the best\\\"</code></pre>\",\"is_single\":true,\"propositions\":[\"\\\" \\\"\",\"\\\"y\\\"\",\"\\\"o\\\"\",\"\\\"u\\\"\"]},{\"enonce\":\"<p><b>Quelle est la valeur de <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">a = \\\"AzizA\\\"\\nc = a[0] == a[-1] and a[1] == a[-2]</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<p><b>Quelle est la valeur de <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">c = \\\"1\\\" + \\\"0\\\"</code></pre>\",\"is_single\":true,\"propositions\":[\"1\",\"10\",\"\\\"10\\\"\",\"\\\"1\\\"\"]},{\"enonce\":\"<p><b>Quelle est la bonne expression à affecter à <code>msg</code> ?</b></p>\\n<pre><code class=\\\"python\\\">n = \\\"Sobhi\\\"\\nm = 10\\nmsg = ?</code></pre>\",\"is_single\":true,\"propositions\":[\"n + \\\" a perdu \\\" + m + \\\"DT\\\"\",\"n + \\\" a perdu \\\" + str(m) + \\\"DT\\\"\",\"len(n) + \\\" a perdu \\\" + str(m) + \\\"DT\\\"\",\"str(n) + \\\"a perdu \\\" + m + \\\"DT\\\"\"]},{\"enonce\":\"<p><b>Quelle est la valeur de <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">c = \\\"15\\\" > \\\"9\\\"</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<p><b>Comment insérer correctement le mot dans la phrase pour qu\'elle devienne <code>\\\"Amine mange le chocolat\\\"</code> ?</b></p>\\n<pre><code class=\\\"python\\\">mot = \\\"mange\\\"\\nph = \\\"Amine le chocolat\\\"\\nmsg = ?</code></pre>\",\"is_single\":true,\"propositions\":[\"ph[:6] + mot + ph[6:]\",\"ph[:5] + mot + ph[5:]\",\"ph[:6] + mot + \\\" \\\" + ph[6:]\",\"ph[:6] + mot  + ph[6:]\"]},{\"enonce\":\"<p><b>On demande de supprimer le <code>mot</code> de la phrase <code>ph</code> ?</b></p>\\n<pre><code class=\\\"python\\\">mot = \\\", avec sa quille,\\\"\\nph = \\\"Le navire, avec sa quille, labeure à grand bruit le champ des mers\\\"\\nph = ?</code></pre>\",\"is_single\":true,\"propositions\":[\"ph[:9] + ph[26:]\",\"ph[26:] + ph[:9]\",\"ph[:8] + ph[27:]\",\"ph[8:] + ph[26:]\"]},{\"enonce\":\"<p><b>On demande de supprimer le <code>mot</code> de la phrase <code>ph</code> ?</b></p>\\n<pre><code class=\\\"python\\\">mot = \\\", avec sa quille,\\\"\\nph = \\\"Le navire, avec sa quille, labeure à grand bruit le champ des mers\\\"\\npm = ph.find(mot)\\nlm = len(mot)\\nph = ?</code></pre>\",\"is_single\":true,\"propositions\":[\"ph[:pm] + ph[pm+lm:]\",\"ph[pm+lm:] + ph[:pm]\",\"ph[:pm-1] + ph[pm+lm+1:]\",\"ph[pm:] + ph[pm+lm:]\"]},{\"enonce\":\"<p><b>Quelle est la valeur de <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">mot = \\\"Bruit\\\"\\nph = \\\"Le navire, avec sa quille, labeure à grand bruit le champ des mers\\\"\\nc = mot in ph</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<p><b>Quelle est la valeur de <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">mot = \\\"jour\\\"\\nph = \\\"Le jour se lève.\\\"\\nc = ph.find(mot)</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"3\",\"4\"]},{\"enonce\":\"<p><b>Quelle est la valeur de <code>c</code> ?</b></p>\\n<pre><code class=\\\"python\\\">a = str(2 / 7)\\nb = a[:8]\\nc = b.isdigit()</code></pre>\",\"is_single\":true,\"propositions\":[\"True\",\"False\",\"Erreur\"]},{\"enonce\":\"<p><b>Un informaticien a laissé sa carte de crédit à sa femme pour faire du shopping. Le code de la carte a été inscrit sur un bout de papier de la façon suivante :</b></p>\\n<pre><code class=\\\"python\\\">code = (int(str(round(1/6, 2))[-1])*2+len(str(1/8))**3+(abs(ord(\\\" \\\")-ord(\\\"a\\\")) // 10) * 100) * 2</code></pre>\",\"is_single\":true,\"propositions\":[\"7148\",\"4718\",\"1748\",\"1478\"]}]','1B2C3D4C5C6A7B8C9C10C11D12D13C14C15A16C17B18B19C20A21A22B23C24B25D'),
(27,'2TI','Structures itératives complètes','<p>Questions à choix multiples sur la Structure Pour</p>\r\n<p><b>Attention une seule réponse est correcte.</b></p>\r\n',20,'[{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">Pour i de 1 à 5 Faire\\n    Ecrire(i)\\nFin Pour</code></pre>\",\"is_single\":true,\"propositions\":[\"0 1 2 3 4\",\"1 2 3 4\",\"1 2 3 4 5\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">Pour i de 1 à 3 Faire\\n    Ecrire(i-1, i+1)\\nFin Pour</code></pre>\",\"is_single\":true,\"propositions\":[\"0 1 1 2 2 3\",\"0 2 1 3 2 4\",\"0 1 2 3 4 5\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"Dania\\\"\\nPour i de 1 à Long(ch) Faire\\n    Ecrire(ch[i-1])\\nFin Pour</code></pre>\",\"is_single\":true,\"propositions\":[\"D a n i a\",\"0 1 2 3 4\",\"a i n a D\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"Anas\\\"\\nj &larr; Long(ch) - 1\\nPour i de 0 à Long(ch)-1 Faire\\n    Ecrire(ch[j])\\nFin Pour</code></pre>\",\"is_single\":true,\"propositions\":[\"A n a s\",\"s a n A\",\"s s s s\",\"A A A A\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"Bachar\\\"\\nj &larr; Long(ch) - 2\\nPour i de 1 à 3 Faire\\n    Ecrire(sous_chaine(ch, j, j+2))\\n    j &larr; j - 2\\nFin Pour</code></pre>\",\"is_single\":true,\"propositions\":[\"B a c h a r\",\"Ba ch ar\",\"B a c\",\"ar ch Ba\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"Adem\\\"\\nch1 &larr; \\\"OIYEAUoiyeau\\\"\\nPour i de 0 à Long(ch)-1 Faire\\n    Si Pos(ch[i], ch1) = -1 Alors\\n        Ecrire(ch[i])\\n    Fin Si\\nFin Pour</code></pre>\",\"is_single\":true,\"propositions\":[\"A d e m\",\"A e\",\"d m\",\"m e d A\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"Torjmène\\\"\\nch1 &larr; \\\"\\\"\\nPour i de 0 à Long(ch)-1 Faire\\n    ch1 &larr; ch[aléa(0, Long(ch) - 1)] + ch1\\nFin Pour\\nEcrire(ch1)</code></pre>\\n<p>On suppose que la fonction <code>aléa()</code> génère les valeurs suivantes : [0,2,3,7,1,7,3,1]</p>\",\"is_single\":true,\"propositions\":[\"erjmoTèn\",\"Trjeoejo\",\"Torjmène\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"Yassmine\\\"\\nch1 &larr; \\\"\\\"\\nPour i de 0 à Long(ch)-1 Faire\\n    p &larr; aléa(0, Long(ch) - 1)\\n    ch1 &larr; ch1 + ch[p]\\n    ch &larr; effacer(ch, p, p+1)\\nFin Pour\\nEcrire(ch1)</code></pre>\\n<p>On suppose que la fonction <code>aléa()</code> génère les valeurs suivantes : [7,5,0,4,3,1,0,0]</p>\",\"is_single\":true,\"propositions\":[\"eiYnmsas\",\"YasYmiem\",\"Yassmine\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"Rayène\\\"\\ns &larr; 0\\nPour i de 0 à Long(ch)-1 Faire\\n    Si (ch[i] = \\\"a\\\") ou (ch[i] = \\\"e\\\") ou (ch[i] = \\\"n\\\") Alors\\n        s &larr; s + i\\n    Fin Si\\nFin Pour\\nEcrire(s)</code></pre>\",\"is_single\":true,\"propositions\":[\"3\",\"6\",\"10\",\"15\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"BCBBABCCBA\\\"\\nch1 &larr; \\\"\\\"\\nPour i de 0 à Long(ch)-1 Faire\\n    Si (ch[i] &ne; \\\"B\\\") Alors\\n        ch1 &larr; ch1 + ch[i]\\n    Fin Si\\nFin Pour\\nEcrire(ch1)</code></pre>\",\"is_single\":true,\"propositions\":[\"AA\",\"BBBBB\",\"CCC\",\"CACCA\",\"CCAACAA\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"9772192962\\\"\\ns &larr; 0\\nPour i de 0 à Long(ch)-1 Faire\\n    Si valeur(ch[i]) mod 2 = 0 Alors\\n        s &larr; s + 1\\n    Fin Si\\nFin Pour\\nEcrire(s)</code></pre>\",\"is_single\":true,\"propositions\":[\"4\",\"6\",\"10\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"9772192962\\\"\\ns &larr; 0\\nPour i de 0 à Long(ch)-1 Faire\\n    Si valeur(ch[i]) mod 2 = 0 Alors\\n        s &larr; s + valeur(ch[i])\\n    Fin Si\\nFin Pour\\nEcrire(s)</code></pre>\",\"is_single\":true,\"propositions\":[\"10\",\"12\",\"42\",\"54\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"9772192962\\\"\\nch1 &larr; \\\"\\\"\\nPour i de 0 à Long(ch)-1 Faire\\n        ch1 &larr; ch1 + chr(97 + valeur(ch[i]))\\nFin Pour\\nEcrire(ch1)</code></pre>\",\"is_single\":true,\"propositions\":[\"abcdefghij\",\"ABCDEFGHIJ\",\"jhhcbjcjgc\",\"JHHCBJCJGC\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"Fédi\\\"\\nch1 &larr; \\\"\\\"\\nj &larr; Long(ch) - 1\\nPour i de 0 à Long(ch)-1 Faire\\n    ch1 &larr; ch[j] + ch1 + ch[j]\\n    j &larr; j - 1\\nFin Pour\\nEcrire(ch1)</code></pre>\",\"is_single\":true,\"propositions\":[\"fédi\",\"FEDI\",\"idéFFédi\",\"FédiidéF\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"243360823\\\"\\nch1 &larr; \\\"\\\"\\nch2 &larr; \\\"\\\"\\nPour i de 0 à Long(ch)-1 Faire\\n    Si valeur(ch[i]) mod 2 = 0 Alors\\n        ch1 &larr; ch1 + ch[i]\\n    Sinon\\n        ch2 &larr; ch2 + ch[i]\\n    Fin Si\\nFin Pour\\nEcrire(Valeur(ch2)+Valeur(ch1))</code></pre>\",\"is_single\":true,\"propositions\":[\"243360823\",\"246082333\",\"333280246\",\"243415\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">s &larr; 0\\nPour i de 0 à 9 Faire\\n    Pour j de 0 à 9 Faire\\n        s &larr; s + 1\\n    Fin Pour\\nFin Pour\\nEcrire(s)</code></pre>\",\"is_single\":true,\"propositions\":[\"18\",\"20\",\"81\",\"100\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">Pour i de 100 à 999 Faire\\n    u &larr; i mod 10\\n    d &larr; (i div 10) mod 10\\n    c &larr; i div 100\\n    Si (d = u + 3) et (c = d + 4) Alors\\n        Ecrire(i)\\n    Fin Si\\nFin Pour</code></pre>\",\"is_single\":true,\"propositions\":[\"037 148 259\",\"037 148 259\",\"103 107 110\",\"730 841 952\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">s &larr; 0\\nPour i de 0 à 7 Faire\\n    Pour j de 0 à 7 Faire\\n        Si (i + j) mod 2 &ne; 0 Alors\\n            s &larr; s + 1\\n        Fin Si\\n    Fin Pour\\nFin Pour\\nEcrire(s)</code></pre>\",\"is_single\":true,\"propositions\":[\"14\",\"18\",\"24\",\"32\",\"49\",\"64\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"Eya Shahd Israa\\\"\\ns &larr; (Long(ch) > 0) * 1\\nPour i de 0 à long(ch)-1 Faire\\n    Si ch[i] = \\\" \\\" Alors\\n            s &larr; s + 1\\n    Fin Si\\nFin Pour\\nEcrire(s)</code></pre>\",\"is_single\":true,\"propositions\":[\"0\",\"1\",\"2\",\"3\",\"4\",\"5\"]},{\"enonce\":\"<p>Quel est l\'affichage de l\'algorithme suivant :</p>\\n<pre><code class=\\\"algorithm\\\">ch &larr; \\\"Omar Raed Amine\\\"\\nch1 &larr; \\\"\\\"\\nPour i de 0 à long(ch)-1 Faire\\n    Si (i = 0) ou (ch[i-1] = \\\" \\\") Alors\\n            ch1 &larr; ch[i] + ch1\\n    Fin Si\\nFin Pour\\nEcrire(ch1)</code></pre>\",\"is_single\":true,\"propositions\":[\"Amine\",\"Omar\",\"Raed\",\"ARO\",\"ORA\",\"\\\"  \\\" (deux espaces)\"]}]','1C2B3A4C5D6C7B8A9C10D11A12B13C14D15D16D17D18D19D20D');
/*!40000 ALTER TABLE `qcms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12 16:34:13
