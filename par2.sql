-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2026 a las 18:28:38
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
-- Base de datos: `par2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `telefono`, `direccion`) VALUES
(1, 'Luis Hernández', '78451236', 'Usulután'),
(2, 'Daniela Cruz', '72984561', 'San Miguel'),
(3, 'Miguel Flores', '75321648', 'Santa Ana'),
(4, 'Andrea Reyes', '69851472', 'Sonsonate'),
(5, 'Javier Ruiz', '71245896', 'La Unión'),
(6, 'Paola Torres', '78596321', 'San Salvador'),
(7, 'Kevin López', '72143658', 'Ahuachapán'),
(8, 'Valeria Díaz', '75489632', 'Usulután'),
(9, 'Fernando Castro', '69784512', 'San Vicente'),
(10, 'Gabriela Ramos', '71325874', 'Morazán'),
(11, 'Ricardo Molina', '78654123', 'La Paz'),
(12, 'Camila Herrera', '72896314', 'Chalatenango'),
(13, 'Jorge Navarro', '75123489', 'Cuscatlán'),
(14, 'Lucía Méndez', '69478521', 'Cabañas'),
(15, 'Óscar Peña', '71589632', 'La Libertad'),
(16, 'Carla Sánchez', '78963214', 'San Miguel'),
(17, 'Héctor Vega', '72314589', 'Usulután'),
(18, 'Melissa Romero', '75632148', 'Santa Ana'),
(19, 'Diego Fuentes', '69125487', 'Sonsonate'),
(20, 'Karen Rivas', '71896325', 'San Salvador'),
(21, 'Roberto Campos', '78214596', 'Ahuachapán'),
(22, 'Patricia Silva', '72589641', 'La Unión'),
(23, 'Cristian Ortiz', '75981423', 'Morazán'),
(24, 'Natalia Castillo', '69632514', 'San Vicente'),
(25, 'Eduardo Alvarado', '71478596', 'La Paz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id_detalle`, `id_venta`, `id_producto`, `cantidad`, `subtotal`) VALUES
(1, 1, 1, 1, 65.00),
(2, 2, 4, 1, 55.00),
(3, 3, 7, 1, 75.00),
(4, 4, 9, 1, 48.00),
(5, 5, 12, 1, 25.00),
(6, 6, 15, 1, 22.00),
(7, 7, 18, 1, 70.00),
(8, 8, 21, 1, 60.00),
(9, 9, 24, 1, 80.00),
(10, 10, 2, 1, 65.00),
(11, 11, 5, 1, 55.00),
(12, 12, 8, 1, 75.00),
(13, 13, 10, 1, 48.00),
(14, 14, 13, 1, 25.00),
(15, 15, 16, 1, 22.00),
(16, 16, 19, 1, 70.00),
(17, 17, 22, 1, 60.00),
(18, 18, 25, 1, 80.00),
(19, 19, 3, 1, 65.00),
(20, 20, 6, 1, 55.00),
(21, 21, 7, 1, 75.00),
(22, 22, 11, 1, 48.00),
(23, 23, 14, 1, 25.00),
(24, 24, 17, 1, 22.00),
(25, 25, 20, 1, 70.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `cargo`, `telefono`) VALUES
(1, 'Ana López', 'Vendedora', '78341256'),
(2, 'Carlos Pérez', 'Cajero', '72658941'),
(3, 'María Gómez', 'Vendedora', '75413892'),
(4, 'José Martínez', 'Gerente', '69874215'),
(5, 'Sofía Ramírez', 'Vendedora', '71236458');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `talla` int(11) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `marca`, `talla`, `precio`, `stock`) VALUES
(1, 'Tenis Running', 'Nike', 38, 65.00, 20),
(2, 'Tenis Running', 'Nike', 39, 65.00, 15),
(3, 'Tenis Running', 'Nike', 40, 65.00, 18),
(4, 'Zapato Casual', 'Adidas', 38, 55.00, 12),
(5, 'Zapato Casual', 'Adidas', 39, 55.00, 10),
(6, 'Zapato Casual', 'Adidas', 40, 55.00, 8),
(7, 'Botín Cuero', 'Puma', 41, 75.00, 7),
(8, 'Botín Cuero', 'Puma', 42, 75.00, 6),
(9, 'Tenis Blanco', 'Reebok', 37, 48.00, 11),
(10, 'Tenis Blanco', 'Reebok', 38, 48.00, 14),
(11, 'Tenis Blanco', 'Reebok', 39, 48.00, 13),
(12, 'Zapato Escolar', 'Bata', 34, 25.00, 30),
(13, 'Zapato Escolar', 'Bata', 35, 25.00, 28),
(14, 'Zapato Escolar', 'Bata', 36, 25.00, 26),
(15, 'Sandalia', 'Flexi', 37, 22.00, 15),
(16, 'Sandalia', 'Flexi', 38, 22.00, 18),
(17, 'Sandalia', 'Flexi', 39, 22.00, 17),
(18, 'Tenis Deportivo', 'Under Armour', 40, 70.00, 9),
(19, 'Tenis Deportivo', 'Under Armour', 41, 70.00, 8),
(20, 'Tenis Deportivo', 'Under Armour', 42, 70.00, 10),
(21, 'Mocasín', 'Clarks', 40, 60.00, 5),
(22, 'Mocasín', 'Clarks', 41, 60.00, 4),
(23, 'Mocasín', 'Clarks', 42, 60.00, 6),
(24, 'Zapato Formal', 'Hush Puppies', 41, 80.00, 7),
(25, 'Zapato Formal', 'Hush Puppies', 42, 80.00, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `fecha`, `total`, `id_cliente`, `id_empleado`) VALUES
(1, '2026-01-05', 65.00, 1, 1),
(2, '2026-01-06', 55.00, 2, 2),
(3, '2026-01-07', 75.00, 3, 3),
(4, '2026-01-08', 48.00, 4, 4),
(5, '2026-01-09', 25.00, 5, 5),
(6, '2026-01-10', 22.00, 6, 1),
(7, '2026-01-11', 70.00, 7, 2),
(8, '2026-01-12', 60.00, 8, 3),
(9, '2026-01-13', 80.00, 9, 4),
(10, '2026-01-14', 65.00, 10, 5),
(11, '2026-01-15', 55.00, 11, 1),
(12, '2026-01-16', 75.00, 12, 2),
(13, '2026-01-17', 48.00, 13, 3),
(14, '2026-01-18', 25.00, 14, 4),
(15, '2026-01-19', 22.00, 15, 5),
(16, '2026-01-20', 70.00, 16, 1),
(17, '2026-01-21', 60.00, 17, 2),
(18, '2026-01-22', 80.00, 18, 3),
(19, '2026-01-23', 65.00, 19, 4),
(20, '2026-01-24', 55.00, 20, 5),
(21, '2026-01-25', 75.00, 21, 1),
(22, '2026-01-26', 48.00, 22, 2),
(23, '2026-01-27', 25.00, 23, 3),
(24, '2026-01-28', 22.00, 24, 4),
(25, '2026-01-29', 70.00, 25, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
