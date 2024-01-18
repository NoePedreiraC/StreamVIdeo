-- MariaDB dump 10.19  Distrib 10.11.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: streamvideo
-- ------------------------------------------------------
-- Server version	10.11.4-MariaDB-1~deb12u1

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `peliculaId` int(11) DEFAULT NULL,
  `serieId` int(11) DEFAULT NULL,
  `nombreFicticio` varchar(50) NOT NULL,
  `foto` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_catorce` (`serieId`),
  KEY `fk_quince` (`peliculaId`),
  CONSTRAINT `fk_catorce` FOREIGN KEY (`serieId`) REFERENCES `series` (`id`),
  CONSTRAINT `fk_quince` FOREIGN KEY (`peliculaId`) REFERENCES `peliculas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES
(1,'Mike','Myers',60,1,NULL,'Shrek','https://cdn.semana.es/wp-content/uploads/2021/05/mike-myers.jpg'),
(2,'Eddie','Murphy',62,1,NULL,'Asno','https://static.wikia.nocookie.net/doblaje/images/1/1a/EddieMurphy.jpg/revision/latest?cb=20191103185619&path-prefix=es'),
(3,'Cameron','Diaz',51,1,NULL,'Fiona','https://media.revistagq.com/photos/5ca5f469d71dd925d8957a38/1:1/w_900,h_900,c_limit/cameron_diaz_2618.jpg'),
(4,'Anna','Faris',47,2,NULL,'Cindy Campbell','https://people.com/thmb/jHN9IEWqzA3RHujVPvhQRrQ5BzU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(689x319:691x321)/anna-faris-overboard-premiere-110122-438934bd979d4a91b641eb2e9c9a50be.jpg'),
(5,'Shawn','Wayans',52,2,NULL,'Ray Wilkins','https://www.wane.com/wp-content/uploads/sites/21/2023/03/Shawn-Wayans.jpg?w=1280'),
(6,'Marlon','Wayans',50,2,NULL,'Shorty Meeks','https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2023-11/marlon-wayans-lc-231113-3c6f4a.jpg'),
(7,'Daniel','Radcliffe',33,3,NULL,'Harry Potter','https://m.media-amazon.com/images/M/MV5BZmE0NzNiNzQtYTVlYS00MjljLWE4MTgtYzYxNjU2NjZkM2M4XkEyXkFqcGdeQXVyNjY5NDgzNjQ@._V1_.jpg'),
(8,'Rupert','Grint',34,3,NULL,'Ron Weasley','https://media.revistagq.com/photos/63d7977084d3d5687a19067b/1:1/w_2504,h_2504,c_limit/GettyImages-1188778598.jpg'),
(9,'Emma','Watson',32,3,NULL,'Hermione Granger','https://media.cnn.com/api/v1/images/stellar/prod/230417120259-emma-watson-birthday-file-091522.jpg?c=original'),
(10,'Vin','Diesel',55,4,NULL,'Dominic Toretto','https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Vin_Diesel_2013_SDCC_%28cropped%29.jpg/1200px-Vin_Diesel_2013_SDCC_%28cropped%29.jpg'),
(11,'Dwayne','Johnson',50,4,NULL,'Luke Hobbs','https://i.ytimg.com/vi/Mw3jK9YwOxk/maxresdefault.jpg'),
(12,'Jason','Statham',55,4,NULL,'Deckard Shaw','https://hips.hearstapps.com/hmg-prod/images/jason-statham-attends-the-fast-furious-hobbs-shaw-special-news-photo-1700212301.jpg?crop=0.694xw:1.00xh;0.209xw,0&resize=1200:*'),
(13,'Keanu','Reeves',58,5,NULL,'John Wick','https://m.media-amazon.com/images/M/MV5BNGJmMWEzOGQtMWZkNS00MGNiLTk5NGEtYzg1YzAyZTgzZTZmXkEyXkFqcGdeQXVyMTE1MTYxNDAw._V1_.jpg'),
(14,'Halle','Berry',56,5,NULL,'Sofia','https://static.wikia.nocookie.net/doblaje/images/6/68/Halle_Berry_2019.jpg/revision/latest?cb=20190503220115&path-prefix=es'),
(15,'Ian','McShane',80,5,NULL,'Winston','https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/03/07/09/ian-mcshane.jpg?quality=75&width=1200&auto=webp'),
(17,'Andrew','Lincoln',50,NULL,1,'Rick Grimes','https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/78719_v9_bb.jpg'),
(18,'Norman','Reedus',45,NULL,1,'Daryl Dixon','https://people.com/thmb/UnflRdOaObMhRB0_wWZQHBAgjyc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(719x349:721x351)/norman-reedus-84569121b8ad439eb52a89f1217c2621.jpg'),
(19,'Melissa','McBride',59,NULL,1,'Carol Peletier','https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/397746_v9_bc.jpg'),
(20,'Bryan','Cranston',66,NULL,2,'Walter White','https://hips.hearstapps.com/hmg-prod/images/rs-18374-121813-ww-1800-1387390916.jpg?crop=0.752xw:1.00xh;0,0&resize=2048:*'),
(21,'Aaron','Paul',43,NULL,2,'Jesse Pinkman','https://media.vanityfair.com/photos/5c8e9033b515803ea55ee6c8/4:3/w_1336,h_1002,c_limit/aaron-paul-breaking-bad-movie.jpg'),
(22,'Anna','Gunn',54,NULL,2,'Skyler White','https://www.usatoday.com/gcdn/-mm-/4df1855554f7c0890bf388e619378c062ae8d832/c=0-55-3900-2254/local/-/media/USATODAY/None/2014/10/02/1412274799000-Gracepoint-Anna-Gunn.jpg'),
(23,'Ricardo','Arroyo',56,NULL,3,'Amador Rivas','https://es.web.img2.acsta.net/r_1280_720/pictures/20/11/17/12/50/4713969.jpg'),
(24,'Paz','Padilla',55,NULL,3,'Chusa','https://s1.ppllstatics.com/lasprovincias/www/multimedia/202208/10/media/cortadas/Captura%20de%20pantalla%20(5)-RaARRT0RNTksmTBUEpfaU5N-1248x770@Las%20Provincias.png'),
(25,'José Luis','Gil',67,NULL,3,'Enrique Pastor','https://okdiario.com/img/2023/03/18/jose-luis-gil-1.jpg'),
(26,'José','Coronado',66,NULL,4,'Tirso Abantos','https://media.diariouno.com.ar/p/c9511126be7e46cbce9172eca0e0a642/adjuntos/298/imagenes/009/281/0009281664/1200x0/smart/vivir-permiso-3jpg.jpg'),
(27,'Luis','Zahera',57,NULL,4,'Ezequiel Fandiño','https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2022/11/14/16684180745977.jpg'),
(28,'Felipe','Londoño',29,NULL,4,'Nelson Gutiérrez','https://media.e-talenta.eu/foto/1584564.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJjZmV0IiwiYXVkIjoiY2ZldCIsImlhdCI6MTY0MjM0MDQ0NiwiZXhwIjoxNjQyMzQ3NjQ2LCJkYXRhIjp7ImNkbl9zY29wZSI6ImZvdG8iLCJjZG5faWQiOjE1ODQ1NjQsInVzZXJfcHJvZmlsZUlkIjowLCJub0luZGV4IjpmYWxzZX19.hA-HBGW4sTeSMNNYFSQbgur-fp7FA8zD3BiRI9riECY'),
(29,'Wentworth','Miller',52,NULL,5,'Michael Scofield','https://static.wikia.nocookie.net/arrow/images/1/1d/Wentworth_Miller.png/revision/latest?cb=20141129190548&path-prefix=es'),
(30,'Dominic','Purcell',54,NULL,5,'Lincoln Burrows','https://facts.net/wp-content/uploads/2023/07/34-facts-about-dominic-purcell-1690163477.jpg'),
(31,'Sarah','Wayne',47,NULL,5,'Sara Tancredi','https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/261190_v9_bb.jpg');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peliculaId` int(11) DEFAULT NULL,
  `serieId` int(11) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `esFavorito` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_seis` (`serieId`),
  KEY `fk_siete` (`peliculaId`),
  KEY `fk_ocho` (`userId`),
  CONSTRAINT `fk_ocho` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_seis` FOREIGN KEY (`serieId`) REFERENCES `series` (`id`),
  CONSTRAINT `fk_siete` FOREIGN KEY (`peliculaId`) REFERENCES `peliculas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritos`
--

LOCK TABLES `favoritos` WRITE;
/*!40000 ALTER TABLE `favoritos` DISABLE KEYS */;
INSERT INTO `favoritos` VALUES
(1,4,NULL,3,1),
(2,NULL,3,5,1);
/*!40000 ALTER TABLE `favoritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `genero` varchar(200) NOT NULL,
  `año` year(4) NOT NULL,
  `plataformaId` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `urlImagen` varchar(500) NOT NULL,
  `actorId` int(11) NOT NULL,
  `duracion` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `laTienesEnFavoritos` tinyint(1) NOT NULL,
  `comentarios` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dos` (`plataformaId`),
  KEY `fk_tres` (`actorId`),
  CONSTRAINT `fk_dos` FOREIGN KEY (`plataformaId`) REFERENCES `plataformas` (`id`),
  CONSTRAINT `fk_tres` FOREIGN KEY (`actorId`) REFERENCES `actor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES
