-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2020 a las 05:06:06
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `manitas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` int(8) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `id_seccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `nombre`, `apellido`, `telefono`, `direccion`, `id_grado`, `id_seccion`) VALUES
(12, 'Mario Roberto', 'Morales ZeledÃ³n', 47001207, 'Jardines de Tikal I, Zona 7, Guatemala', 1, 1),
(13, 'Juan Pablo ', 'ZacarÃ­as Paiz', 51487953, 'Mixco, Guatemala', 1, 2),
(16, 'Daniel', 'Raxjal', 34958795, 'La Comunidad Mixo, Guatemala', 1, 3),
(17, 'Carlos Eduardo', 'Lopez Perez', 31659182, 'Las Bugambilias Zona 16, Guatemala', 2, 2),
(18, 'Jose Javier', 'Morales Aceituno', 59864271, 'Lomas de San Jacinto, Mixco, Guatemala', 1, 1),
(19, 'Mynor', 'Escobar Paredes', 36958215, 'Linda Vista, Zona 7, Guatemala', 2, 1),
(20, 'Jorge Eduardo Miguel', 'Aguilar Oliva', 53878129, '7ma. Calle 23-21 Zona 15', 1, 3),
(21, 'Jose Miguel Angel', 'Agustin Alarcon', 38475524, '1ra. Calle 25-19 Zona 7', 2, 2),
(23, 'Ana Maribel', 'Ajcabul ', 42191186, '1ra. Calle 25-18 Zona 15', 1, 1),
(24, 'Katerin Johana', 'Albizures Keller', 32275953, '2da. Calle 23-20 Zona 8', 2, 2),
(26, 'Paulo Andre', 'Alvarado Lopez', 33618821, '3ra. Calle 24-23 Zona 10', 1, 3),
(27, 'Edgar Josue', 'Alvarado Recinos', 37917550, '3ra. Calle 25-22 Zona 21', 2, 3),
(29, 'Ana Lucia', 'Alvarez Salazar', 41738643, '2da. Calle 25-19 Zona 10', 1, 1),
(30, 'Andrea Jazzmeen', 'Amaya Escobar', 45756634, '3ra. Calle 25-19 Zona 12', 2, 2),
(32, 'Fernando Alberto', 'Ambrosio Aleman', 44952610, '7ma. Calle 25-15 Zona 12', 1, 2),
(33, 'Carmen Noemi', 'Aragon Ramirez', 57802671, '1ra. Calle 27-22 Zona 10', 2, 3),
(35, 'Diana Alejandra', 'Arreaza Gonzalez', 37014105, '3ra. Calle 12-48 Zona 9', 1, 3),
(36, 'Jennifer Gisela', 'Arriola Jimenez', 55064347, '1ra. Calle 23-20 Zona 13', 2, 3),
(38, 'Camila ', 'Arteaga Ordonyez', 53137529, '2da. Calle 23-21 Zona 11', 1, 1),
(39, 'Jasmin Vanesa', 'Avila Mendoza', 49598329, '3ra. Calle 24-22 Zona 12', 2, 2),
(41, 'Maria Alejandra', 'Barahona Aguilar', 35786739, '2da. Calle 24-21 Zona 14', 1, 3),
(42, 'Jonathan Christian Renato', 'Barillas Quinyonez', 34310695, '14 Avenia 12-45 Zona 3', 2, 2),
(44, 'Johana ', 'Barrios Collado', 42467545, '6ta. Calle 24-22 Zona 16', 1, 2),
(45, 'Andrea Elizabeth', 'Barrios Nova', 41946972, '2da. Calle 5-15 Zona 2', 2, 2),
(48, 'Zoila ', 'Belteton Morales', 35419663, '2da. Calle 27-22 Zona 19', 2, 1),
(50, 'Steven Daniel', 'Calderon Barillas', 57947711, '4ta. Avenida 25-20 Zona 13', 1, 1),
(51, 'Keilly Nhoeli Melissa', 'Calito Valladares', 58986192, '2da. Calle  Zona 12', 2, 2),
(53, 'Jean Willy', 'Campos Escobar', 56807629, '3ra. Calle 25-01 Zona 13', 1, 1),
(54, 'Sofia del Pilar', 'Cap Gonzalez', 55643699, '6ta. Calle 25-16 Zona 13', 2, 3),
(56, 'Carlos Guillermo', 'Cardona Ramos', 50299813, '2da. Calle 24-23 Zona 19', 1, 1),
(57, 'Carol Stephania', 'Carranza Garcia', 36410540, '8va. Avenida 15-32 Zona 19', 2, 1),
(59, 'Flor de Maria', 'Castro Popol', 59517738, '6ta. Avenida 27-23 Zona 17', 1, 3),
(60, 'Rogelio Ranfery', 'Chajon Canel', 49002268, '1ra. Calle 23-22 Zona 18', 2, 1),
(62, 'Brian Jossue', 'Chicas Samayoa', 51727312, '1ra. Calle 23-21 Zona 5', 1, 1),
(63, 'Jose Javier', 'Chinchilla Valdez', 35346973, '2da. Calle 11-16 Zona 5', 2, 2),
(65, 'Guillermina Josefina', 'Corado Barillas', 43827654, '3ra. Calle 12-48 Zona 5', 1, 2),
(66, 'Karla Yeraldine', 'Coronado Gomez', 58065471, '3ra. Calle 3-65 Zona 3', 2, 1),
(68, 'Juan Jose', 'Coyoy Yol', 41513661, '1ra. Calle 20-12 Zona 9', 1, 1),
(69, 'Hellen Rocio', 'Cruz Hernandez', 51855970, '2da. Calle 5-15 Zona 2', 2, 3),
(71, 'Madelin Alejandra', 'Cruz Mayen', 43660161, '2da. Calle 11-16 Zona 5', 1, 3),
(72, 'Victor Mauel', 'Cuca Hernandez', 56636818, '6ta. Calle 25-20 Zona 12', 2, 2),
(74, 'Banmer Mardoqueo', 'Cute Alvarez', 46256467, '6ta. Avenida 25-21 Zona 13', 1, 1),
(75, 'Delia ', 'Davila de Leon', 36581263, '6ta. Calle 24-22 Zona 16', 2, 2),
(77, 'Sara Eunice', 'de Leon Juarez', 58697670, '3ra. Calle 27-23 Zona 13', 1, 1),
(78, 'Bryan Alexander', 'de Leon Orozco', 32066768, '1ra. Calle 23-22 Zona 14', 2, 3),
(80, 'Jaqueline Andrea', 'de Leon Tuchez', 56414453, '3ra. Calle 25-20 Zona 7', 1, 2),
(81, 'Leonel Alfonso', 'De Paz Padilla', 44699963, '2da. Calle 17-36 Zona 14', 2, 3),
(83, 'Ada Ayaseni', 'Del Cid Sil', 58360538, '2da. Calle 24-23 Zona 15', 1, 3),
(84, 'Jeffry Omar Araon', 'Diaz Vasquez', 57776773, '1ra. Calle 01-01 Zona 7', 2, 2),
(86, 'Madeline Elizabeth', 'Donis Lemus', 35699456, '3ra. Calle 25-15 Zona 15', 1, 3),
(87, 'Monica Yulisa', 'Elias Lucas', 31239619, '2da. Calle 03-75 Zona 8', 2, 1),
(89, 'Samuel Obed', 'Escobar Mazariegos', 37473146, '1ra. Calle 23-21 Zona 14', 1, 1),
(90, 'Dionicio Bernardo', 'Evans ', 44522977, '3ra. Calle 25-20 Zona 7', 2, 2),
(92, 'Melvin Noe', 'Ferrer Morales', 58970394, '3ra. Calle 27-23 Zona 13', 1, 3),
(93, 'Maynor Abisai', 'Galindo Ortega', 59995150, '2da. Calle 17-36 Zona 14', 2, 1),
(95, 'Eduardo Josue', 'Garcia Diaz', 52228038, '2da. Calle 03-75 Zona 8', 1, 1),
(96, 'Daniela ', 'Ramirez Villafuerte', 47519802, 'La Gloria, Mi corazon', 1, 2),
(100, 'Jose Andres', 'Aceituno  Verganza', 35195824, '13 calle real, jutiapa', 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(10) NOT NULL,
  `curso` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `curso`) VALUES
(1, 'matematicas'),
(2, 'fisica'),
(3, 'quimica'),
(4, 'computacion'),
(5, 'programacion'),
(6, 'lenguaje'),
(7, 'ingles'),
(8, 'sociales'),
(9, 'ciencias naturales'),
(10, 'biologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `grado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `grado`) VALUES
(1, 'Primero Basico'),
(2, 'Segundo Basico'),
(3, 'Tercero Basico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id_maestro` int(11) NOT NULL,
  `maestro` varchar(50) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE `periodos` (
  `id_periodo` int(11) NOT NULL,
  `periodo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `periodos`
--

INSERT INTO `periodos` (`id_periodo`, `periodo`) VALUES
(1, 'I bimestre'),
(2, 'II bimestre'),
(3, 'III bimestre'),
(4, 'IV bimestre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id_reporte` int(11) NOT NULL,
  `id_maestro` int(11) DEFAULT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `id_seccion` int(11) DEFAULT NULL,
  `id_periodo` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_tarea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id_seccion` int(11) NOT NULL,
  `seccion` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id_seccion`, `seccion`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id_tarea` int(11) NOT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `tarea` varchar(50) DEFAULT NULL,
  `id_alumno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`),
  ADD KEY `seccion_fk` (`id_seccion`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id_maestro`),
  ADD KEY `curso_fk` (`id_curso`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id_periodo`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `id_maestro` (`id_maestro`),
  ADD KEY `id_alumno` (`id_alumno`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_seccion` (`id_seccion`),
  ADD KEY `id_unidad` (`id_periodo`),
  ADD KEY `id_curso` (`id_curso`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_tarea` (`id_tarea`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id_seccion`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id_tarea`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_curso` (`id_curso`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id_maestro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id_periodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id_seccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id_tarea` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`),
  ADD CONSTRAINT `seccion_fk` FOREIGN KEY (`id_seccion`) REFERENCES `secciones` (`id_seccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD CONSTRAINT `curso_fk` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD CONSTRAINT `reportes_ibfk_1` FOREIGN KEY (`id_maestro`) REFERENCES `maestros` (`id_maestro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_2` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_3` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_4` FOREIGN KEY (`id_seccion`) REFERENCES `secciones` (`id_seccion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_5` FOREIGN KEY (`id_periodo`) REFERENCES `periodos` (`id_periodo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_6` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_7` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_8` FOREIGN KEY (`id_tarea`) REFERENCES `tareas` (`id_tarea`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`),
  ADD CONSTRAINT `tareas_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tareas_ibfk_3` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
