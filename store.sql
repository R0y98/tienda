-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2021 a las 16:25:59
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(7) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Nombre`, `Clave`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, '', 'd41d8cd98f00b204e9800998ecf8427e'),
(3, 'Erick', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'Julio', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'Aurelio', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'Jaime', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('', '', ''),
('002', 'Laptops', 'Para el uso de escuela'),
('003', 'Smartphone', 'Todo tipo de requerimiento'),
('004', 'Audífonos', 'Todo tipos de audífonos (Inalámbricos o con jack)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`NIT`, `Nombre`, `NombreCompleto`, `Apellido`, `Clave`, `Direccion`, `Telefono`, `Email`) VALUES
('1234', 'jaimeu', 'jaime', 'diaz', '20d5b71511ee69a45227411d67265905', 'MARIANO MATAMOROS 333 A', '2462105045', 'jpd1397@hotmail.com'),
('12345', 'deidades', 'Aurelio', 'Coyotzi', '827ccb0eea8a706c4c34a16891f84e7b', 'calle nazareth', '1234567890', 'cact@gmail.com'),
('1234567890', 'queso', 'Aurelio', 'Coyotzi', '25f9e794323b453885f5181f1b624d0b', 'calle nazareth', '90610', 'cact@gmail.com'),
('24619292921', 'Snorlax', 'Aurelio', 'Coyotzi', 'e10adc3949ba59abbe56e057f20f883e', 'calle nazareth', '90610', 'cact2696@gmail.com'),
('2481531767', 'pedro', 'pedro', 'piedras', '827ccb0eea8a706c4c34a16891f84e7b', 'la calle de los rocas', '90123', 'prezisantos86@gamil.com'),
('25489', 'hola', 'doom', 'doom', 'e10adc3949ba59abbe56e057f20f883e', 'MARIANO MATAMOROS 333 A', '245975', 'jpd1397@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentabanco`
--

CREATE TABLE `cuentabanco` (
  `id` int(50) NOT NULL,
  `NumeroCuenta` varchar(100) NOT NULL,
  `NombreBanco` varchar(100) NOT NULL,
  `NombreBeneficiario` varchar(100) NOT NULL,
  `TipoCuenta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentabanco`
--

INSERT INTO `cuentabanco` (`id`, `NumeroCuenta`, `NombreBanco`, `NombreBeneficiario`, `TipoCuenta`) VALUES
(1, '154 472 5288', 'Bancomer', 'Erick Santos', 'Debito'),
(2, '', '', '', ''),
(3, '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL,
  `PrecioProd` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`NumPedido`, `CodigoProd`, `CantidadProductos`, `PrecioProd`) VALUES
(2, '6', 1, '7000.00'),
(3, '3', 1, '5439.36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Descuento` int(2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Descuento`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`, `Estado`) VALUES
(3, '14', 'Audífonos inalámbricos', '004', '6000.00', 0, 'WH-1000XM4/B', 'Sony', 5, '12345609', '14.jpg', 'admin', 'Activo'),
(4, '13', 'True Wireless', '004', '5000.00', 0, 'WF1000XM4', 'Sony', 5, '12345609', '13.jpg', 'admin', 'Activo'),
(5, '12', 'FreeBuds Pro', '004', '3000.00', 0, 'MermaidTWS', 'HUAWEI', 5, '1029837465', '12.jpg', 'admin', 'Activo'),
(6, '11', 'FreeBuds 4i', '004', '1000.00', 0, 'FreeBuds 4i', 'HUAWEI', 5, '123456789', '11.jpg', 'admin', 'Activo'),
(7, '1', 'virgin', '003', '5999.00', 22, '12345', 'xaomi', 33, '1029837465', '1.png', 'admin', 'Activo'),
(8, '10', 'HUAWEI MateBook D 15', '002', '14000.00', 0, 'D 15', 'HUAWEI', 3, '10202929292', '10.jpg', 'admin', 'Activo'),
(9, '9', 'Gamer Asus', '002', '25000.00', 0, 'ASUS TUF 15.6', 'Asus', 2, '123456789', '9.jpg', 'admin', 'Activo'),
(10, '2', 'Mi Mix 2', '003', '14000.00', 3, 'ceremic negro', 'xaomi', 12, '1029837465', '2.png', 'admin', 'Activo'),
(11, '8', 'Apple MacBook', '002', '9000.00', 0, 'Air MJVM2LL/A', 'Apple', 2, '12345609', '8.jpg', 'admin', 'Activo'),
(12, '3', 'xaomi red', '003', '5666.00', 4, 'red3', 'xaomi', 54, '1029837465', '3.png', 'admin', 'Activo'),
(14, '4', 'xaomi n3', '003', '5000.00', 5, 'poco3', 'xaomi', 4, '10202929292', '4.png', 'admin', 'Activo'),
(15, '6', 'VivoBook', '002', '7000.00', 0, 'L210MA', 'Asus', 2, '123456789', '6.jpg', 'admin', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('10202929292', 'Huawei', 'New York', '1234567890', 'https://consumer.huawei.com/mx'),
('1029837465', 'Xiaomi', 'China', '2510298462', 'https://www.xiaomishop.mx'),
('12345609', 'Apple', 'Cansas', '23456781', 'https://www.apple.com/mx'),
('123456789', 'Asus', 'New York', '2461412153', 'https://www.asus.com/mx/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL,
  `NumeroDeposito` varchar(50) NOT NULL,
  `TipoEnvio` varchar(37) NOT NULL,
  `Adjunto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`NumPedido`, `Fecha`, `NIT`, `TotalPagar`, `Estado`, `NumeroDeposito`, `TipoEnvio`, `Adjunto`) VALUES
(2, '01-12-2021', '2481531767', '7000.00', 'Pendiente', '22222222', 'Recoger Por Tienda', 'comprobante_2.png'),
(3, '02-12-2021', '12345', '5439.36', 'Pendiente', '1234565677998754', 'Recoger Por Tienda', 'comprobante_2.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
