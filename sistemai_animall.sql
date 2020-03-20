-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-03-2020 a las 13:08:29
-- Versión del servidor: 5.6.45
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemai_animall`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idarticulo` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idunidad_medida` int(11) NOT NULL,
  `nombre` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` mediumtext COLLATE utf8_spanish_ci,
  `imagen` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `instruccion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `numero` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `vrestringida` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `codigo_interno` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `minima` int(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `P_compra` decimal(18,2) NOT NULL,
  `P_venta` decimal(18,2) NOT NULL,
  `P_mayor` decimal(18,2) NOT NULL,
  `P_distribuidor` decimal(18,2) NOT NULL,
  `P_auspicio` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `idunidad_medida`, `nombre`, `descripcion`, `imagen`, `estado`, `instruccion`, `numero`, `vrestringida`, `codigo_interno`, `minima`, `cantidad`, `P_compra`, `P_venta`, `P_mayor`, `P_distribuidor`, `P_auspicio`) VALUES
(1, 7, 19, 'Acondicionador Farecs 1000ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 35.80, 70.00, 60.00, 0.00, 0.00),
(2, 7, 19, 'Acondicionador Farecs 300ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 11.00, 25.00, 20.00, 0.00, 0.00),
(3, 9, 11, 'Active Cat  alpine fresh 10kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 86.00, 110.00, 100.00, 0.00, 0.00),
(4, 8, 12, 'Adaptil Calm Collar Medianos y Grandes', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 120.00, 150.00, 140.00, 0.00, 0.00),
(5, 2, 12, 'Adaptil Calm Difusor', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 166.30, 220.00, 200.00, 0.00, 0.00),
(6, 2, 12, 'Adaptil Calm Refil 48ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 87.70, 160.00, 150.00, 0.00, 0.00),
(7, 8, 12, 'Adaptil Transport 60ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 118.60, 150.00, 140.00, 0.00, 0.00),
(8, 5, 49, 'Proplan Adulto Raza Mediana 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 381.60, 500.00, 480.00, 0.00, 0.00),
(9, 5, 49, 'Proplan Adulto Raza Mediana 22.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 557.70, 730.00, 700.00, 0.00, 0.00),
(10, 5, 49, 'Proplan Adulto Raza PequeÃ±a 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 115.80, 140.00, 135.00, 0.00, 0.00),
(11, 9, 2, 'Alta Gama Aroma Lavanda Piedra Sanitaria 3.6kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 21, 26.70, 42.00, 40.00, 0.00, 0.00),
(12, 9, 2, 'Alta Gama Aroma Lavanda Piedra Sanitaria 4kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 30.00, 45.00, 40.00, 0.00, 0.00),
(13, 9, 2, 'Alta Gama Aroma Limon Piedra Sanitaria 3.6kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 33.00, 42.00, 40.00, 0.00, 0.00),
(14, 9, 2, 'Alta Gama Aroma Limon Piedra Sanitaria 4kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 18, 31.70, 47.00, 45.00, 0.00, 0.00),
(15, 9, 2, 'Alta Gama Aroma Piedra Sanitaria 4kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 31.70, 40.00, 36.00, 0.00, 0.00),
(16, 9, 2, 'Alta Gama Sin Aroma Piedra Sanitaria 3.6kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 43, 26.70, 37.00, 35.00, 0.00, 0.00),
(17, 7, 8, 'Aqui NO', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 13, 26.00, 40.00, 35.00, 0.00, 0.00),
(18, 3, 8, 'Aqui NO 550ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 29.00, 50.00, 45.00, 0.00, 0.00),
(19, 11, 8, 'Aqui si', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 17.00, 30.00, 25.00, 0.00, 0.00),
(20, 1, 1, 'Arco Auto rascador y Masajeador', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 41.00, 70.00, 60.00, 0.00, 0.00),
(21, 9, 58, 'Arena Neon', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 45.80, 60.00, 55.00, 0.00, 0.00),
(22, 9, 1, 'Arenero Cerrado de Gatos', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 220.00, 280.00, 260.00, 0.00, 0.00),
(23, 8, 10, 'Artrin', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 2.30, 5.00, 4.50, 0.00, 0.00),
(24, 3, 1, 'Aspiradora de Pelos Shed Pal', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 45.00, 80.00, 70.00, 0.00, 0.00),
(25, 4, 52, 'Baby Cat 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 166.00, 215.00, 205.00, 0.00, 0.00),
(26, 9, 24, 'Bandeja Sanitaria Abierta Celeste  Mediana', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 36.60, 50.00, 45.00, 0.00, 0.00),
(27, 9, 24, 'Bandeja Sanitaria Abierta con protector Celeste  G', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 76.60, 100.00, 90.00, 0.00, 0.00),
(28, 9, 24, 'Bandeja Sanitaria Abierta con protector Celeste  M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 59.20, 75.00, 70.00, 0.00, 0.00),
(29, 9, 24, 'Bandeja Sanitaria Abierta con protector Negra  Gra', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 76.60, 100.00, 90.00, 0.00, 0.00),
(30, 9, 24, 'Bandeja Sanitaria Abierta con protector Negra  Med', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 59.20, 75.00, 70.00, 0.00, 0.00),
(31, 9, 24, 'Bandeja Sanitaria Abierta Negra  Mediana', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 36.60, 50.00, 45.00, 0.00, 0.00),
(32, 9, 22, 'Bandeja Sanitaria Cubierta  Rosa', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 201.84, 280.00, 240.00, 0.00, 0.00),
(33, 9, 22, 'Bandeja Sanitaria Cubierta Automatica Smartsift', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 513.00, 600.00, 570.00, 0.00, 0.00),
(34, 9, 22, 'Bandeja Sanitaria Cubierta Jumbo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 271.00, 350.00, 320.00, 0.00, 0.00),
(35, 9, 22, 'Bandeja Sanitaria Cubierta Magic Blue', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 230.00, 300.00, 280.00, 0.00, 0.00),
(36, 7, 46, 'Bano de Gato Procao 500ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 92.00, 40.00, 130.00, 0.00, 0.00),
(37, 7, 46, 'Bano en Seco Procao', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 27.00, 30.00, 35.00, 0.00, 0.00),
(38, 2, 1, 'Bazooka lanza Pelotas', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 23.00, 150.00, 26.00, 0.00, 0.00),
(39, 3, 1, 'Bebedero de Agua Automatico Delux', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 50.00, 70.00, 65.00, 0.00, 0.00),
(40, 3, 1, 'Bebedero de Agua Garrita', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 35.00, 55.00, 50.00, 0.00, 0.00),
(41, 3, 1, 'Bebedero de Agua Pequeno Azul 260ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 13.00, 25.00, 20.00, 0.00, 0.00),
(42, 2, 1, 'Bebedero de Agua Perros Ajustable de colores', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 30.00, 50.00, 40.00, 0.00, 0.00),
(43, 11, 1, 'Bebedero Hamster', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 15.00, 25.00, 20.00, 0.00, 0.00),
(44, 11, 1, 'Bebedero Hamster con Agarrador', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 20.00, 30.00, 25.00, 0.00, 0.00),
(45, 3, 1, 'Bebedero Portatil', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 14.00, 30.00, 25.00, 0.00, 0.00),
(46, 3, 1, 'Bebedero Portatil Dukes Rosa', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 15.00, 30.00, 25.00, 0.00, 0.00),
(47, 3, 1, 'Bebedero Portatil Pet Care Cup', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 25.00, 40.00, 35.00, 0.00, 0.00),
(48, 3, 1, 'Bebedero Portatil Super Design 580ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 38.00, 60.00, 55.00, 0.00, 0.00),
(49, 3, 5, 'Beeps Bano en Seco 200ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 57.00, 75.00, 70.00, 0.00, 0.00),
(50, 11, 19, 'Benzoamitricina', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 18.20, 40.00, 35.00, 0.00, 0.00),
(51, 9, 7, 'Best Clean  Arena Sanitaria 5L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 25.00, 36.00, 35.00, 0.00, 0.00),
(52, 9, 7, 'Best Clean Aroma Lavanda Arena Sanitaria 5L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 17, 25.00, 37.00, 35.00, 0.00, 0.00),
(53, 9, 7, 'Best Clean Aroma Limon Arena Sanitaria 5L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 25.00, 37.00, 35.00, 0.00, 0.00),
(54, 9, 7, 'Best Clean Aroma Manzana Arena Sanitaria 5L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 16, 25.00, 37.00, 35.00, 0.00, 0.00),
(55, 3, 1, 'Biberon para perros y gatos', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 7.90, 30.00, 25.00, 0.00, 0.00),
(56, 11, 58, 'Bolsa Popo Oxo-Biodegradale', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 41, 5.50, 7.20, 7.00, 0.00, 0.00),
(57, 3, 1, 'Bolson transportador  #1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 22.50, 30.00, 25.00, 0.00, 0.00),
(58, 3, 1, 'Bolson transportador  #2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 22.50, 40.00, 35.00, 0.00, 0.00),
(59, 3, 1, 'Bolson transportador  #3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 22.50, 50.00, 45.00, 0.00, 0.00),
(60, 3, 1, 'Bolson transportador  #4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 22.50, 60.00, 55.00, 0.00, 0.00),
(61, 2, 1, 'Bozal 001', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 9.30, 10.00, 8.00, 0.00, 0.00),
(62, 2, 1, 'Bozal 002', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 9.30, 15.00, 13.00, 0.00, 0.00),
(63, 5, 1, 'Bozal 003', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 9.30, 20.00, 18.00, 0.00, 0.00),
(64, 2, 1, 'Bozal 004', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 9.30, 25.00, 20.00, 0.00, 0.00),
(65, 2, 1, 'Bozal 005', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 9.30, 30.00, 25.00, 0.00, 0.00),
(66, 2, 1, 'Bozal 006', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 9.30, 35.00, 30.00, 0.00, 0.00),
(67, 2, 1, 'Bozal 007', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 9.30, 40.00, 35.00, 0.00, 0.00),
(68, 2, 1, 'Bozal de Cuero #1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 15.00, 30.00, 25.00, 0.00, 0.00),
(69, 2, 1, 'Bozal de Cuero #2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 20.00, 40.00, 35.00, 0.00, 0.00),
(70, 2, 1, 'Bozal de Cuero #3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 23.00, 50.00, 45.00, 0.00, 0.00),
(71, 8, 9, 'Broadline 2.5kg-7.4kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 70.00, 90.00, 80.00, 0.00, 0.00),
(72, 7, 19, 'Buen Aliento Fresa', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 16.20, 30.00, 25.00, 0.00, 0.00),
(73, 7, 19, 'Buen Aliento Menta', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 16.20, 30.00, 25.00, 0.00, 0.00),
(74, 5, 52, 'Bulldog Adulto 12kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 590.00, 700.00, 660.00, 0.00, 0.00),
(75, 5, 52, 'Bulldog Frances 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 247.00, 330.00, 310.00, 0.00, 0.00),
(76, 10, 49, 'Proplan Cachorro Raza Mediana 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 440.80, 580.00, 560.00, 0.00, 0.00),
(77, 5, 49, 'Proplan Cachorro Raza Mediana 22.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 640.90, 800.00, 770.00, 0.00, 0.00),
(78, 5, 49, 'Proplan Cachorro Raza Pequena 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 127.50, 160.00, 155.00, 0.00, 0.00),
(79, 10, 13, 'Calzon de Celo T2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 20.00, 40.00, 35.00, 0.00, 0.00),
(80, 3, 1, 'Cama Circular Lily Pets Grande', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 66.00, 120.00, 110.00, 0.00, 0.00),
(81, 3, 1, 'Cama Circular Lily Pets Mediana', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 66.00, 100.00, 90.00, 0.00, 0.00),
(82, 3, 1, 'Cama Circular Lily Pets Pequena', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 66.00, 80.00, 70.00, 0.00, 0.00),
(83, 3, 1, 'Cama Garrita L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 60.00, 80.00, 75.00, 0.00, 0.00),
(84, 3, 1, 'Cama Garrita M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 50.00, 70.00, 65.00, 0.00, 0.00),
(85, 3, 1, 'Cama Garrita S', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 40.00, 60.00, 55.00, 0.00, 0.00),
(86, 3, 1, 'Cama Garrita XL', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 70.00, 90.00, 85.00, 0.00, 0.00),
(87, 3, 37, 'Cama MIglo Grande', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 208.00, 270.00, 260.00, 0.00, 0.00),
(88, 3, 37, 'Cama MIglo Mediana', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 112.00, 150.00, 140.00, 0.00, 0.00),
(89, 3, 37, 'Cama MIglo Pequena', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 64.00, 90.00, 85.00, 0.00, 0.00),
(90, 9, 11, 'Canada Litter 12 kg Lavanda', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 110.00, 135.00, 130.00, 0.00, 0.00),
(91, 9, 11, 'Canada Litter 12 kg Talco de Bebe', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 110.00, 135.00, 130.00, 0.00, 0.00),
(92, 9, 11, 'Canada Litter 18kg Lavanda', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 22, 163.00, 200.00, 190.00, 0.00, 0.00),
(93, 9, 11, 'Canada Litter 18kg Talco de Bebe', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 163.00, 200.00, 190.00, 0.00, 0.00),
(94, 9, 11, 'Canada Litter 6kg Lavanda', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 63.00, 75.00, 73.00, 0.00, 0.00),
(95, 9, 11, 'Canada Litter 6kg Talco de Bebe', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 63.00, 75.00, 73.00, 0.00, 0.00),
(96, 5, 52, 'Caniche Adulto Poodle 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 275.00, 355.00, 340.00, 0.00, 0.00),
(97, 10, 13, 'Capa Gusano T3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 45.00, 65.00, 60.00, 0.00, 0.00),
(98, 10, 13, 'Capa Gusano T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 50.00, 70.00, 65.00, 0.00, 0.00),
(99, 10, 13, 'Capa impermeable', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 30.00, 50.00, 45.00, 0.00, 0.00),
(100, 10, 13, 'Capa T2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 25.00, 45.00, 40.00, 0.00, 0.00),
(101, 10, 13, 'Capa T3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 30.00, 50.00, 45.00, 0.00, 0.00),
(102, 10, 13, 'Capa T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 35.00, 55.00, 50.00, 0.00, 0.00),
(103, 10, 13, 'Capa T5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 40.00, 60.00, 55.00, 0.00, 0.00),
(104, 8, 52, 'Cardiac canine 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 220.00, 265.00, 650.00, 0.00, 0.00),
(105, 11, 58, 'Casa Grande RIMAX', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 450.00, 600.00, 530.00, 0.00, 0.00),
(106, 4, 49, 'Catchow humedo Adultos Carne 85g', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 30, 5.00, 7.00, 6.00, 0.00, 0.00),
(107, 4, 49, 'Catchow humedo Adultos Pescado 85g', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 28, 5.00, 7.00, 6.00, 0.00, 0.00),
(108, 4, 49, 'Catchow humedo Gatitos Pollo 85g', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 25, 5.00, 7.00, 6.00, 0.00, 0.00),
(109, 1, 22, 'Catnip Frasco 248gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 30.70, 50.00, 45.00, 0.00, 0.00),
(110, 1, 22, 'Catnip Roll On 50ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 34.80, 60.00, 50.00, 0.00, 0.00),
(111, 1, 22, 'Catnip Spray  90ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 40.60, 100.00, 90.00, 0.00, 0.00),
(112, 1, 22, 'Catnip Talquera 15gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 30.90, 50.00, 45.00, 0.00, 0.00),
(113, 3, 1, 'Cepillo Color Grande', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 9.00, 25.00, 20.00, 0.00, 0.00),
(114, 3, 1, 'Cepillo Color Pequeno', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 7.00, 20.00, 15.00, 0.00, 0.00),
(115, 2, 1, 'Cepillo Electrico Saca Nudo Knot Out', '', 'Files/Articulo/cepillo electrico saca nudo knot out.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 27.50, 60.00, 55.00, 0.00, 0.00),
(116, 3, 1, 'Cepillo Mantequilla Grande', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.00, 30.00, 25.00, 0.00, 0.00),
(117, 3, 1, 'Cepillo Mantequilla Mediano', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 10.00, 25.00, 20.00, 0.00, 0.00),
(118, 3, 1, 'Cepillo Mantequilla Pequeno', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 8.40, 20.00, 16.00, 0.00, 0.00),
(119, 10, 13, 'Chaleco Impermeable Ciudad Peludos T5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 50.00, 70.00, 65.00, 0.00, 0.00),
(120, 2, 1, 'Chaleco Impermeable Colores  T2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 12.00, 35.00, 30.00, 0.00, 0.00),
(121, 10, 1, 'Chaleco Impermeable Colores  T3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 15.00, 40.00, 35.00, 0.00, 0.00),
(122, 10, 1, 'Chaleco Impermeable Colores  T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 18.00, 45.00, 40.00, 0.00, 0.00),
(123, 10, 1, 'Chaleco Impermeable Colores  T5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 21.00, 50.00, 45.00, 0.00, 0.00),
(124, 10, 13, 'Chaleco T6', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 50.00, 70.00, 65.00, 0.00, 0.00),
(125, 10, 13, 'Chamarra T0', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 30.00, 50.00, 45.00, 0.00, 0.00),
(126, 3, 19, 'Champu Hipoalergenico  Farecs 500ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 30.00, 45.00, 40.00, 0.00, 0.00),
(127, 5, 52, 'Chihuahua Adulto 1kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 100.00, 120.00, 110.00, 0.00, 0.00),
(128, 5, 2, 'Chips de Pollo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 31.00, 45.00, 40.00, 0.00, 0.00),
(129, 10, 1, 'Chompa Hilo T2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 20.00, 40.00, 35.00, 0.00, 0.00),
(130, 10, 1, 'Chompa Hilo T3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 23.00, 45.00, 40.00, 0.00, 0.00),
(131, 10, 1, 'Chompa Hilo T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 26.00, 50.00, 45.00, 0.00, 0.00),
(132, 10, 1, 'Chompa Ploma T0', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 8.00, 20.00, 15.00, 0.00, 0.00),
(133, 10, 1, 'Chompa Ploma T1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 11.00, 25.00, 20.00, 0.00, 0.00),
(134, 10, 1, 'Chompa Ploma T2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 14.00, 30.00, 25.00, 0.00, 0.00),
(135, 2, 1, 'Chompa Ploma T3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 17.00, 35.00, 30.00, 0.00, 0.00),
(136, 10, 1, 'Chompa Ploma T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 20.00, 40.00, 35.00, 0.00, 0.00),
(137, 10, 1, 'Chompa Ploma T5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 23.00, 45.00, 40.00, 0.00, 0.00),
(138, 10, 1, 'Chompa Ploma T6', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 26.00, 50.00, 45.00, 0.00, 0.00),
(139, 10, 1, 'Chompa Ploma T7', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 29.00, 55.00, 50.00, 0.00, 0.00),
(140, 10, 13, 'Chompa T2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 30.00, 50.00, 45.00, 0.00, 0.00),
(141, 10, 13, 'Chompa T3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 35.00, 55.00, 50.00, 0.00, 0.00),
(142, 10, 13, 'Chompa T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 40.00, 60.00, 55.00, 0.00, 0.00),
(143, 10, 13, 'Chompa T5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 45.00, 65.00, 60.00, 0.00, 0.00),
(144, 10, 13, 'Chompa T6', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 50.00, 70.00, 65.00, 0.00, 0.00),
(145, 10, 13, 'Chompa T7', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 55.00, 75.00, 70.00, 0.00, 0.00),
(146, 10, 1, 'Chompa Vestido T0', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 5.00, 20.00, 15.00, 0.00, 0.00),
(147, 1, 1, 'Cilindro Pluma Pita', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.00, 20.00, 15.00, 0.00, 0.00),
(148, 3, 58, 'Cinturon de seguridad', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 0.00, 50.00, 45.00, 0.00, 0.00),
(149, 1, 1, 'Circulo Pluma Pita', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.00, 15.00, 10.00, 0.00, 0.00),
(150, 2, 1, 'Clicker con silbato', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 12.00, 30.00, 25.00, 0.00, 0.00),
(151, 5, 52, 'Club Performance Canino Adult', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 480.00, 530.00, 510.00, 0.00, 0.00),
(152, 5, 52, 'Club Performance Canino Jr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 532.00, 640.00, 600.00, 0.00, 0.00),
(153, 5, 52, 'Club Performance Feline Adult', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 290.00, 350.00, 330.00, 0.00, 0.00),
(154, 4, 52, 'Club Performance Feline Kitten 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 350.00, 420.00, 400.00, 0.00, 0.00),
(155, 3, 1, 'Cochon XS', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 29, 40.00, 70.00, 65.00, 0.00, 0.00),
(156, 3, 1, 'Colchon Garrita L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 65.00, 100.00, 90.00, 0.00, 0.00),
(157, 3, 1, 'Colchon Garrita M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 55.00, 80.00, 70.00, 0.00, 0.00),
(158, 3, 1, 'Colchon Garrita S', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 50.00, 70.00, 65.00, 0.00, 0.00),
(159, 2, 1, 'Colchon M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 60.00, 100.00, 90.00, 0.00, 0.00),
(160, 3, 1, 'Colchon Rectangular XM', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 40.00, 80.00, 70.00, 0.00, 0.00),
(161, 3, 1, 'Colchon S', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 40.00, 80.00, 65.00, 0.00, 0.00),
(162, 2, 1, 'Colchon XL', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 70.00, 140.00, 130.00, 0.00, 0.00),
(163, 2, 1, 'Collar ahorque Perros Grandes', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.00, 50.00, 45.00, 0.00, 0.00),
(164, 2, 1, 'Collar ahorque Perros Pequenos', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 5.90, 40.00, 35.00, 0.00, 0.00),
(165, 2, 1, 'Collar Animal Print', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 5.90, 20.00, 15.00, 0.00, 0.00),
(166, 2, 1, 'Collar Bandana #3', '', 'Files/Articulo/collar bandaana.jpg', 'A', '-', '0', 'Unidad', '-', 1, 11, 5.90, 20.00, 15.00, 0.00, 0.00),
(167, 2, 1, 'Collar Bandana #4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 11.70, 25.00, 20.00, 0.00, 0.00),
(168, 4, 1, 'Collar Cascabel Gato', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 3.80, 10.00, 7.00, 0.00, 0.00),
(169, 2, 1, 'Collar Cascabel Perro', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 3.80, 10.00, 7.00, 0.00, 0.00),
(170, 3, 1, 'Collar Cascabel Tela Gato', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 10, 4.17, 10.00, 80.00, 0.00, 0.00),
(171, 3, 1, 'Collar Corbata Cascabel', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 3.40, 10.00, 8.00, 0.00, 0.00),
(172, 2, 1, 'Collar Cuero Colores #1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 10, 3.80, 10.00, 8.00, 0.00, 0.00),
(173, 2, 1, 'Collar Cuero Colores #2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 8, 4.60, 20.00, 15.00, 0.00, 0.00),
(174, 11, 58, 'Collar Fluorescente L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 15.00, 40.00, 35.00, 0.00, 0.00),
(175, 3, 1, 'Collar Fluorescente M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 15.00, 35.00, 30.00, 0.00, 0.00),
(176, 3, 1, 'Collar Fluorescente S', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 15.00, 30.00, 25.00, 0.00, 0.00),
(177, 3, 6, 'Collar Inflable para gatos y perros L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 150.00, 200.00, 190.00, 0.00, 0.00),
(178, 3, 6, 'Collar Inflable para gatos y perros M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 160.00, 200.00, 190.00, 0.00, 0.00),
(179, 3, 1, 'Collar Isabelino 10', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 22.90, 35.00, 30.00, 0.00, 0.00),
(180, 3, 1, 'Collar Isabelino 12.5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 22.90, 40.00, 35.00, 0.00, 0.00),
(181, 3, 1, 'Collar Isabelino 15', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 22.90, 45.00, 40.00, 0.00, 0.00),
(182, 3, 1, 'Collar Isabelino 7.5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 22.90, 30.00, 25.00, 0.00, 0.00),
(183, 2, 1, 'collar isabelino con Scratch XL', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 9.30, 55.00, 50.00, 0.00, 0.00),
(184, 3, 1, 'Collar Isabelino conScratch L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 9.30, 50.00, 40.00, 0.00, 0.00),
(185, 2, 1, 'Collar Nylon Grande', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 10.00, 25.00, 20.00, 0.00, 0.00),
(186, 2, 1, 'Collar Nylon Mediano', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 10.00, 20.00, 15.00, 0.00, 0.00),
(187, 2, 1, 'Collar Nylon Pequeno', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 10.00, 15.00, 12.00, 0.00, 0.00),
(188, 2, 1, 'Comedero  Automatico Deluxe', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 50.00, 70.00, 65.00, 0.00, 0.00),
(189, 10, 13, 'Conjunto Cafe Chalina T7', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 50.00, 70.00, 65.00, 0.00, 0.00),
(190, 10, 13, 'Conjunto Cafe Polera  T6', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 65.00, 85.00, 80.00, 0.00, 0.00),
(191, 10, 13, 'Conjunto Vestido T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 50.00, 70.00, 65.00, 0.00, 0.00),
(192, 2, 1, 'Corbata Perro', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 4.60, 10.00, 8.00, 0.00, 0.00),
(193, 2, 1, 'Correa con  Pechera Huesitos #2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 9.20, 20.00, 16.00, 0.00, 0.00),
(194, 2, 1, 'Correa con  Pechera Huesitos #3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 9, 10.90, 25.00, 20.00, 0.00, 0.00),
(195, 2, 1, 'Correa con Pechera  Huesitos #1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 9.20, 15.00, 12.00, 0.00, 0.00),
(196, 2, 1, 'Correa con Resorte', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 20.83, 55.00, 50.00, 0.00, 0.00),
(197, 2, 1, 'Correa Elastica  1.2M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 9.20, 20.00, 15.00, 0.00, 0.00),
(198, 2, 1, 'Correa Elastica  1.5M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 11.70, 25.00, 20.00, 0.00, 0.00),
(199, 10, 13, 'Correa Murcielago', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 35.00, 55.00, 50.00, 0.00, 0.00),
(200, 3, 1, 'Correa Retractil 3m', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 16.70, 40.00, 35.00, 0.00, 0.00),
(201, 3, 1, 'Correa Retractil 5m', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 25.00, 50.00, 45.00, 0.00, 0.00),
(202, 3, 1, 'Corta nudo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 25.00, 35.00, 30.00, 0.00, 0.00),
(203, 3, 1, 'Corta Unas Con Lima Chong Le Er', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 10.00, 30.00, 25.00, 0.00, 0.00),
(204, 3, 25, 'Corta Unas Con Lima Guillotina', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 40.00, 55.00, 50.00, 0.00, 0.00),
(205, 3, 1, 'Corta Unas Con Lima Pequeno Chong Le Er', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 8.40, 20.00, 15.00, 0.00, 0.00),
(206, 3, 1, 'Corta Unas Negro', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 7.70, 20.00, 15.00, 0.00, 0.00),
(207, 3, 1, 'Corta Unas Negro Con Rojo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 7.70, 20.00, 15.00, 0.00, 0.00),
(208, 5, 14, 'Crazy Pet Jueguetes', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 24, 20.00, 40.00, 35.00, 0.00, 0.00),
(209, 2, 1, 'Cuerda', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 15.00, 30.00, 20.00, 0.00, 0.00),
(210, 7, 29, 'Desenredante Hydra', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 88.00, 150.00, 140.00, 0.00, 0.00),
(211, 7, 19, 'Desinfectante Mi Casa 500ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 21.60, 40.00, 35.00, 0.00, 0.00),
(212, 10, 1, 'Disfraz de Reno T1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 15.00, 30.00, 25.00, 0.00, 0.00),
(213, 10, 1, 'Disfraz de Reno T2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 18.00, 35.00, 30.00, 0.00, 0.00),
(214, 10, 1, 'Disfraz de Reno T3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 21.00, 40.00, 35.00, 0.00, 0.00),
(215, 10, 1, 'Disfraz de Reno T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 24.00, 45.00, 40.00, 0.00, 0.00),
(216, 10, 1, 'Disfraz de Reno T5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 27.00, 50.00, 45.00, 0.00, 0.00),
(217, 2, 1, 'Disfraz Reno T0', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 13.00, 25.00, 20.00, 0.00, 0.00),
(218, 5, 49, 'Dog Chow Humedo Cachorros', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 5.00, 7.00, 6.00, 0.00, 0.00),
(219, 5, 49, 'Dog Chow Humedo Cena de Carne', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 31, 527.00, 7.00, 6.00, 0.00, 0.00),
(220, 5, 49, 'Dog Chow Humedo Festival de Pollo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 33, 5.00, 7.00, 6.00, 0.00, 0.00),
(221, 5, 49, 'Dog Chow Humedo Razas pequenas Festival pollo y Pa', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 26, 5.00, 7.00, 6.00, 0.00, 0.00),
(222, 1, 1, 'Dosificadora Shaking Pet Gatos gota', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 8, 14.20, 30.00, 25.00, 0.00, 0.00),
(223, 2, 1, 'Dosificadora Shaking Pet Perros', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 11, 20.90, 40.00, 35.00, 0.00, 0.00),
(224, 8, 10, 'Dynamide', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 64, 2.80, 5.00, 4.50, 0.00, 0.00),
(225, 5, 20, 'Ecopet Jr 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 325.00, 360.00, 350.00, 0.00, 0.00),
(226, 5, 20, 'Ecopet Natural Carne Adult Formula 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 231.00, 280.00, 270.00, 0.00, 0.00),
(227, 5, 20, 'Ecopet Natural Frango Adult Formula 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 294.00, 325.00, 320.00, 0.00, 0.00),
(228, 5, 20, 'Ecopet Natural Frango e Carne Adult Formula 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 290.00, 350.00, 340.00, 0.00, 0.00),
(229, 5, 20, 'Ecopet Natural Frango Small Bites 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 244.00, 270.00, 260.00, 0.00, 0.00),
(230, 8, 28, 'Ecthol Collar Antipulgas Gatos 40cm', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 41.80, 55.00, 50.00, 0.00, 0.00),
(231, 8, 28, 'Ecthol Collar Antipulgas Perros Chicos 40cm', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 40.80, 55.00, 50.00, 0.00, 0.00),
(232, 8, 28, 'Ecthol Collar Antipulgas Perros Grandes 63cm', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 47.40, 65.00, 60.00, 0.00, 0.00),
(233, 7, 45, 'Enjuague Bucal Pet O dent Porta Menta', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 25.00, 40.00, 35.00, 0.00, 0.00),
(234, 8, 33, 'Enterosept 100ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 33.00, 50.00, 45.00, 0.00, 0.00),
(235, 11, 58, 'Envio', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 0.00, 10.00, 5.00, 0.00, 0.00),
(236, 11, 58, 'Envio Pedidos Ya', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 12.00, 12.00, 12.00, 0.00, 0.00),
(237, 3, 16, 'Enzilimp pet 500gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 15, 150.00, 250.00, 230.00, 0.00, 0.00),
(238, 5, 54, 'Equilibrio Adulto Razas Pequenas 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 69.67, 100.00, 90.00, 0.00, 0.00),
(239, 5, 54, 'Equilibrio Cachorros Razas Grandes 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 355.00, 450.00, 420.00, 0.00, 0.00),
(240, 5, 54, 'Equilibrio Cachorros Razas Medianas 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 61.50, 450.00, 70.00, 0.00, 0.00),
(241, 5, 54, 'Equilibrio Cachorros Razas Pequenas 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 355.00, 100.00, 320.00, 0.00, 0.00),
(242, 4, 54, 'Equilibrio Gatitos 1.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 72.00, 90.00, 90.00, 0.00, 0.00),
(243, 4, 54, 'Equilibrio Gatos Castrados 1.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 69.67, 100.00, 80.00, 0.00, 0.00),
(244, 4, 54, 'Equilibrio Gatos Light', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 78.83, 90.00, 90.00, 0.00, 0.00),
(245, 4, 54, 'Equilibrio Gatos Pelos Largos 1.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 68.50, 100.00, 80.00, 0.00, 0.00),
(246, 4, 54, 'Equilibrio Gatos Salmon 1.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 78.83, 80.00, 90.00, 0.00, 0.00),
(247, 4, 43, 'Esbilac Kit de Emregencia Gatitos', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 58.20, 75.00, 70.00, 0.00, 0.00),
(248, 5, 43, 'Esbilac Kit Emergencia Cachorros', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 58.20, 75.00, 70.00, 0.00, 0.00),
(249, 9, 17, 'Escat Arena Sanitaria 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 11, 17.00, 22.00, 20.00, 0.00, 0.00),
(250, 9, 17, 'Escat Arena Sanitaria 4.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 32.00, 45.00, 40.00, 0.00, 0.00),
(251, 9, 17, 'Escat Piedrita Sanitaria 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 10, 17.00, 22.00, 20.00, 0.00, 0.00),
(252, 9, 17, 'Escat Piedrita Sanitaria 4.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 77, 30.00, 45.00, 40.00, 0.00, 0.00),
(253, 7, 35, 'Espuma Bano en Seco', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 33.50, 50.00, 45.00, 0.00, 0.00),
(254, 7, 46, 'Espuma Magica Procao', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 23.00, 40.00, 35.00, 0.00, 0.00),
(255, 5, 18, 'Eukanuba Adulto Raza pequena 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 120.13, 155.00, 150.00, 0.00, 0.00),
(256, 5, 18, 'Eukanuba Raza Pequena Cachorro 1kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 63.70, 80.00, 75.00, 0.00, 0.00),
(257, 11, 18, 'Eukanuba Raza Pequena Cachorro 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 132.60, 170.00, 160.00, 0.00, 0.00),
(258, 8, 12, 'Feliway Classic 60ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 115.50, 150.00, 140.00, 0.00, 0.00),
(259, 1, 12, 'Feliway Friends Repuesto 48ml', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 121.00, 160.00, 150.00, 0.00, 0.00),
(260, 1, 12, 'Feliway Frinds Difusor', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 167.00, 220.00, 210.00, 0.00, 0.00),
(261, 4, 49, 'Felix Atun', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 4.40, 7.00, 6.00, 0.00, 0.00),
(262, 4, 49, 'Felix Gatitos Sensacion de Carne', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 15, 4.40, 7.00, 6.00, 0.00, 0.00),
(263, 4, 49, 'Felix Salmon', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 4.40, 7.00, 6.00, 0.00, 0.00),
(264, 7, 45, 'Feroway Porta', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 27.00, 50.00, 45.00, 0.00, 0.00),
(265, 8, 57, 'Fip Forte 24 - 40kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 28.00, 55.00, 50.00, 0.00, 0.00),
(266, 8, 57, 'Fip Forte 4 - 9kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 20.70, 45.00, 40.00, 0.00, 0.00),
(267, 8, 57, 'Fip Forte 9 - 24kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 22.50, 50.00, 45.00, 0.00, 0.00),
(268, 8, 57, 'Fip Forte hasta 4kg', '', 'Files/Articulo/fip forte hasta 4kg.png', 'A', '-', '0', 'Unidad', '-', 1, 5, 18.60, 40.00, 35.00, 0.00, 0.00),
(269, 4, 52, 'Fit 1.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 130.00, 160.00, 150.00, 0.00, 0.00),
(270, 4, 52, 'FIT 2KG', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 143.00, 180.00, 170.00, 0.00, 0.00),
(271, 4, 52, 'Fit 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 422.00, 520.00, 480.00, 0.00, 0.00),
(272, 2, 1, 'Frisbie Goma', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 15.20, 30.00, 25.00, 0.00, 0.00),
(273, 3, 1, 'Fuente Electrica', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 130.00, 200.00, 180.00, 0.00, 0.00),
(274, 5, 42, 'Galletas de Avena con Manzana', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 13.00, 20.00, 16.00, 0.00, 0.00),
(275, 5, 42, 'Galletas de Avena con Pera', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 13.00, 20.00, 16.00, 0.00, 0.00),
(276, 6, 42, 'Galletas de Avena con Platano', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 13.00, 20.00, 16.00, 0.00, 0.00),
(277, 3, 42, 'Galletas de Canela', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 13.00, 20.00, 16.00, 0.00, 0.00),
(278, 8, 52, 'Gastrointestinal Adulto 10kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 586.00, 740.00, 700.00, 0.00, 0.00),
(279, 5, 52, 'Gastrointestinal Adulto 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 147.00, 180.00, 170.00, 0.00, 0.00),
(280, 8, 52, 'Gastrointestinal Feline 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 158.00, 190.00, 180.00, 0.00, 0.00),
(281, 7, 28, 'Gel Antiplaca', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 9, 36.30, 60.00, 50.00, 0.00, 0.00),
(282, 5, 52, 'Giant Adult 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 600.00, 720.00, 700.00, 0.00, 0.00),
(283, 5, 52, 'Giant Jr 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 600.00, 720.00, 700.00, 0.00, 0.00),
(284, 11, 19, 'Golpe 50gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 13.80, 30.00, 25.00, 0.00, 0.00),
(285, 5, 42, 'Grisnes de Zanahoria', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 13.00, 20.00, 16.00, 0.00, 0.00),
(286, 3, 1, 'Guante Manguera P/Banar', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 38.00, 60.00, 50.00, 0.00, 0.00),
(287, 3, 1, 'Guante para Pelos Estilo True Touch', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 20, 12.00, 25.00, 15.00, 0.00, 0.00),
(288, 3, 1, 'Guante Para Pelos Huella', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 18.40, 35.00, 30.00, 0.00, 0.00),
(289, 3, 1, 'Guante para Pelos Plomo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 20.00, 40.00, 35.00, 0.00, 0.00),
(290, 3, 1, 'Guante para Pelos True Touch', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 10.00, 35.00, 30.00, 0.00, 0.00),
(291, 11, 44, 'Happy Cat', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 13.00, 25.00, 20.00, 0.00, 0.00),
(292, 11, 44, 'Happy Toy', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 10.00, 20.00, 16.00, 0.00, 0.00),
(293, 9, 27, 'Hello Kitty Azul Arena para gatos 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 32.02, 40.00, 35.00, 0.00, 0.00),
(294, 9, 27, 'Hello Kitty Rosa Arena Para Gatos 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 49.76, 60.00, 55.00, 0.00, 0.00),
(295, 5, 52, 'Hepatic Canino 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 8, 182.00, 225.00, 210.00, 0.00, 0.00),
(296, 5, 52, 'Hepatic Canino 420gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 20.00, 60.00, 50.00, 0.00, 0.00),
(297, 8, 52, 'Hepatic Felino 1.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 147.00, 180.00, 175.00, 0.00, 0.00),
(298, 7, 19, 'HidraFar', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 31.20, 50.00, 45.00, 0.00, 0.00),
(299, 5, 42, 'Higado de Res Deshidratado', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 13.00, 20.00, 16.00, 0.00, 0.00),
(300, 11, 19, 'Hita-Hormifar', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 8.40, 15.00, 12.00, 0.00, 0.00),
(301, 2, 25, 'Home Guard Cachorros 45x30cm', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 114, 2.60, 3.50, 3.00, 0.00, 0.00),
(302, 2, 25, 'Home Guard Grandes 71x86cm', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 7.05, 8.00, 7.50, 0.00, 0.00),
(303, 2, 25, 'Home Guard Mediano 56x56cm', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 10, 2.90, 4.00, 3.50, 0.00, 0.00),
(304, 2, 2, 'Hueso de Colageno 8 en 1 L 110gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 15.90, 25.00, 20.00, 0.00, 0.00),
(305, 2, 2, 'Hueso de Colageno 8 en 1 Mx2 150gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 16.80, 25.00, 20.00, 0.00, 0.00),
(306, 2, 38, 'Hueso de Colageno Mordelon Grande', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 30.00, 40.00, 35.00, 0.00, 0.00),
(307, 2, 38, 'Hueso de Colageno Mordelon Mediano', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 15.00, 25.00, 20.00, 0.00, 0.00),
(308, 2, 38, 'Hueso de Colageno Mordelon Mini', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 8.00, 15.00, 10.00, 0.00, 0.00),
(309, 2, 38, 'Hueso de Colageno Mordelon Pequeno', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 7.50, 15.00, 12.00, 0.00, 0.00),
(310, 2, 1, 'Hueso de Goma Colores Sonido', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 6.70, 30.00, 25.00, 0.00, 0.00),
(311, 2, 1, 'Hueso de Goma Plano Pequeno', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 10.00, 20.00, 15.00, 0.00, 0.00),
(312, 4, 52, 'Instinctive Jelly 0.85gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 51, 14.00, 17.00, 15.00, 0.00, 0.00),
(313, 11, 1, 'Jaula Hamster  Dayan L36cm W151cm H33cm', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 150.00, 200.00, 190.00, 0.00, 0.00),
(314, 11, 1, 'Jaula Hamster pequena Fantastic  L23cm   W23cm H24', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 75.00, 120.00, 110.00, 0.00, 0.00),
(315, 1, 1, 'Juguete Crazy Catman', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 14.20, 30.00, 25.00, 0.00, 0.00),
(316, 2, 1, 'Juguete Cuerda', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 12.50, 30.00, 25.00, 0.00, 0.00),
(317, 3, 1, 'Juguete Cuerda Animal', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 25.00, 50.00, 45.00, 0.00, 0.00),
(318, 2, 1, 'Juguete Cuerda Negro  Dog Chew Toy', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 25.00, 35.00, 30.00, 0.00, 0.00),
(319, 2, 1, 'Juguete Cuerda Negro Dog Chew Toy', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 20.00, 30.00, 25.00, 0.00, 0.00),
(320, 2, 1, 'Juguete Cuerda Pelota Tenis', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 12.50, 30.00, 25.00, 0.00, 0.00),
(321, 2, 1, 'Juguete nunbell', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 20.00, 40.00, 35.00, 0.00, 0.00),
(322, 2, 1, 'Juguete Strong Rojo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 28.00, 40.00, 35.00, 0.00, 0.00),
(323, 2, 1, 'Kit Aseo Dispensador de Bolsas Huesito', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 8, 10.00, 20.00, 15.00, 0.00, 0.00),
(324, 3, 1, 'Kit Cepillo de Dientes Htbrush', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 7.90, 20.00, 16.00, 0.00, 0.00),
(325, 4, 49, 'Proplan Kitten 1kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 7, 48.20, 60.00, 55.00, 0.00, 0.00),
(326, 4, 52, 'Kitten 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 105.00, 205.00, 200.00, 0.00, 0.00),
(327, 4, 52, 'Kitten 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 447.00, 540.00, 520.00, 0.00, 0.00),
(328, 4, 52, 'Kitten Jelly 0.85gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 14.00, 16.00, 15.00, 0.00, 0.00),
(329, 1, 32, 'Kong  Raton Catnip', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 28.90, 40.00, 35.00, 0.00, 0.00),
(330, 1, 32, 'Kong Active Pelota Dosificadora', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 29.70, 40.00, 35.00, 0.00, 0.00),
(331, 2, 32, 'Kong Classic L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 85.10, 110.00, 100.00, 0.00, 0.00),
(332, 2, 32, 'Kong Classic M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 73.00, 95.00, 90.00, 0.00, 0.00),
(333, 2, 32, 'Kong Classic S', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 52.10, 65.00, 60.00, 0.00, 0.00),
(334, 2, 32, 'Kong Classic XL', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 125.10, 160.00, 150.00, 0.00, 0.00),
(335, 2, 32, 'Kong Classic XS', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 47.85, 60.00, 55.00, 0.00, 0.00),
(336, 2, 32, 'Kong Classic XXL', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 160.10, 210.00, 200.00, 0.00, 0.00),
(337, 1, 32, 'Kong Connects  Pajarito Ventana', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 51.40, 65.00, 60.00, 0.00, 0.00),
(338, 1, 32, 'Kong Connects Bat N Spring 3 brazos Catnip', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 86.90, 110.00, 100.00, 0.00, 0.00),
(339, 2, 32, 'Kong Extreme Bone', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 110.00, 145.00, 135.00, 0.00, 0.00),
(340, 2, 32, 'kong Extreme L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 89.80, 115.00, 110.00, 0.00, 0.00),
(341, 2, 32, 'Kong Extreme M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 79.60, 105.00, 100.00, 0.00, 0.00),
(342, 2, 32, 'Kong Extreme Tire M-L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 100.80, 130.00, 120.00, 0.00, 0.00),
(343, 2, 32, 'Kong Extreme Tire S-XS', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 77.10, 100.00, 95.00, 0.00, 0.00),
(344, 2, 32, 'kong Extreme XL', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 134.50, 175.00, 165.00, 0.00, 0.00),
(345, 2, 32, 'kong Extreme XXL', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 168.70, 220.00, 210.00, 0.00, 0.00),
(346, 2, 32, 'Kong Flyer M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 80.60, 100.00, 95.00, 0.00, 0.00),
(347, 2, 32, 'Kong Hueso Rojo L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 104.30, 135.00, 125.00, 0.00, 0.00),
(348, 2, 32, 'kong Hueso Rojo M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 78.70, 100.00, 95.00, 0.00, 0.00),
(349, 1, 32, 'Kong Kickeroo Catnip Refill', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 35.00, 45.00, 40.00, 0.00, 0.00),
(350, 1, 32, 'Kong kitty', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 33.90, 45.00, 40.00, 0.00, 0.00),
(351, 1, 32, 'Kong Laser Rojo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 38.50, 50.00, 45.00, 0.00, 0.00),
(352, 2, 32, 'Kong Pelotas Squeakair L (2u)', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 43.10, 60.00, 55.00, 0.00, 0.00),
(353, 1, 32, 'Kong Puntero Laser', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 27.00, 35.00, 30.00, 0.00, 0.00),
(354, 2, 32, 'Kong Puppy L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 77.30, 100.00, 95.00, 0.00, 0.00),
(355, 2, 32, 'Kong Puppy M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 62.00, 80.00, 75.00, 0.00, 0.00),
(356, 2, 32, 'Kong Puppy S', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 46.00, 60.00, 55.00, 0.00, 0.00);
INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `idunidad_medida`, `nombre`, `descripcion`, `imagen`, `estado`, `instruccion`, `numero`, `vrestringida`, `codigo_interno`, `minima`, `cantidad`, `P_compra`, `P_venta`, `P_mayor`, `P_distribuidor`, `P_auspicio`) VALUES
(357, 2, 32, 'Kong Puppy Teething Stick L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 76.00, 100.00, 95.00, 0.00, 0.00),
(358, 2, 32, 'Kong Puppy Teething Stick M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 62.00, 80.00, 75.00, 0.00, 0.00),
(359, 2, 32, 'Kong Puppy Teething Stick S', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 41.10, 55.00, 50.00, 0.00, 0.00),
(360, 1, 32, 'Kong Rascador Doble', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 52.70, 80.00, 70.00, 0.00, 0.00),
(361, 1, 32, 'Kong Rascador Inclinado', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 9, 60.20, 100.00, 80.00, 0.00, 0.00),
(362, 1, 32, 'Kong Rascador Simple', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 35.00, 55.00, 50.00, 0.00, 0.00),
(363, 1, 32, 'Kong repuestos para rascador inclinado', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 32.20, 50.00, 45.00, 0.00, 0.00),
(364, 2, 32, 'Kong Ring L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 81.10, 100.00, 95.00, 0.00, 0.00),
(365, 2, 32, 'Kong Ring M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 52.10, 70.00, 65.00, 0.00, 0.00),
(366, 1, 32, 'Kong Tunel Rojo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 142.20, 185.00, 175.00, 0.00, 0.00),
(367, 1, 32, 'Kong Tunel Tronco', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 127.90, 165.00, 155.00, 0.00, 0.00),
(368, 1, 32, 'Kong Wubba Conejo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 43.70, 55.00, 50.00, 0.00, 0.00),
(369, 1, 32, 'Kong Wubba Pajaro', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 43.70, 55.00, 50.00, 0.00, 0.00),
(370, 1, 32, 'Kong Wubba Raton', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 43.70, 55.00, 50.00, 0.00, 0.00),
(371, 8, 33, 'Kualcoderm 20gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 32.00, 50.00, 45.00, 0.00, 0.00),
(372, 8, 33, 'Kualcohepat', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 170, 1.50, 3.00, 2.50, 0.00, 0.00),
(373, 8, 33, 'Kualcohepat 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 100, 2.75, 5.00, 4.50, 0.00, 0.00),
(374, 8, 33, 'Kualcoseptin', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 35.00, 50.00, 45.00, 0.00, 0.00),
(375, 11, 34, 'Labcon Alimento Extrusado para Roedores Hmaster 40', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 30.00, 55.00, 50.00, 0.00, 0.00),
(376, 5, 52, 'Labrador Jr 12kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 580.00, 730.00, 600.00, 0.00, 0.00),
(377, 2, 1, 'Lanzador de Croquetas', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 10, 15.00, 40.00, 35.00, 0.00, 0.00),
(378, 8, 10, 'Laxavet', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 35.00, 60.00, 55.00, 0.00, 0.00),
(379, 2, 1, 'Lentes para Perro', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 13.00, 30.00, 25.00, 0.00, 0.00),
(380, 7, 19, 'Limpia Lagrimas', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 16.80, 30.00, 25.00, 0.00, 0.00),
(381, 7, 19, 'Limpia Orejas', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 9, 18.60, 30.00, 25.00, 0.00, 0.00),
(382, 2, 1, 'Limpia Patas', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 49, 45.00, 65.00, 55.00, 0.00, 0.00),
(383, 3, 1, 'Limpia Patas Pequeno', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 28.00, 45.00, 40.00, 0.00, 0.00),
(384, 7, 19, 'Locion Baby Bear Farces', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 23.40, 35.00, 30.00, 0.00, 0.00),
(385, 7, 46, 'Locion Cachorros Procao', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 18.00, 25.00, 22.00, 0.00, 0.00),
(386, 7, 19, 'Locion Dakkar Farces', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 23.40, 35.00, 30.00, 0.00, 0.00),
(387, 7, 46, 'Locion Hembras Procao', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 18.00, 25.00, 22.00, 0.00, 0.00),
(388, 7, 46, 'Locion Machos Procao', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 18.00, 25.00, 22.00, 0.00, 0.00),
(389, 7, 19, 'Locion Tutti Fruty Farces', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 23.40, 35.00, 30.00, 0.00, 0.00),
(390, 11, 1, 'Maletin Huella #1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 95.00, 130.00, 120.00, 0.00, 0.00),
(391, 3, 1, 'Maletin Huella #2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 130.00, 160.00, 150.00, 0.00, 0.00),
(392, 3, 1, 'Maletin Huella transparente  #1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 95.00, 130.00, 120.00, 0.00, 0.00),
(393, 3, 1, 'Maletin Huella Transparente #2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 130.00, 160.00, 150.00, 0.00, 0.00),
(394, 10, 1, 'Mameluco T0', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 8.00, 20.00, 15.00, 0.00, 0.00),
(395, 2, 1, 'Mameluco T00', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 5.00, 15.00, 10.00, 0.00, 0.00),
(396, 10, 1, 'Mameluco T1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 11.00, 25.00, 20.00, 0.00, 0.00),
(397, 10, 1, 'Mameluco T2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 14.00, 30.00, 25.00, 0.00, 0.00),
(398, 10, 1, 'Mameluco T3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 17.00, 35.00, 30.00, 0.00, 0.00),
(399, 10, 1, 'Mameluco T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 20.00, 40.00, 35.00, 0.00, 0.00),
(400, 10, 1, 'Mameluco T5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 23.00, 45.00, 40.00, 0.00, 0.00),
(401, 10, 1, 'Mameluco T6', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 26.00, 50.00, 45.00, 0.00, 0.00),
(402, 10, 1, 'Mameluco T7', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 29.00, 55.00, 50.00, 0.00, 0.00),
(403, 10, 1, 'Mameluco T8', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 32.00, 60.00, 55.00, 0.00, 0.00),
(404, 3, 1, 'Maquina Cortar pelo HTC CT-399', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 150.00, 250.00, 220.00, 0.00, 0.00),
(405, 3, 1, 'Maquina Cortar Pelo inalambrica Zowael', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 90.00, 150.00, 140.00, 0.00, 0.00),
(406, 3, 1, 'Maquina Cortar Pelo Zoofari DC-38', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 100.00, 200.00, 170.00, 0.00, 0.00),
(407, 4, 20, 'Matisse Adulto Carne y Arroz 10.1kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 216.00, 260.00, 250.00, 0.00, 0.00),
(408, 4, 20, 'Matisse Adulto Carne y Arroz 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 63.00, 75.00, 70.00, 0.00, 0.00),
(409, 4, 20, 'Matisse Adulto Pollo y Arroz 2kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 58.00, 65.00, 60.00, 0.00, 0.00),
(410, 4, 20, 'Matisse Adulto Salmon y Arroz 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 167.00, 185.00, 180.00, 0.00, 0.00),
(411, 4, 20, 'Matisse Castrados Cordero 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 8, 189.00, 210.00, 200.00, 0.00, 0.00),
(412, 4, 20, 'Matisse Castrados Frango 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 171.00, 200.00, 185.00, 0.00, 0.00),
(413, 4, 20, 'Matisse Castrados Salmon 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 176.00, 200.00, 190.00, 0.00, 0.00),
(414, 4, 20, 'Matisse Filhotes 10.1Kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 215.00, 240.00, 235.00, 0.00, 0.00),
(415, 4, 54, 'Max Cat Castrados Pollo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 412.00, 500.00, 460.00, 0.00, 0.00),
(416, 5, 52, 'Maxi Adult 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 527.00, 630.00, 600.00, 0.00, 0.00),
(417, 5, 52, 'Maxi Adult 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 690.00, 830.00, 800.00, 0.00, 0.00),
(418, 5, 52, 'Maxi Dermaconfrot 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 652.00, 780.00, 740.00, 0.00, 0.00),
(419, 5, 52, 'Maxi Puppy 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 642.00, 780.00, 740.00, 0.00, 0.00),
(420, 5, 52, 'Maxi Puppy 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 757.00, 900.00, 860.00, 0.00, 0.00),
(421, 1, 1, 'Medalla en Forma de Gato', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 4.00, 10.00, 6.00, 0.00, 0.00),
(422, 3, 1, 'Medallas Para perro Y Gato', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 20, 3.00, 10.00, 7.00, 0.00, 0.00),
(423, 2, 1, 'Medias Perro', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 10.00, 20.00, 16.00, 0.00, 0.00),
(424, 5, 52, 'Medium Adult 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 581.00, 735.00, 680.00, 0.00, 0.00),
(425, 5, 52, 'Medium Adult 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 670.00, 800.00, 770.00, 0.00, 0.00),
(426, 5, 52, 'Medium Adult 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 160.00, 210.00, 200.00, 0.00, 0.00),
(427, 5, 52, 'Medium Dermaconfort 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 560.00, 700.00, 650.00, 0.00, 0.00),
(428, 5, 52, 'Medium Puppy 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 564.00, 775.00, 745.00, 0.00, 0.00),
(429, 5, 52, 'Medium Puppy 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 698.00, 840.00, 800.00, 0.00, 0.00),
(430, 5, 52, 'Medium Puppy 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 202.00, 260.00, 240.00, 0.00, 0.00),
(431, 5, 52, 'Medium Starter 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 174.00, 300.00, 280.00, 0.00, 0.00),
(432, 9, 3, 'Michi Feliz 1.8kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 35, 10.00, 17.00, 15.00, 0.00, 0.00),
(433, 5, 52, 'Mini Adult 1kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 85.00, 100.00, 90.00, 0.00, 0.00),
(434, 5, 52, 'Mini Adult 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 758.00, 900.00, 860.00, 0.00, 0.00),
(435, 5, 52, 'Mini Adult 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 235.00, 290.00, 270.00, 0.00, 0.00),
(436, 5, 52, 'Mini Adult 8+ 1Kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 83.00, 100.00, 95.00, 0.00, 0.00),
(437, 5, 52, 'Mini Adult 8+ 3Kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 200.00, 290.00, 280.00, 0.00, 0.00),
(438, 5, 52, 'Mini Puppy 1kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 4, 90.00, 110.00, 100.00, 0.00, 0.00),
(439, 5, 52, 'Mini Puppy 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 905.00, 1000.00, 960.00, 0.00, 0.00),
(440, 5, 52, 'Mini Puppy 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 243.00, 300.00, 280.00, 0.00, 0.00),
(441, 5, 52, 'Mini Puppy 8kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 539.00, 700.00, 660.00, 0.00, 0.00),
(442, 5, 52, 'Mini Starter 1kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 106.00, 135.00, 130.00, 0.00, 0.00),
(443, 1, 1, 'Mochila para gato', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 120.00, 200.00, 180.00, 0.00, 0.00),
(444, 5, 42, 'Mollejas de Pollo Deshidratado', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 13.00, 20.00, 16.00, 0.00, 0.00),
(445, 1, 1, 'Monito Juguete gatos', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.00, 20.00, 16.00, 0.00, 0.00),
(446, 1, 58, 'Mono gato navidad', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 8, 15.00, 25.00, 20.00, 0.00, 0.00),
(447, 5, 20, 'N&D Ancestral Grain Mini Breeds Cordeero Blueberry', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 119.00, 195.00, 185.00, 0.00, 0.00),
(448, 5, 20, 'N&D Pumpking Medium Breeds Cordero Calabaza y Blue', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 146.00, 220.00, 200.00, 0.00, 0.00),
(449, 5, 20, 'N&D Pumpking Medium Breeds Pollo Calabaza Granada ', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 114.00, 170.00, 160.00, 0.00, 0.00),
(450, 5, 20, 'N&D Pumpking Mini Breeds Cordero Bluberry 2.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 139.00, 230.00, 210.00, 0.00, 0.00),
(451, 8, 9, 'Nexgard 4.1 - 10kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 60.00, 80.00, 75.00, 0.00, 0.00),
(452, 8, 9, 'NexGard Spectra 15.1 - 30kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 120.00, 145.00, 140.00, 0.00, 0.00),
(453, 8, 9, 'NexGard Spectra 2-3.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 67.00, 80.00, 75.00, 0.00, 0.00),
(454, 8, 9, 'NexGard Spectra 3.5 - 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 72.00, 90.00, 85.00, 0.00, 0.00),
(455, 8, 9, 'NexGard Spectra 30.1 - 60kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 130.00, 155.00, 150.00, 0.00, 0.00),
(456, 8, 9, 'NexGard Spectra 7.6 - 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 93.00, 115.00, 110.00, 0.00, 0.00),
(457, 11, 46, 'No Puede', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 23.00, 35.00, 30.00, 0.00, 0.00),
(458, 8, 52, 'Obesity Canine 1.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 122.00, 150.00, 140.00, 0.00, 0.00),
(459, 5, 52, 'Obesity Canine 410gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 35.00, 45.00, 40.00, 0.00, 0.00),
(460, 8, 52, 'Obesity Canino 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 500.00, 600.00, 570.00, 0.00, 0.00),
(461, 4, 52, 'Obesity Feline 1.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 117.00, 140.00, 135.00, 0.00, 0.00),
(462, 3, 1, 'Pack Bolsas de Popo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 15.00, 30.00, 25.00, 0.00, 0.00),
(463, 3, 1, 'Pack Bolsas de Popo 3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 11, 4.20, 15.00, 12.00, 0.00, 0.00),
(464, 1, 1, 'Pajarito HomePet', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.00, 20.00, 15.00, 0.00, 0.00),
(465, 2, 1, 'Pala Recogedora de Popo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 11.70, 40.00, 35.00, 0.00, 0.00),
(466, 2, 1, 'Pala Recogedora de Popo DIIL Grande', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 50.00, 70.00, 65.00, 0.00, 0.00),
(467, 1, 1, 'Pala Sanitaria Gatos', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 5.00, 20.00, 15.00, 0.00, 0.00),
(468, 2, 22, 'Pala Sanitaria Gatos Hagen', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 15.00, 40.00, 35.00, 0.00, 0.00),
(469, 2, 38, 'Palitos de Colageno', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 5.00, 20.00, 15.00, 0.00, 0.00),
(470, 2, 2, 'Palitos Natural', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 10.50, 15.00, 12.00, 0.00, 0.00),
(471, 2, 1, 'Panales para Hembra  Desechables XSMALL Dono', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 18, 15.00, 5.00, 18.00, 0.00, 0.00),
(472, 2, 1, 'Panales para Hembra Desechables LARGE Billy', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 10, 18.00, 10.00, 30.00, 0.00, 0.00),
(473, 2, 1, 'Panales para Hembra Desechables MEMDIUM Billy', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 14, 25.00, 10.00, 45.00, 0.00, 0.00),
(474, 2, 1, 'Panales para Hembra Desechables XLARGE Billy', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 13.00, 15.00, 20.00, 0.00, 0.00),
(475, 2, 1, 'Panales para Hembra Desechables XSMALL Billy', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 18, 2.00, 5.00, 4.00, 0.00, 0.00),
(476, 2, 1, 'Panales para Macho Desechables MEDIUM Dono', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 10, 2.00, 10.00, 8.00, 0.00, 0.00),
(477, 2, 1, 'Panales para Macho Desechables SMALL Dono', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 2.00, 5.00, 8.00, 0.00, 0.00),
(478, 2, 1, 'Panos 60x60 Pluto 10pcs', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 2.00, 100.00, 12.00, 0.00, 0.00),
(479, 2, 1, 'Panos Celeste', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 200, 2.00, 4.00, 4.00, 0.00, 0.00),
(480, 2, 40, 'Para tu Kan', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 2.00, 20.00, 8.00, 0.00, 0.00),
(481, 2, 1, 'Pasta de Dientes  Dental Care Sabor Carne', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 2.00, 35.00, 4.00, 0.00, 0.00),
(482, 7, 45, 'Pasta de Dientes  Pet O dent Porta', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 70.00, 50.00, 90.00, 0.00, 0.00),
(483, 1, 44, 'Pasto Gato', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 2.00, 25.00, 3.50, 0.00, 0.00),
(484, 2, 1, 'Pechera Color Entero #2 ABT-194', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 13.40, 30.00, 25.00, 0.00, 0.00),
(485, 2, 1, 'Pechera con Correa Color entero #2 ABT-194', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 13.40, 30.00, 25.00, 0.00, 0.00),
(486, 2, 1, 'Pechera con Correa Color entero #3 ABT-195', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 18.40, 35.00, 30.00, 0.00, 0.00),
(487, 2, 1, 'Pechera con Correa Color entero #4 ABT-196', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 23.40, 40.00, 35.00, 0.00, 0.00),
(488, 2, 1, 'Pechera con Correa Cuerda  #2 BA35', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 7, 15.90, 30.00, 25.00, 0.00, 0.00),
(489, 2, 1, 'Pechera con Correa Cuerda #3 ABT-259', '', 'Files/Articulo/Adjustable-Dog-Harness-Leash-Collar-Set-Dog.jpg', 'A', '-', '0', 'Unidad', '-', 1, 5, 19.20, 35.00, 30.00, 0.00, 0.00),
(490, 2, 1, 'Pechera con Correa Cuerda #4 BA37', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 8, 23.40, 40.00, 35.00, 0.00, 0.00),
(491, 2, 1, 'Pechera con Correa Cuerina Colores #2 ABT-201', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 7.90, 30.00, 25.00, 0.00, 0.00),
(492, 2, 1, 'Pechera con Correa Esponja #2 ABT-232', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 13.40, 30.00, 25.00, 0.00, 0.00),
(493, 2, 1, 'Pechera con Correa Esponja #3 ABT-233', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 16.70, 35.00, 30.00, 0.00, 0.00),
(494, 2, 1, 'Pechera con Correa Esponja #4 ABT-234', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 20.90, 40.00, 35.00, 0.00, 0.00),
(495, 2, 1, 'Pechera con Correa estlo K9 Negra M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 25.00, 50.00, 45.00, 0.00, 0.00),
(496, 2, 1, 'Pechera Con Correa Multicolor #1 ABT-44', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 11.70, 25.00, 20.00, 0.00, 0.00),
(497, 2, 1, 'Pechera Con Correa Multicolor #2 ABT-45', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 15.00, 30.00, 25.00, 0.00, 0.00),
(498, 2, 1, 'Pechera Con Correa Multicolor #3 ABT-46', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 20.00, 35.00, 30.00, 0.00, 0.00),
(499, 2, 1, 'Pechera Con Correa Multicolor #4 ABT-47', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 23.40, 40.00, 35.00, 0.00, 0.00),
(500, 2, 1, 'Pechera con Correa Reflectiva #3 ABT-205', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.90, 35.00, 30.00, 0.00, 0.00),
(501, 2, 1, 'Pechera con Correa Reflectiva #4 ABT-206', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 13.40, 40.00, 35.00, 0.00, 0.00),
(502, 2, 1, 'Pechera con Correa Reflectiva #5 ABT-207', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 36.70, 60.00, 55.00, 0.00, 0.00),
(503, 1, 1, 'Pechera correa Gato', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 7.00, 20.00, 15.00, 0.00, 0.00),
(504, 1, 1, 'Pechera Correa Gato con Conejo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.00, 20.00, 15.00, 0.00, 0.00),
(505, 2, 1, 'Pechera K9 L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 22.50, 70.00, 65.00, 0.00, 0.00),
(506, 2, 1, 'Pechera K9 M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 22.50, 65.00, 60.00, 0.00, 0.00),
(507, 2, 1, 'Pechera K9 S', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 22.50, 60.00, 55.00, 0.00, 0.00),
(508, 2, 1, 'Pechera K9 XS', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 22.50, 55.00, 50.00, 0.00, 0.00),
(509, 2, 1, 'Pechera K9 XXS', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 22.50, 50.00, 45.00, 0.00, 0.00),
(510, 3, 1, 'Pechera Red bolsillos #1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 15.00, 35.00, 30.00, 0.00, 0.00),
(511, 3, 1, 'Pechera Red bolsillos #2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 18.00, 40.00, 35.00, 0.00, 0.00),
(512, 3, 1, 'Pechera Red bolsillos #3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 21.00, 45.00, 40.00, 0.00, 0.00),
(513, 3, 1, 'Pechera Red bolsillos #4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 24.00, 50.00, 45.00, 0.00, 0.00),
(514, 3, 1, 'Pechera Red bolsillos #5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 27.00, 55.00, 50.00, 0.00, 0.00),
(515, 2, 53, 'Pechera Solvit L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 140.00, 190.00, 180.00, 0.00, 0.00),
(516, 2, 53, 'Pechera Solvit XL', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 0.00, 200.00, 180.00, 0.00, 0.00),
(517, 2, 1, 'Pechera X Naranaja L', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 20.00, 50.00, 45.00, 0.00, 0.00),
(518, 2, 1, 'Pechera X Naranaja M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 20.00, 45.00, 40.00, 0.00, 0.00),
(519, 2, 1, 'Pechera X Naranaja S', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 20.00, 40.00, 35.00, 0.00, 0.00),
(520, 2, 1, 'Pechera X Naranaja XL', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 20.00, 55.00, 50.00, 0.00, 0.00),
(521, 5, 58, 'Pedigree Humedo Adulto Carne', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 5.00, 7.00, 6.00, 0.00, 0.00),
(522, 5, 41, 'Pedigree Humedo Adulto Pollo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 5.00, 7.00, 6.00, 0.00, 0.00),
(523, 5, 41, 'Pedigree Humedo Cachorro Carne', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 5.00, 7.00, 6.00, 0.00, 0.00),
(524, 5, 41, 'Pedigree Humedo Razas Pequenas Carne', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 5.00, 7.00, 6.00, 0.00, 0.00),
(525, 5, 41, 'Pedigree Humedo Razas Pequenas Pollo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 5.00, 7.00, 6.00, 0.00, 0.00),
(526, 5, 41, 'Pedigree Lata Adulto Pollo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 10.50, 15.00, 13.00, 0.00, 0.00),
(527, 5, 41, 'Pedigree Lata Cachorro Carne', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 10.50, 15.00, 13.00, 0.00, 0.00),
(528, 3, 1, 'Peine Doble', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 7.50, 20.00, 15.00, 0.00, 0.00),
(529, 3, 1, 'Peine Doble Rastrillo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 6.30, 20.00, 15.00, 0.00, 0.00),
(530, 2, 56, 'Pelota de Tenis', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 15, 1.00, 15.00, 12.00, 0.00, 0.00),
(531, 2, 1, 'Pelota Dosificadora Grande', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 12, 15.00, 30.00, 25.00, 0.00, 0.00),
(532, 2, 1, 'Pelota Dosificadora Mediana', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 10.90, 25.00, 20.00, 0.00, 0.00),
(533, 3, 1, 'Pelota Dosificadora Pequena', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 11, 10.00, 15.00, 13.00, 0.00, 0.00),
(534, 11, 1, 'Pelota Hamster', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 30.00, 60.00, 50.00, 0.00, 0.00),
(535, 1, 1, 'Pelota Pita cuerda', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.00, 20.00, 15.00, 0.00, 0.00),
(536, 1, 1, 'Pelota Pluma Pita', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.00, 15.00, 10.00, 0.00, 0.00),
(537, 2, 1, 'Pelota Puzzle', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 8.80, 20.00, 15.00, 0.00, 0.00),
(538, 2, 1, 'Pelota Strong Roja', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 36.00, 50.00, 45.00, 0.00, 0.00),
(539, 5, 4, 'Perrolac', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 63.00, 85.00, 80.00, 0.00, 0.00),
(540, 4, 52, 'Persian 1.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 123.00, 160.00, 150.00, 0.00, 0.00),
(541, 4, 52, 'Persian 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 540.00, 700.00, 660.00, 0.00, 0.00),
(542, 4, 52, 'Persian Jelly 0.85gr', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 22, 15.00, 18.00, 17.00, 0.00, 0.00),
(543, 3, 1, 'Pet Zoom Cepillo', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 25.00, 35.00, 25.00, 0.00, 0.00),
(544, 5, 43, 'Petlac Polvo Cachorros', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 90.20, 120.00, 110.00, 0.00, 0.00),
(545, 4, 43, 'Petlac Polvo Gatitos', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 90.20, 120.00, 110.00, 0.00, 0.00),
(546, 2, 1, 'Plato Come Lento', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 15.00, 30.00, 25.00, 0.00, 0.00),
(547, 2, 1, 'Plato Come Lento con plato de agua', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 25.00, 40.00, 35.00, 0.00, 0.00),
(548, 2, 1, 'Plato Come Lento Hueso', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 9, 38.00, 60.00, 55.00, 0.00, 0.00),
(549, 3, 1, 'Plato Dosificador de Comida y Agua', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 55.00, 75.00, 70.00, 0.00, 0.00),
(550, 3, 1, 'Plato Metalico M', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 25.90, 40.00, 35.00, 0.00, 0.00),
(551, 3, 1, 'Plato Metalico S', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 5, 20.90, 35.00, 30.00, 0.00, 0.00),
(552, 3, 1, 'Plato Metalico XL', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 35.90, 50.00, 45.00, 0.00, 0.00),
(553, 3, 1, 'Plato Plastico Polinplast', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 10.00, 20.00, 15.00, 0.00, 0.00),
(554, 3, 1, 'Plato Plastico REY', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 12.50, 25.00, 20.00, 0.00, 0.00),
(555, 3, 1, 'Plato Plegable Grande', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 9, 45.00, 55.00, 50.00, 0.00, 0.00),
(556, 3, 1, 'Plato Plegable Pequeno', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 8, 40.00, 50.00, 45.00, 0.00, 0.00),
(557, 10, 1, 'Polera a Rayas Blanco y Negro T1', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 10.00, 25.00, 20.00, 0.00, 0.00),
(558, 10, 1, 'Polera a Rayas Blanco y Negro T2', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 13.00, 30.00, 25.00, 0.00, 0.00),
(559, 10, 1, 'Polera a Rayas Blanco y Negro T3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 16.00, 35.00, 30.00, 0.00, 0.00),
(560, 10, 1, 'Polera a Rayas Blanco y Negro T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 19.00, 40.00, 35.00, 0.00, 0.00),
(561, 10, 13, 'polera para Pelos T3', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 20.00, 40.00, 35.00, 0.00, 0.00),
(562, 10, 13, 'polera para Pelos T4', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 25.00, 45.00, 40.00, 0.00, 0.00),
(563, 10, 13, 'polera para Pelos T5', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 4, 30.00, 50.00, 45.00, 0.00, 0.00),
(564, 10, 13, 'polera para Pelos T6', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 35.00, 55.00, 50.00, 0.00, 0.00),
(565, 8, 10, 'Power Comprimidos de 10.1 a 20kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 38.70, 60.00, 55.00, 0.00, 0.00),
(566, 8, 10, 'Power Comprimidos de 2.5 a 5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 32.50, 50.00, 45.00, 0.00, 0.00),
(567, 8, 10, 'Power Comprimidos de 20.1 a 30kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 47.70, 65.00, 60.00, 0.00, 0.00),
(568, 8, 10, 'Power Comprimidos de 30.1 a 40kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 56.00, 70.00, 65.00, 0.00, 0.00),
(569, 8, 10, 'Power Comprimidos de 5.1 a 10kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 36.30, 55.00, 50.00, 0.00, 0.00),
(570, 8, 49, 'Propla Urinary Gatos 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 146.13, 190.00, 180.00, 0.00, 0.00),
(571, 8, 49, 'Proplan Urinary Gatos 7.5kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 345.45, 450.00, 420.00, 0.00, 0.00),
(572, 5, 49, 'Proplan Adulto  Raza Grande 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 388.90, 500.00, 480.00, 0.00, 0.00),
(573, 3, 58, 'Puchitag', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 20, 35.00, 50.00, 45.00, 0.00, 0.00),
(574, 11, 46, 'Puede', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 17.00, 30.00, 25.00, 0.00, 0.00),
(575, 5, 52, 'Pug Adulto 3kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 1, 250.00, 300.00, 280.00, 0.00, 0.00),
(576, 1, 1, 'Pulpo Home Pet', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 6, 10.00, 20.00, 15.00, 0.00, 0.00),
(577, 2, 1, 'puppy Potty Pad', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 50.00, 100.00, 90.00, 0.00, 0.00),
(578, 2, 1, 'puppy Potty Pad Grande', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 3, 100.00, 160.00, 150.00, 0.00, 0.00),
(579, 2, 1, 'Puppy Potty Pad Grande Cajon', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 160.00, 200.00, 190.00, 0.00, 0.00),
(580, 5, 49, 'Proplan Puppy Raza Grande 15kg', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 448.20, 580.00, 550.00, 0.00, 0.00),
(581, 1, 22, 'Rascador Jirafa', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 2, 83.60, 120.00, 110.00, 0.00, 0.00),
(582, 1, 22, 'Rascador Ola', '', 'Files/Articulo/prud.jpg', 'A', '-', '0', 'Unidad', '0', 1, 0, 77.60, 120.00, 110.00, 0.00, 0.00),
(583, 1, 22, 'Rascador Rojo', '', 'Files/Articulo/Rascador Rojo.jpg', 'A', '-', '0', 'Unidad', '-', 1, 4, 83.60, 120.00, 110.00, 0.00, 0.00),
(584, 1, 22, 'Rascador S Leopardo', '', 'Files/Articulo/Rascador S Leopardo.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 85.00, 120.00, 110.00, 0.00, 0.00),
(585, 1, 22, 'Rascador Y Morado', '', 'Files/Articulo/ascador Y Morado.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 90.48, 120.00, 110.00, 0.00, 0.00),
(586, 3, 1, 'Raton Cuerda Home Pet', '', 'Files/Articulo/Raton Cuerda Home Pet.jpg', 'A', '-', '0', 'Unidad', '-', 1, 6, 10.00, 20.00, 15.00, 0.00, 0.00),
(587, 1, 1, 'Raton Cuerda Sociality Pet', '', 'Files/Articulo/Shampoo 2 en 1 shampoo y acondicionador Bobels 380.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 10.00, 20.00, 16.00, 0.00, 0.00),
(588, 1, 1, 'Raton de Catnip', '', 'Files/Articulo/Raton de Catnip.jpg', 'A', '-', '0', 'Unidad', '-', 1, 4, 5.00, 15.00, 12.00, 0.00, 0.00),
(589, 1, 1, 'Raton Doble', '', 'Files/Articulo/Raton Doble.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 10.00, 20.00, 16.00, 0.00, 0.00),
(590, 1, 1, 'Raton Doble Home Pet', '', 'Files/Articulo/Shampoo 2 en 1 shampoo y acondicionador Bobels 380.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 10.00, 20.00, 16.00, 0.00, 0.00),
(591, 1, 1, 'Raton hecho de Pita colores 3', '', 'Files/Articulo/Raton hecho de Pita colores 3.jpg', 'A', '-', '0', 'Unidad', '-', 1, 6, 10.00, 25.00, 20.00, 0.00, 0.00),
(592, 1, 1, 'Raton Jeans Catnip Home pet', '', 'Files/Articulo/Raton Jeans Catnip Home pet.jpg', 'A', '-', '0', 'Unidad', '-', 1, 6, 10.00, 25.00, 20.00, 0.00, 0.00),
(593, 1, 1, 'Raton Pita', '', 'Files/Articulo/Raton Pita.jpg', 'A', '-', '0', 'Unidad', '-', 1, 6, 10.00, 20.00, 15.00, 0.00, 0.00),
(594, 1, 1, 'Raton simple', '', 'Files/Articulo/Shampoo 2 en 1 shampoo y acondicionador Bobels 380.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 10.00, 20.00, 16.00, 0.00, 0.00),
(595, 1, 1, 'Raton Varilla', '', 'Files/Articulo/Raton Varilla.jpg', 'A', '-', '0', 'Unidad', '-', 1, 3, 7.50, 20.00, 15.00, 0.00, 0.00),
(596, 2, 1, 'Recogedor Popo', '', 'Files/Articulo/Recogedor Popo.jpg', 'A', '-', '0', 'Unidad', '-', 1, 6, 7.90, 25.00, 20.00, 0.00, 0.00),
(597, 6, 52, 'Recovery Felino y Canino 1.95gr', '', 'Files/Articulo/Recovery Felino y Canino 1.95gr.jpg', 'A', '-', '0', 'Unidad', '-', 1, 9, 20.00, 25.00, 23.00, 0.00, 0.00),
(598, 3, 1, 'Red Para Auto', '', 'Files/Articulo/Red Para Auto.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 0.00, 70.00, 60.00, 0.00, 0.00),
(599, 5, 49, 'Proplan Reduce Calories Dog Razas Grandes y Mediana 15kg', '', 'Files/Articulo/Proplan Reduce Calories Dog Razas Grandes y Mediana 15kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 388.90, 500.00, 480.00, 0.00, 0.00),
(600, 5, 49, 'Proplan Reduce Calories Dog Razas PequeÃ±as 3kg', '', 'Files/Articulo/Proplan Reduce Calories Dog Razas PequeÃ±as 3kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 105.80, 150.00, 145.00, 0.00, 0.00),
(601, 5, 52, 'Renal Canine 1.5kg', '', 'Files/Articulo/Renal Canine 1.5kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 156.00, 190.00, 180.00, 0.00, 0.00),
(602, 8, 52, 'Renal Canine 10kg', '', 'Files/Articulo/Renal Canine 10kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 750.00, 900.00, 850.00, 0.00, 0.00),
(603, 5, 52, 'Renal Canine 410gr', '', 'Files/Articulo/Renal Canine 410gr.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 35.00, 45.00, 40.00, 0.00, 0.00),
(604, 8, 52, 'Renal Feline 2kg', '', 'Files/Articulo/Renal Feline 2kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 157.00, 200.00, 190.00, 0.00, 0.00),
(605, 4, 51, 'Rico Cat Lata Adulto Higado y Pollo', '', 'Files/Articulo/Rico Cat Lata Adulto Higado y Pollo.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 10.40, 15.00, 13.00, 0.00, 0.00),
(606, 4, 51, 'Rico Cat Lata Adulto Pavo e Higado', '', 'Files/Articulo/Rico Cat Lata Adulto Pavo e Higado.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 10.40, 15.00, 13.00, 0.00, 0.00),
(607, 4, 51, 'Rico Cat Lata Adulto Sardina y Pollo', '', 'Files/Articulo/Rico Cat Lata Adulto Sardina y Pollo.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 10.50, 15.00, 13.00, 0.00, 0.00),
(608, 2, 2, 'Rolls de Colageno 8 en 1 81gr', '', 'Files/Articulo/Rolls de Colageno 8 en 1 81gr.jpg', 'A', '-', '0', 'Unidad', '-', 1, 7, 12.50, 20.00, 16.00, 0.00, 0.00),
(609, 8, 39, 'Sahmpoo Ketoconazol 250ml', '', 'Files/Articulo/Sahmpoo Ketoconazol 250ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 3, 50.00, 70.00, 60.00, 0.00, 0.00),
(610, 5, 52, 'Schnauzar Jr 1.5kg', '', 'Files/Articulo/Schnauzar Jr 1.5kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 186.00, 225.00, 220.00, 0.00, 0.00),
(611, 5, 52, 'Schnauzer Adult 3kg', '', 'Files/Articulo/Schnauzer Adult 3kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 240.00, 295.00, 280.00, 0.00, 0.00),
(612, 5, 49, 'Proplan Sensitive Skin Adulto Raza Mediana y Grande Adulto 15kg', '', 'Files/Articulo/Proplan Sensitive Skin Adulto Raza Mediana y Grande Adulto 15kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 490.00, 620.00, 590.00, 0.00, 0.00),
(613, 5, 49, 'Proplan Sensitive Skin Adulto Raza PequeÃ±a 3kg', '', 'Files/Articulo/Proplan Sensitive Skin Adulto Raza PequeÃ±a 3kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 143.50, 185.00, 180.00, 0.00, 0.00),
(614, 2, 56, 'Set Pelotas de Tenis', '', 'Files/Articulo/Set Pelotas de Tenis.jpg', 'A', '-', '0', 'Unidad', '-', 1, 10, 3.00, 35.00, 30.00, 0.00, 0.00),
(615, 2, 8, 'Shampoo 2 en 1 shampoo y acondicionador Bobels 380', '', 'Files/Articulo/Shampoo 2 en 1 shampoo y acondicionador Bobels 380.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 21.90, 30.00, 28.00, 0.00, 0.00),
(616, 7, 19, 'Shampoo Abrillantador Farecs 1000ml', '', 'Files/Articulo/Shampoo Abrillantador Farecs 1000ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 13.70, 50.00, 45.00, 0.00, 0.00),
(617, 7, 19, 'Shampoo Abrillantador Farecs 300ml', '', 'Files/Articulo/Shampoo Abrillantador Farecs 300ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 6, 9.80, 20.00, 15.00, 0.00, 0.00),
(618, 7, 19, 'Shampoo Abrillantador Farecs 500ml', '', 'Files/Articulo/Shampoo Abrillantador Farecs 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 13.70, 30.00, 26.00, 0.00, 0.00),
(619, 7, 46, 'Shampoo Aloe Vera Para Gatos Procao 500ml', '', 'Files/Articulo/Shampoo Aloe Vera Para Gatos Procao 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 25.50, 35.00, 32.00, 0.00, 0.00),
(620, 7, 19, 'Shampoo Antipulgas Aloe Vera Farecs 1000ml', '', 'Files/Articulo/Shampoo Antipulgas Aloe Vera Farecs 1000ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 27.40, 50.00, 45.00, 0.00, 0.00),
(621, 7, 19, 'Shampoo Antipulgas Aloe Vera Farecs 300ml', '', 'Files/Articulo/Shampoo Antipulgas Aloe Vera Farecs 300ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 6, 9.80, 20.00, 16.00, 0.00, 0.00),
(622, 7, 19, 'Shampoo Antipulgas Aloe Vera Farecs 500ml', '', 'Files/Articulo/Shampoo Antipulgas Aloe Vera Farecs 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 3, 13.70, 30.00, 26.00, 0.00, 0.00),
(623, 7, 19, 'Shampoo Antipulgas Manzanilla Farecs 1000ml', '', 'Files/Articulo/Shampoo Antipulgas Manzanilla Farecs 1000ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 27.40, 50.00, 45.00, 0.00, 0.00),
(624, 7, 19, 'Shampoo Antipulgas Manzanilla Farecs 300ml', '', 'Files/Articulo/Shampoo Antipulgas Manzanilla Farecs 300ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 9.80, 20.00, 16.00, 0.00, 0.00),
(625, 7, 19, 'Shampoo Antipulgas Manzanilla Farecs 500ml', '', 'Files/Articulo/Shampoo Antipulgas Manzanilla Farecs 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 13.70, 30.00, 26.00, 0.00, 0.00),
(626, 7, 19, 'Shampoo Antisarnico Farecs 1000ml', '', 'Files/Articulo/Shampoo Antisarnico Farecs 1000ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 4, 40.80, 90.00, 80.00, 0.00, 0.00),
(627, 7, 19, 'Shampoo Antisarnico Farecs 300ml', '', 'Files/Articulo/Shampoo Antisarnico Farecs 300ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 14.80, 35.00, 30.00, 0.00, 0.00),
(628, 7, 19, 'Shampoo Antisarnico Farecs 500ml', '', 'Files/Articulo/Shampoo Antisarnico Farecs 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 3, 21.60, 50.00, 45.00, 0.00, 0.00),
(629, 7, 46, 'Shampoo Cachorros Procao 500ml', '', 'Files/Articulo/Shampoo Cachorros Procao 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 25.50, 35.00, 32.00, 0.00, 0.00),
(630, 7, 19, 'Shampoo Chocolate Farecs 1000ml', '', 'Files/Articulo/Shampoo Chocolate Farecs 1000ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 36.60, 50.00, 45.00, 0.00, 0.00),
(631, 7, 19, 'Shampoo Chocolate Farecs 300ml', '', 'Files/Articulo/Shampoo Chocolate Farecs 300ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 7, 10.70, 20.00, 16.00, 0.00, 0.00),
(632, 7, 19, 'Shampoo Chocolate Farecs 500ml', '', 'Files/Articulo/Shampoo Chocolate Farecs 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 12, 15.00, 30.00, 26.00, 0.00, 0.00),
(633, 7, 46, 'Shampoo Citronela Procao 500ml', '', 'Files/Articulo/Shampoo Citronela Procao 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 25.50, 35.00, 32.00, 0.00, 0.00),
(634, 7, 19, 'Shampoo Clorhexidina Farecs 1000ml', '', 'Files/Articulo/Shampoo Clorhexidina Farecs 1000ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 55.20, 80.00, 70.00, 0.00, 0.00),
(635, 7, 19, 'Shampoo Clorhexidina Farecs 300ml', '', 'Files/Articulo/Shampoo Clorhexidina Farecs 300ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 4, 17.20, 35.00, 30.00, 0.00, 0.00),
(636, 7, 19, 'Shampoo Clorhexidina Farecs 500ml', '', 'Files/Articulo/Shampoo Clorhexidina Farecs 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 8, 25.00, 50.00, 45.00, 0.00, 0.00),
(637, 2, 8, 'Shampoo Extra Suave con Calendula Cachorro Bobels  500ml', '', 'Files/Articulo/Shampoo Extra Suave con Calendula Cachorro Bobels 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 21.90, 30.00, 28.00, 0.00, 0.00),
(638, 7, 8, 'Shampoo Extra Suave con Calendula Cachorro Bobels 380ml', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 28.50, 40.00, 35.00, 0.00, 0.00),
(639, 2, 8, 'Shampoo Herbal con Aloe Vera Bobels 380ml', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 21.90, 30.00, 28.00, 0.00, 0.00),
(640, 7, 8, 'Shampoo Herbal con Aloe Vera Bobels 500ml', '', 'Files/Articulo/Shampoo Herbal con Aloe Vera Bobels 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 4, 28.50, 40.00, 35.00, 0.00, 0.00),
(641, 7, 21, 'Shampoo Hipoalergenico Gatos GNC', '', 'Files/Articulo/Shampoo Hipoalergenico Gatos GNC.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 70.00, 80.00, 70.00, 0.00, 0.00),
(642, 7, 46, 'Shampoo Pelos Oscuros Procao 500ml', '', 'Files/Articulo/Shampoo Pelos Oscuros Procao 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 25.50, 35.00, 32.00, 0.00, 0.00),
(643, 2, 8, 'Shampoo Pulguicida Garrapaticida con glicerina Bobels 500ml', '', 'Files/Articulo/Shampoo Pulguicida Garrapaticida con glicerina Bobels 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 25.00, 35.00, 32.00, 0.00, 0.00),
(644, 7, 8, 'Shampoo Pulguicida Garrapaticida con glicerina Bobels 380ml', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 28.50, 40.00, 35.00, 0.00, 0.00),
(645, 2, 8, 'Shampoo tonificador para pelos Blancos Bobels 380m', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 21.90, 30.00, 28.00, 0.00, 0.00),
(646, 7, 8, 'Shampoo tonificador para pelos Blancos Bobels 500m', '', 'Files/Articulo/Shampoo tonificador para pelos Blancos Bobels 500m.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 28.50, 40.00, 35.00, 0.00, 0.00),
(647, 2, 8, 'Shampoo tonificador para pelos Bronce Bobels 380ml', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 21.90, 30.00, 28.00, 0.00, 0.00),
(648, 7, 8, 'Shampoo tonificador para pelos Bronce Bobels 500ml', '', 'Files/Articulo/Shampoo tonificador para pelos Bronce Bobels 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 28.50, 40.00, 35.00, 0.00, 0.00),
(649, 2, 8, 'Shampoo tonificador para pelos Negros Bobels 380ml', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 21.90, 30.00, 28.00, 0.00, 0.00),
(650, 7, 19, 'Shampoo y Acondicionador Dos en Uno Farecs  1000ml', '', 'Files/Articulo/Shampoo y Acondicionador Dos en Uno Farecs 1000ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 32.20, 60.00, 50.00, 0.00, 0.00),
(651, 7, 19, 'Shampoo y Acondicionador Dos en Uno Farecs 500ml', '', 'Files/Articulo/Shampoo y Acondicionador Dos en Uno Farecs 500ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 11, 13.80, 35.00, 30.00, 0.00, 0.00),
(652, 8, 35, 'Shooter Spray Pulguicida Garrapaticida 120ml', '', 'Files/Articulo/Shooter Spray Pulguicida Garrapaticida 120ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 39.00, 80.00, 70.00, 0.00, 0.00),
(653, 8, 35, 'Shooter Spray Pulguicida Garrapaticida 60ml', '', 'Files/Articulo/Shooter Spray Pulguicida Garrapaticida 60ml.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 28.40, 55.00, 50.00, 0.00, 0.00),
(654, 2, 1, 'Silbato Perro', '', 'Files/Articulo/silbato perro.jpg', 'A', '-', '0', 'Unidad', '-', 1, 9, 6.66, 15.00, 10.00, 0.00, 0.00),
(655, 2, 13, 'Sillon', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 410.00, 480.00, 450.00, 0.00, 0.00),
(656, 10, 13, 'Smokin T3', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 40.00, 60.00, 55.00, 0.00, 0.00),
(657, 10, 13, 'Smokin T6', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 55.00, 75.00, 70.00, 0.00, 0.00),
(658, 5, 49, 'Smoochies Bife de Chorizo', '', 'Files/Articulo/Smoochies Bife de Chorizo.jpg', 'A', '-', '0', 'Unidad', '-', 1, 5, 8.50, 11.00, 10.00, 0.00, 0.00),
(659, 5, 49, 'Smoochies Churrasco', '', 'Files/Articulo/smoochies churrasco.jpg', 'A', '-', '0', 'Unidad', '-', 1, 3, 7.69, 10.00, 9.00, 0.00, 0.00),
(660, 5, 49, 'Smoochies Tira de Asado', '', 'Files/Articulo/smoochies tira de asado.jpg', 'A', '-', '0', 'Unidad', '-', 1, 10, 9.30, 12.00, 11.00, 0.00, 0.00),
(661, 5, 52, 'Starter Mousse 1.95gr', '', 'Files/Articulo/Starter Mousse 1,95gr.jpg', 'A', '-', '0', 'Unidad', '-', 1, 8, 22.00, 25.00, 23.00, 0.00, 0.00),
(662, 4, 49, 'Proplan Gatos Esterilizados 1kg', '', 'Files/Articulo/Sterilized Cat 1kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 6, 65.47, 75.00, 70.00, 0.00, 0.00),
(663, 9, 24, 'Super Mix 18.1kg', '', 'Files/Articulo/super mix.jpg', 'A', '-', '0', 'Unidad', '-', 1, 10, 162.90, 200.00, 190.00, 0.00, 0.00),
(664, 9, 24, 'Super Mix 3kg', '', 'Files/Articulo/super mix.jpg', 'A', '-', '0', 'Unidad', '-', 1, 5, 33.00, 45.00, 40.00, 0.00, 0.00),
(665, 9, 24, 'Super Mix 7.5kg', '', 'Files/Articulo/super mix.jpg', 'A', '-', '0', 'Unidad', '-', 1, 10, 78.20, 100.00, 90.00, 0.00, 0.00),
(666, 11, 19, 'Super Talco Antipulgas Farecs 120gr', '', 'Files/Articulo/Super Talco Antipulgas Farecs 120gr.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 13.80, 30.00, 25.00, 0.00, 0.00),
(667, 8, 15, 'Superpet  Gato', '', 'Files/Articulo/Superpet gato.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 73.00, 110.00, 100.00, 0.00, 0.00),
(668, 8, 15, 'Superpet Adulto 125ml', '', 'Files/Articulo/SUPERPET_OMEGA_PERRO_ADULTO.png', 'A', '-', '0', 'Unidad', '-', 1, 0, 73.00, 110.00, 100.00, 0.00, 0.00),
(669, 11, 19, 'Talco Antipulgas Farecs 100gr', '', 'Files/Articulo/Talco Antipulgas Farecs 100gr.jpg', 'A', '-', '0', 'Unidad', '-', 1, 4, 10.60, 25.00, 20.00, 0.00, 0.00),
(670, 11, 19, 'Talco Antipulgas Farecs 50gr', '', 'Files/Articulo/Talco Antipulgas Farecs 50gr.jpg', 'A', '-', '0', 'Unidad', '-', 1, 7, 7.80, 20.00, 15.00, 0.00, 0.00),
(671, 9, 49, 'Tidy Cats Piedra Sanitaria 2kg', '', 'Files/Articulo/Tidy Cats Piedra Sanitaria 2kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 20, 24.00, 28.00, 25.00, 0.00, 0.00),
(672, 1, 22, 'Transportador Gato Celeste pequeno', '', 'Files/Articulo/Transportador Gato Celeste pequeno.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 219.24, 280.00, 260.00, 0.00, 0.00),
(673, 1, 22, 'Transportador Gato de Lujo Cargo Cabrio', '', 'Files/Articulo/Transportador Gato de Lujo Cargo Cabrio.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 374.00, 480.00, 450.00, 0.00, 0.00),
(674, 1, 22, 'Transportador Gato Rosado pequeno', '', 'Files/Articulo/Transportador Gato Rosado pequeno.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 219.24, 280.00, 260.00, 0.00, 0.00),
(675, 3, 1, 'Transportador Gato Tela Azul Pequeno', '', 'Files/Articulo/Transportador Gato Tela Azul Pequeno.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 30.00, 60.00, 50.00, 0.00, 0.00),
(676, 2, 25, 'Transportador Perros Cafe Extra Grande XL', '', 'Files/Articulo/Transportador Perros Cafe Grande L.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 371.52, 460.00, 430.00, 0.00, 0.00),
(677, 2, 25, 'Transportador Perros Cafe Grande L', '', 'Files/Articulo/Transportador Perros Cafe Grande L.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 300.74, 380.00, 350.00, 0.00, 0.00),
(678, 2, 25, 'Transportador Perros Ploma Extra Grande XL', '', 'Files/Articulo/Transportador Perros Ploma Grande L.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 371.52, 460.00, 430.00, 0.00, 0.00),
(679, 2, 25, 'Transportador Perros Ploma Grande L', '', 'Files/Articulo/Transportador Perros Ploma Grande L.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 300.74, 380.00, 350.00, 0.00, 0.00),
(680, 2, 25, 'Transportador Perros Verde Pequeno', '', 'Files/Articulo/Transportador Perros Verde Pequeno.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 201.84, 280.00, 250.00, 0.00, 0.00),
(681, 3, 1, 'Transportadora Pequena', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 100.00, 150.00, 140.00, 0.00, 0.00),
(682, 1, 1, 'Transportadora tela estrellada Azul  #0', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 15.00, 30.00, 25.00, 0.00, 0.00),
(683, 1, 1, 'Transportadora tela estrellada Azul  #1', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 25.00, 40.00, 35.00, 0.00, 0.00),
(684, 1, 1, 'Transportadora tela estrellada Azul  #2', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 35.00, 50.00, 45.00, 0.00, 0.00),
(685, 1, 1, 'Transportadora tela estrellada Rosa  #0', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 15.00, 30.00, 25.00, 0.00, 0.00),
(686, 1, 1, 'Transportadora tela estrellada Rosa  #1', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 25.00, 40.00, 35.00, 0.00, 0.00),
(687, 1, 1, 'Transportadora tela estrellada Rosa  #2', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 35.00, 50.00, 45.00, 0.00, 0.00);
INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `idunidad_medida`, `nombre`, `descripcion`, `imagen`, `estado`, `instruccion`, `numero`, `vrestringida`, `codigo_interno`, `minima`, `cantidad`, `P_compra`, `P_venta`, `P_mayor`, `P_distribuidor`, `P_auspicio`) VALUES
(688, 1, 1, 'Transportadora tela estrellada Rosa  #3', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 45.00, 60.00, 55.00, 0.00, 0.00),
(689, 5, 52, 'Urinary Canino 1.5kg', '', 'Files/Articulo/Urinary Canino 1,5kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 95.00, 130.00, 120.00, 0.00, 0.00),
(690, 8, 52, 'Urinary Care', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 142.00, 170.00, 160.00, 0.00, 0.00),
(691, 4, 52, 'Urinary S/O High Dilution 1.5kg', '', 'Files/Articulo/Urinary SO High Dilution.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 111.00, 135.00, 130.00, 0.00, 0.00),
(692, 8, 35, 'Vermic Total Jarabe Antiparasitario Interno para c', '', 'Files/Articulo/Vermic Total Jarabe Antiparasitario Interno para c.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 28.50, 60.00, 55.00, 0.00, 0.00),
(693, 8, 35, 'Vermic Total Tabletas Antiparasitario Interno para', '', 'Files/Articulo/Vermic Total Tabletas Antiparasitario Interno para.jpg', 'A', '-', '0', 'Unidad', '-', 1, 7, 2.10, 5.00, 4.00, 0.00, 0.00),
(694, 10, 13, 'Vestido a Medida T5+', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 55.00, 75.00, 65.00, 0.00, 0.00),
(695, 10, 13, 'Vestido a Medidad T4+', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 45.00, 65.00, 55.00, 0.00, 0.00),
(696, 10, 13, 'Vestido T0', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 8, 30.00, 50.00, 45.00, 0.00, 0.00),
(697, 10, 13, 'Vestido T00', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 10, 30.00, 50.00, 45.00, 0.00, 0.00),
(698, 10, 13, 'Vestido T1', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 14, 30.00, 50.00, 45.00, 0.00, 0.00),
(699, 10, 13, 'Vestido T2', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 13, 35.00, 55.00, 50.00, 0.00, 0.00),
(700, 10, 13, 'Vestido T3', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 6, 40.00, 60.00, 55.00, 0.00, 0.00),
(701, 10, 13, 'Vestido T4', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 8, 45.00, 65.00, 60.00, 0.00, 0.00),
(702, 10, 13, 'Vestido T5', '', 'Files/Articulo/vestido.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 50.00, 70.00, 65.00, 0.00, 0.00),
(703, 8, 20, 'Vetlife Natural Canino Gastrointestinal 2kg', '', 'Files/Articulo/Vetlife Natural Canino Gastrointestinal 2kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 107.00, 140.00, 130.00, 0.00, 0.00),
(704, 8, 21, 'Vetlife Natural Canino Renal 2kg', '', 'Files/Articulo/Vetlife Natural Canino Renal 2kg.jpg', 'A', '-', '0', 'Unidad', '-', 1, 7, 121.00, 155.00, 150.00, 0.00, 0.00),
(705, 8, 31, 'Vitaminas Mascota 50Tab', '', 'Files/Articulo/Vitaminas Mascota 50Tab.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 56.30, 80.00, 70.00, 0.00, 0.00),
(706, 4, 56, 'Whiskas Lata Adulto Atun', '', 'Files/Articulo/Whiskas Lata Adulto atun.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 10.50, 15.00, 13.00, 0.00, 0.00),
(707, 4, 55, 'Whiskas Lata Adulto Carne', '', 'Files/Articulo/Whiskas Lata Adulto Carne.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 10.50, 15.00, 13.00, 0.00, 0.00),
(708, 4, 55, 'Whiskas Sobre Adulto Carne', '', 'Files/Articulo/Whiskas Sobre Adulto Carne.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 4.00, 7.00, 6.00, 0.00, 0.00),
(709, 4, 55, 'Whiskas Sobre Adulto Pollo', '', 'Files/Articulo/Whiskas Sobre Adulto Pollo.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 4.00, 7.00, 6.00, 0.00, 0.00),
(710, 4, 55, 'Whiskas Sobre Adulto Salmon', '', 'Files/Articulo/Whiskas Sobre Adulto Salmon.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 4.00, 7.00, 6.00, 0.00, 0.00),
(711, 4, 55, 'Whiskas Sobre Adulto Sardina', '', 'Files/Articulo/Whiskas Sobre Adulto Sardina.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 4.00, 7.00, 6.00, 0.00, 0.00),
(712, 5, 52, 'Xsmall Adult 1kg', '', 'Files/Articulo/Xsmall adulto.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 67.00, 95.00, 90.00, 0.00, 0.00),
(713, 5, 52, 'Xsmall Jr 1kg', '', 'Files/Articulo/Xsmall junior.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 81.00, 105.00, 100.00, 0.00, 0.00),
(714, 5, 52, 'Yorkshire Terrier Adulto 1kg', '', 'Files/Articulo/Yorkshire Terrier adulto.jpg', 'A', '-', '0', 'Unidad', '-', 1, 3, 120.00, 150.00, 140.00, 0.00, 0.00),
(715, 5, 52, 'Yorkshire Terrier Adulto 3kg', '', 'Files/Articulo/Yorkshire Terrier adulto.jpg', 'A', '-', '0', 'Unidad', '-', 1, 5, 237.00, 300.00, 290.00, 0.00, 0.00),
(716, 5, 52, 'Yorkshire Terrier Junior 1.5kg', '', 'Files/Articulo/120x120_nbtEd2oM1NcxhHoPL8dDOdQkKbpz5OJjoMcmgtUB.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 162.00, 215.00, 200.00, 0.00, 0.00),
(717, 5, 52, 'Yorkshire Terrier Junior 1kg', '', 'Files/Articulo/120x120_nbtEd2oM1NcxhHoPL8dDOdQkKbpz5OJjoMcmgtUB.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 130.00, 165.00, 155.00, 0.00, 0.00),
(718, 5, 52, 'Yorkshire Terrier Junior 3kg', '', 'Files/Articulo/120x120_nbtEd2oM1NcxhHoPL8dDOdQkKbpz5OJjoMcmgtUB.jpg', 'A', '-', '0', 'Unidad', '-', 1, 5, 264.00, 320.00, 300.00, 0.00, 0.00),
(719, 4, 52, 'Young Female 3.5kg', '', 'Files/Articulo/n8Ky0FOCFeOWLr9C8MGXq9cTqqjI72qUNwu0luNI.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 216.00, 260.00, 250.00, 0.00, 0.00),
(720, 4, 52, 'Young Male 1.5kg', '', 'Files/Articulo/young male.jpg', 'A', '-', '0', 'Unidad', '-', 1, 5, 144.00, 175.00, 165.00, 0.00, 0.00),
(721, 4, 52, 'Young Male 3.5kg', '', 'Files/Articulo/young male.jpg', 'A', '-', '0', 'Unidad', '-', 1, 3, 216.00, 260.00, 250.00, 0.00, 0.00),
(722, 2, 1, 'Zapato Perro con cierre #3', '', 'Files/Articulo/cVIcYpMC5vMne8IR3sXAnWXmgMHbzGlMvvO0WKsl.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 30.00, 45.00, 40.00, 0.00, 0.00),
(723, 2, 1, 'Zapato Perro con cierre #4', '', 'Files/Articulo/cVIcYpMC5vMne8IR3sXAnWXmgMHbzGlMvvO0WKsl.jpg', 'A', '-', '0', 'Unidad', '-', 1, 0, 30.00, 45.00, 40.00, 0.00, 0.00),
(724, 2, 1, 'Zapato Perro con cierre #5', '', 'Files/Articulo/cVIcYpMC5vMne8IR3sXAnWXmgMHbzGlMvvO0WKsl.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 30.00, 50.00, 45.00, 0.00, 0.00),
(725, 2, 1, 'Zapato Perro con cierre #6', '', 'Files/Articulo/cVIcYpMC5vMne8IR3sXAnWXmgMHbzGlMvvO0WKsl.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 36.00, 55.00, 50.00, 0.00, 0.00),
(726, 2, 1, 'Zapato Perro con cierre #7', '', 'Files/Articulo/cVIcYpMC5vMne8IR3sXAnWXmgMHbzGlMvvO0WKsl.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 36.00, 60.00, 55.00, 0.00, 0.00),
(727, 2, 1, 'Zapatos Perro #3', '', 'Files/Articulo/cVIcYpMC5vMne8IR3sXAnWXmgMHbzGlMvvO0WKsl.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 36.00, 45.00, 40.00, 0.00, 0.00),
(728, 2, 1, 'Zapatos Perro #4', '', 'Files/Articulo/cVIcYpMC5vMne8IR3sXAnWXmgMHbzGlMvvO0WKsl.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 36.00, 45.00, 40.00, 0.00, 0.00),
(729, 2, 1, 'Zapatos Perro #5', '', 'Files/Articulo/cVIcYpMC5vMne8IR3sXAnWXmgMHbzGlMvvO0WKsl.jpg', 'A', '-', '0', 'Unidad', '-', 1, 2, 36.00, 50.00, 45.00, 0.00, 0.00),
(730, 2, 1, 'Zapatos Perro #6', '', 'Files/Articulo/cVIcYpMC5vMne8IR3sXAnWXmgMHbzGlMvvO0WKsl.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 43.00, 55.00, 50.00, 0.00, 0.00),
(731, 2, 1, 'Zapatos Perro #7', '', 'Files/Articulo/cVIcYpMC5vMne8IR3sXAnWXmgMHbzGlMvvO0WKsl.jpg', 'A', '-', '0', 'Unidad', '-', 1, 1, 43.00, 60.00, 55.00, 0.00, 0.00),
(732, 8, 15, 'Superpet Cachorros 125ml', '', 'Files/Articulo/superpetomega6-3paraperroscachorros4186.jpg', 'A', '', '0', 'Unidad', '-', 1, 0, 73.00, 110.00, 100.00, 0.00, 0.00),
(733, 5, 20, 'Cibau Light Adulto  Razas Medianas y Grandes 12kg', '', 'Files/Articulo/cibau light adulto razas medianas y grandes 12kg.png', 'A', '', '0', 'Unidad', '-', 1, 0, 278.00, 305.00, 0.00, 0.00, 0.00),
(734, 5, 20, 'Cibau Adulto Razas PequeÃ±as 3kg', '', 'Files/Articulo/CIBAU-Adult-Mini-2.5kg.jpg', 'A', '', '0', 'Unidad', '-', 1, 0, 86.00, 325.00, 0.00, 0.00, 0.00),
(735, 5, 20, 'Cibau Cachorro Razas PequeÃ±as 3kg', '', 'Files/Articulo/cibau-puppy-mini.png', 'A', '', '0', 'Unidad', '-', 1, 0, 86.00, 95.00, 0.00, 0.00, 0.00),
(736, 5, 20, 'Cibau Adulto Razas Grandes 15kg', '', 'Files/Articulo/233_22_brasil_cibau@adult-maxi.png', 'A', '', '0', 'Unidad', '-', 1, 0, 295.00, 0.00, 0.00, 0.00, 0.00),
(737, 5, 20, 'ECOPET NATURAL JUNIOR PUPPY 20KG', '', 'Files/Articulo/ecopet jr.png', 'A', '', '0', 'Unidad', '-', 1, 0, 325.00, 360.00, 350.00, 0.00, 0.00),
(738, 4, 49, 'Proplan Gato Adulto 3kg', '', 'Files/Articulo/proplan gato adulto.jpg', 'A', '', '0', 'Unidad', '-', 1, 0, 146.13, 190.00, 180.00, 0.00, 0.00),
(739, 8, 19, 'Golpe 100gr', '', 'Files/Articulo/DESINFLAMNTE.png', 'A', '', '0', 'Unidad', '-', 2, 0, 24.50, 50.00, 45.00, 0.00, 0.00),
(740, 3, 19, 'PastoFar 20gr', '', '', 'A', '', '0', 'Unidad', '-', 2, 0, 7.00, 10.00, 0.00, 0.00, 0.00),
(741, 11, 1, 'PastoFar 30gr', '', '', 'A', '', '0', 'Unidad', '-', 2, 0, 10.00, 15.00, 0.00, 0.00, 0.00),
(742, 2, 1, 'Correa 2en1', '', 'Files/Articulo/2en1.jpg', 'A', '', '0', 'Unidad', '-', 1, 0, 25.00, 40.00, 35.00, 0.00, 0.00),
(743, 9, 1, 'Bandeja para Gatos colores', '', 'Files/Articulo/bandeja-plastico-para-gato.jpg', 'A', '', '0', 'Unidad', '-', 1, 0, 18.33, 40.00, 35.00, 0.00, 0.00),
(744, 3, 1, 'Correa de Nylon y Cuero ', '', 'Files/Articulo/nylon cuero.jpg', 'A', '', '0', 'Unidad', '-', 1, 0, 13.33, 30.00, 25.00, 0.00, 0.00),
(745, 3, 1, 'Furminator L Pelo Largo', '', 'Files/Articulo/furminator-caes-pelos-longo-g-101008-c74423658c53067a4d58f72e53689e24.jpg', 'A', '', '0', 'Unidad', '-', 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00),
(746, 11, 1, 'prueba 1', '', '', 'A', '', '1', 'Unidad', '-', 21, 0, 50.00, 100.00, 90.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `estado`) VALUES
(1, 'Accesorios para Gatos', 'A'),
(2, 'Accesorios para Perros', 'A'),
(3, 'Accesorios para Perros y Gatos', 'A'),
(4, 'Alimentos para Gatos', 'A'),
(5, 'Alimentos Para Perros', 'A'),
(6, 'Alimentos para Perros y Gatos', 'A'),
(7, 'Aseo y Belleza', 'A'),
(8, 'Farmacia Veterinaria', 'A'),
(9, 'Higiene Gatos', 'A'),
(10, 'Ropa para Perros', 'A'),
(11, 'Salud', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `idcredito` int(11) NOT NULL,
  `idingreso` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `tipo_credito` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `total_pago` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_documento_sucursal`
