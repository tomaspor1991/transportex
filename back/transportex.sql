-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-12-2024 a las 00:18:44
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transportex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_general_ci NOT NULL,
  `img_id` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(9, 'Expreso , más de 30 años cumpliendo en tiempo y forma', 'Confiando en el nuestro trabajo', 'Nuestra empresa tiene más de treinta años desarrollando servicios de transporte entre la ciudad de Buenos Aires, Santa Rosa, toda la provincia de La Pampa y oeste de Buenos Aires. Sabemos que el transporte y la logística son factores claves de diferenciación si consideramos el alto nivel de competitividad y la evolución permanente de los negocios actuales. En estos nuevos tiempos, hemos readecuado procesos, optimizado recursos e implementado mejoras con el objetivo de ofrecerle un servicio acorde a sus necesidades. Lo más importante para nosotros, es el camino que queremos transitar junto a usted: nuestro cliente. Con las energías, la confianza y el profesionalismo de siempre, los queremos escuchar para comprender mejor sus verdaderas necesidades y así ser capaces de diseñar una estrategia de servicio a su medida. Su envío es nuestro mayor valor y bajo esta premisa trabajamos. En este sentido, en Expreso Rocinante queremos involucrarnos en forma directa con sus requerimientos y ocuparnos para brindarle un servicio personalizado y eficiente, contemplando cada caso en particular y construyendo una relación de confianza y beneficio mutuo', 'dofad5paa0gmj1yqcqis'),
(10, 'Trenes Argentinos Operaciones', 'lanzó un importante proceso de compra para las líneas que opera', ' En el marco de la emergencia ferroviaria, Trenes Argentinos lanzó hoy la compulsa abreviada nacional e internacional para la adquisición de 802 ruedas para los coches que prestan servicio en las líneas Roca, Mitre, San Martín y Belgrano Sur.\r\nEl plazo de entrega establecido por la operadora ferroviaria fue estipulado en 180 días corridos. Los repuestos son necesarios para una operación segura y asegurar el mantenimiento preventivo del material rodante.\r\nPor ello, la empresa ferroviaria dependiente de la Secretaría de Transporte del Ministerio de Economía, publicó en el Boletín Oficial el llamado a Contratación Directa por Emergencia Ferroviaria para la Adquisición de Ruedas para coches EMU CSR Sifang, triplas DMU CNR Tangshan, coches remolcados CSR Puzhen y coches remolcados Materfer. La convocatoria fue lanzada esta mañana y estará abierta hasta el 19 de diciembre. La modalidad para la compra será mediante una compulsa abreviada, que posibilita la convocatoria a más oferentes y acorta los plazos respecto a una licitación.\r\nContar con ruedas nuevas permitirá optimizar la circulación de los trenes del AMBA, incrementando significativamente los niveles de seguridad operacional para los más de un millón de pasajeros que utilizan a diario el servicio.', 'iq3kthpfo4tftnunepjo'),
(13, 'Los colectivos funcionan con normalidad', 'El Gobierno porteño informó las primeras medidas para las líneas traspasadas a la órbita de CABA, entre las cuales se incluye un cambio de imagen', '\r\n\r\nLeer el resumen y glosario generados por la inteligencia artificial\r\n\r\n\r\n\r\n25\r\n\r\n\r\n\r\n\r\n\r\nEste miércoles 27 de noviembre se dio a conocer que los 1800 colectivos que inician y terminan su recorrido en la ciudad de Buenos Aires adoptarán un color azul, acompañado por el tradicional fileteado porteño. Lo único que no se cambiará será su frente, en el que conservarán la tonalidad que caracteriza a cada línea. En ese sentido, muchas personas se preguntan a qué se debe este cambio.', 'w7gtvceritsmpucxeln2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(2, 'tomas', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
