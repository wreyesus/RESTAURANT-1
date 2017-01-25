-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.19-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para restaurant
CREATE DATABASE IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `restaurant`;

-- Volcando estructura para tabla restaurant.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecategoria` varchar(150) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.categorias: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`idcategoria`, `nombrecategoria`) VALUES
	(8, 'POSTRES '),
	(9, 'VERDULERIAS  '),
	(13, 'CARNE'),
	(14, 'POLLO'),
	(15, 'PESCADO'),
	(17, 'BEBIDAS '),
	(18, 'PANIFICACIÓN'),
	(19, 'SERVICIO DE MESA'),
	(20, 'PIZZERIA');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.detalles
CREATE TABLE IF NOT EXISTS `detalles` (
  `iddetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL,
  PRIMARY KEY (`iddetalle`),
  KEY `FK__productos` (`idproducto`),
  KEY `FK_detalles_usuarios` (`idusuario`),
  CONSTRAINT `FK__productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalles_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.detalles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `detalles` DISABLE KEYS */;
INSERT INTO `detalles` (`iddetalle`, `idproducto`, `precio`, `fecha`, `idusuario`, `mesa`) VALUES
	(2, 11, 10, '23-01-2017', 1, 'MESA 1'),
	(3, 19, 117, '19-01-2017', 1, 'MESA 3');
/*!40000 ALTER TABLE `detalles` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.mesa1
CREATE TABLE IF NOT EXISTS `mesa1` (
  `idmesa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 1',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa1_productos` (`idproducto`),
  KEY `FK_mesa1_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa1_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa1_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla restaurant.mesa1: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa1` DISABLE KEYS */;
INSERT INTO `mesa1` (`idmesa`, `idproducto`, `precio`, `fecha`, `idusuario`, `mesa`) VALUES
	(4, 14, 43, '23-01-2017', 3, 'MESA 1'),
	(5, 18, 40, '24-01-2017', 3, 'MESA 1');