--

CREATE TABLE `detalle_documento_sucursal` (
  `iddetalle_documento_sucursal` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idtipo_documento` int(11) NOT NULL,
  `ultima_serie` varchar(7) COLLATE utf8_spanish_ci NOT NULL,
  `ultimo_numero` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_documento_sucursal`
--

INSERT INTO `detalle_documento_sucursal` (`iddetalle_documento_sucursal`, `idsucursal`, `idtipo_documento`, `ultima_serie`, `ultimo_numero`) VALUES
(6, 5, 3, '1', '92'),
(11, 2, 3, '1', '92'),
(12, 2, 14, '1', '88');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ingreso`
--

CREATE TABLE `detalle_ingreso` (
  `iddetalle_ingreso` int(11) NOT NULL,
  `idingreso` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `codigo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `serie` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(1024) COLLATE utf8_spanish_ci DEFAULT NULL,
  `stock_ingreso` int(11) NOT NULL,
  `stock_ingreso2` int(11) NOT NULL,
  `stock_actual` int(11) NOT NULL,
  `precio_compra` decimal(8,2) NOT NULL,
  `precio_ventadistribuidor` decimal(8,2) NOT NULL,
  `precio_ventapublico` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_ingreso`
--

INSERT INTO `detalle_ingreso` (`iddetalle_ingreso`, `idingreso`, `idarticulo`, `codigo`, `serie`, `descripcion`, `stock_ingreso`, `stock_ingreso2`, `stock_actual`, `precio_compra`, `precio_ventadistribuidor`, `precio_ventapublico`) VALUES
(1, 1, 1, '0', '0', '', 0, 0, 1, 35.80, 60.00, 70.00),
(2, 1, 2, '', '', '', 3, 3, 3, 11.00, 20.00, 25.00),
(3, 1, 3, '', '', '', 1, 1, 1, 86.00, 100.00, 110.00),
(4, 1, 4, '', '', '', 2, 2, 2, 120.00, 140.00, 150.00),
(5, 1, 5, '', '', '', 3, 3, 3, 166.30, 200.00, 220.00),
(6, 1, 6, '', '', '', 1, 1, 1, 87.70, 150.00, 160.00),
(7, 1, 7, '', '', '', 5, 5, 5, 118.60, 140.00, 150.00),
(8, 1, 8, '', '', '', 1, 1, 1, 381.60, 480.00, 500.00),
(9, 1, 9, '', '', '', 1, 1, 1, 557.70, 700.00, 730.00),
(10, 1, 10, '', '', '', 0, 0, 0, 115.80, 135.00, 140.00),
(11, 1, 11, '', '', '', 21, 21, 21, 26.70, 40.00, 42.00),
(12, 1, 12, '', '', '', 0, 0, 0, 30.00, 40.00, 45.00),
(13, 1, 13, '', '', '', 4, 4, 2, 33.00, 40.00, 42.00),
(14, 1, 14, '', '', '', 18, 18, 17, 31.70, 45.00, 47.00),
(15, 1, 15, '', '', '', 0, 0, 0, 31.70, 36.00, 40.00),
(16, 1, 16, '', '', '', 43, 43, 41, 26.70, 35.00, 37.00),
(17, 1, 17, '', '', '', 13, 13, 13, 26.00, 35.00, 40.00),
(18, 1, 18, '', '', '', 2, 2, 2, 29.00, 45.00, 50.00),
(19, 1, 19, '', '', '', 3, 3, 3, 17.00, 25.00, 30.00),
(20, 1, 20, '', '', '', 12, 12, 12, 41.00, 60.00, 70.00),
(21, 1, 21, '', '', '', 0, 0, 0, 45.80, 55.00, 60.00),
(22, 1, 22, '', '', '', 2, 2, 2, 220.00, 260.00, 280.00),
(23, 1, 23, '', '', '', 0, 0, 0, 2.30, 4.50, 5.00),
(24, 1, 24, '', '', '', 5, 5, 5, 45.00, 70.00, 80.00),
(25, 1, 25, '', '', '', 0, 0, 0, 166.00, 205.00, 215.00),
(26, 1, 26, '', '', '', 1, 1, 1, 36.60, 45.00, 50.00),
(27, 1, 27, '', '', '', 0, 0, 0, 76.60, 90.00, 100.00),
(28, 1, 28, '', '', '', 0, 0, 0, 59.20, 70.00, 75.00),
(29, 1, 29, '', '', '', 0, 0, 0, 76.60, 90.00, 100.00),
(30, 1, 30, '', '', '', 0, 0, 0, 59.20, 70.00, 75.00),
(31, 1, 31, '', '', '', 0, 0, 0, 36.60, 45.00, 50.00),
(32, 1, 32, '', '', '', 2, 2, 2, 201.84, 240.00, 280.00),
(33, 1, 33, '', '', '', 0, 0, 0, 513.00, 570.00, 600.00),
(34, 1, 34, '', '', '', 0, 0, 0, 271.00, 320.00, 350.00),
(35, 1, 35, '', '', '', 1, 1, 1, 230.00, 280.00, 300.00),
(36, 1, 36, '', '', '', 1, 1, 1, 92.00, 130.00, 40.00),
(37, 1, 37, '', '', '', 0, 0, 0, 27.00, 35.00, 30.00),
(38, 1, 38, '', '', '', 5, 5, 5, 23.00, 26.00, 150.00),
(39, 1, 39, '', '', '', 0, 0, 0, 50.00, 65.00, 70.00),
(40, 1, 40, '', '', '', 6, 6, 6, 35.00, 50.00, 55.00),
(41, 1, 41, '', '', '', 5, 5, 5, 13.00, 20.00, 25.00),
(42, 1, 42, '', '', '', 3, 3, 3, 30.00, 40.00, 50.00),
(43, 1, 43, '', '', '', 3, 3, 3, 15.00, 20.00, 25.00),
(44, 1, 44, '', '', '', 0, 0, 0, 20.00, 25.00, 30.00),
(45, 1, 45, '', '', '', 4, 4, 4, 14.00, 25.00, 30.00),
(46, 1, 46, '', '', '', 4, 4, 4, 15.00, 25.00, 30.00),
(47, 1, 47, '', '', '', 12, 12, 12, 25.00, 35.00, 40.00),
(48, 1, 48, '', '', '', 1, 1, 1, 38.00, 55.00, 60.00),
(49, 1, 49, '', '', '', 2, 2, 2, 57.00, 70.00, 75.00),
(50, 1, 50, '', '', '', 6, 6, 6, 18.20, 35.00, 40.00),
(51, 1, 51, '', '', '', 6, 6, 3, 25.00, 35.00, 36.00),
(52, 1, 52, '', '', '', 17, 17, 14, 25.00, 35.00, 37.00),
(53, 1, 53, '', '', '', 12, 12, 12, 25.00, 35.00, 37.00),
(54, 1, 54, '', '', '', 16, 16, 16, 25.00, 35.00, 37.00),
(55, 1, 55, '', '', '', 6, 6, 6, 7.90, 25.00, 30.00),
(56, 1, 56, '', '', '', 41, 41, 40, 5.50, 7.00, 7.20),
(57, 1, 57, '', '', '', 1, 1, 1, 22.50, 25.00, 30.00),
(58, 1, 58, '', '', '', 2, 2, 2, 22.50, 35.00, 40.00),
(59, 1, 59, '', '', '', 2, 2, 2, 22.50, 45.00, 50.00),
(60, 1, 60, '', '', '', 1, 1, 1, 22.50, 55.00, 60.00),
(61, 1, 61, '', '', '', 1, 1, 1, 9.30, 8.00, 10.00),
(62, 1, 62, '', '', '', 1, 1, 0, 9.30, 13.00, 15.00),
(63, 1, 63, '', '', '', 1, 1, 1, 9.30, 18.00, 20.00),
(64, 1, 64, '', '', '', 1, 1, 0, 9.30, 20.00, 25.00),
(65, 1, 65, '', '', '', 0, 0, 0, 9.30, 25.00, 30.00),
(66, 1, 66, '', '', '', 1, 1, 1, 9.30, 30.00, 35.00),
(67, 1, 67, '', '', '', 1, 1, 1, 9.30, 35.00, 40.00),
(68, 1, 68, '', '', '', 1, 1, 1, 15.00, 25.00, 30.00),
(69, 1, 69, '', '', '', 1, 1, 1, 20.00, 35.00, 40.00),
(70, 1, 70, '', '', '', 0, 0, 0, 23.00, 45.00, 50.00),
(71, 1, 71, '', '', '', 0, 0, 0, 70.00, 80.00, 90.00),
(72, 1, 72, '', '', '', 7, 7, 4, 16.20, 25.00, 30.00),
(73, 1, 73, '', '', '', 6, 6, 5, 16.20, 25.00, 30.00),
(74, 1, 74, '', '', '', 1, 1, 0, 590.00, 660.00, 700.00),
(75, 1, 75, '', '', '', 0, 0, 0, 247.00, 310.00, 330.00),
(76, 1, 76, '', '', '', 0, 0, 0, 440.80, 560.00, 580.00),
(77, 1, 77, '', '', '', 1, 1, 1, 640.90, 770.00, 800.00),
(78, 1, 78, '', '', '', 1, 1, 1, 127.50, 155.00, 160.00),
(79, 1, 79, '', '', '', 1, 1, 1, 20.00, 35.00, 40.00),
(80, 1, 80, '', '', '', 0, 0, 0, 66.00, 110.00, 120.00),
(81, 1, 81, '', '', '', 1, 1, 1, 66.00, 90.00, 100.00),
(82, 1, 82, '', '', '', 1, 1, 1, 66.00, 70.00, 80.00),
(83, 1, 83, '', '', '', 1, 1, 1, 60.00, 75.00, 80.00),
(84, 1, 84, '', '', '', 2, 2, 2, 50.00, 65.00, 70.00),
(85, 1, 85, '', '', '', 3, 3, 3, 40.00, 55.00, 60.00),
(86, 1, 86, '', '', '', 1, 1, 1, 70.00, 85.00, 90.00),
(87, 1, 87, '', '', '', 0, 0, 0, 208.00, 260.00, 270.00),
(88, 1, 88, '', '', '', 0, 0, 0, 112.00, 140.00, 150.00),
(89, 1, 89, '', '', '', 0, 0, 0, 64.00, 85.00, 90.00),
(90, 1, 90, '', '', '', 1, 1, 1, 110.00, 130.00, 135.00),
(91, 1, 91, '', '', '', 1, 1, 1, 110.00, 130.00, 135.00),
(92, 1, 92, '', '', '', 22, 22, 22, 163.00, 190.00, 200.00),
(93, 1, 93, '', '', '', 0, 0, 0, 163.00, 190.00, 200.00),
(94, 1, 94, '', '', '', 1, 1, 1, 63.00, 73.00, 75.00),
(95, 1, 95, '', '', '', 3, 3, 3, 63.00, 73.00, 75.00),
(96, 1, 96, '', '', '', 1, 1, 0, 275.00, 340.00, 355.00),
(97, 1, 97, '', '', '', 0, 0, 0, 45.00, 60.00, 65.00),
(98, 1, 98, '', '', '', 0, 0, 0, 50.00, 65.00, 70.00),
(99, 1, 99, '', '', '', 4, 4, 4, 30.00, 45.00, 50.00),
(100, 1, 100, '', '', '', 2, 2, 2, 25.00, 40.00, 45.00),
(101, 1, 101, '', '', '', 6, 6, 6, 30.00, 45.00, 50.00),
(102, 1, 102, '', '', '', 1, 1, 1, 35.00, 50.00, 55.00),
(103, 1, 103, '', '', '', 3, 3, 3, 40.00, 55.00, 60.00),
(104, 1, 104, '', '', '', 2, 2, 1, 220.00, 650.00, 265.00),
(105, 1, 105, '', '', '', 0, 0, 0, 450.00, 530.00, 600.00),
(106, 1, 106, '', '', '', 30, 30, 29, 5.00, 6.00, 7.00),
(107, 1, 107, '', '', '', 28, 28, 28, 5.00, 6.00, 7.00),
(108, 1, 108, '', '', '', 25, 25, 7, 5.00, 6.00, 7.00),
(109, 1, 109, '', '', '', 3, 3, 3, 30.70, 45.00, 50.00),
(110, 1, 110, '', '', '', 2, 2, 2, 34.80, 50.00, 60.00),
(111, 1, 111, '', '', '', 7, 7, 7, 40.60, 90.00, 100.00),
(112, 1, 112, '', '', '', 2, 2, 2, 30.90, 45.00, 50.00),
(113, 1, 113, '', '', '', 7, 7, 7, 9.00, 20.00, 25.00),
(114, 1, 114, '', '', '', 7, 7, 7, 7.00, 15.00, 20.00),
(115, 1, 115, '', '', '', 1, 1, 1, 27.50, 55.00, 60.00),
(116, 1, 116, '', '', '', 6, 6, 6, 10.00, 25.00, 30.00),
(117, 1, 117, '', '', '', 3, 3, 3, 10.00, 20.00, 25.00),
(118, 1, 118, '', '', '', 3, 3, 3, 8.40, 16.00, 20.00),
(119, 1, 119, '', '', '', 1, 1, 1, 50.00, 65.00, 70.00),
(120, 1, 120, '', '', '', 6, 6, 6, 12.00, 30.00, 35.00),
(121, 1, 121, '', '', '', 1, 1, 1, 15.00, 35.00, 40.00),
(122, 1, 122, '', '', '', 3, 3, 3, 18.00, 40.00, 45.00),
(123, 1, 123, '', '', '', 4, 4, 4, 21.00, 45.00, 50.00),
(124, 1, 124, '', '', '', 1, 1, 1, 50.00, 65.00, 70.00),
(125, 1, 125, '', '', '', 2, 2, 2, 30.00, 45.00, 50.00),
(126, 1, 126, '', '', '', 1, 1, 1, 30.00, 40.00, 45.00),
(127, 1, 127, '', '', '', 1, 1, 0, 100.00, 110.00, 120.00),
(128, 1, 128, '', '', '', 6, 6, 6, 31.00, 40.00, 45.00),
(129, 1, 129, '', '', '', 2, 2, 2, 20.00, 35.00, 40.00),
(130, 1, 130, '', '', '', 2, 2, 2, 23.00, 40.00, 45.00),
(131, 1, 131, '', '', '', 2, 2, 2, 26.00, 45.00, 50.00),
(132, 1, 132, '', '', '', 4, 4, 4, 8.00, 15.00, 20.00),
(133, 1, 133, '', '', '', 3, 3, 3, 11.00, 20.00, 25.00),
(134, 1, 134, '', '', '', 4, 4, 4, 14.00, 25.00, 30.00),
(135, 1, 135, '', '', '', 2, 2, 2, 17.00, 30.00, 35.00),
(136, 1, 136, '', '', '', 3, 3, 3, 20.00, 35.00, 40.00),
(137, 1, 137, '', '', '', 3, 3, 3, 23.00, 40.00, 45.00),
(138, 1, 138, '', '', '', 1, 1, 1, 26.00, 45.00, 50.00),
(139, 1, 139, '', '', '', 2, 2, 2, 29.00, 50.00, 55.00),
(140, 1, 140, '', '', '', 1, 1, 1, 30.00, 45.00, 50.00),
(141, 1, 141, '', '', '', 3, 3, 3, 35.00, 50.00, 55.00),
(142, 1, 142, '', '', '', 4, 4, 4, 40.00, 55.00, 60.00),
(143, 1, 143, '', '', '', 3, 3, 3, 45.00, 60.00, 65.00),
(144, 1, 144, '', '', '', 5, 5, 5, 50.00, 65.00, 70.00),
(145, 1, 145, '', '', '', 5, 5, 5, 55.00, 70.00, 75.00),
(146, 1, 146, '', '', '', 2, 2, 2, 5.00, 15.00, 20.00),
(147, 1, 147, '', '', '', 6, 6, 6, 10.00, 15.00, 20.00),
(148, 1, 148, '', '', '', 3, 3, 3, 0.00, 45.00, 50.00),
(149, 1, 149, '', '', '', 6, 6, 6, 10.00, 10.00, 15.00),
(150, 1, 150, '', '', '', 3, 3, 3, 12.00, 25.00, 30.00),
(151, 1, 151, '', '', '', 0, 0, 0, 480.00, 510.00, 530.00),
(152, 1, 152, '', '', '', 1, 1, 1, 532.00, 600.00, 640.00),
(153, 1, 153, '', '', '', 0, 0, 0, 290.00, 330.00, 350.00),
(154, 1, 154, '', '', '', 2, 2, 0, 350.00, 400.00, 420.00),
(155, 1, 155, '', '', '', 29, 29, 29, 40.00, 65.00, 70.00),
(156, 1, 156, '', '', '', 2, 2, 2, 65.00, 90.00, 100.00),
(157, 1, 157, '', '', '', 2, 2, 2, 55.00, 70.00, 80.00),
(158, 1, 158, '', '', '', 2, 2, 2, 50.00, 65.00, 70.00),
(159, 1, 159, '', '', '', 1, 1, 1, 60.00, 90.00, 100.00),
(160, 1, 160, '', '', '', 0, 0, 0, 40.00, 70.00, 80.00),
(161, 1, 161, '', '', '', 0, 0, 0, 40.00, 65.00, 80.00),
(162, 1, 162, '', '', '', 0, 0, 0, 70.00, 130.00, 140.00),
(163, 1, 163, '', '', '', 6, 6, 6, 10.00, 45.00, 50.00),
(164, 1, 164, '', '', '', 6, 6, 6, 5.90, 35.00, 40.00),
(165, 1, 165, '', '', '', 6, 6, 6, 5.90, 15.00, 20.00),
(166, 1, 166, '', '', '', 11, 11, 11, 5.90, 15.00, 20.00),
(167, 1, 167, '', '', '', 7, 7, 7, 11.70, 20.00, 25.00),
(168, 1, 168, '', '', '', 7, 7, 7, 3.80, 7.00, 10.00),
(169, 1, 169, '', '', '', 2, 2, 2, 3.80, 7.00, 10.00),
(170, 1, 170, '', '', '', 10, 10, 10, 4.17, 80.00, 10.00),
(171, 1, 171, '', '', '', 5, 5, 5, 3.40, 8.00, 10.00),
(172, 1, 172, '', '', '', 10, 10, 10, 3.80, 8.00, 10.00),
(173, 1, 173, '', '', '', 8, 8, 8, 4.60, 15.00, 20.00),
(174, 1, 174, '', '', '', 2, 2, 2, 15.00, 35.00, 40.00),
(175, 1, 175, '', '', '', 1, 1, 1, 15.00, 30.00, 35.00),
(176, 1, 176, '', '', '', 0, 0, 0, 15.00, 25.00, 30.00),
(177, 1, 177, '', '', '', 2, 2, 2, 150.00, 190.00, 200.00),
(178, 1, 178, '', '', '', 3, 3, 3, 160.00, 190.00, 200.00),
(179, 1, 179, '', '', '', 0, 0, 0, 22.90, 30.00, 35.00),
(180, 1, 180, '', '', '', 1, 1, 1, 22.90, 35.00, 40.00),
(181, 1, 181, '', '', '', 1, 1, 1, 22.90, 40.00, 45.00),
(182, 1, 182, '', '', '', 1, 1, 1, 22.90, 25.00, 30.00),
(183, 1, 183, '', '', '', 0, 0, 0, 9.30, 50.00, 55.00),
(184, 1, 184, '', '', '', 0, 0, 0, 9.30, 40.00, 50.00),
(185, 1, 185, '', '', '', 3, 3, 3, 10.00, 20.00, 25.00),
(186, 1, 186, '', '', '', 2, 2, 2, 10.00, 15.00, 20.00),
(187, 1, 187, '', '', '', 3, 3, 3, 10.00, 12.00, 15.00),
(188, 1, 188, '', '', '', 0, 0, 0, 50.00, 65.00, 70.00),
(189, 1, 189, '', '', '', 1, 1, 1, 50.00, 65.00, 70.00),
(190, 1, 190, '', '', '', 1, 1, 1, 65.00, 80.00, 85.00),
(191, 1, 191, '', '', '', 2, 2, 2, 50.00, 65.00, 70.00),
(192, 1, 192, '', '', '', 1, 1, 1, 4.60, 8.00, 10.00),
(193, 1, 193, '', '', '', 7, 7, 7, 9.20, 16.00, 20.00),
(194, 1, 194, '', '', '', 9, 9, 9, 10.90, 20.00, 25.00),
(195, 1, 195, '', '', '', 6, 6, 6, 9.20, 12.00, 15.00),
(196, 1, 196, '', '', '', 0, 0, 0, 35.00, 50.00, 55.00),
(197, 1, 197, '', '', '', 2, 2, 2, 9.20, 15.00, 20.00),
(198, 1, 198, '', '', '', 0, 0, 0, 11.70, 20.00, 25.00),
(199, 1, 199, '', '', '', 1, 1, 1, 35.00, 50.00, 55.00),
(200, 1, 200, '', '', '', 1, 1, 1, 16.70, 35.00, 40.00),
(201, 1, 201, '', '', '', 3, 3, 3, 25.00, 45.00, 50.00),
(202, 1, 202, '', '', '', 1, 1, 1, 25.00, 30.00, 35.00),
(203, 1, 203, '', '', '', 1, 1, 1, 10.00, 25.00, 30.00),
(204, 1, 204, '', '', '', 1, 1, 1, 40.00, 50.00, 55.00),
(205, 1, 205, '', '', '', 1, 1, 1, 8.40, 15.00, 20.00),
(206, 1, 206, '', '', '', 4, 4, 4, 7.70, 15.00, 20.00),
(207, 1, 207, '', '', '', 6, 6, 6, 7.70, 15.00, 20.00),
(208, 1, 208, '', '', '', 24, 24, 24, 20.00, 35.00, 40.00),
(209, 1, 209, '', '', '', 2, 2, 2, 15.00, 20.00, 30.00),
(210, 1, 210, '', '', '', 0, 0, 0, 88.00, 140.00, 150.00),
(211, 1, 211, '', '', '', 4, 4, 4, 21.60, 35.00, 40.00),
(212, 1, 212, '', '', '', 3, 3, 3, 15.00, 25.00, 30.00),
(213, 1, 213, '', '', '', 4, 4, 4, 18.00, 30.00, 35.00),
(214, 1, 214, '', '', '', 0, 0, 0, 21.00, 35.00, 40.00),
(215, 1, 215, '', '', '', 2, 2, 2, 24.00, 40.00, 45.00),
(216, 1, 216, '', '', '', 1, 1, 1, 27.00, 45.00, 50.00),
(217, 1, 217, '', '', '', 3, 3, 3, 13.00, 20.00, 25.00),
(218, 1, 218, '', '', '', 0, 0, 0, 5.00, 6.00, 7.00),
(219, 1, 219, '', '', '', 31, 31, 15, 527.00, 6.00, 7.00),
(220, 1, 220, '', '', '', 33, 33, 15, 5.00, 6.00, 7.00),
(221, 1, 221, '', '', '', 26, 26, 23, 5.00, 6.00, 7.00),
(222, 1, 222, '', '', '', 8, 8, 8, 14.20, 25.00, 30.00),
(223, 1, 223, '', '', '', 11, 11, 11, 20.90, 35.00, 40.00),
(224, 1, 224, '', '', '', 64, 64, 64, 2.80, 4.50, 5.00),
(226, 1, 225, '', '', '', 1, 1, 1, 325.00, 350.00, 360.00),
(227, 1, 226, '', '', '', 0, 0, 0, 231.00, 270.00, 280.00),
(228, 1, 227, '', '', '', 3, 3, 3, 294.00, 320.00, 325.00),
(229, 1, 228, '', '', '', 1, 1, 0, 290.00, 340.00, 350.00),
(230, 1, 229, '', '', '', 1, 1, 1, 244.00, 260.00, 270.00),
(231, 1, 230, '', '', '', 3, 3, 3, 41.80, 50.00, 55.00),
(232, 1, 231, '', '', '', 2, 2, 2, 40.80, 50.00, 55.00),
(233, 1, 232, '', '', '', 0, 0, 0, 47.40, 60.00, 65.00),
(234, 1, 233, '', '', '', 2, 2, 2, 25.00, 35.00, 40.00),
(235, 1, 234, '', '', '', 0, 0, 0, 33.00, 45.00, 50.00),
(236, 1, 235, '', '', '', 1, 1, 1, 0.00, 5.00, 10.00),
(237, 1, 236, '', '', '', 0, 0, 0, 12.00, 12.00, 12.00),
(238, 1, 237, '', '', '', 15, 15, 15, 150.00, 230.00, 250.00),
(239, 1, 238, '', '', '', 3, 3, 3, 69.67, 90.00, 100.00),
(240, 1, 239, '', '', '', 1, 1, 1, 355.00, 420.00, 450.00),
(241, 1, 240, '', '', '', 0, 0, 0, 61.50, 70.00, 450.00),
(242, 1, 241, '', '', '', 0, 0, 0, 355.00, 320.00, 100.00),
(243, 1, 242, '', '', '', 4, 4, 4, 72.00, 90.00, 90.00),
(244, 1, 243, '', '', '', 5, 5, 5, 69.67, 80.00, 100.00),
(245, 1, 244, '', '', '', 0, 0, 0, 78.83, 90.00, 90.00),
(246, 1, 245, '', '', '', 2, 2, 2, 68.50, 80.00, 100.00),
(247, 1, 246, '', '', '', 0, 0, 0, 78.83, 90.00, 80.00),
(248, 1, 247, '', '', '', 3, 3, 3, 58.20, 70.00, 75.00),
(249, 1, 248, '', '', '', 3, 3, 3, 58.20, 70.00, 75.00),
(250, 1, 249, '', '', '', 11, 11, 11, 17.00, 20.00, 22.00),
(251, 1, 250, '', '', '', 4, 4, 4, 32.00, 40.00, 45.00),
(252, 1, 251, '', '', '', 10, 10, 10, 17.00, 20.00, 22.00),
(253, 1, 252, '', '', '', 77, 77, 77, 30.00, 40.00, 45.00),
(254, 1, 253, '', '', '', 6, 6, 6, 33.50, 45.00, 50.00),
(255, 1, 254, '', '', '', 2, 2, 2, 23.00, 35.00, 40.00),
(256, 1, 255, '', '', '', 1, 1, 1, 120.13, 150.00, 155.00),
(257, 1, 256, '', '', '', 0, 0, 0, 63.70, 75.00, 80.00),
(258, 1, 257, '', '', '', 0, 0, 0, 132.60, 160.00, 170.00),
(259, 1, 258, '', '', '', 4, 4, 4, 115.50, 140.00, 150.00),
(260, 1, 259, '', '', '', 1, 1, 1, 121.00, 150.00, 160.00),
(261, 1, 260, '', '', '', 5, 5, 5, 167.00, 210.00, 220.00),
(262, 1, 261, '', '', '', 0, 0, 0, 4.40, 6.00, 7.00),
(263, 1, 262, '', '', '', 15, 15, 14, 4.40, 6.00, 7.00),
(264, 1, 263, '', '', '', 3, 3, 0, 4.40, 6.00, 7.00),
(265, 1, 264, '', '', '', 1, 1, 1, 27.00, 45.00, 50.00),
(266, 1, 265, '', '', '', 5, 5, 5, 28.00, 50.00, 55.00),
(267, 1, 266, '', '', '', 6, 6, 6, 20.70, 40.00, 45.00),
(268, 1, 267, '', '', '', 6, 6, 6, 22.50, 45.00, 50.00),
(269, 1, 268, '', '', '', 5, 5, 5, 18.60, 35.00, 40.00),
(270, 1, 269, '', '', '', 1, 1, 0, 130.00, 150.00, 160.00),
(271, 1, 270, '', '', '', 0, 0, 0, 143.00, 170.00, 180.00),
(272, 1, 271, '', '', '', 2, 2, 0, 422.00, 480.00, 520.00),
(273, 1, 272, '', '', '', 2, 2, 2, 15.20, 25.00, 30.00),
(274, 1, 273, '', '', '', 3, 3, 3, 130.00, 180.00, 200.00),
(275, 1, 274, '', '', '', 5, 5, 5, 13.00, 16.00, 20.00),
(276, 1, 275, '', '', '', 5, 5, 5, 13.00, 16.00, 20.00),
(277, 1, 276, '', '', '', 0, 0, 0, 13.00, 16.00, 20.00),
(278, 1, 277, '', '', '', 0, 0, 0, 13.00, 16.00, 20.00),
(279, 1, 278, '', '', '', 1, 1, 0, 586.00, 700.00, 740.00),
(280, 1, 279, '', '', '', 2, 2, 1, 147.00, 170.00, 180.00),
(281, 1, 280, '', '', '', 0, 0, 0, 158.00, 180.00, 190.00),
(282, 1, 281, '', '', '', 9, 9, 9, 36.30, 50.00, 60.00),
(283, 1, 282, '', '', '', 1, 1, 0, 600.00, 700.00, 720.00),
(284, 1, 283, '', '', '', 2, 2, 0, 600.00, 700.00, 720.00),
(285, 1, 284, '', '', '', 12, 12, 12, 13.80, 25.00, 30.00),
(286, 1, 285, '', '', '', 5, 5, 5, 13.00, 16.00, 20.00),
(287, 1, 286, '', '', '', 5, 5, 5, 38.00, 50.00, 60.00),
(288, 1, 287, '', '', '', 20, 20, 20, 12.00, 15.00, 25.00),
(289, 1, 288, '', '', '', 3, 3, 3, 18.40, 30.00, 35.00),
(290, 1, 289, '', '', '', 1, 1, 1, 20.00, 35.00, 40.00),
(291, 1, 290, '', '', '', 0, 0, 0, 10.00, 30.00, 35.00),
(292, 1, 291, '', '', '', 5, 5, 5, 13.00, 20.00, 25.00),
(293, 1, 292, '', '', '', 3, 3, 3, 10.00, 16.00, 20.00),
(294, 1, 293, '', '', '', 2, 2, 2, 32.02, 35.00, 40.00),
(295, 1, 294, '', '', '', 0, 0, 0, 49.76, 55.00, 60.00),
(296, 1, 295, '', '', '', 8, 8, 3, 182.00, 210.00, 225.00),
(297, 1, 296, '', '', '', 2, 2, 0, 20.00, 50.00, 60.00),
(298, 1, 297, '', '', '', 0, 0, 0, 147.00, 175.00, 180.00),
(299, 1, 298, '', '', '', 3, 3, 1, 31.20, 45.00, 50.00),
(300, 1, 299, '', '', '', 5, 5, 5, 13.00, 16.00, 20.00),
(301, 1, 300, '', '', '', 2, 2, 2, 8.40, 12.00, 15.00),
(302, 1, 301, '', '', '', 114, 114, 114, 2.60, 3.00, 3.50),
(303, 1, 302, '', '', '', 5, 5, 5, 7.05, 7.50, 8.00),
(304, 1, 303, '', '', '', 10, 10, 10, 2.90, 3.50, 4.00),
(305, 1, 304, '', '', '', 7, 7, 7, 15.90, 20.00, 25.00),
(306, 1, 305, '', '', '', 7, 7, 7, 16.80, 20.00, 25.00),
(307, 1, 306, '', '', '', 0, 0, 0, 30.00, 35.00, 40.00),
(308, 1, 307, '', '', '', 0, 0, 0, 15.00, 20.00, 25.00),
(309, 1, 308, '', '', '', 2, 2, 2, 8.00, 10.00, 15.00),
(310, 1, 309, '', '', '', 0, 0, 0, 7.50, 12.00, 15.00),
(311, 1, 310, '', '', '', 5, 5, 5, 6.70, 25.00, 30.00),
(312, 1, 311, '', '', '', 2, 2, 2, 10.00, 15.00, 20.00),
(313, 1, 312, '', '', '', 51, 51, 0, 14.00, 15.00, 17.00),
(314, 1, 313, '', '', '', 1, 1, 0, 150.00, 190.00, 200.00),
(315, 1, 314, '', '', '', 1, 1, 1, 75.00, 110.00, 120.00),
(316, 1, 315, '', '', '', 5, 5, 5, 14.20, 25.00, 30.00),
(317, 1, 316, '', '', '', 2, 2, 2, 12.50, 25.00, 30.00),
(318, 1, 317, '', '', '', 2, 2, 2, 25.00, 45.00, 50.00),
(319, 1, 318, '', '', '', 4, 4, 4, 25.00, 30.00, 35.00),
(320, 1, 319, '', '', '', 5, 5, 5, 20.00, 25.00, 30.00),
(321, 1, 320, '', '', '', 5, 5, 5, 12.50, 25.00, 30.00),
(322, 1, 321, '', '', '', 1, 1, 1, 20.00, 35.00, 40.00),
(323, 1, 322, '', '', '', 2, 2, 2, 28.00, 35.00, 40.00),
(324, 1, 323, '', '', '', 8, 8, 8, 10.00, 15.00, 20.00),
(325, 1, 324, '', '', '', 2, 2, 2, 7.90, 16.00, 20.00),
(326, 1, 325, '', '', '', 7, 7, 4, 48.20, 55.00, 60.00),
(327, 1, 326, '', '', '', 3, 3, 0, 105.00, 200.00, 205.00),
(328, 1, 327, '', '', '', 1, 1, 1, 447.00, 520.00, 540.00),
(329, 1, 328, '', '', '', 12, 12, 11, 14.00, 15.00, 16.00),
(330, 1, 329, '', '', '', 1, 1, 1, 28.90, 35.00, 40.00),
(331, 1, 330, '', '', '', 1, 1, 1, 29.70, 35.00, 40.00),
(332, 1, 331, '', '', '', 3, 3, 3, 85.10, 100.00, 110.00),
(333, 1, 332, '', '', '', 3, 3, 3, 73.00, 90.00, 95.00),
(334, 1, 333, '', '', '', 1, 1, 1, 52.10, 60.00, 65.00),
(335, 1, 334, '', '', '', 2, 2, 2, 125.10, 150.00, 160.00),
(336, 1, 335, '', '', '', 2, 2, 2, 47.85, 55.00, 60.00),
(337, 1, 336, '', '', '', 2, 2, 2, 160.10, 200.00, 210.00),
(338, 1, 337, '', '', '', 0, 0, 0, 51.40, 60.00, 65.00),
(339, 1, 338, '', '', '', 0, 0, 0, 86.90, 100.00, 110.00),
(340, 1, 339, '', '', '', 2, 2, 2, 110.00, 135.00, 145.00),
(341, 1, 340, '', '', '', 1, 1, 1, 89.80, 110.00, 115.00),
(342, 1, 341, '', '', '', 3, 3, 3, 79.60, 100.00, 105.00),
(343, 1, 342, '', '', '', 1, 1, 1, 100.80, 120.00, 130.00),
(344, 1, 343, '', '', '', 0, 0, 0, 77.10, 95.00, 100.00),
(345, 1, 344, '', '', '', 1, 1, 1, 134.50, 165.00, 175.00),
(346, 1, 345, '', '', '', 2, 2, 2, 168.70, 210.00, 220.00),
(347, 1, 346, '', '', '', 2, 2, 2, 80.60, 95.00, 100.00),
(348, 1, 347, '', '', '', 1, 1, 1, 104.30, 125.00, 135.00),
(349, 1, 348, '', '', '', 1, 1, 1, 78.70, 95.00, 100.00),
(350, 1, 349, '', '', '', 0, 0, 0, 35.00, 40.00, 45.00),
(351, 1, 350, '', '', '', 0, 0, 0, 33.90, 40.00, 45.00),
(352, 1, 351, '', '', '', 2, 2, 2, 38.50, 45.00, 50.00),
(353, 1, 352, '', '', '', 2, 2, 2, 43.10, 55.00, 60.00),
(354, 1, 353, '', '', '', 2, 2, 2, 27.00, 30.00, 35.00),
(355, 1, 354, '', '', '', 2, 2, 2, 77.30, 95.00, 100.00),
(356, 1, 355, '', '', '', 1, 1, 1, 62.00, 75.00, 80.00),
(357, 1, 356, '', '', '', 2, 2, 2, 46.00, 55.00, 60.00),
(358, 1, 357, '', '', '', 2, 2, 2, 76.00, 95.00, 100.00),
(359, 1, 358, '', '', '', 2, 2, 2, 62.00, 75.00, 80.00),
(360, 1, 359, '', '', '', 2, 2, 2, 41.10, 50.00, 55.00),
(361, 1, 360, '', '', '', 2, 2, 2, 52.70, 70.00, 80.00),
(362, 1, 361, '', '', '', 9, 9, 9, 60.20, 80.00, 100.00),
(363, 1, 362, '', '', '', 4, 4, 4, 35.00, 50.00, 55.00),
(364, 1, 363, '', '', '', 4, 4, 4, 32.20, 45.00, 50.00),
(365, 1, 364, '', '', '', 0, 0, 0, 81.10, 95.00, 100.00),
(366, 1, 365, '', '', '', 1, 1, 1, 52.10, 65.00, 70.00),
(367, 1, 366, '', '', '', 1, 1, 1, 142.20, 175.00, 185.00),
(368, 1, 367, '', '', '', 0, 0, 0, 127.90, 155.00, 165.00),
(369, 1, 368, '', '', '', 3, 3, 3, 43.70, 50.00, 55.00),
(370, 1, 369, '', '', '', 0, 0, 0, 43.70, 50.00, 55.00),
(371, 1, 370, '', '', '', 2, 2, 2, 43.70, 50.00, 55.00),
(372, 1, 371, '', '', '', 1, 1, 1, 32.00, 45.00, 50.00),
(373, 1, 372, '', '', '', 170, 170, 170, 1.50, 2.50, 3.00),
(374, 1, 373, '', '', '', 100, 100, 100, 2.75, 4.50, 5.00),
(375, 1, 374, '', '', '', 0, 0, 0, 35.00, 45.00, 50.00),
(376, 1, 375, '', '', '', 2, 2, 2, 30.00, 50.00, 55.00),
(377, 1, 376, '', '', '', 0, 0, 0, 580.00, 600.00, 730.00),
(378, 1, 377, '', '', '', 10, 10, 10, 15.00, 35.00, 40.00),
(379, 1, 378, '', '', '', 0, 0, 0, 35.00, 55.00, 60.00),
(380, 1, 379, '', '', '', 1, 1, 1, 13.00, 25.00, 30.00),
(381, 1, 380, '', '', '', 6, 6, 3, 16.80, 25.00, 30.00),
(382, 1, 381, '', '', '', 9, 9, 6, 18.60, 25.00, 30.00),
(383, 1, 382, '', '', '', 49, 49, 49, 45.00, 55.00, 65.00),
(384, 1, 383, '', '', '', 7, 7, 7, 28.00, 40.00, 45.00),
(385, 1, 384, '', '', '', 0, 0, 0, 23.40, 30.00, 35.00),
(386, 1, 385, '', '', '', 2, 2, 2, 18.00, 22.00, 25.00),
(387, 1, 386, '', '', '', 0, 0, 0, 23.40, 30.00, 35.00),
(388, 1, 387, '', '', '', 3, 3, 3, 18.00, 22.00, 25.00),
(389, 1, 388, '', '', '', 0, 0, 0, 18.00, 22.00, 25.00),
(390, 1, 389, '', '', '', 12, 12, 12, 23.40, 30.00, 35.00),
(391, 1, 390, '', '', '', 1, 1, 1, 95.00, 120.00, 130.00),
(392, 1, 391, '', '', '', 1, 1, 1, 130.00, 150.00, 160.00),
(393, 1, 392, '', '', '', 0, 0, 0, 95.00, 120.00, 130.00),
(394, 1, 393, '', '', '', 1, 1, 1, 130.00, 150.00, 160.00),
(395, 1, 394, '', '', '', 3, 3, 3, 8.00, 15.00, 20.00),
(396, 1, 395, '', '', '', 3, 3, 3, 5.00, 10.00, 15.00),
(397, 1, 396, '', '', '', 2, 2, 2, 11.00, 20.00, 25.00),
(398, 1, 397, '', '', '', 2, 2, 2, 14.00, 25.00, 30.00),
(399, 1, 398, '', '', '', 0, 0, 0, 17.00, 30.00, 35.00),
(400, 1, 399, '', '', '', 2, 2, 2, 20.00, 35.00, 40.00),
(401, 1, 400, '', '', '', 3, 3, 3, 23.00, 40.00, 45.00),
(402, 1, 401, '', '', '', 1, 1, 1, 26.00, 45.00, 50.00),
(403, 1, 402, '', '', '', 4, 4, 4, 29.00, 50.00, 55.00),
(404, 1, 403, '', '', '', 1, 1, 1, 32.00, 55.00, 60.00),
(405, 1, 404, '', '', '', 1, 1, 1, 150.00, 220.00, 250.00),
(406, 1, 405, '', '', '', 0, 0, 0, 90.00, 140.00, 150.00),
(407, 1, 406, '', '', '', 3, 3, 3, 100.00, 170.00, 200.00),
(408, 1, 407, '', '', '', 2, 2, 1, 216.00, 250.00, 260.00),
(409, 1, 408, '', '', '', 0, 0, 0, 63.00, 70.00, 75.00),
(410, 1, 409, '', '', '', 0, 0, 0, 58.00, 60.00, 65.00),
(411, 1, 410, '', '', '', 2, 2, 3, 167.00, 180.00, 185.00),
(412, 1, 411, '', '', '', 8, 8, 2, 189.00, 200.00, 210.00),
(413, 1, 412, '', '', '', 1, 1, 0, 171.00, 185.00, 200.00),
(414, 1, 413, '', '', '', 5, 5, 5, 176.00, 190.00, 200.00),
(415, 1, 414, '', '', '', 2, 2, 2, 215.00, 235.00, 240.00),
(416, 1, 415, '', '', '', 0, 0, 0, 412.00, 460.00, 500.00),
(417, 1, 416, '', '', '', 1, 1, 1, 527.00, 600.00, 630.00),
(418, 1, 417, '', '', '', 4, 4, 3, 690.00, 800.00, 830.00),
(419, 1, 418, '', '', '', 0, 0, 0, 652.00, 740.00, 780.00),
(420, 1, 419, '', '', '', 1, 1, 1, 642.00, 740.00, 780.00),
(421, 1, 420, '', '', '', 1, 1, 0, 757.00, 860.00, 900.00),
(422, 1, 421, '', '', '', 12, 12, 12, 4.00, 6.00, 10.00),
(423, 1, 422, '', '', '', 20, 20, 20, 3.00, 7.00, 10.00),
(424, 1, 423, '', '', '', 1, 1, 1, 10.00, 16.00, 20.00),
(425, 1, 424, '', '', '', 0, 0, 0, 581.00, 680.00, 735.00),
(426, 1, 425, '', '', '', 2, 2, 0, 670.00, 770.00, 800.00),
(427, 1, 426, '', '', '', 1, 1, 1, 160.00, 200.00, 210.00),
(428, 1, 427, '', '', '', 1, 1, 0, 560.00, 650.00, 700.00),
(429, 1, 428, '', '', '', 1, 1, 1, 564.00, 745.00, 775.00),
(430, 1, 429, '', '', '', 1, 1, 1, 698.00, 800.00, 840.00),
(431, 1, 430, '', '', '', 2, 2, 0, 202.00, 240.00, 260.00),
(432, 1, 431, '', '', '', 0, 0, 0, 174.00, 280.00, 300.00),
(433, 1, 432, '', '', '', 35, 35, 35, 10.00, 15.00, 16.00),
(434, 1, 433, '', '', '', 3, 3, 1, 85.00, 90.00, 100.00),
(435, 1, 434, '', '', '', 1, 1, 0, 758.00, 860.00, 900.00),
(436, 1, 435, '', '', '', 2, 2, 0, 235.00, 270.00, 290.00),
(437, 1, 436, '', '', '', 0, 0, 0, 83.00, 95.00, 100.00),
(438, 1, 437, '', '', '', 0, 0, 0, 200.00, 280.00, 290.00),
(439, 1, 438, '', '', '', 4, 4, 1, 90.00, 100.00, 110.00),
(440, 1, 439, '', '', '', 0, 0, 0, 905.00, 960.00, 1000.00),
(441, 1, 440, '', '', '', 1, 1, 1, 243.00, 280.00, 300.00),
(442, 1, 441, '', '', '', 0, 0, 0, 539.00, 660.00, 700.00),
(443, 1, 442, '', '', '', 0, 0, 0, 106.00, 130.00, 135.00),
(444, 1, 443, '', '', '', 5, 5, 5, 120.00, 180.00, 200.00),
(445, 1, 444, '', '', '', 5, 5, 5, 13.00, 16.00, 20.00),
(446, 1, 445, '', '', '', 6, 6, 6, 10.00, 16.00, 20.00),
(447, 1, 446, '', '', '', 8, 8, 8, 15.00, 20.00, 25.00),
(448, 1, 447, '', '', '', 1, 1, 1, 119.00, 185.00, 195.00),
(449, 1, 448, '', '', '', 0, 0, 2, 146.00, 200.00, 220.00),
(450, 1, 449, '', '', '', 0, 0, 0, 114.00, 160.00, 170.00),
(451, 1, 450, '', '', '', 1, 1, 0, 139.00, 210.00, 230.00),
(452, 1, 451, '', '', '', 0, 0, 0, 60.00, 75.00, 80.00),
(453, 1, 452, '', '', '', 0, 0, 0, 120.00, 140.00, 145.00),
(454, 1, 453, '', '', '', 2, 2, 2, 67.00, 75.00, 80.00),
(455, 1, 454, '', '', '', 1, 1, 1, 72.00, 85.00, 90.00),
(456, 1, 455, '', '', '', 4, 4, 4, 130.00, 150.00, 155.00),
(457, 1, 456, '', '', '', 4, 4, 4, 93.00, 110.00, 115.00),
(458, 1, 457, '', '', '', 1, 1, 1, 23.00, 30.00, 35.00),
(459, 1, 458, '', '', '', 0, 0, 0, 122.00, 140.00, 150.00),
(460, 1, 459, '', '', '', 3, 3, 0, 35.00, 40.00, 45.00),
(461, 1, 460, '', '', '', 0, 0, 0, 500.00, 570.00, 600.00),
(462, 1, 461, '', '', '', 0, 0, 0, 117.00, 135.00, 140.00),
(463, 1, 462, '', '', '', 5, 5, 5, 15.00, 25.00, 30.00),
(464, 1, 463, '', '', '', 11, 11, 11, 4.20, 12.00, 15.00),
(465, 1, 464, '', '', '', 6, 6, 6, 10.00, 15.00, 20.00),
(466, 1, 465, '', '', '', 0, 0, 0, 11.70, 35.00, 40.00),
(467, 1, 466, '', '', '', 1, 1, 1, 50.00, 65.00, 70.00),
(468, 1, 467, '', '', '', 6, 6, 6, 5.00, 15.00, 20.00),
(469, 1, 468, '', '', '', 5, 5, 5, 15.00, 35.00, 40.00),
(470, 1, 469, '', '', '', 1, 1, 1, 5.00, 15.00, 20.00),
(471, 1, 470, '', '', '', 4, 4, 4, 10.50, 12.00, 15.00),
(472, 1, 471, '', '', '', 18, 18, 18, 15.00, 18.00, 5.00),
(473, 1, 472, '', '', '', 10, 10, 10, 18.00, 30.00, 10.00),
(474, 1, 473, '', '', '', 14, 14, 14, 25.00, 45.00, 10.00),
(475, 1, 474, '', '', '', 6, 6, 6, 13.00, 20.00, 15.00),
(476, 1, 475, '', '', '', 18, 18, 18, 2.00, 4.00, 5.00),
(477, 1, 476, '', '', '', 10, 10, 10, 2.00, 8.00, 10.00),
(478, 1, 477, '', '', '', 12, 12, 12, 2.00, 8.00, 5.00),
(479, 1, 478, '', '', '', 1, 1, 1, 2.00, 12.00, 100.00),
(480, 1, 479, '', '', '', 200, 200, 200, 2.00, 4.00, 4.00),
(481, 1, 480, '', '', '', 4, 4, 4, 2.00, 8.00, 20.00),
(482, 1, 481, '', '', '', 2, 2, 2, 2.00, 4.00, 35.00),
(483, 1, 482, '', '', '', 2, 2, 2, 70.00, 90.00, 50.00),
(484, 1, 483, '', '', '', 0, 0, 0, 2.00, 3.50, 25.00),
(485, 1, 484, '', '', '', 4, 4, 4, 13.40, 25.00, 30.00),
(486, 1, 485, '', '', '', 6, 6, 6, 13.40, 25.00, 30.00),
(487, 1, 486, '', '', '', 1, 1, 1, 18.40, 30.00, 35.00),
(488, 1, 487, '', '', '', 6, 6, 6, 23.40, 35.00, 40.00),
(489, 1, 488, '', '', '', 7, 7, 7, 15.90, 25.00, 30.00),
(490, 1, 489, '', '', '', 5, 5, 5, 19.20, 30.00, 35.00),
(491, 1, 490, '', '', '', 8, 8, 8, 23.40, 35.00, 40.00),
(492, 1, 491, '', '', '', 5, 5, 5, 7.90, 25.00, 30.00),
(493, 1, 492, '', '', '', 6, 6, 6, 13.40, 25.00, 30.00),
(494, 1, 493, '', '', '', 4, 4, 4, 16.70, 30.00, 35.00),
(495, 1, 494, '', '', '', 5, 5, 5, 20.90, 35.00, 40.00),
(496, 1, 495, '', '', '', 1, 1, 1, 25.00, 45.00, 50.00),
(497, 1, 496, '', '', '', 5, 5, 5, 11.70, 20.00, 25.00),
(498, 1, 497, '', '', '', 3, 3, 3, 15.00, 25.00, 30.00),
(499, 1, 498, '', '', '', 5, 5, 5, 20.00, 30.00, 35.00),
(500, 1, 499, '', '', '', 5, 5, 5, 23.40, 35.00, 40.00),
(501, 1, 500, '', '', '', 6, 6, 6, 10.90, 30.00, 35.00),
(502, 1, 501, '', '', '', 2, 2, 2, 13.40, 35.00, 40.00),
(503, 1, 502, '', '', '', 4, 4, 4, 36.70, 55.00, 60.00),
(504, 1, 503, '', '', '', 6, 6, 6, 7.00, 15.00, 20.00),
(505, 1, 504, '', '', '', 6, 6, 6, 10.00, 15.00, 20.00),
(506, 1, 505, '', '', '', 1, 1, 1, 22.50, 65.00, 70.00),
(507, 1, 506, '', '', '', 1, 1, 1, 22.50, 60.00, 65.00),
(508, 1, 507, '', '', '', 1, 1, 1, 22.50, 55.00, 60.00),
(509, 1, 508, '', '', '', 1, 1, 1, 22.50, 50.00, 55.00),
(510, 1, 509, '', '', '', 1, 1, 1, 22.50, 45.00, 50.00),
(511, 1, 510, '', '', '', 12, 12, 12, 15.00, 30.00, 35.00),
(512, 1, 511, '', '', '', 12, 12, 12, 18.00, 35.00, 40.00),
(513, 1, 512, '', '', '', 12, 12, 12, 21.00, 40.00, 45.00),
(514, 1, 513, '', '', '', 12, 12, 12, 24.00, 45.00, 50.00),
(515, 1, 514, '', '', '', 12, 12, 11, 27.00, 50.00, 55.00),
(516, 1, 515, '', '', '', 2, 2, 2, 140.00, 180.00, 190.00),
(517, 1, 516, '', '', '', 0, 0, 0, 0.00, 180.00, 200.00),
(518, 1, 517, '', '', '', 1, 1, 1, 20.00, 45.00, 50.00),
(519, 1, 518, '', '', '', 1, 1, 1, 20.00, 40.00, 45.00),
(520, 1, 519, '', '', '', 1, 1, 1, 20.00, 35.00, 40.00),
(521, 1, 520, '', '', '', 1, 1, 1, 20.00, 50.00, 55.00),
(522, 1, 521, '', '', '', 2, 2, 2, 5.00, 6.00, 7.00),
(523, 1, 522, '', '', '', 1, 1, 1, 5.00, 6.00, 7.00),
(524, 1, 523, '', '', '', 0, 0, 0, 5.00, 6.00, 7.00),
(525, 1, 524, '', '', '', 0, 0, 0, 5.00, 6.00, 7.00),
(526, 1, 525, '', '', '', 0, 0, 0, 5.00, 6.00, 7.00),
(527, 1, 526, '', '', '', 0, 0, 0, 10.50, 13.00, 15.00),
(528, 1, 527, '', '', '', 0, 0, 0, 10.50, 13.00, 15.00),
(529, 1, 528, '', '', '', 2, 2, 2, 7.50, 15.00, 20.00),
(530, 1, 529, '', '', '', 3, 3, 3, 6.30, 15.00, 20.00),
(531, 1, 530, '', '', '', 15, 15, 15, 1.00, 12.00, 15.00),
(532, 1, 531, '', '', '', 12, 12, 12, 15.00, 25.00, 30.00),
(533, 1, 532, '', '', '', 5, 5, 5, 10.90, 20.00, 25.00),
(534, 1, 533, '', '', '', 11, 11, 11, 10.00, 13.00, 15.00),
(535, 1, 534, '', '', '', 3, 3, 3, 30.00, 50.00, 60.00),
(536, 1, 535, '', '', '', 6, 6, 6, 10.00, 15.00, 20.00),
(537, 1, 536, '', '', '', 6, 6, 6, 10.00, 10.00, 15.00),
(538, 1, 537, '', '', '', 5, 5, 5, 8.80, 15.00, 20.00),
(539, 1, 538, '', '', '', 2, 2, 2, 36.00, 45.00, 50.00),
(540, 1, 539, '', '', '', 0, 0, 0, 63.00, 80.00, 85.00),
(541, 1, 540, '', '', '', 3, 3, 2, 123.00, 150.00, 160.00),
(542, 1, 541, '', '', '', 2, 2, 0, 540.00, 660.00, 700.00),
(543, 1, 542, '', '', '', 22, 22, 11, 15.00, 17.00, 18.00),
(544, 1, 543, '', '', '', 1, 1, 1, 25.00, 25.00, 35.00),
(545, 1, 544, '', '', '', 0, 0, 0, 90.20, 110.00, 120.00),
(546, 1, 545, '', '', '', 4, 4, 4, 90.20, 110.00, 120.00),
(547, 1, 546, '', '', '', 0, 0, 0, 15.00, 25.00, 30.00),
(548, 1, 547, '', '', '', 0, 0, 0, 25.00, 35.00, 40.00),
(549, 1, 548, '', '', '', 9, 9, 9, 38.00, 55.00, 60.00),
(550, 1, 549, '', '', '', 0, 0, 0, 55.00, 70.00, 75.00),
(551, 1, 550, '', '', '', 4, 4, 4, 25.90, 35.00, 40.00),
(552, 1, 551, '', '', '', 5, 5, 5, 20.90, 30.00, 35.00),
(553, 1, 552, '', '', '', 0, 0, 0, 35.90, 45.00, 50.00),
(554, 1, 553, '', '', '', 2, 2, 2, 10.00, 15.00, 20.00),
(555, 1, 554, '', '', '', 2, 2, 2, 12.50, 20.00, 25.00),
(556, 1, 555, '', '', '', 9, 9, 9, 45.00, 50.00, 55.00),
(557, 1, 556, '', '', '', 8, 8, 8, 40.00, 45.00, 50.00),
(558, 1, 557, '', '', '', 2, 2, 2, 10.00, 20.00, 25.00),
(559, 1, 558, '', '', '', 1, 1, 1, 13.00, 25.00, 30.00),
(560, 1, 559, '', '', '', 4, 4, 4, 16.00, 30.00, 35.00),
(561, 1, 560, '', '', '', 2, 2, 2, 19.00, 35.00, 40.00),
(562, 1, 561, '', '', '', 4, 4, 4, 20.00, 35.00, 40.00),
(563, 1, 562, '', '', '', 1, 1, 1, 25.00, 40.00, 45.00),
(564, 1, 563, '', '', '', 4, 4, 4, 30.00, 45.00, 50.00),
(565, 1, 564, '', '', '', 3, 3, 3, 35.00, 50.00, 55.00),
(566, 1, 565, '', '', '', 1, 1, 1, 38.70, 55.00, 60.00),
(567, 1, 566, '', '', '', 1, 1, 1, 32.50, 45.00, 50.00),
(568, 1, 567, '', '', '', 1, 1, 1, 47.70, 60.00, 65.00),
(569, 1, 568, '', '', '', 1, 1, 1, 56.00, 65.00, 70.00),
(570, 1, 569, '', '', '', 1, 1, 1, 36.30, 50.00, 55.00),
(571, 1, 570, '', '', '', 2, 2, 2, 146.13, 180.00, 190.00),
(572, 1, 571, '', '', '', 1, 1, 1, 345.45, 420.00, 450.00),
(573, 1, 572, '', '', '', 1, 1, 1, 388.90, 480.00, 500.00),
(574, 1, 573, '', '', '', 20, 20, 20, 35.00, 45.00, 50.00),
(575, 1, 574, '', '', '', 3, 3, 3, 17.00, 25.00, 30.00),
(576, 1, 575, '', '', '', 1, 1, 0, 250.00, 280.00, 300.00),
(577, 1, 576, '', '', '', 6, 6, 6, 10.00, 15.00, 20.00),
(578, 1, 577, '', '', '', 3, 3, 3, 50.00, 90.00, 100.00),
(579, 1, 578, '', '', '', 3, 3, 3, 100.00, 150.00, 160.00),
(580, 1, 579, '', '', '', 2, 2, 2, 160.00, 190.00, 200.00),
(581, 1, 580, '', '', '', 1, 1, 1, 448.20, 550.00, 580.00),
(582, 1, 581, '', '', '', 2, 2, 2, 83.60, 110.00, 120.00),
(583, 1, 582, '', '', '', 0, 0, 0, 77.60, 110.00, 120.00),
(584, 1, 583, '', '', '', 4, 4, 4, 83.60, 110.00, 120.00),
(585, 1, 584, '', '', '', 0, 0, 0, 85.00, 110.00, 120.00),
(586, 1, 585, '', '', '', 1, 1, 1, 90.48, 110.00, 120.00),
(587, 1, 586, '', '', '', 6, 6, 6, 10.00, 15.00, 20.00),
(588, 1, 587, '', '', '', 0, 0, 0, 10.00, 16.00, 20.00),
(589, 1, 588, '', '', '', 4, 4, 4, 5.00, 12.00, 15.00),
(590, 1, 589, '', '', '', 2, 2, 2, 10.00, 16.00, 20.00),
(591, 1, 590, '', '', '', 1, 1, 1, 10.00, 16.00, 20.00),
(592, 1, 591, '', '', '', 6, 6, 6, 10.00, 20.00, 25.00),
(593, 1, 592, '', '', '', 6, 6, 6, 10.00, 20.00, 25.00),
(594, 1, 593, '', '', '', 6, 6, 6, 10.00, 15.00, 20.00),
(595, 1, 594, '', '', '', 0, 0, 0, 10.00, 16.00, 20.00),
(596, 1, 595, '', '', '', 3, 3, 3, 7.50, 15.00, 20.00),
(597, 1, 596, '', '', '', 6, 6, 6, 7.90, 20.00, 25.00),
(598, 1, 597, '', '', '', 9, 9, 0, 20.00, 23.00, 25.00),
(599, 1, 598, '', '', '', 1, 1, 1, 0.00, 60.00, 70.00),
(600, 1, 599, '', '', '', 2, 2, 2, 388.90, 480.00, 500.00),
(601, 1, 600, '', '', '', 1, 1, 0, 105.80, 145.00, 150.00),
(602, 1, 601, '', '', '', 0, 0, 0, 156.00, 180.00, 190.00),
(603, 1, 602, '', '', '', 0, 0, 0, 750.00, 850.00, 900.00),
(604, 1, 603, '', '', '', 1, 1, 0, 35.00, 40.00, 45.00),
(605, 1, 604, '', '', '', 2, 2, 0, 157.00, 190.00, 200.00),
(606, 1, 605, '', '', '', 0, 0, 0, 10.50, 13.00, 15.00),
(607, 1, 606, '', '', '', 0, 0, 0, 10.50, 13.00, 15.00),
(608, 1, 607, '', '', '', 0, 0, 0, 10.50, 13.00, 15.00),
(609, 1, 608, '', '', '', 7, 7, 7, 12.50, 16.00, 20.00),
(610, 1, 609, '', '', '', 3, 3, 3, 50.00, 60.00, 70.00),
(611, 1, 610, '', '', '', 0, 0, 0, 186.00, 220.00, 225.00),
(612, 1, 611, '', '', '', 1, 1, 1, 240.00, 280.00, 295.00),
(613, 1, 612, '', '', '', 1, 1, 1, 490.00, 590.00, 620.00),
(614, 1, 613, '', '', '', 2, 2, 2, 143.50, 180.00, 185.00),
(615, 1, 614, '', '', '', 10, 10, 10, 3.00, 30.00, 35.00),
(616, 1, 615, '', '', '', 1, 1, 1, 21.90, 28.00, 30.00),
(617, 1, 616, '', '', '', 2, 2, 2, 13.70, 45.00, 50.00),
(618, 1, 617, '', '', '', 6, 6, 6, 9.80, 15.00, 20.00),
(619, 1, 618, '', '', '', 1, 1, 1, 13.70, 26.00, 30.00),
(620, 1, 619, '', '', '', 0, 0, 0, 25.50, 32.00, 35.00),
(621, 1, 620, '', '', '', 1, 1, 1, 27.40, 45.00, 50.00),
(622, 1, 621, '', '', '', 6, 6, 6, 9.80, 16.00, 20.00),
(623, 1, 622, '', '', '', 3, 3, 3, 13.70, 26.00, 30.00),
(624, 1, 623, '', '', '', 0, 0, 0, 27.40, 45.00, 50.00),
(625, 1, 624, '', '', '', 1, 1, 1, 9.80, 16.00, 20.00),
(626, 1, 625, '', '', '', 2, 2, 1, 13.70, 26.00, 30.00),
(627, 1, 626, '', '', '', 4, 4, 4, 40.80, 80.00, 90.00),
(628, 1, 627, '', '', '', 0, 0, 0, 14.80, 30.00, 35.00),
(629, 1, 628, '', '', '', 3, 3, 2, 21.60, 45.00, 50.00),
(630, 1, 629, '', '', '', 0, 0, 0, 25.50, 32.00, 35.00),
(631, 1, 630, '', '', '', 1, 1, 1, 36.60, 45.00, 50.00),
(632, 1, 631, '', '', '', 7, 7, 7, 10.70, 16.00, 20.00),
(633, 1, 632, '', '', '', 12, 12, 12, 15.00, 26.00, 30.00),
(634, 1, 633, '', '', '', 2, 2, 2, 25.50, 32.00, 35.00),
(635, 1, 634, '', '', '', 0, 0, 0, 55.20, 70.00, 80.00),
(636, 1, 635, '', '', '', 4, 4, 4, 17.20, 30.00, 35.00),
(637, 1, 636, '', '', '', 8, 8, 8, 25.00, 45.00, 50.00),
(638, 1, 637, '', '', '', 0, 0, 0, 21.90, 28.00, 30.00),
(639, 1, 638, '', '', '', 2, 2, 2, 28.50, 35.00, 40.00),
(640, 1, 639, '', '', '', 1, 1, 1, 21.90, 28.00, 30.00),
(641, 1, 640, '', '', '', 4, 4, 4, 28.50, 35.00, 40.00),
(642, 1, 641, '', '', '', 0, 0, 0, 70.00, 70.00, 80.00),
(643, 1, 642, '', '', '', 1, 1, 1, 25.50, 32.00, 35.00),
(644, 1, 643, '', '', '', 1, 1, 1, 25.00, 32.00, 35.00),
(645, 1, 644, '', '', '', 2, 2, 2, 28.50, 35.00, 40.00),
(646, 1, 645, '', '', '', 0, 0, 0, 21.90, 28.00, 30.00),
(647, 1, 646, '', '', '', 0, 0, 0, 28.50, 35.00, 40.00),
(648, 1, 647, '', '', '', 1, 1, 1, 21.90, 28.00, 30.00),
(649, 1, 648, '', '', '', 2, 2, 2, 28.50, 35.00, 40.00),
(650, 1, 649, '', '', '', 1, 1, 1, 21.90, 28.00, 30.00),
(651, 1, 650, '', '', '', 0, 0, 0, 32.20, 50.00, 60.00),
(652, 1, 651, '', '', '', 11, 11, 11, 13.80, 30.00, 35.00),
(653, 1, 652, '', '', '', 2, 2, 2, 39.00, 70.00, 80.00),
(654, 1, 653, '', '', '', 2, 2, 2, 28.40, 50.00, 55.00),
(655, 1, 654, '', '', '', 9, 9, 9, 6.66, 10.00, 15.00),
(656, 1, 655, '', '', '', 0, 0, 0, 410.00, 450.00, 480.00),
(657, 1, 656, '', '', '', 1, 1, 1, 40.00, 55.00, 60.00),
(658, 1, 657, '', '', '', 1, 1, 1, 55.00, 70.00, 75.00),
(659, 1, 658, '', '', '', 5, 5, 0, 8.50, 10.00, 11.00),
(660, 1, 659, '', '', '', 3, 3, 0, 7.69, 9.00, 10.00),
(661, 1, 660, '', '', '', 10, 10, 0, 9.30, 11.00, 12.00),
(662, 1, 661, '', '', '', 8, 8, 0, 22.00, 23.00, 25.00),
(663, 1, 662, '', '', '', 6, 6, 6, 65.47, 70.00, 75.00),
(664, 1, 663, '', '', '', 10, 10, 10, 162.90, 190.00, 200.00),
(665, 1, 664, '', '', '', 5, 5, 5, 33.00, 40.00, 45.00),
(666, 1, 665, '', '', '', 10, 10, 9, 78.20, 90.00, 100.00),
(667, 1, 666, '', '', '', 1, 1, 0, 13.80, 25.00, 30.00),
(668, 1, 667, '', '', '', 0, 0, 0, 73.00, 100.00, 110.00),
(669, 1, 668, '', '', '', 0, 0, 0, 73.00, 100.00, 110.00),
(670, 1, 669, '', '', '', 4, 4, 3, 10.60, 20.00, 25.00),
(671, 1, 670, '', '', '', 7, 7, 6, 7.80, 15.00, 20.00),
(672, 1, 671, '', '', '', 20, 20, 20, 24.00, 25.00, 28.00),
(673, 1, 672, '', '', '', 1, 1, 1, 219.24, 260.00, 280.00),
(674, 1, 673, '', '', '', 0, 0, 0, 374.00, 450.00, 480.00),
(675, 1, 674, '', '', '', 1, 1, 1, 219.24, 260.00, 280.00),
(676, 1, 675, '', '', '', 1, 1, 1, 30.00, 50.00, 60.00),
(677, 1, 676, '', '', '', 2, 2, 2, 371.52, 430.00, 460.00),
(678, 1, 677, '', '', '', 2, 2, 2, 300.74, 350.00, 380.00),
(679, 1, 678, '', '', '', 0, 0, 0, 371.52, 430.00, 460.00),
(680, 1, 679, '', '', '', 2, 2, 2, 300.74, 350.00, 380.00),
(681, 1, 680, '', '', '', 2, 2, 2, 201.84, 250.00, 280.00),
(682, 1, 681, '', '', '', 2, 2, 2, 100.00, 140.00, 150.00),
(683, 1, 682, '', '', '', 0, 0, 0, 15.00, 25.00, 30.00),
(684, 1, 683, '', '', '', 1, 1, 1, 25.00, 35.00, 40.00),
(685, 1, 684, '', '', '', 1, 1, 1, 35.00, 45.00, 50.00),
(686, 1, 685, '', '', '', 1, 1, 1, 15.00, 25.00, 30.00),
(687, 1, 686, '', '', '', 1, 1, 1, 25.00, 35.00, 40.00),
(688, 1, 687, '', '', '', 0, 0, 0, 35.00, 45.00, 50.00),
(689, 1, 688, '', '', '', 0, 0, 0, 45.00, 55.00, 60.00),
(690, 1, 689, '', '', '', 0, 0, 0, 95.00, 120.00, 130.00),
(691, 1, 690, '', '', '', 1, 1, 0, 142.00, 160.00, 170.00),
(692, 1, 691, '', '', '', 2, 2, 3, 111.00, 130.00, 135.00),
(693, 1, 692, '', '', '', 2, 2, 2, 28.50, 55.00, 60.00),
(694, 1, 693, '', '', '', 7, 7, 7, 2.10, 4.00, 5.00),
(695, 1, 694, '', '', '', 0, 0, 0, 55.00, 65.00, 75.00),
(696, 1, 695, '', '', '', 0, 0, 0, 45.00, 55.00, 65.00),
(697, 1, 696, '', '', '', 8, 8, 8, 30.00, 45.00, 50.00),
(698, 1, 697, '', '', '', 10, 10, 10, 30.00, 45.00, 50.00),
(699, 1, 698, '', '', '', 14, 14, 14, 30.00, 45.00, 50.00),
(700, 1, 699, '', '', '', 13, 13, 13, 35.00, 50.00, 55.00),
(701, 1, 700, '', '', '', 6, 6, 6, 40.00, 55.00, 60.00),
(702, 1, 701, '', '', '', 8, 8, 8, 45.00, 60.00, 65.00),
(703, 1, 702, '', '', '', 2, 2, 2, 50.00, 65.00, 70.00),
(704, 1, 703, '', '', '', 2, 2, 1, 107.00, 130.00, 140.00),
(705, 1, 704, '', '', '', 7, 7, 3, 121.00, 150.00, 155.00),
(706, 1, 705, '', '', '', 1, 1, 1, 56.30, 70.00, 80.00),
(707, 1, 706, '', '', '', 0, 0, 0, 10.50, 13.00, 15.00),
(708, 1, 707, '', '', '', 2, 2, 2, 10.50, 13.00, 15.00),
(709, 1, 708, '', '', '', 2, 2, 2, 4.00, 6.00, 7.00),
(710, 1, 709, '', '', '', 0, 0, 0, 4.00, 6.00, 7.00),
(711, 1, 710, '', '', '', 0, 0, 0, 4.00, 6.00, 7.00),
(712, 1, 711, '', '', '', 1, 1, 1, 4.00, 6.00, 7.00),
(713, 1, 712, '', '', '', 1, 1, 0, 67.00, 90.00, 95.00),
(714, 1, 713, '', '', '', 0, 0, 0, 81.00, 100.00, 105.00),
(715, 1, 714, '', '', '', 3, 3, 3, 120.00, 140.00, 150.00),
(716, 1, 715, '', '', '', 5, 5, 4, 237.00, 290.00, 300.00),
(717, 1, 716, '', '', '', 1, 1, 0, 162.00, 200.00, 215.00),
(718, 1, 717, '', '', '', 1, 1, 3, 130.00, 155.00, 165.00),
(719, 1, 718, '', '', '', 5, 5, 3, 264.00, 300.00, 320.00),
(720, 1, 719, '', '', '', 2, 2, 2, 216.00, 250.00, 260.00),
(721, 1, 720, '', '', '', 5, 5, 5, 144.00, 165.00, 175.00),
(722, 1, 721, '', '', '', 3, 3, 2, 216.00, 250.00, 260.00),
(723, 1, 722, '', '', '', 1, 1, 1, 30.00, 40.00, 45.00),
(724, 1, 723, '', '', '', 0, 0, 0, 30.00, 40.00, 45.00),
(725, 1, 724, '', '', '', 1, 1, 1, 30.00, 45.00, 50.00),
(726, 1, 725, '', '', '', 1, 1, 1, 36.00, 50.00, 55.00),
(727, 1, 726, '', '', '', 1, 1, 1, 36.00, 55.00, 60.00),
(728, 1, 727, '', '', '', 2, 2, 2, 36.00, 40.00, 45.00),
(729, 1, 728, '', '', '', 2, 2, 2, 36.00, 40.00, 45.00),
(730, 1, 729, '', '', '', 2, 2, 2, 36.00, 45.00, 50.00),
(731, 1, 730, '', '', '', 1, 1, 1, 43.00, 50.00, 55.00),
(732, 1, 731, '0.00', '0', '30', 1, 1, 1, 43.00, 55.00, 60.00),
(1953, 81, 732, '0.00', '0', '30', 6, 6, 6, 73.00, 100.00, 110.00),
(1954, 81, 668, '0.00', '0', '30', 12, 12, 11, 73.00, 100.00, 110.00),
(1955, 81, 667, '0.00', '0', '30', 12, 12, 12, 73.00, 100.00, 110.00),
(1956, 82, 227, '0.00', '0', '30', 3, 3, 1, 294.00, 320.00, 325.00),
(1957, 82, 737, '0.00', '0', '30', 3, 3, 1, 325.00, 350.00, 360.00),
(1958, 82, 413, '0.00', '0', '30', 5, 5, 3, 176.00, 190.00, 200.00),
(1959, 82, 229, '0.00', '0', '30', 1, 1, 1, 244.00, 260.00, 270.00),
(1960, 82, 733, '0.00', '0', '30', 1, 1, 1, 278.00, 305.00, 0.00),
(1961, 82, 734, '0.00', '0', '30', 1, 1, 1, 86.00, 0.00, 325.00),
(1962, 82, 735, '0.00', '0', '30', 1, 1, 0, 86.00, 0.00, 95.00),
(1963, 82, 736, '0.00', '0', '30', 1, 1, 1, 295.00, 0.00, 0.00),
(1964, 83, 671, '0.00', '0', '30', 90, 90, 90, 24.00, 25.00, 28.00),
(1965, 83, 662, '0.00', '0', '30', 6, 6, 1, 65.47, 70.00, 75.00),
(1966, 83, 570, '0.00', '0', '30', 2, 2, 2, 146.13, 180.00, 190.00),
(1967, 83, 571, '0.00', '0', '30', 1, 1, 1, 345.45, 420.00, 450.00),
(1968, 83, 738, '0.00', '0', '30', 1, 1, 1, 146.13, 180.00, 190.00),
(1969, 84, 104, '', '', '', 1, 0, 1, 220.00, 0.00, 0.00),
(1970, 84, 279, '', '', '', 1, 0, 1, 147.00, 0.00, 0.00),
(1971, 84, 295, '', '', '', 1, 0, 0, 182.00, 0.00, 0.00),
(1972, 85, 227, '0.00', '0', '', 1, 0, 1, 294.00, 320.00, 325.00),
(1973, 86, 703, '', '', '', 1, 0, 1, 107.00, 0.00, 0.00),
(1974, 86, 704, '', '', '', 1, 0, 1, 121.00, 0.00, 0.00),
(1976, 87, 381, '', '', '', 3, 0, 2, 18.60, 25.00, 30.00),
(1977, 87, 380, '', '', '', 3, 0, 3, 16.80, 25.00, 30.00),
(1978, 87, 72, '', '', '', 3, 0, 3, 16.20, 25.00, 30.00),
(1979, 87, 73, '', '', '', 1, 0, 1, 16.20, 25.00, 30.00),
(1980, 87, 298, '', '', '', 2, 0, 2, 31.20, 175.00, 180.00),
(1981, 87, 669, '', '', '', 1, 0, 1, 10.60, 100.00, 110.00),
(1982, 87, 670, '', '', '', 1, 0, 1, 7.80, 20.00, 25.00),
(1983, 87, 666, '', '', '', 1, 0, 1, 13.80, 90.00, 100.00),
(1984, 87, 628, '', '', '', 1, 0, 1, 21.60, 30.00, 35.00),
(1985, 88, 739, '0.00', '0', '30', 30, 30, 28, 24.50, 45.00, 50.00),
(1986, 89, 741, '0.00', '0', '30', 10, 10, 9, 10.00, 0.00, 15.00),
(1987, 89, 740, '0.00', '0', '30', 10, 10, 9, 7.00, 0.00, 10.00),
(1988, 90, 740, '0.00', '0', '', 1, 0, 1, 7.00, 0.00, 10.00),
(1989, 90, 741, '0.00', '0', '', 1, 0, 1, 10.00, 0.00, 15.00),
(1990, 91, 739, '0.00', '0', '', 2, 0, 2, 24.50, 45.00, 50.00),
(1991, 92, 742, '0.00', '0', '30', 3, 3, 3, 25.00, 35.00, 40.00),
(1992, 92, 743, '0.00', '0', '30', 6, 6, 6, 18.33, 35.00, 40.00),
(1993, 92, 744, '0.00', '0', '30', 6, 6, 6, 13.33, 25.00, 30.00),
(1994, 92, 196, '0.00', '0', '30', 3, 3, 3, 20.83, 50.00, 55.00),
(1995, 92, 432, '0.00', '0', '30', 15, 15, 50, 10.00, 15.00, 17.00),
(1996, 92, 606, '0.00', '0', '30', 12, 12, 12, 10.40, 13.00, 15.00),
(1997, 92, 605, '0.00', '0', '30', 12, 12, 12, 10.40, 13.00, 15.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `iddetalle_pedido` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `iddetalle_ingreso` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(8,2) NOT NULL,
  `estado_pedido` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_precio` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`iddetalle_pedido`, `idventa`, `iddetalle_ingreso`, `cantidad`, `precio_venta`, `estado_pedido`, `tipo_precio`, `descripcion`) VALUES