(1,'Shrek','Fantasía',2001,1,'Es una película animada que sigue las aventuras de Shrek...','https://imagenes.20minutos.es/files/image_640_auto/uploads/imagenes/2021/05/19/shrek-2001-3.jpeg',1,90,9,0,''),
(2,'Scary Movie 1','Terror',2000,3,'Es una comedia paródica que satiriza películas de terror populares...','https://img19.tokyvideo.com/videos/297/297832/previews/previews_0012_custom_1690245508.2906.jpg',4,88,6,0,''),
(3,'Harry Potter Principe Mestizo','Ficción',2009,2,'Harry Potter y el Príncipe Mestizo sigue al joven mago Harry Potter en su sexto año en Hogwarts...','https://i.blogs.es/c32fe2/harrypotter/650_1200.webp',7,153,7,0,''),
(4,'Fast & Furious 8','Acción',2001,4,'Dominic Toretto, quien traiciona a su equipo bajo la influencia de una mujer misteriosa...','https://estaticos-cdn.prensaiberica.es/clip/f279cb2d-1d87-430e-86ca-325fede31fe2_16-9-aspect-ratio_default_0.jpg',10,136,7,0,''),
(5,'John Wick 3','Acción',2019,1,'John Wick: Chapter 3 - Parabellum continúa la historia del exasesino John Wick...','https://prod-ripcut-delivery.disney-plus.net/v1/variant/star/F3D3A70A0ADEAF78D4713869F9492CFDF2A18687862E45AD4B388246E474B845/scale?width=1200&aspectRatio=1.78&format=jpeg',13,130,9,0,'');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plataformas`
--

DROP TABLE IF EXISTS `plataformas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plataformas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `peliculaId` int(11) DEFAULT NULL,
  `serieId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_doce` (`serieId`),
  KEY `fk_trece` (`peliculaId`),
  CONSTRAINT `fk_doce` FOREIGN KEY (`serieId`) REFERENCES `series` (`id`),
  CONSTRAINT `fk_trece` FOREIGN KEY (`peliculaId`) REFERENCES `peliculas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plataformas`
