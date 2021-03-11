-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2021 a las 18:27:27
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hitopreguntas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `idPregunta` int(11) NOT NULL,
  `pregunta` varchar(555) NOT NULL,
  `opcion1` varchar(555) NOT NULL,
  `opcion2` varchar(555) NOT NULL,
  `opcion3` varchar(555) NOT NULL,
  `solucion` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idPregunta`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `solucion`) VALUES
(1, 'Siempre aparece una leyenda junto al grafico?', 'A. Siempre, incluso si hay una unica serie.', 'B. Siempre que haya mas de una serie.', 'C. Solo si asi se establece.', 'B'),
(2, 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'A. Solo si esta desactivada la casilla Mostrar claves de leyenda.', 'B. Solo si esta activada la casilla Mostrar claves de leyenda.', 'C. Los otros supuestos son erroneos.', 'A'),
(3, 'Siempre aparece una leyenda junto al grafico?', 'A. Siempre, incluso si hay una unica serie.', 'B. Siempre que haya mas de una serie.', 'C. Solo si asi se establece.', 'B'),
(4, 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'A. Solo si esta desactivada la casilla Mostrar claves de leyenda.', 'B. Solo si esta activada la casilla Mostrar claves de leyenda.', 'C. Los otros supuestos son erroneos.', 'A'),
(5, 'Siempre aparece una leyenda junto al grafico?', 'A. Siempre, incluso si hay una unica serie.', 'B. Siempre que haya mas de una serie.', 'C. Solo si asi se establece.', 'B'),
(6, 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'A. Solo si esta desactivada la casilla Mostrar claves de leyenda.', 'B. Solo si esta activada la casilla Mostrar claves de leyenda.', 'C. Los otros supuestos son erroneos.', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `idRespuesta` int(11) NOT NULL,
  `idAlumno` int(11) NOT NULL,
  `pregunta1` varchar(555) NOT NULL,
  `respuesta1` varchar(555) NOT NULL,
  `pregunta2` varchar(555) NOT NULL,
  `respuesta2` varchar(555) NOT NULL,
  `pregunta3` varchar(555) NOT NULL,
  `respuesta3` varchar(555) NOT NULL,
  `pregunta4` varchar(555) NOT NULL,
  `respuesta4` varchar(555) NOT NULL,
  `pregunta5` varchar(555) NOT NULL,
  `respuesta5` varchar(555) NOT NULL,
  `fecha` varchar(555) NOT NULL,
  `hora` varchar(255) NOT NULL,
  `tiempo` varchar(555) NOT NULL,
  `nota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`idRespuesta`, `idAlumno`, `pregunta1`, `respuesta1`, `pregunta2`, `respuesta2`, `pregunta3`, `respuesta3`, `pregunta4`, `respuesta4`, `pregunta5`, `respuesta5`, `fecha`, `hora`, `tiempo`, `nota`) VALUES
(7, 1, 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'B. Solo si esta activada la casilla Mostrar claves de leyenda.', 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'B. Solo si esta activada la casilla Mostrar claves de leyenda.', 'Â¿Siempre aparece una leyenda junto al grafico?', 'B. Solo si esta activada la casilla Mostrar claves de leyenda.', 'Â¿Siempre aparece una leyenda junto al grafico?', 'B. Solo si esta activada la casilla Mostrar claves de leyenda.', 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'B. Solo si esta activada la casilla Mostrar claves de leyenda.', '2021/02/24', '20:14:36', '125 secs', '-1.2000000000000004'),
(8, 4, 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'B. Siempre que haya mas de una serie.', 'Â¿Siempre aparece una leyenda junto al grafico?', 'B. Siempre que haya mas de una serie.', 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'B. Siempre que haya mas de una serie.', 'Â¿Siempre aparece una leyenda junto al grafico?', 'B. Siempre que haya mas de una serie.', 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'B. Siempre que haya mas de una serie.', '2021/02/24', '20:32:11', '125 secs', '10.0'),
(9, 5, 'Siempre aparece una leyenda junto al grafico?', 'A. Solo si esta desactivada la casilla Mostrar claves de leyenda.', 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'A. Solo si esta desactivada la casilla Mostrar claves de leyenda.', 'Siempre aparece una leyenda junto al grafico?', 'A. Solo si esta desactivada la casilla Mostrar claves de leyenda.', 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'A. Solo si esta desactivada la casilla Mostrar claves de leyenda.', 'Si se activa la opcion Mostrar tabla de datos, Â¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?', 'A. Solo si esta desactivada la casilla Mostrar claves de leyenda.', '2021/03/11', '18:14:22', '2 : 19', '7.2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `rango` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido`, `rango`) VALUES
(1, 'Paco', 'asdasd', 'Alumno'),
(2, 'Pepe', 'asdasd', 'Administrador'),
(3, 'Juan', 'asdasd', 'Profesor'),
(4, 'Pako', 'asdasd', 'Alumno'),
(5, 'Jose', 'perez', 'Alumno');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`idPregunta`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`idRespuesta`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `idPregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `idRespuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