(77, 69, 295, 5, 225.00, 'C', 'Precio Tienda', ''),
(78, 70, 295, 1, 225.00, 'A', 'Precio Tienda', ''),
(79, 71, 1962, 1, 95.00, 'A', 'Precio Tienda', ''),
(80, 72, 1956, 1, 325.00, 'A', 'Precio Tienda', ''),
(81, 73, 1954, 1, 110.00, 'A', 'Precio X Mayor', ''),
(82, 74, 52, 1, 37.00, 'A', 'Precio X Mayor', ''),
(83, 75, 62, 1, 15.00, 'A', 'Precio X Mayor', ''),
(84, 75, 64, 1, 25.00, 'A', 'Precio X Mayor', ''),
(85, 76, 13, 1, 30.00, 'A', 'Precio X Mayor', ''),
(86, 77, 665, 1, 45.00, 'A', 'Precio X Mayor', ''),
(87, 78, 541, 1, 150.00, 'A', 'Precio Tienda', ''),
(88, 79, 51, 1, 35.00, 'A', 'Precio Tienda', ''),
(89, 80, 1971, 1, 210.00, 'A', 'Precio Tienda', ''),
(90, 81, 52, 2, 35.00, 'A', 'Precio X Mayor', ''),
(91, 82, 1976, 1, 30.00, 'A', 'Precio Tienda', ''),
(92, 83, 51, 2, 36.00, 'A', 'Precio Tienda', ''),
(93, 84, 314, 1, 200.00, 'A', 'Precio Tienda', ''),
(94, 85, 415, 1, 240.00, 'A', 'Precio Tienda', ''),
(95, 86, 626, 1, 30.00, 'A', 'Precio Tienda', ''),
(96, 87, 14, 1, 47.00, 'A', 'Precio Tienda', ''),
(97, 87, 313, 1, 17.00, 'A', 'Precio Tienda', ''),
(98, 88, 56, 1, 7.00, 'A', 'Precio X Mayor', ''),
(99, 89, 13, 1, 42.00, 'A', 'Precio Tienda', ''),
(100, 90, 16, 2, 35.00, 'A', 'Precio X Mayor', ''),
(101, 90, 515, 1, 50.00, 'A', 'Precio X Mayor', ''),
(102, 91, 1999, 2, 100.00, 'C', 'Precio Tienda', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_traspaso`
--

CREATE TABLE `detalle_traspaso` (
  `iddetalletraspaso` int(11) NOT NULL,
  `idtraspaso` int(11) NOT NULL,
  `iddetalle_ingreso` int(11) NOT NULL,
  `stock_actual` int(11) NOT NULL,
  `stock_traspaso` int(11) NOT NULL,
  `idingresoanterior` int(11) NOT NULL,
  `idingresonuevo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_traspaso`
--

INSERT INTO `detalle_traspaso` (`iddetalletraspaso`, `idtraspaso`, `iddetalle_ingreso`, `stock_actual`, `stock_traspaso`, `idingresoanterior`, `idingresonuevo`) VALUES
(1, 1, 104, 2, 1, 1, 84),
(2, 1, 279, 2, 1, 1, 84),
(3, 1, 295, 8, 1, 1, 84),
(4, 2, 1956, 3, 1, 82, 85),
(5, 3, 703, 2, 1, 1, 86),
(6, 3, 704, 7, 1, 1, 86),
(7, 4, 381, 9, 3, 1, 87),
(8, 4, 380, 6, 3, 1, 87),
(9, 4, 72, 7, 3, 1, 87),
(10, 4, 73, 6, 1, 1, 87),
(11, 4, 298, 3, 2, 1, 87),
(12, 4, 669, 4, 1, 1, 87),
(13, 4, 670, 7, 1, 1, 87),
(14, 4, 666, 1, 1, 1, 87),
(15, 4, 628, 3, 1, 1, 87),
(16, 5, 1987, 10, 1, 89, 90),
(17, 5, 1986, 10, 1, 89, 90),
(18, 5, 1985, 30, 2, 88, 91),
(19, 6, 1998, 10, 5, 93, 94),
(20, 7, 1999, 3, 1, 94, 96);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL,
  `apellidos` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `num_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `foto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `login` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idempleado`, `apellidos`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `fecha_nacimiento`, `foto`, `login`, `clave`, `estado`) VALUES
