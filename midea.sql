# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: midea
# Generation Time: 2013-04-04 00:31:21 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;

INSERT INTO `ciudades` (`id`, `nombre`, `estado`)
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
	(17,'Manzanillo',6),
	(18,'Valladolid',31),
	(19,'Apodaca',19),
	(20,'Xalapa',30),
	(21,'Poza Rica',30),
	(22,'Chetumal',23),
	(23,'Cozumel',23),
	(24,'Mazatlan',25),
	(25,'Mochis',25),
	(26,'Cd. Victoria',28),
	(27,'Nuevo Laredo',28),
	(28,'Reynosa',28),
	(29,'Tampico',28),
	(30,'Matamoros',28);

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;

INSERT INTO `estados` (`id`, `nombre`)
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
  `asc` varchar(12) DEFAULT NULL,
  `domicilio` varchar(128) DEFAULT NULL,
  `colonia` varchar(128) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `telefono` varchar(32) DEFAULT NULL,
  `correo` varchar(128) DEFAULT NULL,
  `tipo` int(11) DEFAULT '1',
  `ciudad` int(11) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `web` varchar(128) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;

INSERT INTO `partners` (`id`, `nombre`, `asc`, `domicilio`, `colonia`, `cp`, `telefono`, `correo`, `tipo`, `ciudad`, `latitud`, `longitud`, `web`, `descripcion`)
VALUES
	(1,'Air Depot',NULL,NULL,NULL,NULL,'83497530',NULL,1,1,NULL,NULL,NULL,NULL),
	(2,'Fujimura',NULL,NULL,NULL,NULL,'81906806',NULL,1,1,NULL,NULL,NULL,NULL),
	(3,'ClimaProyectos',NULL,NULL,NULL,NULL,'81251700',NULL,1,1,NULL,NULL,NULL,NULL),
	(4,'VentAir',NULL,NULL,NULL,NULL,'83721530',NULL,1,1,NULL,NULL,NULL,NULL),
	(5,'Cristal Water',NULL,NULL,NULL,NULL,'80442900',NULL,1,1,NULL,NULL,NULL,NULL),
	(6,'Retoccsa',NULL,NULL,NULL,NULL,'3336519276',NULL,1,2,NULL,NULL,NULL,NULL),
	(7,'Polar kit',NULL,NULL,NULL,NULL,'3336302008',NULL,1,2,NULL,NULL,NULL,NULL),
	(8,'ClimaProyectos',NULL,NULL,NULL,NULL,'01800 9000700',NULL,1,2,NULL,NULL,NULL,NULL),
	(9,'Celsius',NULL,NULL,NULL,NULL,'6677615000',NULL,1,3,NULL,NULL,NULL,NULL),
	(10,'ClimaProyectos',NULL,NULL,NULL,NULL,'01800 9000700',NULL,1,3,NULL,NULL,NULL,NULL),
	(11,'Midea Center',NULL,NULL,NULL,NULL,'6622161750',NULL,1,4,NULL,NULL,NULL,NULL),
	(12,'ClimaProyectos',NULL,NULL,NULL,NULL,'01800 9000700',NULL,1,4,NULL,NULL,NULL,NULL),
	(13,'Thermokold',NULL,NULL,NULL,NULL,'99-9911-1035',NULL,1,5,NULL,NULL,NULL,NULL),
	(14,'XAZE',NULL,NULL,NULL,NULL,'99-9928-0374',NULL,1,5,NULL,NULL,NULL,NULL),
	(15,'Telebodega',NULL,'',NULL,NULL,'99-8888-3400',NULL,1,6,NULL,NULL,NULL,NULL),
	(16,'Telebodega',NULL,NULL,NULL,NULL,'99-8888-3400',NULL,1,7,NULL,NULL,NULL,NULL),
	(17,'Thermokold',NULL,NULL,NULL,NULL,'99-9911-1035',NULL,1,8,NULL,NULL,NULL,NULL),
	(18,'Ayrisa',NULL,NULL,NULL,NULL,'99-3131-3824',NULL,1,9,NULL,NULL,NULL,NULL),
	(19,'Multistar',NULL,NULL,NULL,NULL,'99-3316-0217',NULL,1,9,NULL,NULL,NULL,NULL),
	(20,'Thermokold',NULL,NULL,NULL,NULL,'99-9911-1035',NULL,1,9,NULL,NULL,NULL,NULL),
	(21,'Avante',NULL,NULL,NULL,NULL,'22-9931-7581',NULL,1,10,NULL,NULL,NULL,NULL),
	(22,'Thermokold',NULL,NULL,NULL,NULL,'99-9911-1035',NULL,1,10,NULL,NULL,NULL,NULL),
	(23,'Xaze',NULL,NULL,NULL,NULL,'99-9928-0374',NULL,1,10,NULL,NULL,NULL,NULL),
	(24,'Pegaso',NULL,NULL,NULL,NULL,'92-1212-1409',NULL,1,11,NULL,NULL,NULL,NULL),
	(25,'Pegaso',NULL,NULL,NULL,NULL,'92-1212-1409',NULL,1,12,NULL,NULL,NULL,NULL),
	(26,'Resurtidora',NULL,NULL,NULL,NULL,'55-5578-9082',NULL,1,13,NULL,NULL,NULL,NULL),
	(27,'Resurtidora',NULL,NULL,NULL,NULL,'55-5578-9082',NULL,1,14,NULL,NULL,NULL,NULL),
	(28,'Soconusco',NULL,NULL,NULL,NULL,'96-1611-3905',NULL,1,15,NULL,NULL,NULL,NULL),
	(29,'Tapachula',NULL,NULL,NULL,NULL,'96-1611-3905',NULL,1,15,NULL,NULL,NULL,NULL),
	(30,'Sinsel',NULL,NULL,NULL,NULL,'31-2314-9015',NULL,1,17,NULL,NULL,NULL,NULL),
	(31,'Climas e instalaciones','SAM0902','Rio Lerma 331 ','Mexico',64000,'01 (81) 80405927','climaseinstalaciones@hotmail.com',2,1,NULL,NULL,NULL,NULL),
	(32,'TERMOSERVICIOS DEL SURESTE SA DE CV','SAM3101','CALLE 37 # 371, ENTRE 42 Y 44',' JESUS CARRANZA',97109,'01 (999) 9273822','termoservicio@hotmail.com',2,5,NULL,NULL,NULL,NULL),
	(33,'SERVICEDEPOT','SAM3102','Calle 60 # 227 A, Local 6 x 22 y Cto.Colonias','Buenavista',97144,'01 (999) 3162345','service_depot@hotmail.com',2,5,NULL,NULL,NULL,NULL),
	(34,'SERVICIO TECNICO INTEGRAL','SAM3103','CALLE 41 No.223-A','Centro',97780,'01 (985)85 65529','cse_mulsay@prodigy.net.mx',2,18,NULL,NULL,NULL,NULL),
	(35,'Regio Climas Garcia','SAM0901','Rio Volga 139','Col. Jardines de Huinala',66640,'01 (81) 44440853','regioclimasgarcia@hotmail.com',2,19,NULL,NULL,NULL,NULL),
	(36,'REFRIGERACION JALAPA ','SAM2603','AV. LAZARO CARDENAS #444','ENCINAL',91180,'01 (228) 1655819','refrixa@hotmail.com',2,20,NULL,NULL,NULL,NULL),
	(37,'CENTRO DE SERVICIO MANOLO','SAM2601','CALLE 1 #142, ESQ. OLMEDO','COL. NUEVA ERA',94295,'01 (229) 9357293','tecmanolo@hotmail.com',2,10,NULL,NULL,NULL,NULL),
	(38,'SERVIFAST','SAM2602','FERROCARRIL NO. 387','COL. AVIACION VIEJA',93360,'01 (782) 8265032','servifast@hotmail.com',2,21,NULL,NULL,NULL,NULL),
	(39,'Rep De Aparatos Elect. En Gral','SAM2604','Av.Universidad # 901   ','Col.Benito Juarez Sur   ',96580,'01 (921) 2146483','cto.dereparacion471@yahoo.com.mx',2,11,NULL,NULL,NULL,NULL),
	(40,'CEISSA','SAM3201','Ave. Kabah SM 32 M 4 Lote 14 Depto. A','Zona Urbana',77508,'01 (998) 2531770','ceissa.cancun@hotmail.com',2,6,NULL,NULL,NULL,NULL),
	(41,'SERVICIO TECNICO PINELO','SAM3202','Av. kabah entre la lopez portillo y calle edzna  plaza kabah local 3','Col. Cancun Centro',77500,'01 (984) 859 4352','serviciosstp@hotmail.com',2,6,NULL,NULL,NULL,NULL),
	(43,'E SERVICIOS','SAM3203','TUCAN No.9 ESQ. AV. INSURGENTES','COL. FIDEL VELAZQUEZ',77080,'01 (983) 8370703','sercsa@hotmail.com',2,22,NULL,NULL,NULL,NULL),
	(42,'SERVICIO TECNICO PINELO','SAM3202','Calle 106 entre  40 y 45 Mz. 519 Lt. 15  ','Col. Colosio',77728,'01 (984) 859 4352','serviciosstp@hotmail.com',2,7,NULL,NULL,NULL,NULL),
	(44,'ELECTRONICA Y POTENCIA','SAM3204','85 AV BIS LOTE 1 ESQ. 1 SUR BIS Y ADOLFO ROSADO SALAS','COL. RICARDO FLORES MAGON',77600,'01 (987) 8696213','adolfo.flores@electronicaypotencia.com.mx',2,23,NULL,NULL,NULL,NULL),
	(45,'CALIFORNIA REFRIGERACION','SAM0602','PASCUAL OROZCO #1613','FRACC. LOS PINOS',80128,'01 (667) 7610331','reysca04@gmail.com',2,3,NULL,NULL,NULL,NULL),
	(46,'LEYLA ELECTROMECANICA','SAM0601','RECREO # 709','COL. LOMAS DEL VALLE',82140,'01 (669) 9832955','leylaelectromec@hotmail.com',2,24,NULL,NULL,NULL,NULL),
	(47,'REFRIGERACION VALDES','SAM0603','QUERETARO # 2235 PTE.','COL. AYUNTAMIENTO 72',81236,'01 (668) 8130417','refrivaldez@1mm.megared.net.mx',2,25,NULL,NULL,NULL,NULL),
	(48,'Aire Acondicionado De Chiapas','SAM2901','AV LAUREL NUM 288 ','FRACC EL VERGEL',29000,'01 (961) 6143369','lgtuxtla@yahoo.com.mx',2,15,NULL,NULL,NULL,NULL),
	(49,'distribuidores de equipos industriales','SAM2902','3ª CALLE ORIENTE No 46-A','COL. CENTRO',30700,'01 (962) 6253178','d_e_i_1@hotmail.com',2,16,NULL,NULL,NULL,NULL),
	(50,'Aire Acondicionado De Chiapas','SAM2903','AV. SUR #46','COL. CENTRO',30700,'01 (962) 1182183','lgtuxtla@yahoo.com.mx',2,16,NULL,NULL,NULL,NULL),
	(51,'AIR-COM ','SAM1001','CALLE PASCUAL OROSCO NO. 807.','COL. ADOLFO LOPEZ MATEOS.',87020,'01 (834) 3140388','aircom_victoria@yahoo.com.mx',2,26,NULL,NULL,NULL,NULL),
	(52,'TALLER SAN MARCOS','SAM1004','CALLE BRAVO No.3508','CENTRO',88000,'01 (867) 7126926','marcoscapetillo@hotmail.com',2,27,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
