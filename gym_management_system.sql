-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2023 a las 01:44:07
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gym_management_system`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_birth` date NOT NULL,
  `mobile` int(12) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `subscription` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `trainer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `member`
--

INSERT INTO `member` (`id`, `first_name`, `last_name`, `date_birth`, `mobile`, `gender`, `address`, `subscription`, `amount`, `start_date`, `trainer`) VALUES
(1, 'Mario', 'Browser', '1997-07-02', 71213456, 'Male', 'CDMX centro', '1 year', '123', '2023-08-01', 'Mike'),
(2, 'Julio', 'Ponce', '1998-08-09', 712345, 'Male', 'Toluca', '3 months', '6436', '2023-08-12', 'Mike Bukouski'),
(3, 'Monse', 'Bernabeth', '2023-08-09', 72345, 'Male', 'CDMX', 'Monthly', '785', '2023-08-02', 'Mike'),
(4, 'Maria', 'Pulido', '2023-08-06', 5523456, 'Female', 'CDMX', '6 months', '6233', '2023-08-11', 'Mike Super Coder'),
(5, 'Pedro', 'Ramirez', '1998-08-08', 55234567, 'Male', 'Tijuana', 'Monthly', '55', '2023-08-05', 'Mike Bukouski'),
(6, 'Adriana', 'Perez', '1998-08-08', 884567, 'Female', 'Queretaro', '1 year', '734567', '2023-08-19', 'Mike Super Coder');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trainer`
--

CREATE TABLE `trainer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trainer`
--

INSERT INTO `trainer` (`id`, `name`, `age`, `address`, `mobile`, `date`) VALUES
(1, 'Mike', 23, 'IxtlaYork', '72345611', '2023-08-11'),
(2, 'Mike Bukouski', 25, 'Ixtla York', '743567', '2023-08-01'),
(3, 'Mike Super Coder', 21, 'CDMX', '7234567', '2023-09-02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
