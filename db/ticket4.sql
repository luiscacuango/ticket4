-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2015 a las 18:09:43
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ticket4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
`ID_DPTO` int(11) NOT NULL,
  `NOMB_DPTO` varchar(100) NOT NULL,
  `SIGL_DPTO` varchar(10) DEFAULT NULL,
  `ESTA_DPTO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`ID_DPTO`, `NOMB_DPTO`, `SIGL_DPTO`, `ESTA_DPTO`) VALUES
(1, 'Ventas', 'Ven', 'A'),
(2, 'Marketing', 'Mar', 'A'),
(3, 'Gerencia', 'Gen', 'A'),
(4, 'Atención al Cliente', 'AaC', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
`ID_EMPL` int(11) NOT NULL,
  `CODIGO` int(11) DEFAULT NULL,
  `ID_TIPOEMPL` int(11) NOT NULL,
  `CEDU_EMPL` varchar(15) NOT NULL,
  `NOMB_EMPL` varchar(100) NOT NULL,
  `APEL_EMPL` varchar(100) NOT NULL,
  `TELE_EMPL` varchar(10) DEFAULT NULL,
  `DIRE_EMPL` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`ID_EMPL`, `CODIGO`, `ID_TIPOEMPL`, `CEDU_EMPL`, `NOMB_EMPL`, `APEL_EMPL`, `TELE_EMPL`, `DIRE_EMPL`) VALUES
(1, 1, 1, '1002871091', 'Luis', 'Cacuango', '0996756323', 'Carcelén'),
(2, 1, 2, '1234567890', 'Jefe', 'es jefe', '0999999999', 'Ni aquí ni allá'),
(3, 2, 1, '2222222222', 'Otra', 'técnico', '0988888888', 'La Mascota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE IF NOT EXISTS `genero` (
`CODIGO` int(11) NOT NULL,
  `DETALLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`CODIGO`, `DETALLE`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prioridad`
--

CREATE TABLE IF NOT EXISTS `prioridad` (
`ID_PRIORIDAD` int(11) NOT NULL,
  `DETALLE_PRIORIDAD` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prioridad`
--

INSERT INTO `prioridad` (`ID_PRIORIDAD`, `DETALLE_PRIORIDAD`) VALUES
(1, 'Baja'),
(2, 'Normal'),
(3, 'Alta'),
(4, 'Urgente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
`ID_TICKET` int(11) NOT NULL,
  `ID_EMPL` int(11) DEFAULT NULL,
  `ID_PRIORIDAD` int(11) DEFAULT NULL,
  `ID_DPTO` int(11) DEFAULT NULL,
  `EMP_ID_EMPL` int(11) DEFAULT NULL,
  `FECHSOLI_TICKET` datetime NOT NULL,
  `ESTADO_SOLI_TICKET` varchar(20) DEFAULT NULL,
  `FECINI_TICKET` datetime DEFAULT NULL,
  `FECFIN_TICKET` datetime DEFAULT NULL,
  `DETALLE_TICKET` varchar(254) DEFAULT NULL,
  `OBSER_TICKET` varchar(100) DEFAULT NULL,
  `ESTADO_TICKET` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`ID_TICKET`, `ID_EMPL`, `ID_PRIORIDAD`, `ID_DPTO`, `EMP_ID_EMPL`, `FECHSOLI_TICKET`, `ESTADO_SOLI_TICKET`, `FECINI_TICKET`, `FECFIN_TICKET`, `DETALLE_TICKET`, `OBSER_TICKET`, `ESTADO_TICKET`) VALUES