--

LOCK TABLES `plataformas` WRITE;
/*!40000 ALTER TABLE `plataformas` DISABLE KEYS */;
INSERT INTO `plataformas` VALUES
(1,'Netflix',NULL,1),
(2,'HBO Max',NULL,3),
(3,'Disney+',NULL,5),
(4,'Amazon Prime Video',NULL,4);
/*!40000 ALTER TABLE `plataformas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `año` year(4) NOT NULL,
  `numTemporadas` int(11) NOT NULL,
  `plataformaId` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `urlImagen` varchar(200) NOT NULL,
  `actorId` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `comentarios` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES
(1,'The Walking Dead','Zombies',2019,11,1,'Es una serie de televisión que sigue a un grupo de supervivientes en un mundo postapocalíptico...','https://i.blogs.es/2e3339/comparacion-poster-walking-dead-comic-tv/1366_2000.png',16,7,''),
(2,'Breaking Bad','Drama',2008,5,1,'Es una aclamada serie de televisión que sigue la transformación de Walter White...','https://hipermediaciones.files.wordpress.com/2013/10/21225_breaking_bad.jpg',19,10,''),
(3,'La que se avecina','Comedia',2007,14,4,'Es una comedia española que narra las peripecias y conflictos de los variados residentes de una comunidad de vecinos...','https://phantom-marca.unidadeditorial.es/e7ab3a55810d1b2bf47182419d4ee380/resize/1200/f/webp/assets/multimedia/imagenes/2022/06/15/16553145982009.jpg',22,8,''),
(4,'Entrevias','Drama',2022,3,1,'Es una serie thriller que sigue la historia de Tirso Abantos, un hombre de principio y exmilitar...','https://album.mediaset.es/cimg/2023/10/05/entreviasthumbnailt3_1f06.jpg',25,9,''),
(5,'Prision Break','Ficción criminal',2005,5,3,'Es una serie de televisión que sigue a Michael Scofield, quien ingeniosamente se deja encarcelar para liberar a su hermano...','https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2020/09/03/prison-break-2005-2017-7.jpeg',29,8,'');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `contraseña` varchar(200) NOT NULL,
  `telefono` char(9) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `favorito` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Elías','Maira','1234','604020204','eliasmairamanteiga@gmail.com',1),
(2,'Rubén','Varela','12345','634597141','rubenvarelafigueroa@gmail.com',2),
(3,'Alejandro','Rodriguez','pepe de pura','678546791','alexdf@gmail.com',3),
(4,'Noe','Pedreira','A.','123456789','noepc@gmail.com',4),
(5,'Antonio','Seoane','cualquiera','673126795','antoniomc@gmail.com',5);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verLuego`
--

DROP TABLE IF EXISTS `verLuego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verLuego` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serieId` int(11) DEFAULT NULL,
  `peliculaId` int(11) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `vtarde` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nueve` (`serieId`),
  KEY `fk_diez` (`peliculaId`),
  KEY `fk_once` (`userId`),
  CONSTRAINT `fk_diez` FOREIGN KEY (`peliculaId`) REFERENCES `peliculas` (`id`),
  CONSTRAINT `fk_nueve` FOREIGN KEY (`serieId`) REFERENCES `series` (`id`),
  CONSTRAINT `fk_once` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verLuego`
--

LOCK TABLES `verLuego` WRITE;
/*!40000 ALTER TABLE `verLuego` DISABLE KEYS */;
INSERT INTO `verLuego` VALUES
(1,NULL,1,2,1),
(2,2,NULL,4,1);
/*!40000 ALTER TABLE `verLuego` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-18 10:59:02
