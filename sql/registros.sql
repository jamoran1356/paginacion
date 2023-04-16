-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2023 at 12:44 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paginacion`
--

-- --------------------------------------------------------

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
CREATE TABLE IF NOT EXISTS `registros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `identificacion` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correo` varchar(150) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `registros`
--

INSERT INTO `registros` (`id`, `nombre`, `identificacion`, `ciudad`, `correo`) VALUES
(1, 'Ana García', '12345678', 'Bogotá', 'ana.garcia@example.com'),
(2, 'Juan Pérez', '23456789', 'Medellín', 'juan.perez@example.com'),
(3, 'María López', '34567890', 'Cali', 'maria.lopez@example.com'),
(4, 'Pedro Rodríguez', '45678901', 'Barranquilla', 'pedro.rodriguez@example.com'),
(5, 'Laura Martínez', '56789012', 'Cartagena', 'laura.martinez@example.com'),
(6, 'Carlos Gómez', '67890123', 'Bucaramanga', 'carlos.gomez@example.com'),
(7, 'Sofía Hernández', '78901234', 'Manizales', 'sofia.hernandez@example.com'),
(8, 'Andrés Torres', '89012345', 'Pereira', 'andres.torres@example.com'),
(9, 'Ana María Restrepo', '90123456', 'Bogotá', 'anamaria.restrepo@example.com'),
(10, 'Jorge Ramírez', '01234567', 'Medellín', 'jorge.ramirez@example.com'),
(11, 'María Isabel García', '98765432', 'Cali', 'mariaisabel.garcia@example.com'),
(12, 'Juan Carlos Pérez', '87654321', 'Barranquilla', 'juancarlos.perez@example.com'),
(13, 'Laura Marcela López', '76543210', 'Cartagena', 'lauramarcela.lopez@example.com'),
(14, 'Pedro Pablo Rodríguez', '65432109', 'Bucaramanga', 'pedropablo.rodriguez@example.com'),
(15, 'Sofía Andrea Gómez', '54321098', 'Manizales', 'sofiaandrea.gomez@example.com'),
(16, 'Carlos Andrés Hernández', '43210987', 'Pereira', 'carlosandres.hernandez@example.com'),
(17, 'Ana Lucía Torres', '32109876', 'Bogotá', 'analucia.torres@example.com'),
(18, 'Jorge Andrés Ramírez', '21098765', 'Medellín', 'jorgeandres.ramirez@example.com'),
(19, 'María Isabel Restrepo', '10987654', 'Cali', 'mariaisabel.restrepo@example.com'),
(20, 'Juan Carlos García', '09876543', 'Barranquilla', 'juancarlos.garcia@example.com'),
(21, 'Laura Marcela Pérez', '98765432', 'Cartagena', 'lauramarcela.perez@example.com'),
(22, 'Pedro Pablo López', '87654321', 'Bucaramanga', 'pedropablo.lopez@example.com'),
(23, 'Sofía Andrea Rodríguez', '76543210', 'Manizales', 'sofiaandrea.rodriguez@example.com'),
(24, 'Carlos Andrés Gómez', '65432109', 'Pereira', 'carlosandres.gomez@example.com'),
(25, 'Ana Lucía Hernández', '54321098', 'Bogotá', 'analucia.hernandez@example.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