(2, 1, 1, NULL, 3, '2015-08-05 16:45:45', 'Asignado', '2015-08-06 05:00:00', NULL, '12222222222222', '', 'En curso'),
(3, 1, 2, 1, 1, '2015-08-05 18:29:51', 'Asignado', '2015-08-07 09:00:00', '2015-08-08 05:23:29', 'Instalar Office', 'PC con windows10 se cambio a Windows8.1', 'Finzalizado'),
(4, 1, 1, 1, NULL, '2015-08-05 18:33:00', 'Asignado', '2015-08-18 09:14:22', '2015-08-19 19:00:00', '', 'El cliente hizo un reclamo de dinero', 'Finzalizado'),
(5, 2, 4, 3, NULL, '2015-08-05 18:51:03', 'Solicitado', NULL, NULL, 'Reparar CR-ROM', '', 'Pendiente'),
(6, 1, 2, 4, NULL, '2015-08-05 19:11:17', 'Asignado', NULL, NULL, 'Instalar antivirus', '', 'Finzalizado'),
(7, 3, 3, 1, 1, '2015-08-06 09:08:04', 'Asignado', '2015-08-07 07:30:00', NULL, 'oiuytrew', '', 'En curso'),
(8, 1, 1, 4, 3, '2015-08-10 10:53:34', 'Solicitado', '2015-08-11 08:00:00', '2015-08-12 07:00:00', 'INSTALAR OFFICE', 'Favor atender luego de requerimiento de hoy(terminado)', 'Finalizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleado`
--

CREATE TABLE IF NOT EXISTS `tipo_empleado` (
`ID_TIPOEMPL` int(11) NOT NULL,
  `DESCRI_TIPOEMPL` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_empleado`
--

INSERT INTO `tipo_empleado` (`ID_TIPOEMPL`, `DESCRI_TIPOEMPL`) VALUES
(1, 'Técnico'),
(2, 'Jefe de TICs'),
(3, 'Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`ID_USUARIO` int(11) NOT NULL,
  `LOGIN_USUARIO` varchar(20) NOT NULL,
  `PASSWORD_USUARIO` varchar(20) NOT NULL,
  `ESTADO_USUARIO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `LOGIN_USUARIO`, `PASSWORD_USUARIO`, `ESTADO_USUARIO`) VALUES
(1, 'luigi', 'luigi', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
 ADD PRIMARY KEY (`ID_DPTO`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
 ADD PRIMARY KEY (`ID_EMPL`), ADD KEY `FK_GEN_EMP` (`CODIGO`), ADD KEY `FK_TIPOEMPL_EMPL` (`ID_TIPOEMPL`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
 ADD PRIMARY KEY (`CODIGO`);

--
-- Indices de la tabla `prioridad`
--
ALTER TABLE `prioridad`
 ADD PRIMARY KEY (`ID_PRIORIDAD`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
 ADD PRIMARY KEY (`ID_TICKET`), ADD KEY `FK_DPTO_TICK` (`ID_DPTO`), ADD KEY `FK_EMPL_APRUEBA` (`ID_EMPL`), ADD KEY `FK_EMPL_SOLICITA` (`EMP_ID_EMPL`), ADD KEY `FK_PRIO_TICK` (`ID_PRIORIDAD`);

--
-- Indices de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
 ADD PRIMARY KEY (`ID_TIPOEMPL`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`ID_USUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
MODIFY `ID_DPTO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
MODIFY `ID_EMPL` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
MODIFY `CODIGO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `prioridad`
--
ALTER TABLE `prioridad`
MODIFY `ID_PRIORIDAD` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
MODIFY `ID_TICKET` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
MODIFY `ID_TIPOEMPL` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
ADD CONSTRAINT `FK_GEN_EMP` FOREIGN KEY (`CODIGO`) REFERENCES `genero` (`CODIGO`),
ADD CONSTRAINT `FK_TIPOEMPL_EMPL` FOREIGN KEY (`ID_TIPOEMPL`) REFERENCES `tipo_empleado` (`ID_TIPOEMPL`);

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
ADD CONSTRAINT `FK_DPTO_TICK` FOREIGN KEY (`ID_DPTO`) REFERENCES `departamento` (`ID_DPTO`),
ADD CONSTRAINT `FK_EMPL_APRUEBA` FOREIGN KEY (`ID_EMPL`) REFERENCES `empleado` (`ID_EMPL`),
ADD CONSTRAINT `FK_EMPL_SOLICITA` FOREIGN KEY (`EMP_ID_EMPL`) REFERENCES `empleado` (`ID_EMPL`),
ADD CONSTRAINT `FK_PRIO_TICK` FOREIGN KEY (`ID_PRIORIDAD`) REFERENCES `prioridad` (`ID_PRIORIDAD`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
