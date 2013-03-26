-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Servidor: db436006304.db.1and1.com
-- Tiempo de generación: 26-03-2013 a las 15:26:28
-- Versión del servidor: 5.1.67
-- Versión de PHP: 5.3.3-7+squeeze15
-- 
-- Base de datos: `db436006304`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ciudades`
-- 

CREATE TABLE `ciudades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Volcar la base de datos para la tabla `ciudades`
-- 

INSERT INTO `ciudades` VALUES (1, 'Monterrey', 19);
INSERT INTO `ciudades` VALUES (2, 'Guadalajara', 14);
INSERT INTO `ciudades` VALUES (3, 'Culiacán', 25);
INSERT INTO `ciudades` VALUES (4, 'Hermosillo', 26);
INSERT INTO `ciudades` VALUES (5, 'Mérida', 31);
INSERT INTO `ciudades` VALUES (6, 'Cancún', 23);
INSERT INTO `ciudades` VALUES (7, 'Playa del Carmen', 23);
INSERT INTO `ciudades` VALUES (8, 'Campeche', 4);
INSERT INTO `ciudades` VALUES (9, 'Villahermosa', 27);
INSERT INTO `ciudades` VALUES (10, 'Veracruz', 30);
INSERT INTO `ciudades` VALUES (11, 'Coatzacoalcos', 30);
INSERT INTO `ciudades` VALUES (12, 'Minatitlan', 30);
INSERT INTO `ciudades` VALUES (13, 'Cuernavaca', 17);
INSERT INTO `ciudades` VALUES (14, 'Acapulco', 12);
INSERT INTO `ciudades` VALUES (15, 'Tuxtla Gutiérrez', 7);
INSERT INTO `ciudades` VALUES (16, 'Tapachula', 7);
INSERT INTO `ciudades` VALUES (17, 'Manzanillo', 6);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `estados`
-- 

CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

-- 
-- Volcar la base de datos para la tabla `estados`
-- 

INSERT INTO `estados` VALUES (1, 'Aguascalientes');
INSERT INTO `estados` VALUES (2, 'Baja California');
INSERT INTO `estados` VALUES (3, 'Baja California Sur');
INSERT INTO `estados` VALUES (4, 'Campeche');
INSERT INTO `estados` VALUES (5, 'Coahuila');
INSERT INTO `estados` VALUES (6, 'Colima');
INSERT INTO `estados` VALUES (7, 'Chiapas');
INSERT INTO `estados` VALUES (8, 'Chihuahua');
INSERT INTO `estados` VALUES (9, 'Distrito Federal');
INSERT INTO `estados` VALUES (10, 'Durango');
INSERT INTO `estados` VALUES (12, 'Guerrero');
INSERT INTO `estados` VALUES (13, 'Hidalgo');
INSERT INTO `estados` VALUES (14, 'Jalisco');
INSERT INTO `estados` VALUES (15, 'Estado de México');
INSERT INTO `estados` VALUES (16, 'Michoacan');
INSERT INTO `estados` VALUES (17, 'Morelos');
INSERT INTO `estados` VALUES (18, 'Nayarit');
INSERT INTO `estados` VALUES (19, 'Nuevo León');
INSERT INTO `estados` VALUES (20, 'Oaxaca');
INSERT INTO `estados` VALUES (21, 'Puebla');
INSERT INTO `estados` VALUES (22, 'Querétaro');
INSERT INTO `estados` VALUES (23, 'Quintana Roo');
INSERT INTO `estados` VALUES (24, 'San Luis Potosí');
INSERT INTO `estados` VALUES (25, 'Sinaloa');
INSERT INTO `estados` VALUES (26, 'Sonora');
INSERT INTO `estados` VALUES (27, 'Tabasco');
INSERT INTO `estados` VALUES (28, 'Tamaulipas');
INSERT INTO `estados` VALUES (29, 'Tlaxcala');
INSERT INTO `estados` VALUES (30, 'Veracruz');
INSERT INTO `estados` VALUES (31, 'Yucatán');
INSERT INTO `estados` VALUES (32, 'Zacatecas');
INSERT INTO `estados` VALUES (11, 'Guanajuato');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `partners`
-- 

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
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

-- 
-- Volcar la base de datos para la tabla `partners`
-- 

INSERT INTO `partners` VALUES (1, 'Air Depot', NULL, '83497530', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (2, 'Fujimura', NULL, '81906806', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (3, 'ClimaProyectos', NULL, '81251700', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (4, 'VentAir', NULL, '83721530', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (5, 'Cristal Water', NULL, '80442900', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (6, 'Retoccsa', NULL, '3336519276', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (7, 'Polar kit', NULL, '3336302008', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (8, 'ClimaProyectos', NULL, '01800 9000700', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (9, 'Celsius', NULL, '6677615000', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (10, 'ClimaProyectos', NULL, '01800 9000700', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (11, 'Midea Center', NULL, '6622161750', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (12, 'ClimaProyectos', NULL, '01800 9000700', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (13, 'Thermokold', NULL, '99-9911-1035', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (14, 'XAZE', NULL, '99-9928-0374', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (15, 'Telebodega', NULL, '99-8888-3400', '2', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (16, 'Telebodega', NULL, '99-8888-3400', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (17, 'Thermokold', NULL, '99-9911-1035', NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (18, 'Ayrisa', NULL, '99-3131-3824', NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (19, 'Multistar', NULL, '99-3316-0217', NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (20, 'Thermokold', NULL, '99-9911-1035', NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (21, 'Avante', NULL, '22-9931-7581', NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (22, 'Thermokold', NULL, '99-9911-1035', NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (23, 'Xaze', NULL, '99-9928-0374', NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (24, 'Pegaso', NULL, '92-1212-1409', NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (25, 'Pegaso', NULL, '92-1212-1409', NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (26, 'Resurtidora', NULL, '55-5578-9082', NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (27, 'Resurtidora', NULL, '55-5578-9082', NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (28, 'Soconusco', NULL, '96-1611-3905', NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (29, 'Tapachula', NULL, '96-1611-3905', NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (30, 'Sinsel', NULL, '31-2314-9015', NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 1);
INSERT INTO `partners` VALUES (31, 'Climas e instalaciones', NULL, '01 (81) 80405927', 'Rio Lerma 331 ', 'Mexico', 64000, 1, NULL, NULL, NULL, 'climaseinstalaciones@hotmail.com', 2);
