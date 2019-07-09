-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-07-2019 a las 20:46:39
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdrestaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentos`
--

DROP TABLE IF EXISTS `alimentos`;
CREATE TABLE IF NOT EXISTS `alimentos` (
  `codigo_al` varchar(20) NOT NULL DEFAULT '',
  `tipo_al` varchar(50) DEFAULT NULL,
  `nombre_al` varchar(50) DEFAULT NULL,
  `precio_al` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo_al`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alimentos`
--

INSERT INTO `alimentos` (`codigo_al`, `tipo_al`, `nombre_al`, `precio_al`) VALUES
('AL0001', 'CALDOS', 'PATASCA', '39.00'),
('AL0002', 'BEBIDAS', 'GASEOSA', '5.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_venta`
--

DROP TABLE IF EXISTS `registro_venta`;
CREATE TABLE IF NOT EXISTS `registro_venta` (
  `numero` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,2) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro_venta`
--

INSERT INTO `registro_venta` (`numero`, `total`, `fecha`) VALUES
('00000001', '49.00', '08/07/2019'),
('00000002', '39.00', '08/07/2019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `codigo_us` varchar(20) NOT NULL DEFAULT '',
  `nombre_us` varchar(50) DEFAULT NULL,
  `sexo_us` varchar(10) DEFAULT NULL,
  `tipo_us` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_us`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codigo_us`, `nombre_us`, `sexo_us`, `tipo_us`, `pass`) VALUES
('US0001', 'JIMMY', 'MASCULINO', 'ADMINISTRADOR', '123'),
('US0002', 'ANDRE', 'MASCULINO', 'NORMAL', '123'),
('US0003', 'WALTER', 'MASCULINO', 'ADMINISTRADOR', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
