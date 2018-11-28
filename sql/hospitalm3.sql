-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2018 a las 03:25:49
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hospitalm3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblatenciones`
--

CREATE TABLE `tblatenciones` (
  `id` int(11) NOT NULL,
  `atencion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblatenciones`
--

INSERT INTO `tblatenciones` (`id`, `atencion`) VALUES
(1, 'Urgencias'),
(2, 'Prioritario'),
(3, 'General'),
(4, 'Especialista'),
(5, 'Revision'),
(6, 'Cirujano'),
(7, 'Infantil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcitas`
--

CREATE TABLE `tblcitas` (
  `id` int(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `cedula` int(50) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellidos` varchar(250) NOT NULL,
  `medico` varchar(250) NOT NULL,
  `fecha` datetime NOT NULL,
  `consultorio` varchar(250) NOT NULL,
  `estado` enum('Asignado','atendido') NOT NULL,
  `observaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblcitas`
--

INSERT INTO `tblcitas` (`id`, `foto`, `cedula`, `nombre`, `apellidos`, `medico`, `fecha`, `consultorio`, `estado`, `observaciones`) VALUES
(1, '09fbd-p1.jpg', 11313131, 'aaaaa', 'knsalkjsfdlkdsf', '', '0000-00-00 00:00:00', '1', 'Asignado', ''),
(2, '92e39-about-me.jpg', 11313131, 'aaaaa', 'knsalkjsfdlkdsf', '', '2018-11-08 00:00:00', '3', 'atendido', '<p>\n	vjkjhkkh</p>\n'),
(3, '4bc3a-c5.jpg', 1037626124, 'Anderson', 'Barrientos', '2', '2018-11-30 03:10:00', '1', 'Asignado', '<p>\n	1</p>\n'),
(4, '26670-author.png', 11313131, 'aaaaa', 'knsalkjsfdlkdsf', '2', '2018-11-30 03:10:00', '1', 'Asignado', '<p>\n	1</p>\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblciudad`
--

CREATE TABLE `tblciudad` (
  `id` int(11) NOT NULL,
  `ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblciudad`
--

INSERT INTO `tblciudad` (`id`, `ciudad`) VALUES
(1, 'Medellin'),
(2, 'Bogota '),
(3, 'cucuta'),
(4, 'Monteria'),
(5, 'Santa Marta'),
(6, 'Sincelejo'),
(7, 'Popayan'),
(8, 'Manizales'),
(9, 'Pasto'),
(10, 'Buenaventura'),
(11, 'Cali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblconsultorio`
--

CREATE TABLE `tblconsultorio` (
  `id` int(50) NOT NULL,
  `consultorio` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblconsultorio`
--

INSERT INTO `tblconsultorio` (`id`, `consultorio`) VALUES
(1, 'Bello'),
(2, 'Poblado'),
(3, 'Itagui');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldepartamento`
--

CREATE TABLE `tbldepartamento` (
  `id` int(11) NOT NULL,
  `departamento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbldepartamento`
--

INSERT INTO `tbldepartamento` (`id`, `departamento`) VALUES
(1, 'Antioquia'),
(2, 'Amazonas'),
(3, 'Risaralda'),
(4, 'Choco'),
(5, 'Magdalena'),
(6, 'Cesar'),
(7, 'Cauca'),
(8, 'Caldas'),
(9, 'Nariño'),
(10, 'Boyaca'),
(11, 'cundinamarca'),
(12, 'Guajira'),
(13, 'Casanare'),
(14, 'Guainía'),
(15, 'Vaupés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `id` int(11) NOT NULL,
  `cedula` int(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` int(12) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbldoctor`
--

INSERT INTO `tbldoctor` (`id`, `cedula`, `nombre`, `apellido`, `telefono`, `foto`) VALUES
(1, 798996512, 'Leo', 'Taliban', 884545555, '59528-7605e-d363c-d5afe-d4.jpg'),
(2, 5946166, 'Dairon', 'wordpress', 1515161, ''),
(3, 1316113131, 'Camilo ', 'Gamer', 49641662, '6f48b-d1.jpg'),
(4, 464616, 'Aleja', 'Comelona', 6165161, '0e89f-59528-7605e-d363c-d5afe-d4.jpg'),
(5, 11313131, '1', '2', 585255, '98de3-d363c-d5afe-d4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbleps`
--

CREATE TABLE `tbleps` (
  `id` int(11) NOT NULL,
  `eps` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbleps`
--

INSERT INTO `tbleps` (`id`, `eps`) VALUES
(1, 'Sura'),
(2, 'Coomeva EPS'),
(3, 'SaludVida EPS'),
(4, 'Cafesalud'),
(5, 'ASME salud'),
(6, 'Colsanitas'),
(7, 'Cruz Blanca'),
(8, 'Aliansalud'),
(10, 'Comparta'),
(11, 'Coosalud'),
(12, 'Savia Salud'),
(13, 'Nueva eps'),
(14, 'Salud Total EPS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblestado`
--

CREATE TABLE `tblestado` (
  `id` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblestado`
--

INSERT INTO `tblestado` (`id`, `estado`) VALUES
(1, 'Soltero/a'),
(2, 'Casado/a'),
(3, 'Unión Libre'),
(4, 'Viudo/a'),
(5, 'Divorciado/a'),
(6, 'Poligamia'),
(7, 'Es complicado'),
(8, 'N/A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblestado_civil`
--

CREATE TABLE `tblestado_civil` (
  `id` int(11) NOT NULL,
  `estado_civil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblestado_civil`
--

INSERT INTO `tblestado_civil` (`id`, `estado_civil`) VALUES
(1, 'soltero'),
(2, 'casado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmedicamentos`
--

CREATE TABLE `tblmedicamentos` (
  `id` int(11) NOT NULL,
  `medicamento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblmedicamentos`
--

INSERT INTO `tblmedicamentos` (`id`, `medicamento`) VALUES
(1, 'Acetaminofen'),
(2, 'Aspirina'),
(3, 'Ibuprofeno'),
(4, 'Penicilina'),
(5, 'Ampicilina '),
(6, 'Cefalexina '),
(7, 'Sulfadiacina '),
(8, 'Ranitidina ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblordenes`
--

CREATE TABLE `tblordenes` (
  `id` int(11) NOT NULL,
  `paciente` int(2) NOT NULL,
  `medico` int(2) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `medicamento1` int(2) NOT NULL,
  `cantidad1` int(3) NOT NULL,
  `medicamento2` int(2) NOT NULL,
  `cantidad2` int(3) NOT NULL,
  `medicamento3` int(2) NOT NULL,
  `cantidad3` int(3) NOT NULL,
  `observaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpacientes`
--

CREATE TABLE `tblpacientes` (
  `id` int(11) NOT NULL,
  `cedula` int(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `eps` varchar(50) NOT NULL,
  `enfermedad` varchar(50) NOT NULL,
  `rh` varchar(50) NOT NULL,
  `notas` text NOT NULL,
  `observaciones` text NOT NULL,
  `medicamento` varchar(50) NOT NULL,
  `estado_civil` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblpacientes`
--

INSERT INTO `tblpacientes` (`id`, `cedula`, `nombre`, `apellidos`, `telefono`, `foto`, `pais`, `departamento`, `ciudad`, `eps`, `enfermedad`, `rh`, `notas`, `observaciones`, `medicamento`, `estado_civil`, `fecha_nacimiento`) VALUES
(1, 97879849, 'Tal', ' ivan', '79878488', 'dc59e-7605e-d363c-d5afe-d4.jpg', '4', '6', '5', '3', '1', '1', '', '', '1', '', '0000-00-00'),
(2, 4794456, 'John', 'VTrident', '4878489', 'ab23f-69b99-d3.jpg', '1', '2', '3', '5', '3', '7', 'Le pegaron herpes dìas antes', 'Tiene Sida', '2', '', '0000-00-00'),
(4, 996566, 'anderson1', 'barrientos', '98755', 'abd0a-d363c-d5afe-d4.jpg', '3', '2', '8', '6', '2', '2', '2', '1', '4', '', '0000-00-00'),
(5, 2147483647, 'aaaaa', 'knsalkjsfdlkdsf', '77855522', '55fd3-0e89f-59528-7605e-d363c-d5afe-d4.jpg', 'colombia', 'antioquia', 'medellin', 'sura', 'cancer', 'a+', '<p>\n	2</p>\n', '<p>\n	1</p>\n', 'aspirina', '', '0000-00-00'),
(6, 1131313122, 'a1', 'a2', '361266', '1895b-d3.jpg', '', '2', '2', '8', '3', '3', '2', '1', '5', '', '0000-00-00'),
(7, 1131318, 'nnnn', 'knsalkjsfdlkdsf', '5555899', 'f0d16-6f48b-d1.jpg', '', '2', '2', '8', '2', '4', '11111', '111', '1', '2', '2018-11-29'),
(8, 79965689, 'aaaaa', 'a2', '4646161', '', '', '1', '1', '4', '1', '4', 'dsffrrere', '12wefr', '1', '2', '2018-11-08'),
(9, 265656, 'tal', 'iban', '77855522', '9a115-09fbd-p1.jpg', '', '1', '1', '8', '1', '4', '146+464564f6f6g6hyfdde', '13213\r\nbn', '1', '2', '2018-11-17'),
(10, 11313131, 'aaaaa', 'a2', '77855522', '0ff1e-feedback-bg.jpg', '1', '1', '11', '4', '3', '8', '<p>\n	adfcgvbnm,l.;l</p>\n', '<p>\n	fcghjkl;&#39;</p>\n', '5', '1', '2018-11-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpais`
--

CREATE TABLE `tblpais` (
  `id` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblpais`
--

INSERT INTO `tblpais` (`id`, `pais`) VALUES
(1, 'Colombia'),
(2, 'Argelia'),
(3, 'Argentina'),
(4, 'Azerbaiyán'),
(5, 'Andorra'),
(6, 'Bélgica'),
(7, 'Birmania'),
(8, 'Camboya'),
(9, 'China'),
(10, 'Estados Unidos'),
(11, 'Venezuela'),
(12, 'Ecuador'),
(13, 'Chile'),
(14, 'Costa Rica'),
(15, 'Puerto Rico'),
(16, 'Peru'),
(17, 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblperfil`
--

CREATE TABLE `tblperfil` (
  `id` int(11) NOT NULL,
  `perfil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblperfil`
--

INSERT INTO `tblperfil` (`id`, `perfil`) VALUES
(1, 'Administrador'),
(2, 'Paciente'),
(3, 'Medico'),
(4, 'Secretaria'),
(5, 'Asistente'),
(6, 'Gerente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblreserva`
--

CREATE TABLE `tblreserva` (
  `id` int(11) NOT NULL,
  `atencion` int(2) NOT NULL,
  `paciente` int(2) NOT NULL,
  `fecha` datetime NOT NULL,
  `medico` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblreserva`
--

INSERT INTO `tblreserva` (`id`, `atencion`, `paciente`, `fecha`, `medico`) VALUES
(1, 1, 1, '2018-11-13 00:00:00', 1),
(3, 1, 1, '2018-11-06 00:00:00', 1),
(6, 1, 3, '2018-11-06 00:00:00', 1),
(9, 1, 5, '2018-11-06 00:00:00', 1),
(10, 2, 1, '2018-11-01 00:00:00', 1),
(11, 1, 2, '2018-11-01 00:00:00', 1),
(13, 2, 2, '2018-11-02 00:00:00', 1),
(15, 3, 1, '2018-11-22 00:00:00', 1),
(16, 3, 1, '2018-11-12 00:00:00', 1),
(20, 4, 1, '2018-11-24 00:00:00', 1),
(26, 4, 1, '2018-11-27 00:00:00', 1),
(31, 3, 2, '2018-11-15 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblrh`
--

CREATE TABLE `tblrh` (
  `id` int(11) NOT NULL,
  `rh` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblrh`
--

INSERT INTO `tblrh` (`id`, `rh`) VALUES
(1, 'O-'),
(2, 'O+'),
(3, 'A-'),
(4, 'A+'),
(5, 'B-'),
(6, 'B+'),
(7, 'AB-'),
(8, 'AB+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltipoenfermedad`
--

CREATE TABLE `tbltipoenfermedad` (
  `id` int(11) NOT NULL,
  `enfermedad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbltipoenfermedad`
--

INSERT INTO `tbltipoenfermedad` (`id`, `enfermedad`) VALUES
(1, 'Asma'),
(2, 'Alzheimer'),
(3, 'Cancer'),
(4, 'Cistitis'),
(5, 'Diabetes'),
(6, 'Disfuncion erectil'),
(7, 'Dolor de cabeza'),
(8, 'Dolor de espalda'),
(9, 'Parkinson'),
(10, 'EPOC'),
(11, 'Gripe'),
(12, 'Hernia'),
(13, 'Herpes'),
(14, 'Hipertension'),
(15, 'Hipertiroidismo'),
(16, 'Ictus'),
(17, 'Infarto'),
(18, 'Migraña'),
(19, 'Obesidad'),
(20, 'Osteoporosis'),
(21, 'Dermatitis'),
(22, 'Resfriado'),
(23, 'Sindrome del instestino irritable'),
(24, 'VPH'),
(25, 'VIH'),
(26, 'SIDA'),
(27, 'Hepatitis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `pkid` int(9) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `perfil` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblusuarios`
--

INSERT INTO `tblusuarios` (`pkid`, `usuario`, `clave`, `telefono`, `foto`, `perfil`) VALUES
(4, 'andersonb9@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '2118551', '78238-d3.jpg', 1),
(5, 'jbarrientos@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '77855522', '682db-bed34-b4783-d1.jpg', 0),
(6, 'andersonb99@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '77855522', '86f85-69b99-d3.jpg', 0),
(7, 'jb@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '8552558555', '5995a-69b99-d3.jpg', 0),
(8, 'poi@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '77855522', 'df7cf-d363c-d5afe-d4.jpg', 1),
(9, 'yonathan@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '3585522', 'c556c-1895b-d3.jpg', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblatenciones`
--
ALTER TABLE `tblatenciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblcitas`
--
ALTER TABLE `tblcitas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fecha` (`fecha`,`nombre`,`apellidos`,`medico`) USING BTREE;

--
-- Indices de la tabla `tblciudad`
--
ALTER TABLE `tblciudad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblconsultorio`
--
ALTER TABLE `tblconsultorio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbldepartamento`
--
ALTER TABLE `tbldepartamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indices de la tabla `tbleps`
--
ALTER TABLE `tbleps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblestado`
--
ALTER TABLE `tblestado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblestado_civil`
--
ALTER TABLE `tblestado_civil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblmedicamentos`
--
ALTER TABLE `tblmedicamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblordenes`
--
ALTER TABLE `tblordenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblpacientes`
--
ALTER TABLE `tblpacientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indices de la tabla `tblpais`
--
ALTER TABLE `tblpais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblperfil`
--
ALTER TABLE `tblperfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblreserva`
--
ALTER TABLE `tblreserva`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `validar` (`fecha`,`paciente`);

--
-- Indices de la tabla `tblrh`
--
ALTER TABLE `tblrh`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbltipoenfermedad`
--
ALTER TABLE `tbltipoenfermedad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`pkid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblatenciones`
--
ALTER TABLE `tblatenciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tblcitas`
--
ALTER TABLE `tblcitas`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tblciudad`
--
ALTER TABLE `tblciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tblconsultorio`
--
ALTER TABLE `tblconsultorio`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbldepartamento`
--
ALTER TABLE `tbldepartamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbleps`
--
ALTER TABLE `tbleps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tblestado`
--
ALTER TABLE `tblestado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tblestado_civil`
--
ALTER TABLE `tblestado_civil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblmedicamentos`
--
ALTER TABLE `tblmedicamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tblordenes`
--
ALTER TABLE `tblordenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblpacientes`
--
ALTER TABLE `tblpacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tblpais`
--
ALTER TABLE `tblpais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tblperfil`
--
ALTER TABLE `tblperfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tblreserva`
--
ALTER TABLE `tblreserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `tblrh`
--
ALTER TABLE `tblrh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbltipoenfermedad`
--
ALTER TABLE `tbltipoenfermedad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `pkid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
