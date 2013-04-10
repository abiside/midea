# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: localhost (MySQL 5.1.44)
# Database: midea
# Generation Time: 2013-04-04 07:38:02 +0000
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
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

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
	(30,'Matamoros',28),
	(31,'Zapopan',14),
	(32,'Puerto Vallarta',14),
	(33,'León',11),
	(34,'Celaya',11),
	(35,'Chihuahua',8),
	(36,'Cd Juárez',8),
	(37,'Ciudad de México',9),
	(38,'Toluca',15),
	(39,'Saltillo',5),
	(40,'Monclova',5),
	(41,'Sabinas',5),
	(42,'Torreón',5),
	(43,'Cd Obregón',26),
	(44,'Guaymas',26),
	(45,'Queretaro',22),
	(46,'Durango',10),
	(47,'La Paz',3),
	(48,'Los Cabos',3),
	(49,'San Luis Potosí',24),
	(50,'Cd Valle',24),
	(51,'Chilpancingo',12),
	(52,'Iguala',12),
	(53,'Mexicali',2),
	(54,'Tijuana',2),
	(55,'Ensenada',2),
	(56,'Colima',6),
	(57,'Aguascalientes',1),
	(58,'Morelia',16),
	(59,'Uruapan',16),
	(60,'Zamora',16),
	(61,'Lazaro Cardenas',16),
	(62,'Puebla',21),
	(63,'Cd del Carmen',4),
	(64,'Oaxaca',20),
	(65,'Pachuca',13);

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` (`id`,`nombre`,`asc`,`domicilio`,`colonia`,`cp`,`telefono`,`correo`,`tipo`,`ciudad`,`latitud`,`longitud`,`web`,`descripcion`)
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
	(52,'TALLER SAN MARCOS','SAM1004','CALLE BRAVO No.3508','CENTRO',88000,'01 (867) 7126926','marcoscapetillo@hotmail.com',2,27,NULL,NULL,NULL,NULL),
	(53,'REFRIGERACION SAN JOSE','SAM1003','SAN JOSE # 103','COL. JARACHINA LOMA REAL',88730,'01 (899) 9523283','sanjose_103@hotmail.com',2,28,NULL,NULL,NULL,NULL),
	(54,'MICOM ELECTRONICS','SAM1002','ESPAÑA No. 1502','COL. LAZARO CARDENAS',89450,'01 (833) 2153175','micomelectronics@hotmail.com',2,29,NULL,NULL,NULL,NULL),
	(55,'CENTRAL DE CLIMAS DE MATAMOROS','SAM1005','RIO CONCHOS NO. 21.','CAMPESTRE DEL RIO 2.',87440,'01 (868) 8191444','centralsolidaridad@hotmail.com',2,30,NULL,NULL,NULL,NULL),
	(56,'CASA CRISA','SAM2801','LINO MERINO #219','COL. CENTRO',86000,'01 (993) 3128659','ventas@casacrisa.com',2,9,NULL,NULL,NULL,NULL),
	(57,'Refrigeración Leo','SAM1401','IBIS No. 903 PRADOS DEL NILO','SAN PEDRO',44880,'01 (33) 38388553','refrigeracionleo@prodigy.net.mx, florescfco@hotmail.com',2,31,NULL,NULL,NULL,NULL),
	(58,'SERVICIOS MULTIPLES NUÑO','SAM1402','CALLE AZUCENA #1253','COL. LA FLORESTA',48290,'01 (322) 2222654','serviciosmnuno@yahoo.com.mx',2,32,NULL,NULL,NULL,NULL),
	(59,'Mr. CLIMA','SAM1501','D. Blvd. Alonso de Torres no. 1810','Col. Residencial del Moral ',37125,'01 (477) 2500487','mr.clima@live.com.mx',2,33,NULL,NULL,NULL,NULL),
	(60,'REFRILAV CELAYA','SAM1502','C. RIVAS PALACIOS No. 113-B.','COL. CENTRO',38000,'01 (461) 6135493','refrilav@att.net.mx; refrilav_celaya@prodigy.net.mx',2,34,NULL,NULL,NULL,NULL),
	(61,'ELECTRONICA COMERCIAL DOMESTICA','SAM0401','AV.JOSE MA. IGLESIAS No.5905','COL. PANORAMICO',31120,'01 (614) 4216361','comercialdomestica@hotmail.com',2,35,NULL,NULL,NULL,NULL),
	(62,'ACHM ELECTRICISTAS','SAM0402','CALLE LINAZA No.5574.','COL. INF. AMPLIACION AEREOPUERTO.',32698,'01 (656) 6196524','achm1225@hotmail.com',2,36,NULL,NULL,NULL,NULL),
	(63,'SERVICIO TECNICO','SAM2101','CARLOS J. MENESES #237','BUENA VISTA (DELEGACIÓN CUAUHTÉMOC)',0,'01 (55) 55668761, 01 (55) 570319','servitec_ref@prodigy.net.mx; servitec_ric@prodigy.net.mx',2,37,NULL,NULL,NULL,NULL),
	(64,'SERVITEC','SAM2002','AV. BAJA VELOCIDAD # 25-A','SANTA ANA TAPALTITLAN',50160,'01 (722) 1995613, 01 (722) 19956','servitectoluca@prodigy.net.mx',2,38,NULL,NULL,NULL,NULL),
	(65,'Servicio Vielma','SAM0501','Blvd. Jose Sarmiento #237','Col. Virreyes Obrera',25220,'01 (844) 4157568','vielma@creavix.com; ara_jaz@hotmail.com',2,39,NULL,NULL,NULL,NULL),
	(66,'Servicios Blackaller','SAM0503','HUEMAC No. 1104','COL. ANAHUAC',25700,'01 (866) 6362728','serviciosblackaller@hotmail.com',2,40,NULL,NULL,NULL,NULL),
	(67,'Multiservicios del Norte','SAM0504','Av. 5 de Mayo Sur #295','Col. Centro',26700,'01 (861) 6126431','mulserv@hotmail.com',2,41,NULL,NULL,NULL,NULL),
	(68,'Electronica Jomar','SAM0502','Mariano López Ortíz # 1126 Nte.','Col. Centro',27000,NULL,'jomar02@prodigy.net.mx',2,42,NULL,NULL,NULL,NULL),
	(69,'Servicio Velazquez','SAM2301','Melchor Ocampo N.102','Col.Empleado ',62250,'01 (777) 3127680 / 3182449','averi94@hotmail.com',2,13,NULL,NULL,NULL,NULL),
	(70,'FELIX ELECTRODOMESTICOS Y REFRIGERACION','SAM0301','CAMELIA #521','COL. LUIS ENCINAS',83103,'01 (662) 2162080','felix.electrodomesticos@hotmail.com',2,4,NULL,NULL,NULL,NULL),
	(71,'SERVICIO DE REFRIGERACION FUENTES','SAM0302','SINALOA #2983','COL. MUNICIPIO LIBRE',85080,'01 (644) 4179394','ser-refuentes@hotmail.com',2,43,NULL,NULL,NULL,NULL),
	(72,'DOSSA','SAM0303','LOTE 13 MANZANA 93 No 380.','COL. GIL SAMANIEGO',85470,'01 (622) 2217615','dosajj@hotmail.com',2,44,NULL,NULL,NULL,NULL),
	(73,'SERVICIO CROLLF','SAM1601','PROL. CORREGIDROA SUR 42 B','COL. CIMATARIO',76030,'01 (44) 22241700','crolls@prodigy.net.mx',2,45,NULL,NULL,NULL,NULL),
	(74,'DDH ELECTRONICS','SAM0701','MITLA #427','COL. AZCAPOTZALCO',34160,'01 (618) 8189095','ddhelectronics@hotmail.com; nohemi.dehoyos@hotmail.com',2,46,NULL,NULL,NULL,NULL),
	(75,'SERVICLIMAS LA PAZ','SAM0201','Calle Olmecas #543 ','Col. Puesta del Sol ',23090,'01 (612) 1255859','noriega_sb@yahoo.com.mx',2,47,NULL,NULL,NULL,NULL),
	(76,'MARTINEZ REFRIGERACIÓN','SAM0202','LA PAZ S/N SAN JOS DEL CABO','CENTRO',23410,'01 (624) 1133353, 01 (624) 12400','bajaofertas@hotmail.com',2,48,NULL,NULL,NULL,NULL),
	(77,'ARQ. MIGUEL IVAN DE LOS RIOS NITTA','SAM0203','MAR DE BERING, MANZANA 3 LOTE 20','FRACC. MIRA MAR',23457,'01 (624) 1443070','migueldelosrios@prodigy.net.mx',2,48,NULL,NULL,NULL,NULL),
	(78,'CENTRO DE SERVICIO SLP','SAM1201','AV. DR. SALVADOR NAVA MTZ. # 2755','BALCONES DEL VALLE',NULL,'01 (444) 8153407','centro_servicioslp1@hotmail.com; chicalinda1903@hotmail.com',2,49,NULL,NULL,NULL,NULL),
	(79,'CENTRAL DE REFACCIONES Y SERVICIOS','SAM1202','SECUNDARIA No. 4','COL. CENTRO',79000,'01 (481) 3813748','crs_niko@hotmail.com',2,50,NULL,NULL,NULL,NULL),
	(80,'Hvac Instalaciones Sa De Cv','SAM2401','Calle El Roble #7','Col. El Roble',39670,'01 (744) 4883666','hvacinstalaciones@prodigy.net.mx',2,14,NULL,NULL,NULL,NULL),
	(81,'CENTRO EL MEJOR','SAM2402','AV. CHILPANCINGO #46','COL. SAN RAFAEL NORTE',39016,'01 (747) 4915161','centro_elmejor@hotmail.com',2,51,NULL,NULL,NULL,NULL),
	(82,'CENTRO DE REFRIGERACIÓN','SAM2403','ALVARO OBREGON ESQ. ANTONIO DE LÉON','COL. VEINTE DE NOVIEMBRE',40060,'01 (733) 3331757','centro_de_refrigeracion@hotmail.com',2,52,NULL,NULL,NULL,NULL),
	(83,'ARTURO SOS CORNEJO','SAM0101','ARRONI #160','FRACC. VILLA LOMAS ALTAS',21355,'01 (686) 8390420','sosacornejoa@hotmail.com',2,53,NULL,NULL,NULL,NULL),
	(84,'AM DE MEXICALI S.A. DE C.V.','SAM0104','CALLE F No.757','COL. INDUSTRIAL',21010,'01 (686) 5543475','amdebcsa@prodigy.net.mx',2,53,NULL,NULL,NULL,NULL),
	(85,'SIMA','SAM0103','Ave. 20 de Noviembre #12533','Col. 20 de Noviembre ',22100,'01 (664) 1044122, 6073363','vflores@simarefrigeracion.com.mx; gtalamantes@simarefrigeracion.com.mx',2,54,NULL,NULL,NULL,NULL),
	(86,'TALLER CORREA','SAM0102','CALLE 13 NORTE #227.','COL. EJIDO CHAPULTEPEC',22800,'01 (646) 1201821','refcor@hotmail.com',2,55,NULL,NULL,NULL,NULL),
	(87,'SERVI HOGAR','SAM1801','MARIANO ALISTA -COL. CENTRO','COL. CENTRO',28000,'01 (312) 3134249','gamezant@prodigy.net.mx; gamezant3@prodigy.net.mx',2,56,NULL,NULL,NULL,NULL),
	(88,'MULTISERVICIOS','SAM1301','CALLE PARQUE #324','FRACC. SAN MARCOS',20070,'01 (449) 9180241','mzdjose@hotmail.com',2,57,NULL,NULL,NULL,NULL),
	(89,'PRECISION ELECTRONICA','SAM1901','GARCIA OBESO 568','COL. CENTRO',58000,'01 (44) 32330182','precision_electronica@hotmail.com',2,58,NULL,NULL,NULL,NULL),
	(90,'REGIO REFRIGERACIÓN','SAM1902','Jalisco No. 17','Col. Ramón Farías',NULL,'01 (452) 5246247','eqclimas@yahoo.com.mx',2,59,NULL,NULL,NULL,NULL),
	(91,'REUNZA','SAM1903','Reforma No. 89','Col. Ramirez',NULL,'01 (351) 517 741 36  ','reunzajavierv@hotmail.com',2,60,NULL,NULL,NULL,NULL),
	(92,'SANCHEZ ELECTRODOMESTICOS','SAM1904','MERCADO HIDALGO BODEGA 1','COL. CENTRO',NULL,'01 (753) 5373705','ofi_porteo@hotmail.com',2,61,NULL,NULL,NULL,NULL),
	(93,'GRUPO COROSA DE PUEBLA','SAM2501',' Privada 5 de Mayo A PTE 4604','Col. Morelos',72000,'01 (222) 6174792','aireacondicionadocorosa@hotmail.com',2,62,NULL,NULL,NULL,NULL),
	(94,'AIR SOLUTIONS','SAM3001','Calle 56 No.314','Col. Morelos',24120,'01 (938) 1120578','gbarreras@airsolutions.com.mx',2,63,NULL,NULL,NULL,NULL),
	(95,'CRISSA','SAM3002','AV LOPEZ MATEOS No 41','COL. SAN JOSE',24040,'01 (981) 8114087','crissa.ventas.campeche@hotmail.es',2,8,NULL,NULL,NULL,NULL),
	(96,'SERVICIOS ELECTRODOMESTICOS','SAM2701','GUADALUPE VICTORIA # 603 ','SECTOR EJIDO GUADALUPE VICTORIA',68026,'01 (951) 5136715','servi_electro@hotmail.com',2,64,NULL,NULL,NULL,NULL),
	(97,'LG PACHUCA','SAM1701','NO ME OLVIDES 106','FRANCISCO I MADERO',42070,'01 (771) 7137631','fcamposmo@yahoo.com.mx',2,65,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
