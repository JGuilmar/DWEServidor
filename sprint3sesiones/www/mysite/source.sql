-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mysitedb
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

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
-- Table structure for table `tCanciones`
--

DROP TABLE IF EXISTS `tCanciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tCanciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `url_imagen` varchar(200) DEFAULT NULL,
  `interprete` varchar(100) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tCanciones`
--

LOCK TABLES `tCanciones` WRITE;
/*!40000 ALTER TABLE `tCanciones` DISABLE KEYS */;
INSERT INTO `tCanciones` VALUES (1,'Maquiavelico','https://lalibretadenani.files.wordpress.com/2022/02/maquiavelico.png?w=1024','Cancerbero','Hip-hop/Rap'),(2,'Creep','https://upload.wikimedia.org/wikipedia/en/9/9b/Creep_by_radiohead_reissue.png','Radiohead','Rock Alternativo'),(3,'Caricias prohibidas','https://m.media-amazon.com/images/I/91mOsccc8gL._SS500_.jpg','Viti Ruiz','Salsa'),(4,'Stolen Dance','https://i.ytimg.com/vi/iX-QaNzd-0Y/hqdefault.jpg','Milky Chance','Pop'),(5,'Flaca','https://m.media-amazon.com/images/I/41zVK6VkcSL._SX355_.jpg','Andres Calamaro','Rock Español');
/*!40000 ALTER TABLE `tCanciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tComentarios`
--

DROP TABLE IF EXISTS `tComentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tComentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(200) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `cancion_id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `cancion_id` (`cancion_id`),
  CONSTRAINT `tComentarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `tUsuarios` (`id`),
  CONSTRAINT `tComentarios_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `tCanciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tComentarios`
--

LOCK TABLES `tComentarios` WRITE;
/*!40000 ALTER TABLE `tComentarios` DISABLE KEYS */;
INSERT INTO `tComentarios` VALUES (1,'Me gusta esta cancion',1,5,NULL),(2,'No puede faltar en mi lista de reproducción',4,2,NULL),(3,'Esta cancion activa mis dias',3,1,NULL),(4,'Mi salsa favorita',5,3,NULL),(5,'Primera vez que la escucho y no me disgusta',2,4,NULL),(6,'',NULL,1,NULL),(7,'',NULL,1,NULL),(8,'',NULL,1,NULL),(9,'',NULL,1,NULL),(10,'',NULL,1,NULL),(11,'',NULL,1,NULL),(12,'',NULL,1,NULL),(13,'Hola',NULL,2,NULL),(14,'ultimo intento\r\n',NULL,2,NULL),(15,'hola',NULL,3,NULL),(16,'hola ',NULL,4,NULL),(17,'isnd',NULL,4,NULL),(18,'Comentario Ejercicio 4 Sesiones.\r\n',NULL,5,NULL),(19,'Comentario Ejercicio 4 Sesiones\r\n',NULL,5,NULL),(20,'Hola2',NULL,5,NULL),(21,'Comentario desde la base de datos',1,3,'2022-10-25 13:28:18'),(22,'Hola3\r\n',NULL,5,'2022-10-25 13:32:29'),(23,'Hola de nuevo\r\n',NULL,2,'2022-10-25 13:34:06'),(24,'Hola',NULL,1,NULL),(25,'Hola sprint2php',NULL,1,'2022-10-25 13:40:01'),(26,'Hola ej4 sprint sesiones',1,2,'2022-10-25 13:44:45'),(27,'Hola ej4 sprint sesiones',NULL,2,'2022-10-25 14:15:39'),(28,'Hola como estas',NULL,2,'2022-10-25 14:23:45'),(29,'Hola como estas 2',NULL,3,'2022-10-25 14:24:09'),(30,'Hola',NULL,3,'2022-10-25 14:51:03'),(31,'hola de nuevo ',NULL,3,'2022-10-25 14:53:20'),(32,'Hola de nuevo de nuevo',NULL,3,'2022-10-25 14:53:34'),(33,'Hola de nuevo de nuevo de nuevo',5,3,'2022-10-25 15:05:37'),(34,'hola alexandra',5,3,'2022-10-25 15:06:12'),(35,'hola dev',5,3,'2022-10-25 15:13:47'),(36,'Buena música.',5,2,'2022-10-26 13:56:40');
/*!40000 ALTER TABLE `tComentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tUsuarios`
--

DROP TABLE IF EXISTS `tUsuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tUsuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contraseña` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tUsuarios`
--

LOCK TABLES `tUsuarios` WRITE;
/*!40000 ALTER TABLE `tUsuarios` DISABLE KEYS */;
INSERT INTO `tUsuarios` VALUES (1,'Jose','Bayona','josebayona874@gmail.com','josebayona'),(2,'Gian','Franco','gianfranco356@gmail.com','gifran1234'),(3,'Luz','Karime','luzkarime423@gmail.com','luzka1234'),(4,'Christian','Lopez','christianlopez@gmail.com','chrislo1234'),(5,'Alexandra','Cervantes','alexandracervantes@gmail.com','alecer1234');
/*!40000 ALTER TABLE `tUsuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-28 19:44:57
