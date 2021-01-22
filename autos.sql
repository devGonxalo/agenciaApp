-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-04-2015 a las 01:27:35
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `agencia_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumautosnos`
--

CREATE TABLE IF NOT EXISTS `autos` (
`codigo` int(11) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `color` varchar(10) NOT NULL,
  `ano` varchar(10) NOT NULL,
  `precio` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=armscii8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `autos`
--

INSERT INTO `autos` (`codigo`, `marca`, `modelo`, `color`,`ano`, `precio` ) VALUES
(1, 'Fiat', 'Uno', 'Azul', '2005', '450000'),
(2, 'Ford', 'Focus', 'Negro', '2011', '500000'),
(3, 'VW', 'Polo', 'Blanco', '2018', '700000'),
(4, 'Chevrolet', 'Corsa', 'negro', '2006', '350000'),
(5, 'Peugeot', '206', 'Negro', '2005', '300000'),
(6, 'Citroen', 'C3', 'Gris', '2010', '250000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autos`
--
ALTER TABLE `autos`
 ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `autos`
MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
