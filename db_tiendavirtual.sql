-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2023 a las 03:13:19
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Bluzas de abrigo', 'Nueva Temporada - Invierno2023', 'img_1af8488acd9d8d2be2eb741c40f5b59f.jpg', '2023-12-03 12:40:02', 'bluzas-de-abrigo', 1),
(2, 'Camisas', 'Nuevos Productos - Temporada 2023', 'img_d9df5c3b764b8de0a479e01d40192c7a.jpg', '2023-12-03 12:42:48', 'camisas', 1),
(3, 'Nuevos Ingresos', 'Temporada 2023 Mujer', 'img_d1fe6d3f00c3252c574a46c4b7e2b4de.jpg', '2023-12-03 12:43:09', 'Mujeres', 1),
(4, 'Tops', 'Tops', 'img_11764a393c5ed299a549102f56757089.jpg', '2023-12-03 13:29:15', 'tops', 1),
(5, 'Accesorios', 'Accesorios', 'img_36bc567fc22b0d8404bc8c7346dae62e.jpg', '2023-12-03 13:29:29', 'Accesorios', 1),
(6, 'Chaquetas', 'Chaquetas', 'portada_categoria.png', '2023-12-03 13:30:08', 'chaquetas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `ip` varchar(25) NOT NULL,
  `dispositivo` varchar(25) NOT NULL,
  `useragent` text NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(1, 'Roberto Herrera', 'roberto@gmail.com', 'holis', '127.0.0.1', 'celular', 'holussss', '2023-12-05 12:25:06'),
(2, 'Mari', 'mari@gmail.com', 'holsussss', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-12-05 13:21:20'),
(3, 'Maria Celeste Trejo', 'mariacelestetrejo1@gmail.com', 'Hola, quisiera recibir informacion sobre botellones', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2023-12-13 15:09:03'),
(4, 'Maria Celeste', '2604011404', 'Holaaaaaaaaaa', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2023-12-13 15:13:33'),
(5, 'Maria Celeste Trejo', 'mariacelestetrejo1@gmail.com', 'holaa', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2023-12-13 15:15:03'),
(6, 'Gustavo Contreras', 'gusscon3ras@gmail.com', 'Hola, quoero recibir info de los relojes', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2023-12-13 18:33:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(1, 1, 1, '2300.75', 1),
(2, 2, 6, '1575.00', 1),
(3, 3, 4, '3500.00', 1),
(4, 3, 7, '15075.00', 1),
(5, 4, 7, '15075.00', 1),
(6, 5, 9, '3680.00', 1),
(7, 5, 11, '8000.00', 2),
(8, 6, 10, '3900.75', 1),
(9, 7, 11, '8000.00', 1),
(10, 8, 1, '2300.75', 1),
(11, 9, 10, '3900.75', 1),
(12, 10, 5, '3200.00', 1),
(13, 11, 1, '2300.75', 1),
(20, 16, 4, '3500.00', 1),
(21, 17, 9, '3680.00', 1),
(22, 18, 7, '15075.00', 1),
(23, 19, 7, '15075.00', 1),
(24, 20, 11, '8000.00', 1),
(25, 21, 3, '300.00', 1),
(26, 22, 9, '3680.00', 1),
(27, 22, 5, '3200.00', 1),
(28, 23, 7, '15075.00', 1),
(29, 23, 11, '8000.00', 1),
(30, 24, 5, '3200.00', 1),
(31, 24, 6, '1575.00', 1),
(32, 25, 6, '1575.00', 1),
(33, 26, 7, '15075.00', 1),
(34, 27, 7, '15075.00', 1),
(35, 28, 7, '15075.00', 1),
(36, 29, 7, '15075.00', 1),
(37, 30, 7, '15075.00', 1),
(38, 31, 7, '15075.00', 1),
(39, 32, 7, '15075.00', 1),
(40, 33, 9, '3680.00', 1),
(41, 34, 10, '3900.75', 1),
(42, 35, 9, '3680.00', 1),
(43, 36, 7, '15075.00', 1),
(44, 37, 7, '15075.00', 1),
(45, 38, 7, '15075.00', 1),
(46, 39, 7, '15075.00', 1),
(47, 40, 7, '15075.00', 1),
(48, 41, 7, '15075.00', 2),
(49, 41, 11, '8000.00', 1),
(50, 41, 3, '300.00', 1),
(51, 42, 7, '15075.00', 1),
(52, 42, 9, '3680.00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(20, 9, 'pro_730145ed0d00bf9769626fcde1f57341.jpg'),
(21, 9, 'pro_326790b7a4978e07dafc72a368a40a0b.jpg'),
(22, 9, 'pro_2a7d0378750ecd4626919a4ea1d86a97.jpg'),
(23, 7, 'pro_f470e5395a054e900b180050ac5848d4.jpg'),
(24, 7, 'pro_c3971420b3b510051041e1285328fa88.jpg'),
(25, 6, 'pro_982bd76d9c858135944a2159b560d6c6.jpg'),
(26, 6, 'pro_e87e4f2d7b2adac19c5a70fb701e163c.jpg'),
(27, 5, 'pro_76f7139204ba2e203f3c6ec9b5feca6d.jpg'),
(28, 5, 'pro_0056aab408cc755b4a41e78ff401d8fe.jpg'),
(29, 4, 'pro_c63b6239be9f1cdc2173b6054e09c68d.jpg'),
(30, 4, 'pro_2ea6bf867146e0831ffeac6161cf07db.jpg'),
(31, 3, 'pro_43565b8d3feeb8ae7fc0ea8d49438027.jpg'),
(32, 3, 'pro_1c1989f98f6a21609fae386a94126237.jpg'),
(33, 2, 'pro_d503d8cb28eb5ce3953a17fc10b0dfed.jpg'),
(34, 2, 'pro_33245ba3023b1d0ad5099047567eb343.jpg'),
(43, 1, 'pro_6cdf18bc07067c1c5aa4d11d8356fb73.jpg'),
(44, 1, 'pro_f1f495165495a1c67ed4af5966e21a60.jpg'),
(45, 11, 'pro_bbc3b32aa5ca829956e8475c538ebc1d.jpg'),
(46, 11, 'pro_856a6c0ceca72a1532e44a3def89113f.jpg'),
(47, 11, 'pro_f51a357369a4624d59487053848a3168.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Categorías', 'Categorías Productos', 1),
(8, 'Contactos', 'Mensajes del formulario contacto\r\n', 1),
(9, 'Páginas', 'Páginas del sitio web', 1),
(10, 'Suscriptores', 'Suscriptores', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` bigint(20) NOT NULL,
  `referenciacobro` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `direccion_envio` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text COLLATE utf8mb4_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`, `idtransaccionpaypal`, `datospaypal`) VALUES
(1, '34646', 1, '2023-12-05 12:33:41', '5.00', '2305.75', 2, 'Santa fe 1977, Mendoza', 'Entregado', NULL, NULL),
(2, '23546', 1, '2023-12-05 13:01:24', '5.00', '1580.00', 1, 'Santa fe 1977, Mendoza', 'Completo', NULL, NULL),
(3, '343453', 1, '2023-12-05 20:48:27', '5.00', '18580.00', 2, 'Santa fe 1977, mendoza', 'Completado', NULL, NULL),
(4, '1213', 1, '2023-12-05 20:50:33', '5.00', '15080.00', 2, 'Santa fe 1977, argentina', 'Pendiente', NULL, NULL),
(5, '21212', 1, '2023-12-05 21:56:06', '5.00', '19685.00', 3, 'kjsdbfksjdf, argentina', 'Pendiente', NULL, NULL),
(6, '21212', 1, '2023-12-06 11:32:12', '5.00', '3905.75', 3, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(7, '2332534', 15, '2023-12-06 11:33:41', '5.00', '8005.00', 5, 'Santa fe 1977, Mendoza', 'Aprobado, sin enviar', NULL, NULL),
(8, '34545', 1, '2023-12-06 19:51:17', '5.00', '2305.75', 2, 'Santa fe 1977, mendoza', 'Completo', NULL, NULL),
(9, '343546', 1, '2023-12-06 21:53:41', '5.00', '3905.75', 2, 'dsdgsgd, sdfsgds', 'Pendiente', NULL, NULL),
(10, '46576', 1, '2023-12-09 23:25:45', '5.00', '3205.00', 2, 'ergttyh6, rfyhjiju', 'Completo', NULL, NULL),
(11, '3456', 16, '2023-12-11 19:59:59', '5.00', '2305.75', 2, 'paunero y almirante brown, san rafael', 'Completo', NULL, NULL),
(16, '12468', 30, '2023-12-13 14:42:52', '5.00', '3505.00', 2, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(17, '706456', 30, '2023-12-13 14:46:37', '5.00', '3685.00', 2, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(18, '797686', 30, '2023-12-13 14:49:02', '5.00', '15080.00', 2, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(19, '989675', 1, '2023-12-13 15:17:50', '5.00', '15080.00', 5, 'Santa fe 1977, Mendoza', 'Aprobado, sin enviar', NULL, NULL),
(20, NULL, 1, '2023-12-13 15:56:12', '5.00', '8005.00', 5, 'santa fe, mendoza', 'Pendiente', NULL, NULL),
(21, '12345', 30, '2023-12-13 15:59:48', '5.00', '305.00', 5, 'Santa fe 1977, mendoza', 'Aprobado, sin enviar', NULL, NULL),
(22, '1212', 32, '2023-12-13 18:31:32', '5.00', '6885.00', 5, 'Santa fe 1977, Mendoza', 'Aprobado, sin enviar', NULL, NULL),
(23, NULL, 33, '2023-12-13 18:57:56', '5.00', '23080.00', 5, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(24, NULL, 33, '2023-12-13 19:00:55', '5.00', '4780.00', 5, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(25, NULL, 33, '2023-12-13 19:06:57', '5.00', '1580.00', 5, 'Santa fe 1977, Mednoza', 'Pendiente', NULL, NULL),
(26, NULL, 33, '2023-12-13 19:12:09', '5.00', '15080.00', 5, 'Santa fe 1977, mendoza', 'Pendiente', NULL, NULL),
(27, NULL, 33, '2023-12-13 19:16:45', '5.00', '15080.00', 5, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(28, NULL, 33, '2023-12-13 19:19:32', '5.00', '15080.00', 5, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(29, NULL, 33, '2023-12-13 19:22:31', '5.00', '15080.00', 5, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(30, NULL, 33, '2023-12-13 19:24:04', '5.00', '15080.00', 5, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(31, NULL, 33, '2023-12-13 19:24:57', '5.00', '15080.00', 5, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(32, NULL, 33, '2023-12-13 19:27:08', '5.00', '15080.00', 5, 'Santa fe 1977, Mendoza', 'Pendiente', NULL, NULL),
(33, NULL, 33, '2023-12-13 21:06:35', '1000.00', '4680.00', 5, 'dsfdsfs, sdfsdfdsf', 'Pendiente', NULL, NULL),
(34, NULL, 33, '2023-12-13 21:14:51', '1000.00', '4900.75', 5, 'fdsfdsfs, ewerwrw', 'Pendiente', NULL, NULL),
(35, NULL, 33, '2023-12-13 21:16:46', '1000.00', '4680.00', 5, 'gdfgdgd, dfgdfgdfg', 'Pendiente', NULL, NULL),
(36, NULL, 33, '2023-12-13 21:18:06', '1000.00', '16075.00', 5, 'fgdg, dfsdfsd', 'Pendiente', NULL, NULL),
(37, NULL, 33, '2023-12-13 21:23:12', '1000.00', '16075.00', 5, 'dgdfgfgf, dfgdfgdgfd', 'Pendiente', NULL, NULL),
(38, '567NDSD48438JDSDSJ94329SDNDSDS', 33, '2023-12-13 21:26:59', '1000.00', '16075.00', 5, 'gfhfdghfhgf, ghfdghdh', 'Pendiente', NULL, NULL),
(39, 'efectivo', 33, '2023-12-13 21:32:43', '1000.00', '16075.00', 5, 'gdfgdg, dfgdfgdfg', 'Pendiente', NULL, NULL),
(40, '40', 33, '2023-12-13 21:34:54', '1000.00', '16075.00', 5, 'gsddgdfg, dfgdfgdfgfdg', 'Pendiente', NULL, NULL),
(41, '41', 33, '2023-12-13 21:35:54', '1000.00', '39450.00', 5, 'dfgdfgd, dfgdfgfd', 'Pendiente', NULL, NULL),
(42, '42', 33, '2023-12-13 21:38:28', '1000.00', '23435.00', 5, 'dsfsdfsdfs, sfdsfsfs', 'Aprobado, sin enviar', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(285, 2, 1, 1, 0, 0, 0),
(286, 2, 2, 1, 1, 1, 0),
(287, 2, 3, 0, 0, 0, 0),
(288, 2, 4, 0, 0, 0, 0),
(289, 2, 5, 0, 0, 0, 0),
(290, 2, 6, 0, 0, 0, 0),
(291, 2, 8, 0, 0, 0, 0),
(292, 2, 9, 0, 0, 0, 0),
(301, 7, 1, 1, 0, 0, 0),
(302, 7, 2, 0, 0, 0, 0),
(303, 7, 3, 0, 0, 0, 0),
(304, 7, 4, 0, 0, 0, 0),
(305, 7, 5, 1, 0, 0, 0),
(306, 7, 6, 0, 0, 0, 0),
(307, 7, 8, 0, 0, 0, 0),
(308, 7, 9, 0, 0, 0, 0),
(318, 1, 1, 1, 1, 1, 1),
(319, 1, 2, 1, 1, 1, 1),
(320, 1, 3, 1, 1, 1, 1),
(321, 1, 4, 1, 1, 1, 1),
(322, 1, 5, 1, 1, 1, 1),
(323, 1, 6, 1, 1, 1, 1),
(324, 1, 8, 1, 1, 1, 1),
(325, 1, 9, 1, 1, 1, 1),
(326, 1, 10, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombrefiscal` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `direccionfiscal` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `token` varchar(40) COLLATE utf8mb4_swedish_ci NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '1313131313', 'Camimari', 'Admin', 5435341234, 'camimari@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '5633453', 'Prueba', 'Me recibo?', '8aa98fc29f68', 1, '2020-08-13 00:51:44', 1),
(2, '7865421565', 'Julio', 'Hernández', 789465487, 'julio@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2020-08-13 00:54:08', 1),
(3, '879846545454', 'Pablo David', 'Arana', 784858856, 'pablo@info.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '', '', '', '', 2, '2020-08-14 01:42:34', 0),
(4, '65465465', 'Jorge', 'Arana', 987846545, 'jorge@info.com', '5eab4465b7e8c1118332a2a413a03c7d1bfcae606fd3e8cba3ad8cbf1b076996', '', '', '', '', 2, '2020-08-22 00:27:17', 0),
(5, '4654654', 'Carme', 'Arana', 646545645, 'carmen@infom.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'DRY464', '2343534', '34534dgfdg', '', 2, '2020-08-22 00:35:04', 1),
(6, '8465484', 'Alex', 'Mendez', 4654654545, 'alex@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2020-08-22 00:48:50', 0),
(7, '567343', 'Carla', 'Montiel', 56543545654, 'carla@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2023-11-16 16:43:29', 0),
(10, '1235464', 'Maria Celest', 'Trejo', 238579534, 'maritrejo97@gmail.com', '1234567', '23523', 'sdgdsgdfh', 'shfhfghfgj', '', 7, '2023-11-29 17:42:20', 1),
(11, '40559924', 'Maria Celeste', 'Trejo', 2604011404, 'mariacelestetrejo12@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2379832', 'Prueba3', 'Santa fe 1979', '', 7, '2023-11-29 17:43:09', 1),
(12, 'sdgsdg', 'Maria Celeste', 'Trejo', 2604011404, 'mariiiii@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '34346346', 'dfdhfhdfh', 'Santa fe 1977', '', 7, '2023-11-29 18:20:03', 0),
(14, '', 'Maria Celeste', 'Trejo', 2604011404, 'mariacelestetrejo189@gmail.com', 'cc999fd174083f665a4665c6edc0f0567735250f563750e2333d086d556cd272', '', '', '', '', 2, '2023-12-05 20:40:57', 1),
(15, '', 'Maria Celeste', 'Trejo', 2604011404, 'mariacelestetrejo111@gmail.com', 'a9cb8e1f133cb9517ebfa27f17f2c847335fd91411473a99f52b613c3afc2471', '', '', '', '', 2, '2023-12-06 11:33:08', 1),
(16, '235325', 'David', 'Veisaga', 260444444, 'davidveisaga@gmail.coms', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2023-12-11 19:52:32', 1),
(30, '23423', 'Maria Celeste', 'Trejo', 2604011404, 'mariacelestetrejo1@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2023-12-13 14:42:28', 1),
(31, '123', 'Camila Final', 'Torres', 13423543, 'camilafinaltorres@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2023-12-13 16:01:50', 1),
(32, '', 'Gustav', 'Contreras', 34593295, 'gusscon3ras@gmail.com', 'fcac0e025c8bd5e097f1cff349aeaec61041986cc3766004a305d92dabb92310', '', '', '', '', 7, '2023-12-13 18:30:47', 1),
(33, '34534523423423', 'Camila', 'Torres', 2385302, 'camilatorresdev@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '', '', '', '', 7, '2023-12-13 18:56:59', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` bigint(20) NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `contenido` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\"><img src=\"Assets/images/m2\" alt=\"\" />Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo&nbsp;</p> <p>&nbsp;</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/dc.png\" alt=\"DC\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/converse.png\" alt=\"Converse\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/gucci.png\" alt=\"Gucci\" width=\"150\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/versace.png\" alt=\"Versace\" width=\"110\" height=\"110\" /></div> </div>', '', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3> <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; El proyecto comenz&oacute; con &ldquo;Pr&aacute;cticas Profesionalizantes I&rdquo;, en donde se realiz&oacute; un an&aacute;lisis del mercado buscando problem&aacute;ticas y falencias para poder crear alg&uacute;n software que lo resuelva. Por lo tanto, en esta primera instancia se realiz&oacute; un trabajo de investigaci&oacute;n y relevamiento. Es evidente que en el mundo existen muchos problemas y que pueden ser resueltos de diversas maneras con ayuda de softwares y tecnolog&iacute;as, pero en este caso el foco se puso en el sector de la mercantilizaci&oacute;n.</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Habiendo concluido la primera etapa, se pas&oacute; a la segunda, que inici&oacute; con &ldquo;Pr&aacute;cticas Profesionalizantes II&rdquo;, la cual const&oacute; en comenzar a crear el software que resolver&iacute;a la problem&aacute;tica encontrada: due&ntilde;os de tiendas f&iacute;sicas que necesitaban una alternativa online para hacer crecer su negocio y de forma rentable; emprendedores que empezar de cero con una tienda f&iacute;sica se les hac&iacute;a complicado, debido a la econom&iacute;a actual del pa&iacute;s y necesitaban otra opci&oacute;n. Por lo tanto, en esta etapa se comenz&oacute; a crear nuestro software de E-commerce que en principio era tan solo una p&aacute;gina de estilo cat&aacute;logo.</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Concluida la segunda etapa, comenzar&iacute;a la tercera y &uacute;ltima etapa correspondiente a &ldquo;Pr&aacute;cticas Profesionalizantes III&rdquo;, en la cual ya comenzar&iacute;a la creaci&oacute;n de &ldquo;LocalEase, el poder de tu tienda a un solo clic&rdquo;, siendo este un software totalmente completo y funcional para poder resolver las problem&aacute;ticas planteadas, para peque&ntilde;as y medianas empresas dedicadas a la venta de productos.</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 col-lg-8 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h2 class=\"mtext-111 cl2 p-b-16\"><span style=\"color: #236fa1;\">Nuestra Visi&oacute;n</span></h2> <p>La visi&oacute;n de &ldquo;LocalEase&rdquo; es crear una plataforma E-commerce, en el que comerciantes y emprendedores de peque&ntilde;as o medianas empresas puedan tener una alternativa rentable para tener su tienda online, segura y eficiente. El primer objetivo de la plataforma es convertirse en referente principal en la industria de servicios E-commerce a nivel local.</p> <p>Trejo Maria Celeste - Torres Camila</p> </div> </div> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> </div> </section>', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<p><em><strong>&nbsp; &nbsp;</strong></em></p>', '', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt!</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</span></li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<h4 style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES &mdash; Local ease</h4> <p>&nbsp;</p> <p>Local ease, persona jur&iacute;dica de derecho privado describe, a trav&eacute;s de este documento, las normas de uso del sitio localease.com y de cualquier otro sitio web, tienda o aplicaci&oacute;n operada por el titular.</p> <p>Al navegar por este sitio web, consideramos que est&aacute; de acuerdo con las condiciones de uso que figuran a continuaci&oacute;n.</p> <p>Si no est&aacute; de acuerdo con los t&eacute;rminos de este acuerdo, le pedimos que no haga ning&uacute;n otro uso de este sitio web, mucho menos que se registre o env&iacute;e sus datos personales.</p> <p>Si cambiamos nuestras condiciones de uso, publicaremos el nuevo texto en este sitio web, con una fecha de revisi&oacute;n actualizada. Podemos modificar este documento en cualquier momento.</p> <p>Si hay un cambio significativo en los t&eacute;rminos de este acuerdo, podemos informarle utilizando la informaci&oacute;n de contacto que tenemos en nuestra base de datos o mediante una notificaci&oacute;n.</p> <p>El uso de este sitio web despu&eacute;s de los cambios significa que usted acepta las condiciones de uso revisadas. Si, despu&eacute;s de leer la versi&oacute;n revisada, no est&aacute; de acuerdo con sus t&eacute;rminos, por favor, termine su acceso.</p> <p>&nbsp;</p> <ul> <li> <h5>Secci&oacute;n 1 - Usuario</h5> El uso de este sitio web le otorga autom&aacute;ticamente la condici&oacute;n de Usuario e implica su plena aceptaci&oacute;n de todas las directrices y condiciones incluidas en estas Condiciones.</li> <li> <h5>Secci&oacute;n 2 - Adhesi&oacute;n junto con la pol&iacute;tica de privacidad</h5> <p>El uso de este sitio web implica la adhesi&oacute;n a estas Condiciones de Uso y a la versi&oacute;n m&aacute;s actualizada de la Pol&iacute;tica de Privacidad de Local ease.</p> </li> <li> <h5>Secci&oacute;n 3 - Condiciones de acceso</h5> <p>En general, el acceso al sitio web de Local ease es gratuito y no requiere registro previo.</p> <p>Sin embargo, para hacer uso de algunas funcionalidades, el usuario puede necesitar registrarse, creando una cuenta de usuario con un nombre de usuario y una contrase&ntilde;a de acceso.</p> <p>Es responsabilidad del usuario proporcionar &uacute;nicamente informaci&oacute;n correcta, aut&eacute;ntica, v&aacute;lida, completa y actualizada, as&iacute; como no revelar su nombre de usuario y contrase&ntilde;a a terceros.</p> <p>Algunas partes de este sitio web ofrecen al usuario la opci&oacute;n de publicar comentarios en determinadas &aacute;reas.Local ease no consiente la publicaci&oacute;n de contenidos de car&aacute;cter discriminatorio, ofensivo o il&iacute;cito, o que infrinjan los derechos de autor o cualquier otro derecho de terceros.</p> <p>La publicaci&oacute;n de cualquier contenido por parte del usuario de este sitio web, incluidos los mensajes y comentarios, implica una licencia no exclusiva, irrevocable e irreversible para su uso, reproducci&oacute;n y publicaci&oacute;n por parte de Local ease en su sitio web, plataformas de internet y aplicaciones, o incluso en otras plataformas, sin ninguna restricci&oacute;n o limitaci&oacute;n.</p> </li> <li> <h5>Secci&oacute;n 4 - Cookies</h5> <p>La informaci&oacute;n sobre el uso que usted hace de este sitio web puede recogerse a trav&eacute;s de las cookies. Las cookies son piezas de informaci&oacute;n que se almacenan directamente en el equipo que est&aacute; utilizando. Las cookies permiten recoger informaci&oacute;n como el tipo de navegador, el tiempo de permanencia en el sitio web, las p&aacute;ginas visitadas, las preferencias de idioma y otros datos de tr&aacute;fico an&oacute;nimos. Nosotros y nuestros proveedores de servicios utilizamos la informaci&oacute;n para la protecci&oacute;n de la seguridad, para facilitar la navegaci&oacute;n, mostrar la informaci&oacute;n de manera m&aacute;s eficiente y personalizar su experiencia al utilizar este sitio web, as&iacute; como para el seguimiento en l&iacute;nea. Tambi&eacute;n recopilamos informaci&oacute;n estad&iacute;stica sobre el uso del sitio web para mejorar continuamente nuestro dise&ntilde;o y funcionalidad, para entender c&oacute;mo se utiliza el sitio web y para ayudarle a resolver problemas relevantes.</p> <p>Si no desea que se recoja su informaci&oacute;n a trav&eacute;s de las cookies, existe un procedimiento sencillo en la mayor&iacute;a de los navegadores que permite rechazar autom&aacute;ticamente las cookies, o le da la opci&oacute;n de aceptar o rechazar la transferencia de una cookie espec&iacute;fica (o varias) de un sitio web concreto a su ordenador. Sin embargo, esto puede crear inconvenientes en su uso del sitio web.</p> <p>La configuraci&oacute;n que elija puede afectar a su experiencia de navegaci&oacute;n y al funcionamiento que requiere el uso de cookies. En este sentido, rechazamos cualquier responsabilidad por las consecuencias derivadas del funcionamiento limitado de este sitio web causado por la desactivaci&oacute;n de las cookies en su dispositivo (incapacidad para establecer o leer una cookie).</p> </li> <li> <h5>Secci&oacute;n 5 - Propiedad intelectual</h5> <p>Todos los elementos de Local ease son propiedad intelectual de la misma o de sus licenciantes. Estos t&eacute;rminos o el uso del sitio web no le otorgan ninguna licencia o derecho de uso de los derechos de propiedad intelectual de Local ease o de cualquier tercero.</p> </li> <li> <h5>Secci&oacute;n 6 - Enlaces a sitios web de terceros</h5> <p>Este sitio web puede contener, de vez en cuando, enlaces de hipertexto que le redirigir&aacute;n a sitios web de nuestros socios, anunciantes, proveedores, etc. Si hace clic en uno de estos enlaces a cualquiera de estos sitios, recuerde que cada sitio tiene sus propias pr&aacute;cticas de privacidad y que nosotros no somos responsables de estas pol&iacute;ticas. Por favor, consulte esas pol&iacute;ticas antes de enviar cualquier dato personal a esos sitios.</p> <p>No somos responsables de las pol&iacute;ticas y pr&aacute;cticas de recopilaci&oacute;n, uso y divulgaci&oacute;n (incluidas las pr&aacute;cticas de protecci&oacute;n de datos) de otras organizaciones, como Facebook, Apple, Google, Microsoft, o cualquier otro desarrollador de software o proveedor de aplicaciones, tienda de medios sociales, sistema operativo, proveedor de servicios de internet o fabricante de dispositivos, incluidos los Datos Personales que usted divulgue a otras organizaciones a trav&eacute;s de las aplicaciones, en relaci&oacute;n con dichas aplicaciones, o publicados en nuestras redes sociales. Le recomendamos que se informe sobre la pol&iacute;tica de privacidad y las condiciones de uso de cada sitio web visitado o proveedor de servicios utilizado.</p> </li> <li> <h5>Secci&oacute;n 7 - Plazos y modificaciones</h5> <p>El funcionamiento de este sitio web es por tiempo indefinido.</p> <p>La totalidad del sitio web o cada una de sus secciones podr&aacute; ser cerrada, suspendida o interrumpida unilateralmente por Local ease, en cualquier momento y sin previo aviso.</p> </li> <li> <h5>Secci&oacute;n 8 - Datos personales</h5> <p>Durante el uso de este sitio web, ciertos datos personales ser&aacute;n recogidos y procesados por Local ease y/o los Socios. Las normas relativas al tratamiento de los datos personales de Local ease est&aacute;n estipuladas en la Pol&iacute;tica de Privacidad.</p> </li> <li> <h5>Secci&oacute;n 9 - Contacto</h5> <p>Si tiene alguna pregunta sobre las condiciones de uso, por favor p&oacute;ngase en contacto con nosotros por correo electr&oacute;nico localease2023@gmail.com.</p> </li> </ul>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 5, '3454677', 'Reloj Style', '<p>nuev producto&nbsp;</p>', '2300.75', 3, '', '2023-12-03 18:38:32', 'reloj-style', 1),
(2, 1, '34657788', 'Camiseta Louis', '<p>nuevo</p>', '1500.00', 5, '', '2023-12-03 18:41:58', 'camiseta-louis', 1),
(3, 2, '56879800', 'Bluza Caroline', '<p>Rmeeeeera piola</p>', '300.00', 1, '', '2023-12-03 19:06:23', 'bluza-caroline', 1),
(4, 6, '4576878', 'Chaqueta Harry', '<ul> <li>Hola mundoo</li> <li>Hola mundoo</li> </ul> <ul> <li>Hola mundoo</li> <li>Hola mundoo</li> </ul> <p>&nbsp;</p>', '3500.00', 0, '', '2023-12-03 19:40:47', 'chaqueta-harry', 1),
(5, 2, '45768789', 'Camisa Drew', '<p>Nueva</p>', '3200.00', 2, '', '2023-12-03 23:32:38', 'camisa-drew', 1),
(6, 4, '568798003', 'Top Emily', '<p>Top</p>', '1575.00', 2, '', '2023-12-03 23:33:40', 'top-emily', 1),
(7, 6, '56879800565', 'Blazer Camille', '', '15075.00', 1, '', '2023-12-03 23:35:23', 'blazer-camille', 1),
(9, 3, '3446597', 'Conjunto Deportivo Victoria', '', '3680.00', 1, '', '2023-12-05 14:25:51', 'conjunto-deportivo-victoria', 1),
(10, 3, '967979567', 'Vestido Katniss', '', '3900.75', 1, '', '2023-12-05 16:04:54', 'vestido-katniss', 1),
(11, 5, '568745325', 'Botellón MOTIVACIONAL', '<p>&nbsp;</p> <p><strong>BOTELLON MOTIVACIONAL&nbsp;</strong></p> <p><strong>Disponibles:&nbsp;</strong></p> <ul> <li style=\"list-style-type: none;\"> <ul> <li>Botell&oacute;n 1 lts.&nbsp;</li> <li>Botell&oacute;n 500 lts.</li> </ul> </li> </ul> <p>&nbsp;</p>', '8000.00', 8, '', '2023-12-05 21:12:37', 'botellon-motivacional', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

CREATE TABLE `reembolso` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `idtransaccion` varchar(255) NOT NULL,
  `datosreembolso` text NOT NULL,
  `observacion` text NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisores', 'Supervisor de tienda', 1),
(3, 'Vendedor', 'Vendedor de tienda', 1),
(7, 'Cliente-Usuario', 'Clientes tienda', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `idsuscripcion` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Gustavo Contreras', 'gusscon3ras@gmail.com', '2023-12-13 18:47:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `idtipopago` bigint(20) NOT NULL,
  `tipopago` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(5, 'Transferencia bancaria', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`),
  ADD KEY `tipopagoid` (`tipopagoid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indices de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`idsuscripcion`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `idsuscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