/*!40000 ALTER TABLE `mesa1` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.mesa10
CREATE TABLE IF NOT EXISTS `mesa10` (
  `idmesa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 10',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mase10_productos` (`idproducto`),
  KEY `FK_mesa10_usuarios` (`idusuario`),
  CONSTRAINT `FK_mase10_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa10_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.mesa10: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa10` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa10` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.mesa2
CREATE TABLE IF NOT EXISTS `mesa2` (
  `idmesa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 2',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa2_productos` (`idproducto`),
  KEY `FK_mesa2_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa2_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa2_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.mesa2: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa2` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa2` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.mesa3
CREATE TABLE IF NOT EXISTS `mesa3` (
  `idmesa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 3',
  PRIMARY KEY (`idmesa`),
  KEY `idproducto` (`idproducto`),
  KEY `FK_mesa3_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa3_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa3_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.mesa3: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa3` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa3` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.mesa4
CREATE TABLE IF NOT EXISTS `mesa4` (
  `idmesa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 4',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa4_productos` (`idproducto`),
  CONSTRAINT `FK_mesa4_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.mesa4: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa4` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa4` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.mesa5
CREATE TABLE IF NOT EXISTS `mesa5` (
  `idmesa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 5',
  PRIMARY KEY (`idmesa`),
  KEY `idproducto` (`idproducto`),
  KEY `FK_mesa5_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa5_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa5_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.mesa5: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa5` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa5` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.mesa6
CREATE TABLE IF NOT EXISTS `mesa6` (
  `idmesa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 6',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa6_productos` (`idproducto`),
  KEY `FK_mesa6_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa6_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa6_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.mesa6: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa6` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa6` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.mesa7
CREATE TABLE IF NOT EXISTS `mesa7` (
  `idmesa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 7',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa7_productos` (`idproducto`),
  KEY `FK_mesa7_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa7_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa7_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.mesa7: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa7` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa7` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.mesa8
CREATE TABLE IF NOT EXISTS `mesa8` (
  `idmesa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 8',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa8_productos` (`idproducto`),
  KEY `FK_mesa8_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa8_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa8_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.mesa8: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa8` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa8` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.mesa9
CREATE TABLE IF NOT EXISTS `mesa9` (
  `idmesa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 9',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa9_productos` (`idproducto`),
  KEY `FK_mesa9_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa9_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa9_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.mesa9: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa9` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa9` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombreproducto` text NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `precio` double NOT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `FK_productos_categorias` (`idcategoria`),
  KEY `FK_productos_usuarios` (`idusuario`),
  CONSTRAINT `FK_productos_categorias` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_productos_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.productos: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`idproducto`, `nombreproducto`, `idcategoria`, `precio`, `idusuario`) VALUES
	(11, 'AGUA C/GAS', 17, 10, 1),
	(12, 'COCA COLA 500CM', 17, 33, 1),
	(13, 'VINO LA CASONA MALBEC', 17, 128, 1),
	(14, 'ENSALADA C/ RÚCULA', 9, 43, 1),
	(15, 'ENSALADA MIXTA', 9, 29, 1),
	(16, 'SODA 500 CM', 17, 17, 1),
	(18, 'HELADOS 2 BOCHAS', 8, 40, 1),
	(19, 'MILANESA C/ FRITAS', 13, 117, 1),
	(20, 'VINO VALDEROBLE TINTO', 17, 100, 1),
	(21, 'FLAN', 8, 40, 1),
	(23, 'COLITA DE CUADRIL', 13, 130, 1),
	(24, '1 SERVICIO DE MESA ', 19, 20, 3),
	(25, '2 SERVICIO DE MESAS', 19, 40, 1),
	(26, '3  SERVICIO DE MESAS', 19, 60, 1),
	(27, '4  SERVICIO DE MESAS', 19, 80, 1),
	(28, '5 SERVICIO DE MESAS', 19, 100, 1),
	(29, '6 SERVICIO DE MESAS', 19, 120, 1),
	(30, '7 SERVICIO DE MESAS', 19, 140, 1),
	(31, '8 SERVICIO DE MESAS', 19, 160, 1),
	(32, '9 SERVICIO DE MESAS', 19, 180, 1),
	(33, '10 SERVICIO DE MESAS', 19, 200, 1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.proveedores
CREATE TABLE IF NOT EXISTS `proveedores` (
  `idproveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombreproveedor` varchar(150) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  PRIMARY KEY (`idproveedor`),
  KEY `idcategoria` (`idcategoria`),
  KEY `idproducto` (`idproducto`),
  CONSTRAINT `FK_proveedores_categorias` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_proveedores_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.proveedores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.reservas
CREATE TABLE IF NOT EXISTS `reservas` (
  `idreserva` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecliente` varchar(150) NOT NULL,
  `cantidadpersonas` varchar(150) NOT NULL,
  `telefono` varchar(150) NOT NULL,
  `diallegada` date NOT NULL,
  `horallegada` text NOT NULL,
  `observaciones` text NOT NULL,
  PRIMARY KEY (`idreserva`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.reservas: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` (`idreserva`, `nombrecliente`, `cantidadpersonas`, `telefono`, `diallegada`, `horallegada`, `observaciones`) VALUES
	(3, 'CARLOS ALVARES', '12', '12345678', '2017-01-24', '21:00', 'LIBRE MESA'),
	(12, 'BIANCA ANIDUZZI', '22', '4584463', '2017-01-25', '22:00', 'Sin Restricciones'),
	(16, 'DIEGO PENNISI', '13', '23455677', '2017-01-25', '20:45', 'VINO GRAN RESERVA\r\n'),
	(17, 'DIEGO PENNISI', '22', '3414584463', '2017-01-24', '21:30', 'SIN PAN'),
	(19, 'BIANCA ANIDUZZI', '14', '153693019', '2017-01-28', '22:00', 'MOZO JULIA\r\n');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;

-- Volcando estructura para tabla restaurant.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreusuario` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `fechacreado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restaurant.usuarios: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`idusuario`, `nombreusuario`, `password`, `fechacreado`) VALUES
	(1, 'administrador', '1234', '2016-12-21 21:59:29'),
	(2, 'TOMAS12', '1234', '2017-01-23 22:47:34'),
	(3, 'BIANCA', '1234BIANCA', '2017-01-23 22:53:00');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
