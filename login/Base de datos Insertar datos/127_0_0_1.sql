-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-02-2024 a las 04:47:17
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--
-- Creación: 16-02-2024 a las 20:13:53
-- Última actualización: 17-02-2024 a las 03:42:29
--

CREATE TABLE `datos` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombres` text NOT NULL,
  `Apellidos` text NOT NULL,
  `Sede` text NOT NULL,
  `Rol` text NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`ID_Usuario`, `Nombres`, `Apellidos`, `Sede`, `Rol`, `Email`, `Password`) VALUES
(4, 'Juan', 'Brito', 'Ambato', 'Estudiante', 'joel_parra@hotmail.es', '$2y$10$rJJiKyaaoVOm.WFbZC.fVecpkzWnpv9zn3LWUpkm7xNGGA4hrrfCW'),
(5, 'Andrea', 'freire', 'Quito', 'Estudiante', 'AdrianaRacher@gmail.com', '$2y$10$ZvAohYPz/N3Dm6sb7qciG.abJFclVEkDnVVpzVrpoOMw/tR780ht2'),
(6, 'Juan', 'Brito', 'Quito', 'Estudiante', 'AdrianaRacher@gmail.com', '$2y$10$KDzR3ZMOBv9WUv4HLlVpR.6KFzP798ZpYyTtMzAzdDCeALs/EaK7W'),
(7, 'Alejandra', 'Figueroa', 'Quito', 'Estudiante', 'AndreaRachel123@gmail.com', '$2y$10$Uc6HrM63ATswglg88p.6uO5jSYIdPd/tlkuU.6DsGdNtvPTi559uW'),
(8, 'Francisco', 'Lopez', 'Quito', 'Estudiante', 'francis@gmail.com', 'miguelsi'),
(9, 'Babo', 'Fernandez', 'Quito', 'Docente', 'AndreaRachel123@gmail.com', 'sdfsdf'),
(10, 'Babo', 'Fernandez', 'Quito', 'Docente', 'AndreaRachel123@gmail.com', 'sdfsdf'),
(11, 'Denisse', 'Ledesma', 'Latacunga', 'Estudiante', 'AndreaRachel123@gmail.com', '123'),
(13, 'chino', 'Fernandez', 'Quito', 'Docente', 'Franchesco123@gmail.com', 'asas'),
(14, 'Fausto', 'Alvarez', 'Puyo', 'Docente', 'elbabo@gmail.com', 'carteldesanta123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Creación: 16-02-2024 a las 15:34:06
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `contraseña` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `usuario`, `contraseña`) VALUES
(1, 'Franco', 'sdsd'),
(2, 'Mikaela03', '123'),
(3, 'Francisco09', 'Lucho123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
