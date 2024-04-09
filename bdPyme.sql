-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2024 a las 20:54:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdPyme`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletin`
--

CREATE TABLE `boletin` (
  `id` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `boletin`
--

INSERT INTO `boletin` (`id`, `correo`) VALUES
(1, 'kevinsanmaga12@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegiados`
--

CREATE TABLE `colegiados` (
  `id` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `region` varchar(255) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `colegiatura` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `fechaIncorporacion` varchar(255) NOT NULL,
  `fechaExpiracion` varchar(255) NOT NULL,
  `fechaRegistro` varchar(255) NOT NULL,
  `horaRegistro` varchar(255) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `colegiado` varchar(50) NOT NULL,
  `habilitado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colegiados`
--

INSERT INTO `colegiados` (`id`, `correo`, `password`, `region`, `dni`, `nombres`, `apellidos`, `colegiatura`, `foto`, `fechaIncorporacion`, `fechaExpiracion`, `fechaRegistro`, `horaRegistro`, `celular`, `colegiado`, `habilitado`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directiva`
--

CREATE TABLE `directiva` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `grado` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `celular` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `directiva`
--

INSERT INTO `directiva` (`id`, `foto`, `nombres`, `cargo`, `grado`, `correo`, `celular`) VALUES
(1, '1.png', 'Manuel Manrique', 'Director del CLT', 'Mg.', 'manuelmanriquenu@gmail.com', '997099166');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `imagen`, `titulo`, `descripcion`, `fecha`, `hora`) VALUES
(1, '1.png', 'Destinos por Semana Santa', '¡Prepárate para explorar los fascinantes destinos turísticos que Lima tiene para ofrecer durante la Semana Santa! Desde su impresionante centro histórico hasta sus playas pintorescas y su exquisita gastronomía, la capital peruana te espera con los brazos abiertos para unas vacaciones inolvidables.\r\nDurante esta época del año, podrás maravillarte con la majestuosidad de la Catedral de Lima y el Convento de San Francisco, donde podrás sumergirte en la rica historia y arquitectura colonial de la ciudad. Además, no te pierdas la oportunidad de recorrer los coloridos barrios de Barranco y Miraflores, donde encontrarás una mezcla única de arte, cultura y entretenimiento.\r\nPara los amantes de la naturaleza, Lima ofrece una variedad de opciones, desde relajantes paseos por el malecón hasta emocionantes excursiones a las reservas naturales cercanas. Disfruta de un día de sol en las playas de la Costa Verde o explora los misteriosos paisajes del Parque Nacional Huascarán.\r\nY, por supuesto, no puedes visitar Lima sin probar su deliciosa gastronomía. Desde los famosos ceviches y anticuchos hasta los dulces tradicionales como los picarones, la capital peruana deleitará tus papilas gustativas con sus sabores únicos y exquisitos.\r\n¡Únete a nosotros este Semana Santa y descubre por qué Lima es uno de los destinos turísticos más emocionantes de Sudamérica!', '2024-03-29', '11:18:12'),
(2, '2.png', 'Embárcate en una Aventura Inolvidable en el Encantador Callao', 'El Callao, con su rica historia y su belleza natural, es un destino turístico imprescindible en Perú. Desde sus playas de arena blanca hasta sus fascinantes museos y su vibrante vida nocturna, el Callao tiene algo para todos los gustos.\r\nVisita el icónico Real Felipe, una impresionante fortaleza que data del siglo XVIII y ofrece vistas espectaculares del océano Pacífico. Descubre la rica historia marítima del país en el Museo Naval, donde encontrarás una impresionante colección de artefactos náuticos.\r\nNo te pierdas la deliciosa gastronomía del Callao, que ofrece una mezcla única de sabores peruanos y mariscos frescos. Prueba el ceviche tradicional en alguno de los restaurantes frente al mar o disfruta de un paseo por el Malecón del Callao mientras saboreas un delicioso anticucho.\r\nCon sus playas soleadas, su rica historia y su vibrante cultura, el Callao te espera con los brazos abiertos. ¡Ven y descubre todo lo que este increíble destino tiene para ofrecer!', '2024-03-31', '12:39:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id`, `region`) VALUES
(1, 'Amazonas'),
(2, 'Áncash'),
(3, 'Apurímac'),
(4, 'Arequipa'),
(5, 'Ayacucho'),
(6, 'Cajamarca'),
(7, 'Callao'),
(8, 'Cusco'),
(9, 'Huancavelica'),
(10, 'Huánuco'),
(11, 'Ica'),
(12, 'Junín'),
(13, 'La Libertad'),
(14, 'Lambayeque'),
(15, 'Lima'),
(16, 'Loreto'),
(17, 'Madre de Dios'),
(18, 'Moquegua'),
(19, 'Pasco'),
(20, 'Piura'),
(21, 'Puno'),
(22, 'San Martín'),
(23, 'Tacna'),
(24, 'Tumbes'),
(25, 'Ucayali');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boletin`
--
ALTER TABLE `boletin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colegiados`
--
ALTER TABLE `colegiados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `directiva`
--
ALTER TABLE `directiva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boletin`
--
ALTER TABLE `boletin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `colegiados`
--
ALTER TABLE `colegiados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `directiva`
--
ALTER TABLE `directiva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