(1, 'Admin', 'Administrador', 'CI', '123456789', '', '', '', '0000-00-00', 'Files/Empleado/desarrollador.png', 'administrador', '91f5167c34c400758115c2a6826ec2e3', 'S'),
(5, 'admin', 'Admin', 'CI', '3322658', '-', '0', 'admin@hotmail.com', '1960-11-01', 'Files/Empleado/ivan.jpg', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'A'),
(9, 'GEMIO BELTRAN ', 'LUIS DANIEL', 'CI', '33492322', 'calle teniente Guillen #6470, Bella Vista', '77276512', 'danielgemio@icloud.com', '1987-09-02', 'Files/Empleado/21231575_1381298568634315_473584467', 'Danielgemio', 'fea50ee07ed2f58b88ecf92829115313', 'A'),
(10, 'Arce ', 'Daniel ', 'CI', '6148012', 'Zona achachicala', '78804463', 'dani_eld88@hotmail.com', '1988-07-10', '', 'DanielArce', 'cb949daf93e56719b61109eafa3c7b8f', 'A'),
(11, 'Aruquipa Blanco', 'Alexandra ', 'CI', '9155855', 'Av Zabaleta 200', '79583472', '', '1999-12-24', '', 'AlexandraAruquipa', '79b6e5809411c97f6db46235efe8555f', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `global`
--

CREATE TABLE `global` (
  `idglobal` int(11) NOT NULL,
  `empresa` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_impuesto` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `porcentaje_impuesto` decimal(5,2) NOT NULL,
  `simbolo_moneda` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `margen` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `global`
--

INSERT INTO `global` (`idglobal`, `empresa`, `nombre_impuesto`, `porcentaje_impuesto`, `simbolo_moneda`, `margen`, `logo`) VALUES
(1, 'ANIMALL', 'IVA', 13.00, 'Bs/', '30', 'Files/Global/LOGO.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `idingreso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `tipo_comprobante` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `serie_comprobante` varchar(7) COLLATE utf8_spanish_ci NOT NULL,
  `num_comprobante` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `numero_autorizacion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `codigo_control` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_ingreso` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `impuesto` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `total_descuento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`idingreso`, `idusuario`, `idsucursal`, `idproveedor`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `numero_autorizacion`, `codigo_control`, `tipo_ingreso`, `fecha`, `impuesto`, `total`, `estado`, `total_descuento`) VALUES
(1, 27, 2, 1, 'TICKET', '1', '1', '', '', 'CONTADO', '2020-02-13', 0.00, 1.00, 'A', 0),
(81, 27, 2, 155, 'FACTURA', '831', '', '271401900262012', '55-4D-3E-51-AE', 'Contado', '2020-02-13', 13.00, 2190.00, 'A', 0),
(82, 27, 2, 156, 'FACTURA', '762', '', '265401900276190', '0A-46-19-B-F4', 'Contado', '2020-02-13', 13.00, 3726.00, 'A', 0),
(83, 27, 2, 157, 'FACTURA', '946', '', '263401900079557', '96-0C-C6-5E', 'Contado', '2020-02-15', 13.00, 3336.66, 'A', 0),
(84, 31, 5, 1, 'TRASPASO', '1', '', '', '', 'CONTADO', '2020-02-21', 0.00, 1.00, 'A', 0),
(85, 31, 5, 156, 'TRASPASO', '762', '', '265401900276190', '0A-46-19-B-F4', 'Contado', '2020-02-24', 13.00, 3726.00, 'A', 0),
(86, 31, 5, 1, 'TRASPASO', '1', '', '', '', 'CONTADO', '2020-02-24', 0.00, 1.00, 'A', 0),
(87, 31, 5, 1, 'TRASPASO', '1', '', '', '', 'CONTADO', '2020-02-28', 0.00, 1.00, 'A', 0),
(88, 31, 2, 1, 'FACTURA', '0', '', '0', '0', 'Contado', '2020-02-28', 13.00, 735.00, 'A', 0),
(89, 31, 2, 1, 'FACTURA', '0', '', '0', '0', 'Contado', '2020-02-28', 13.00, 170.00, 'A', 0),
(90, 31, 5, 1, 'TRASPASO', '0', '', '0', '0', 'Contado', '2020-02-28', 13.00, 170.00, 'A', 0),
(91, 31, 5, 1, 'TRASPASO', '0', '', '0', '0', 'Contado', '2020-02-28', 13.00, 735.00, 'A', 0),
(92, 31, 2, 1, 'TICKET', '612', '', '', '', 'Contado', '2020-03-06', 13.00, 727.05, 'A', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_caja`
--

CREATE TABLE `movimiento_caja` (
  `idingresocaja` int(10) NOT NULL,
  `motivo` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `monto` decimal(8,2) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo_operacion` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movimiento_caja`
--

INSERT INTO `movimiento_caja` (`idingresocaja`, `motivo`, `monto`, `idusuario`, `idsucursal`, `fecha`, `tipo_operacion`) VALUES
(28, 'Apertura de Caja', 100.00, 27, 2, '2020-02-05', 'APERTURA'),
(29, 'Apertura de Caja', 100.00, 27, 2, '2020-02-06', 'APERTURA'),
(30, 'Apertura de Caja', 100.00, 27, 2, '2020-02-07', 'APERTURA'),
(31, 'Apertura de Caja', 100.00, 31, 2, '2020-02-07', 'APERTURA'),
(32, 'Apertura de Caja', 10.00, 27, 2, '2020-02-10', 'APERTURA'),
(33, 'Apertura de Caja', 0.00, 31, 2, '2020-02-24', 'APERTURA'),
(34, 'Apertura de Caja', 1.00, 31, 2, '2020-02-24', 'APERTURA'),
(35, 'Compra marcadores', 20.00, 31, 2, '2020-02-24', 'EGRESO'),
(36, 'Apertura de Caja', 45.00, 36, 2, '2020-02-26', 'APERTURA'),
(37, 'Apertura de Caja', 1982.80, 36, 2, '2020-02-27', 'APERTURA'),
(38, 'Apertura de Caja', 1854.80, 37, 2, '2020-02-27', 'APERTURA'),
(39, 'Apertura de Caja', 0.00, 27, 2, '2020-02-27', 'APERTURA'),
(40, 'Apertura de Caja', 1.00, 27, 2, '2020-02-27', 'APERTURA'),
(41, 'Apertura de Caja', 3239.80, 36, 2, '2020-02-28', 'APERTURA'),
(42, 'Apertura de Caja', 0.00, 32, 5, '2020-02-28', 'APERTURA'),
(43, 'Apertura de Caja', 1.00, 32, 5, '2020-02-28', 'APERTURA'),
(44, 'Apertura de Caja', 2717.00, 37, 2, '2020-02-28', 'APERTURA'),
(45, 'Apertura de Caja', 0.00, 36, 2, '2020-02-29', 'APERTURA'),
(46, 'Apertura de Caja', 1274.00, 36, 2, '2020-02-29', 'APERTURA'),
(47, 'Apertura de Caja', 2019.00, 36, 2, '2020-03-02', 'APERTURA'),
(48, 'Apertura de Caja', 1291.00, 37, 2, '2020-03-02', 'APERTURA'),
(49, 'Apertura de Caja', 2493.70, 36, 2, '2020-03-03', 'APERTURA'),
(50, 'Apertura de Caja', 2623.70, 37, 2, '2020-03-03', 'APERTURA'),
(51, 'Apertura de Caja', 3513.70, 36, 2, '2020-03-04', 'APERTURA'),
(52, 'Apertura de Caja', 10.00, 27, 2, '2020-03-04', 'APERTURA'),
(53, 'Apertura de Caja', 10.00, 27, 2, '2020-03-05', 'APERTURA'),
(54, 'Apertura de Caja', 3439.90, 36, 2, '2020-03-05', 'APERTURA'),
(55, 'Apertura de Caja', 3594.90, 37, 2, '2020-03-05', 'APERTURA'),
(56, 'Apertura de Caja', 2794.90, 36, 2, '2020-03-06', 'APERTURA'),
(57, 'Apertura de Caja', 3508.90, 36, 2, '2020-03-10', 'APERTURA'),
(58, 'Apertura de Caja', 3733.70, 36, 2, '2020-03-11', 'APERTURA'),
(59, 'Apertura de Caja', 2695.70, 36, 2, '2020-03-12', 'APERTURA'),
(60, 'Apertura de Caja', 4302.40, 36, 2, '2020-03-16', 'APERTURA'),
(61, 'Apertura de Caja', 1.00, 35, 5, '2020-03-17', 'APERTURA'),
(62, 'Apertura de Caja', 1.00, 27, 2, '2020-03-17', 'APERTURA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `tipo_persona` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `num_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `direccion_departamento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion_provincia` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion_distrito` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion_calle` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_cuenta` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `tipo_persona`, `nombre`, `tipo_documento`, `num_documento`, `direccion_departamento`, `direccion_provincia`, `direccion_distrito`, `direccion_calle`, `telefono`, `email`, `numero_cuenta`, `estado`) VALUES
(1, 'Proveedor', 'Sin proveedor', 'CI', '1', '', '', '', '', '0', '', '', 'A'),
(14, 'Cliente', 'SIN NOMBRE', 'CI', '0', '', '', '', '', '', '', '', 'A'),
(153, '', '', '', '', '', '', '', '', '', '', '', ''),
(154, 'Proveedor', 'CENTRAL INSUMOS', 'NIT', '1028707023', 'LA PAZ', '', '-', '', '0', 'danielgemio@icloud.com', '', 'A'),
(155, 'Proveedor', 'ZooPharma', 'NIT', '4872562014', 'La Paz', '', 'C diaz Romero #1335', '', '2223357', '', '', 'A'),
(156, 'Proveedor', 'Multifarm Bolivia SRL', 'NIT', '762', 'El Alto', '', 'calle 133 #50 zona Villa Bolivar D', '', '2821902', '', '', 'A'),
(157, 'Proveedor', 'Proesa', 'NIT', '1006843022', 'La Paz', '', 'Av Costanerita #71 Edificio Hergo Piso 4', '', '27847477', '', '', 'A'),
(158, 'Proveedor', 'PlanetCan (DoÃ±a Lidia)', 'NIT', '0', 'El Alto', '', 'Calle Fournier 3094 Esq Arturo Valee', '', '76280333', '', '', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida_caja`
--

CREATE TABLE `salida_caja` (
  `idsalida_caja` int(11) NOT NULL,
  `motivo` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='en esta tabla  es cuando sale el dinero';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idsucursal` int(11) NOT NULL,
  `razon_social` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `num_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `representante` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `numero_autorizacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `leyenda_facturas` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `llave_dosificacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_limite_emision` date NOT NULL,
  `contador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idsucursal`, `razon_social`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `representante`, `logo`, `estado`, `numero_autorizacion`, `leyenda_facturas`, `llave_dosificacion`, `fecha_limite_emision`, `contador`) VALUES
(2, 'Animall Productos y Accesorios', 'NIT', '3492322016', 'Calle 21 de San Miguel, casi lado banco Union', '77276512', 'animall@gmail.com', 'Daniel', 'Files/Sucursal/LOGO.jpg', 'A', '', '', '', '0000-00-00', 1),
(5, 'Animall Centro MÃ©dico Veterinario ', 'NIT', '385732022', 'Av Montenegro 1042', '73006002', 'animallbolivia@gmail.com', 'Dra. Nathaly Cardenas ', 'Files/Sucursal/LOGO.jpg', 'A', '', '', '', '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `idtipo_documento` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `operacion` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`idtipo_documento`, `nombre`, `operacion`) VALUES
(3, 'TICKET', 'Comprobante'),
(7, 'NIT', 'Persona'),
(9, 'CI', 'Persona'),
(10, 'INGRESO', 'Operacion'),
(11, 'EGRESO', 'Operacion'),
(12, 'POLIZA_DE_IMPORTACION', 'Comprobante'),
(13, 'FACTURA', 'Comprobante'),
(14, 'PROFORMA', 'Comprobante'),
(15, 'APERTURA', 'Operacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traspaso`
--

CREATE TABLE `traspaso` (
  `idtraspaso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idsucursalorigen` int(11) NOT NULL,
  `idsucursaldestino` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `motivo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `traspaso`
--

INSERT INTO `traspaso` (`idtraspaso`, `idusuario`, `idsucursalorigen`, `idsucursaldestino`, `fecha`, `motivo`, `estado`) VALUES
(1, 31, 2, 5, '2020-02-21', 'Inventario inicial', 'P'),
(2, 31, 2, 5, '2020-02-24', 'Inventario Inicial', 'P'),
(3, 31, 2, 5, '2020-02-24', 'Inventario Inicial', 'P'),
(4, 31, 2, 5, '2020-02-28', 'Farecs, inventario incial', 'P'),
(5, 31, 2, 5, '2020-02-28', 'Farecs 2', 'P'),
(6, 35, 5, 2, '2020-03-17', 'prueba', 'P'),
(7, 27, 2, 5, '2020-03-17', 'prueba', 'P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `idunidad_medida` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `prefijo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` char(1) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`idunidad_medida`, `nombre`, `prefijo`, `estado`) VALUES
(1, '16 de Julio', '', 'A'),
(2, '8 en 1', '', 'A'),
(3, 'Absorsol', '', 'A'),
(4, 'Alimasc', '', 'A'),
(5, 'Beeps', '', 'A'),
(6, 'Bencmate', '', 'A'),
(7, 'Best Clean', '', 'A'),
(8, 'Bobels', '', 'A'),
(9, 'Boehringer ingelheim', '', 'A'),
(10, 'Brouwer', '', 'A'),
(11, 'Canada Litter', '', 'A'),
(12, 'Ceva', '', 'A'),
(13, 'Ciudad Peludos', '', 'A'),
(14, 'Crazy Pet', '', 'A'),
(15, 'Drag Pharma', '', 'A'),
(16, 'Enzilimp', '', 'A'),
(17, 'Escat', '', 'A'),
(18, 'Eukanuba', '', 'A'),
(19, 'Farecs', '', 'A'),
(20, 'Farmina', '', 'A'),
(21, 'Glamorous Pet', '', 'A'),
(22, 'GNC Pets', '', 'A'),
(23, 'Hagen - Cat It', '', 'A'),
(24, 'Hagen - Cat Love', '', 'A'),
(25, 'Hagen - Dog It', '', 'A'),
(26, 'Hagen - Pawise', '', 'A'),
(27, 'Hello Kitty', '', 'A'),
(28, 'Holliday', '', 'A'),
(29, 'Hydra', '', 'A'),
(30, 'Innovaplast', '', 'A'),
(31, 'James Brow Pharma', '', 'A'),
(32, 'Kong', '', 'A'),
(33, 'Kualcos', '', 'A'),
(34, 'Labcon', '', 'A'),
(35, 'Labyes', '', 'A'),
(36, 'Micropets', '', 'A'),
(37, 'Miglo', '', 'A'),
(38, 'Mordelon', '', 'A'),
(39, 'Osspret', '', 'A'),
(40, 'Para tu Kan', '', 'A'),
(41, 'Pedigree', '', 'A'),
(42, 'Pet Gourmet', '', 'A'),
(43, 'PetAg', '', 'A'),
(44, 'Phisicat', '', 'A'),
(45, 'Porta', '', 'A'),
(46, 'Procao', '', 'A'),
(48, 'Puchitag', '', 'A'),
(49, 'Purina', '', 'A'),
(50, 'Rico Can', '', 'A'),
(51, 'Rico Cat', '', 'A'),
(52, 'Royal Canin', '', 'A'),
(53, 'Solvit', '', 'A'),
(54, 'Total', '', 'A'),
(55, 'Whiskas', '', 'A'),
(56, 'Wilson', '', 'A'),
(57, 'Zoovet', '', 'A'),
(58, 'Sin Marca', '', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idempleado` int(11) NOT NULL,
  `tipo_usuario` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `mnu_almacen` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `mnu_compras` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `mnu_ventas` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `mnu_mantenimiento` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `mnu_caja` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `mnu_consulta_compras` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `mnu_consulta_ventas` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `mnu_admin` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `mnu_productos` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `estado` char(1) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `idsucursal`, `idempleado`, `tipo_usuario`, `fecha_registro`, `mnu_almacen`, `mnu_compras`, `mnu_ventas`, `mnu_mantenimiento`, `mnu_caja`, `mnu_consulta_compras`, `mnu_consulta_ventas`, `mnu_admin`, `mnu_productos`, `estado`) VALUES
(24, 2, 6, 'Empleado', '2018-05-02', '1', '0', '1', '0', '1', '0', '1', '0', '0', 'A'),
(26, 1, 3, 'Empleado', '2018-05-02', '0', '1', '1', '0', '0', '0', '0', '0', '1', 'A'),
(27, 2, 1, 'Administrador', '2018-05-02', '1', '1', '1', '1', '1', '1', '1', '0', '1', 'A'),
(28, 1, 6, 'Empleado', '2019-08-09', '1', '1', '1', '0', '1', '0', '0', '0', '1', 'A'),
(29, 4, 7, 'Empleado', '2019-10-09', '1', '0', '1', '0', '1', '0', '1', '0', '0', 'A'),
(30, 2, 8, 'Administrador', '2019-12-27', '1', '1', '1', '1', '1', '1', '1', '0', '1', 'A'),
(31, 2, 9, 'Administrador', '2020-02-07', '1', '1', '1', '1', '1', '1', '1', '0', '1', 'A'),
(32, 5, 9, 'Administrador', '2020-02-21', '1', '1', '1', '1', '1', '1', '1', '0', '1', 'A'),
(33, 1, 1, 'Administrador', '2020-02-21', '1', '1', '1', '1', '1', '1', '1', '0', '1', 'A'),
(34, 5, 5, 'Administrador', '2020-02-24', '1', '1', '1', '1', '1', '1', '1', '0', '1', 'A'),
(35, 5, 1, 'Administrador', '2020-02-24', '1', '1', '1', '1', '1', '1', '1', '0', '1', 'A'),
(36, 2, 10, 'Empleado', '2020-02-26', '1', '0', '1', '0', '1', '0', '0', '0', '0', 'A'),
(37, 2, 11, 'Empleado', '2020-02-27', '1', '0', '1', '0', '1', '0', '0', '0', '0', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idSucursal` int(10) NOT NULL,
  `tipo_comprobante` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `CodigoAutorizacion` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `num_comprobante` decimal(10,0) DEFAULT NULL,
  `fecha` date NOT NULL,
  `impuesto` int(5) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Recibi` decimal(8,2) DEFAULT NULL,
  `Cambio` int(11) DEFAULT NULL,
  `estado_factura` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_pago` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_venta` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `descuento` int(10) NOT NULL,
  `tiempo_entrega` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_validez` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `idCliente`, `idusuario`, `idSucursal`, `tipo_comprobante`, `CodigoAutorizacion`, `num_comprobante`, `fecha`, `impuesto`, `total`, `estado`, `Recibi`, `Cambio`, `estado_factura`, `tipo_pago`, `tipo_venta`, `descuento`, `tiempo_entrega`, `fecha_validez`) VALUES
(69, 14, 31, 2, 'TICKET', NULL, 34, '2020-02-07', 0, 1125.00, 'C', 2000.00, 875, 'A', 'efectivo', 'contado', 0, '-', '0000-00-00'),
(70, 14, 31, 2, 'TICKET', NULL, 35, '2020-02-07', 0, 225.00, 'A', 300.00, 75, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(71, 14, 31, 2, 'TICKET', NULL, 38, '2020-02-24', 0, 95.00, 'A', 95.00, 0, NULL, 'deposito', 'contado', 0, '-', '0000-00-00'),
(72, 14, 31, 2, 'TICKET', NULL, 39, '2020-02-24', 0, 325.00, 'A', 325.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(73, 14, 36, 2, 'TICKET', NULL, 88, '2020-02-26', 0, 110.00, 'A', 110.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(74, 14, 36, 2, 'TICKET', NULL, 88, '2020-02-27', 0, 37.00, 'A', 37.00, 37, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(75, 14, 36, 2, 'TICKET', NULL, 88, '2020-02-27', 0, 40.00, 'A', 40.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(76, 14, 36, 2, 'TICKET', NULL, 88, '2020-02-27', 0, 30.00, 'A', 30.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(77, 14, 36, 2, 'TICKET', NULL, 89, '2020-02-27', 0, 45.00, 'A', 45.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(78, 14, 37, 2, 'TICKET', NULL, 88, '2020-02-27', 0, 150.00, 'A', 0.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(79, 14, 37, 2, 'TICKET', NULL, 88, '2020-02-27', 0, 35.00, 'A', 40.00, 5, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(80, 14, 32, 5, 'TICKET', NULL, 89, '2020-02-28', 0, 210.00, 'A', 210.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(81, 14, 36, 2, 'TICKET', NULL, 88, '2020-02-28', 0, 70.00, 'A', 70.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(82, 14, 32, 5, 'TICKET', NULL, 89, '2020-02-28', 0, 30.00, 'A', 30.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(83, 14, 37, 2, 'TICKET', NULL, 88, '2020-02-28', 0, 72.00, 'A', 100.00, 28, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(84, 14, 37, 2, 'TICKET', NULL, 89, '2020-03-03', 0, 200.00, 'A', 200.00, 10, NULL, 'efectivo', 'contado', 5, '-', '0000-00-00'),
(85, 14, 36, 2, 'TICKET', NULL, 90, '2020-03-05', 0, 240.00, 'A', 240.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(86, 14, 36, 2, 'TICKET', NULL, 91, '2020-03-05', 0, 30.00, 'A', 30.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(87, 14, 36, 2, 'TICKET', NULL, 92, '2020-03-06', 0, 64.00, 'A', 64.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(88, 14, 36, 2, 'TICKET', NULL, 88, '2020-03-06', 0, 7.00, 'A', 7.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(89, 14, 36, 2, 'TICKET', NULL, 89, '2020-03-10', 0, 42.00, 'A', 42.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(90, 14, 36, 2, 'TICKET', NULL, 90, '2020-03-11', 0, 120.00, 'A', 120.00, 0, NULL, 'efectivo', 'contado', 0, '-', '0000-00-00'),
(91, 14, 27, 2, 'TICKET', NULL, 91, '2020-03-17', 0, 200.00, 'C', 200.00, 0, 'A', 'efectivo', 'contado', 0, '-', '0000-00-00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idarticulo`),
  ADD KEY `fk_articulo_categoria_idx` (`idcategoria`),
  ADD KEY `fk_articulo_unidad_medida_idx` (`idunidad_medida`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`idcredito`);

--
-- Indices de la tabla `detalle_documento_sucursal`
--
ALTER TABLE `detalle_documento_sucursal`
  ADD PRIMARY KEY (`iddetalle_documento_sucursal`),
  ADD KEY `fk_documento_sucursal_idx` (`idtipo_documento`),
  ADD KEY `fk_detalle_sucursal_idx` (`idsucursal`);

--
-- Indices de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD PRIMARY KEY (`iddetalle_ingreso`),
  ADD KEY `fk_detalle_articulo_idx` (`idarticulo`),
  ADD KEY `fk_detalle_ingreso_idx` (`idingreso`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`iddetalle_pedido`),
  ADD KEY `fk_detalle_venta_ingreso_idx` (`iddetalle_ingreso`),
  ADD KEY `fk_detalle_venta_idx` (`idventa`);

--
-- Indices de la tabla `detalle_traspaso`
--
ALTER TABLE `detalle_traspaso`
  ADD PRIMARY KEY (`iddetalletraspaso`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idempleado`);

--
-- Indices de la tabla `global`
--
ALTER TABLE `global`
  ADD PRIMARY KEY (`idglobal`),
  ADD UNIQUE KEY `empresa_UNIQUE` (`empresa`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`idingreso`),
  ADD KEY `fk_ingreso_proveedor_idx` (`idproveedor`),
  ADD KEY `fk_ingreso_usuario_idx` (`idusuario`),
  ADD KEY `fk_ingreso_sucursal_idx` (`idsucursal`);

--
-- Indices de la tabla `movimiento_caja`
--
ALTER TABLE `movimiento_caja`
  ADD PRIMARY KEY (`idingresocaja`),
  ADD KEY `idsucursal` (`idsucursal`),
  ADD KEY `idpersona` (`idusuario`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `salida_caja`
--
ALTER TABLE `salida_caja`
  ADD PRIMARY KEY (`idsalida_caja`),
  ADD KEY `idper` (`idpersona`),
  ADD KEY `idsucurs` (`idsucursal`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idsucursal`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`idtipo_documento`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `traspaso`
--
ALTER TABLE `traspaso`
  ADD PRIMARY KEY (`idtraspaso`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`idunidad_medida`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `fk_usuario_empleado_idx` (`idempleado`),
  ADD KEY `fk_usuario_sucursal_idx` (`idsucursal`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `fk_venta_pedido_idx` (`idCliente`),
  ADD KEY `fk_venta_usuario_idx` (`idusuario`),
  ADD KEY `fk_sucursal` (`idSucursal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idarticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=748;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `idcredito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_documento_sucursal`
--
ALTER TABLE `detalle_documento_sucursal`
  MODIFY `iddetalle_documento_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  MODIFY `iddetalle_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2002;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `iddetalle_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `detalle_traspaso`
--
ALTER TABLE `detalle_traspaso`
  MODIFY `iddetalletraspaso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idempleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `global`
--
ALTER TABLE `global`
  MODIFY `idglobal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `idingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `movimiento_caja`
--
ALTER TABLE `movimiento_caja`
  MODIFY `idingresocaja` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de la tabla `salida_caja`
--
ALTER TABLE `salida_caja`
  MODIFY `idsalida_caja` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `idsucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `idtipo_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `traspaso`
--
ALTER TABLE `traspaso`
  MODIFY `idtraspaso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `idunidad_medida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
