# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: localhost (MySQL 5.1.44)
# Database: midea
# Generation Time: 2013-03-14 08:41:03 +0000
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ciudades
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ciudades`;

CREATE TABLE `ciudades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` (`id`,`nombre`,`estado`)
VALUES
	(1,'Monterrey',19),
	(2,'Guadalajara',14),
	(3,'Culiacán',25),
	(4,'Hermosillo',26),
	(5,'Mérida',31),
	(6,'Cancún',23),
	(7,'Playa del Carmen',23),
	(8,'Campeche',4),
	(9,'Villahermosa',27),
	(10,'Veracruz',30),
	(11,'Coatzacoalcos',30),
	(12,'Minatitlan',30),
	(13,'Cuernavaca',17),
	(14,'Acapulco',12),
	(15,'Tuxtla Gutiérrez',7),
	(16,'Tapachula',7),
	(17,'Manzanillo',6);

/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table estados
# ------------------------------------------------------------

DROP TABLE IF EXISTS `estados`;

CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` (`id`,`nombre`)
VALUES
	(1,'Aguascalientes'),
	(2,'Baja California'),
	(3,'Baja California Sur'),
	(4,'Campeche'),
	(5,'Coahuila'),
	(6,'Colima'),
	(7,'Chiapas'),
	(8,'Chihuahua'),
	(9,'Distrito Federal'),
	(10,'Durango'),
	(12,'Guerrero'),
	(13,'Hidalgo'),
	(14,'Jalisco'),
	(15,'Estado de México'),
	(16,'Michoacan'),
	(17,'Morelos'),
	(18,'Nayarit'),
	(19,'Nuevo León'),
	(20,'Oaxaca'),
	(21,'Puebla'),
	(22,'Querétaro'),
	(23,'Quintana Roo'),
	(24,'San Luis Potosí'),
	(25,'Sinaloa'),
	(26,'Sonora'),
	(27,'Tabasco'),
	(28,'Tamaulipas'),
	(29,'Tlaxcala'),
	(30,'Veracruz'),
	(31,'Yucatán'),
	(32,'Zacatecas'),
	(11,'Guanajuato');

/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table partners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `partners`;

CREATE TABLE `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  `descripcion` text,
  `telefono` varchar(16) DEFAULT NULL,
  `domicilio` varchar(128) DEFAULT NULL,
  `colonia` varchar(128) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `ciudad` int(11) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `web` varchar(128) DEFAULT NULL,
  `correo` varchar(128) DEFAULT NULL,
  `tipo` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` (`id`,`nombre`,`descripcion`,`telefono`,`domicilio`,`colonia`,`cp`,`ciudad`,`latitud`,`longitud`,`web`,`correo`,`tipo`)
VALUES
	(1,'Air Depot',NULL,'83497530',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1),
	(2,'Fujimura',NULL,'81906806',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1),
	(3,'ClimaProyectos',NULL,'81251700',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1),
	(4,'VentAir',NULL,'83721530',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1),
	(5,'Cristal Water',NULL,'80442900',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1),
	(6,'Retoccsa',NULL,'3336519276',NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,1),
	(7,'Polar kit',NULL,'3336302008',NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,1),
	(8,'ClimaProyectos',NULL,'01800 9000700',NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,1),
	(9,'Celsius',NULL,'6677615000',NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,1),
	(10,'ClimaProyectos',NULL,'01800 9000700',NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,1),
	(11,'Midea Center',NULL,'6622161750',NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,1),
	(12,'ClimaProyectos',NULL,'01800 9000700',NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,1),
	(13,'Thermokold',NULL,'99-9911-1035',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,1),
	(14,'XAZE',NULL,'99-9928-0374',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,1),
	(15,'Telebodega',NULL,'99-8888-3400','2',NULL,NULL,6,NULL,NULL,NULL,NULL,1),
	(16,'Telebodega',NULL,'99-8888-3400',NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,1),
	(17,'Thermokold',NULL,'99-9911-1035',NULL,NULL,NULL,8,NULL,NULL,NULL,NULL,1),
	(18,'Ayrisa',NULL,'99-3131-3824',NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,1),
	(19,'Multistar',NULL,'99-3316-0217',NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,1),
	(20,'Thermokold',NULL,'99-9911-1035',NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,1),
	(21,'Avante',NULL,'22-9931-7581',NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,1),
	(22,'Thermokold',NULL,'99-9911-1035',NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,1),
	(23,'Xaze',NULL,'99-9928-0374',NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,1),
	(24,'Pegaso',NULL,'92-1212-1409',NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,1),
	(25,'Pegaso',NULL,'92-1212-1409',NULL,NULL,NULL,12,NULL,NULL,NULL,NULL,1),
	(26,'Resurtidora',NULL,'55-5578-9082',NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,1),
	(27,'Resurtidora',NULL,'55-5578-9082',NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,1),
	(28,'Soconusco',NULL,'96-1611-3905',NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,1),
	(29,'Tapachula',NULL,'96-1611-3905',NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,1),
	(30,'Sinsel',NULL,'31-2314-9015',NULL,NULL,NULL,17,NULL,NULL,NULL,NULL,1),
	(31,'Climas e instalaciones',NULL,'01 (81) 80405927','Rio Lerma 331 ','Mexico',64000,1,NULL,NULL,NULL,'climaseinstalaciones@hotmail.com',2);

/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
