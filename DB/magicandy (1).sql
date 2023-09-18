-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3310
-- Tiempo de generación: 18-09-2023 a las 00:42:40
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `magicandy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `pkid_actividad` int(11) NOT NULL,
  `titulo_actividad` varchar(30) NOT NULL,
  `descripcion_actividad` text NOT NULL,
  `fecha_inicio_actividad` date NOT NULL,
  `fecha_fin_actividad` date DEFAULT NULL,
  `estadoActividad_pkid_estado_actividad` int(11) NOT NULL,
  `responsableActividad_pkid_responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`pkid_actividad`, `titulo_actividad`, `descripcion_actividad`, `fecha_inicio_actividad`, `fecha_fin_actividad`, `estadoActividad_pkid_estado_actividad`, `responsableActividad_pkid_responsable`) VALUES
(1, 'revisar producción no.000000', 'texto prueba', '2023-09-15', '2023-09-16', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoactividad`
--

CREATE TABLE `estadoactividad` (
  `pkid_estado_actividad` int(11) NOT NULL,
  `nombre_estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estadoactividad`
--

INSERT INTO `estadoactividad` (`pkid_estado_actividad`, `nombre_estado`) VALUES
(1, 'creada'),
(2, 'asignada'),
(3, 'en proceso'),
(4, 'terminada'),
(5, 'atrasada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadonovedad`
--

CREATE TABLE `estadonovedad` (
  `pkid_estado_novedad` int(11) NOT NULL,
  `nombre_estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estadonovedad`
--

INSERT INTO `estadonovedad` (`pkid_estado_novedad`, `nombre_estado`) VALUES
(1, 'revisado'),
(2, 'sin revisar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadopedido`
--

CREATE TABLE `estadopedido` (
  `pkid_estado_pedido` int(11) NOT NULL,
  `nombre_estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estadopedido`
--

INSERT INTO `estadopedido` (`pkid_estado_pedido`, `nombre_estado`) VALUES
(1, 'en proceso'),
(2, 'terminado'),
(3, 'en espera'),
(4, 'retrasado'),
(5, 'no terminado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoproduccion`
--

CREATE TABLE `estadoproduccion` (
  `pkid_estado_produccion` int(11) NOT NULL,
  `nombre_estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estadoproduccion`
--

INSERT INTO `estadoproduccion` (`pkid_estado_produccion`, `nombre_estado`) VALUES
(1, 'en espera'),
(2, 'en proceso'),
(3, 'terminado'),
(4, 'cancelado'),
(5, 'retrasado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `pkid_ingredientes` int(11) NOT NULL,
  `cantidad_apartada` int(11) NOT NULL,
  `unidad` varchar(15) NOT NULL,
  `produccion_pkid_produccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`pkid_ingredientes`, `cantidad_apartada`, `unidad`, `produccion_pkid_produccion`) VALUES
(2, 12, 'litros', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo`
--

CREATE TABLE `insumo` (
  `pkid_insumo` int(11) NOT NULL,
  `nombre_insumo` varchar(30) NOT NULL,
  `categoria` varchar(15) NOT NULL,
  `cantidad_insumo` int(15) NOT NULL,
  `unidad` varchar(15) NOT NULL,
  `inventario_pkid_inventario` int(11) NOT NULL,
  `ingredientes_pkid_ingredientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `insumo`
--

INSERT INTO `insumo` (`pkid_insumo`, `nombre_insumo`, `categoria`, `cantidad_insumo`, `unidad`, `inventario_pkid_inventario`, `ingredientes_pkid_ingredientes`) VALUES
(12, 'Azucar', 'Azúcar', 23, 'litros', 0, 0),
(13, 'Colorante', 'Ácidos', 45, 'litros', 0, 0),
(14, 'Colorante', 'Ácidos', 222, 'litros', 0, 0),
(15, 'Colorante', 'Ácidos', 34, 'litros', 0, 0),
(16, 'Colorante', 'Azúcar', 90, 'litros', 0, 0),
(17, 'Sulfato', 'Azúcar', 67, 'kilos', 0, 0),
(18, 'Azucar', 'Azúcar', 6, 'bultos', 0, 0),
(19, 'Colorante', 'Ácidos', 6, 'litros', 0, 0),
(20, 'Fructofura', 'Ácidos', 6, 'kilos', 0, 0),
(21, 'D Glucopiranosil', 'Ácidos', 34, 'kilos', 0, 0),
(22, 'vitamina D', 'Ácidos', 23, 'mililitros', 0, 0),
(23, 'Saborizante', 'Saborizantes', 45, 'litros', 0, 0),
(24, 'fructora', 'Ácidos', 6, 'kilos', 0, 0),
(25, 'Colorante', 'Colorantes', 12, 'kilos', 0, 0),
(26, 'Correctores de acidez', 'Ácidos', 6, 'mililitros', 0, 0),
(27, 'vitamina D', 'Ácidos', 45, 'litros', 0, 0),
(28, 'Colorante', 'Colorantes', 76, 'kilos', 0, 0),
(29, 'Azucar', 'Azúcar', 48, 'kilos', 0, 0),
(30, 'vitamina D', 'Ácidos', 34, 'litros', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `pkid_inventario` int(11) NOT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `cantidad_entrada` int(11) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `cantidad_total` int(11) DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `descripcion_salida` text DEFAULT NULL,
  `cantidad_salida` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`pkid_inventario`, `fecha_entrada`, `cantidad_entrada`, `fecha_vencimiento`, `cantidad_total`, `fecha_salida`, `descripcion_salida`, `cantidad_salida`) VALUES
(1, '2023-09-14', 30, '2023-09-30', 30, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, '2023-09-14', 'texto prueba', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedad`
--

CREATE TABLE `novedad` (
  `pkid_novedad` int(11) NOT NULL,
  `asunto` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `comentario` text NOT NULL,
  `produccion_pkid_produccion` int(11) NOT NULL,
  `estadoNovedad_pkid_estado_novedad` int(11) NOT NULL,
  `remitente_pkid_remitente` int(11) NOT NULL,
  `remitido_pkid_remitido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `novedad`
--

INSERT INTO `novedad` (`pkid_novedad`, `asunto`, `fecha`, `hora`, `comentario`, `produccion_pkid_produccion`, `estadoNovedad_pkid_estado_novedad`, `remitente_pkid_remitente`, `remitido_pkid_remitido`) VALUES
(1, 'problemas con los pedidos', '2023-09-15', '00:10:10', 'texto prueba', 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `pkid_solicitud` int(11) NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `valor_pedido` float NOT NULL,
  `cantidad_pedido` int(11) NOT NULL,
  `detalle_pedido` text NOT NULL,
  `usuario_pkid_usuario` int(11) NOT NULL,
  `estadoPedido_pkid_estado_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`pkid_solicitud`, `fecha_solicitud`, `valor_pedido`, `cantidad_pedido`, `detalle_pedido`, `usuario_pkid_usuario`, `estadoPedido_pkid_estado_pedido`) VALUES
(1, '2023-09-14', 28900, 20, 'texto prueba', 3, 3),
(2, '2023-09-14', 5800.43, 4, 'texto prueba', 5, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `produccion`
--

CREATE TABLE `produccion` (
  `pkid_produccion` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `producto_producir` varchar(30) NOT NULL,
  `cantidad_producir` int(11) NOT NULL,
  `lote` varchar(8) NOT NULL,
  `calidad_producto` varchar(15) NOT NULL,
  `observaciones` text NOT NULL,
  `estadoProduccion_pkid_estado_produccion` int(11) NOT NULL,
  `actividad_pkid_actividad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `produccion`
--

INSERT INTO `produccion` (`pkid_produccion`, `fecha_inicio`, `fecha_fin`, `producto_producir`, `cantidad_producir`, `lote`, `calidad_producto`, `observaciones`, `estadoProduccion_pkid_estado_produccion`, `actividad_pkid_actividad`) VALUES
(15, '2023-09-26', '2023-08-30', 'Gomas', 23, '56', 'sin confirmar', 'Solo de lulo', 1, 1),
(16, '2023-09-04', '2023-09-18', 'Bombobunes', 34, '56', 'Sin respuesta', 'Solo de mango biche', 1, 1),
(18, '2023-09-12', '2023-06-20', 'Gomas', 67, '77', 'sin confirmar', 'Solo de frambuesa', 1, 1),
(20, '2023-01-12', '2023-01-17', 'Gelatina', 20, '2', 'Sin respuesta', 'Solo en forma de corazón', 1, 1),
(22, '2023-09-20', '2023-09-06', 'Gelatina', 20, '2', 'Sin respuesta', 'Solo de naranja con piña', 1, 1),
(24, '2023-10-02', '2023-10-04', 'Refrescos', 34, '89', 'sin confirmar', 'Solo de limón', 1, 1),
(38, '2023-10-01', '2023-10-03', 'Gomas', 23, '8', 'sin confirmar', 'Solo de uva', 1, 1),
(39, '2023-10-26', '2023-09-27', 'Gomas', 34, '45', 'Sin respuesta', 'Solo de naranja', 1, 1),
(40, '2023-09-10', '2023-09-18', 'Gomas', 20, '1', 'sin confirmar', 'Solo de fresa', 1, 1),
(41, '2023-08-27', '2023-08-29', 'Gelatina', 20, '90', 'sin confirmar', 'Solo forma de luna', 1, 1),
(42, '2023-09-20', '2023-09-07', 'Gelatina', 34, '4', 'sin confirmar', 'Solo con forma de sol', 1, 1),
(43, '2023-10-29', '2023-11-21', 'Bombobunes', 20, '4', 'Muy buena', 'Solo de sabor mora', 1, 1),
(44, '2023-09-26', '2023-09-25', 'Gelatina', 200, '67', 'sin confirmar', 'Solo de sabor naranja', 1, 1),
(45, '2023-08-30', '2023-09-19', 'Gomas', 67, '67', 'sin confirmar', 'Solo de sabor lulo', 1, 1),
(46, '2023-09-19', '2023-09-24', 'Refrescos', 34, '45', 'sin confirmar', 'Solo de frutos rojos', 1, 1),
(47, '2023-10-07', '2023-09-27', 'Bombobunes', 20, '1', 'Media', 'Solo de frutos amarillos', 1, 1),
(48, '2023-09-18', '2023-09-13', 'Bombobunes', 67, '4', 'Sin respuesta', 'solo de maní', 1, 1),
(49, '2023-09-12', '2023-09-12', 'Gomas', 34, '98', 'sin confirmar', 'Solo de sabor de mora ', 1, 1),
(50, '2023-11-27', '2023-11-27', 'Gomas', 20, '7', 'Media', 'Solo de sabor frambuesa ', 1, 1),
(51, '2023-09-20', '2023-09-13', 'Gelatina', 67, '1', 'Buena', 'Solo con forma de motos', 1, 1),
(52, '2023-08-31', '2023-09-26', 'Refrescos', 34, '88', 'sin confirmar', 'Hacer solo piña OJO!', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `pkid_producto` int(11) NOT NULL,
  `nombre_producto` varchar(30) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `precio_unidad` int(11) NOT NULL,
  `cantidad_producto` int(11) NOT NULL,
  `imagen_producto` blob DEFAULT NULL,
  `pedido_pkid_solicitud` int(11) NOT NULL,
  `inventario_pkid_inventario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`pkid_producto`, `nombre_producto`, `categoria`, `precio_unidad`, `cantidad_producto`, `imagen_producto`, `pedido_pkid_solicitud`, `inventario_pkid_inventario`) VALUES
(1, 'gomas', 'dulce blando', 1000, 12, NULL, 1, 1),
(2, 'barrilete', 'dulce blando', 2000, 7, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remitente`
--

CREATE TABLE `remitente` (
  `pkid_remitente` int(11) NOT NULL,
  `nombre_remitente` varchar(30) NOT NULL,
  `apellido_remitente` varchar(30) NOT NULL,
  `rol_remitente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `remitente`
--

INSERT INTO `remitente` (`pkid_remitente`, `nombre_remitente`, `apellido_remitente`, `rol_remitente`) VALUES
(1, 'jhon', 'real', 'empacador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remitido`
--

CREATE TABLE `remitido` (
  `pkid_remitido` int(11) NOT NULL,
  `nombre_remitido` varchar(30) NOT NULL,
  `apellido_remitido` varchar(30) NOT NULL,
  `rol_remitido` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `remitido`
--

INSERT INTO `remitido` (`pkid_remitido`, `nombre_remitido`, `apellido_remitido`, `rol_remitido`) VALUES
(1, 'alberto', 'juares', 'vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsableactividad`
--

CREATE TABLE `responsableactividad` (
  `pkid_responsable` int(11) NOT NULL,
  `nombre_responsable` varchar(30) NOT NULL,
  `apellido_responsable` varchar(30) NOT NULL,
  `rol_responsable` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `responsableactividad`
--

INSERT INTO `responsableactividad` (`pkid_responsable`, `nombre_responsable`, `apellido_responsable`, `rol_responsable`) VALUES
(1, 'eduardo', 'quintero', 'quimico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `pkid_rol` int(11) NOT NULL,
  `nombre_rol` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`pkid_rol`, `nombre_rol`) VALUES
(1, 'administrador'),
(2, 'cliente'),
(3, 'vendedor'),
(4, 'quimico'),
(5, 'empacador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `pkid_usuario` int(11) NOT NULL,
  `identificacion` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contraseña` varchar(40) NOT NULL,
  `rol_pkid_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`pkid_usuario`, `identificacion`, `nombre`, `apellidos`, `direccion`, `telefono`, `email`, `contraseña`, `rol_pkid_rol`) VALUES
(1, '2365948753', 'gerardo', 'cuellar', 'calle 96 # 55-13', '3026987432', 'gerarpe@hotmail.com', 'mvkdjzdgkabg', 2),
(2, '362593156', 'Alvaro', 'Palmira', 'carrera 90 # 62 a 03', '3156369843', 'alpal@gmail.com', 'fgoeijighabeotnhj', 2),
(3, '5639865310', 'Fernando', 'Cadavid', 'carrera 85 # 36 b 54', '3186349621', 'furuleto@gmail.com', 'jfkghaoehlbaet', 2),
(4, '63597456', 'Andres', 'Quintana', 'diagonal 11A # 89-09', '3059874236', 'jhdjkgu@outlook.com', 'pioroujfyrst', 2),
(5, '3658745236', 'Eder', 'Alarcon', 'calle 110 # 50-96', '3102659874', 'khdgh@gmail.com', 'hfguioahiogfouatr', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `pkid_venta` int(11) NOT NULL,
  `comprobante` blob NOT NULL,
  `valor_venta` int(11) NOT NULL,
  `cantidad_entregada` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `hora_venta` time NOT NULL,
  `detalle_venta` text NOT NULL,
  `pedido_pkid_solicitud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`pkid_venta`, `comprobante`, `valor_venta`, `cantidad_entregada`, `fecha_venta`, `hora_venta`, `detalle_venta`, `pedido_pkid_solicitud`) VALUES
(1, 0x255044462d312e340a25e2e3cfd30a332030206f626a0a3c3c2f436f6c6f7253706163652f446576696365477261792f537562747970652f496d6167652f486569676874203239302f46696c7465722f466c6174654465636f64652f547970652f584f626a6563742f5769647468203834322f4c656e677468203235392f42697473506572436f6d706f6e656e7420383e3e73747265616d0a789cedc13101000000c2a0fea9670b2fa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e06b87ea51d70a656e6473747265616d0a656e646f626a0a342030206f626a0a3c3c2f436f6c6f7253706163655b2f43616c5247423c3c2f47616d6d615b322e3220322e3220322e325d2f5768697465506f696e745b302e3935303433203120312e30395d2f4d61747269785b302e343132333920302e323132363420302e303139333320302e333537353820302e373135313720302e313139313920302e313830343520302e303732313820302e393530345d3e3e5d2f496e74656e742f5065726365707475616c2f537562747970652f496d6167652f486569676874203239302f46696c7465722f466c6174654465636f64652f547970652f584f626a6563742f5769647468203834322f534d61736b2033203020522f4c656e6774682034353036342f42697473506572436f6d706f6e656e7420383e3e73747265616d0a789cec9d07785455f6c0472084964220842aeaeebaba4dd7ae6bf9af6575756dabd83b58d6b5af055054544a427a2184de7bafe90d4825999264d27befa4439aff73df7defcd9b9a373d21e7f7dd2f1f609c796ddefbcdb9f79cf3ebaf088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220881aed977a8b9b3a8e665579c7e77f7a4cfaf1914c189f1c91069f2f3c9d5b53d1da35303868ef6d441004411004418620a6a0fefd83176ef03c3361f141c97f774afebb4bf2f16ec9a77b5403fefae14ec9277ba62e3bf2d4e6b3871495f6de640441100441104493c4e286a7369f73f8fa80e4a35d44e1feb76fcc57fbe1afe3bf39a83de0dfc77d7de0aa2ff74b3edf0bbfeff4ed912f4fcaedbd070882200882200861756cee946f0f13a9fb6caf01a363c601f8afeca0ffb2f890e3e2c363bf3e24f96c9fe4cb839bd24aedbd37088220088220a397af4ec8c834eb47bbaefad2b0d41dd4903a472275871c971c9eb0e4c884a5308e4e5c7a74fc92a3928ff6dd1d126fefdd421004411004197578c7e54bfeb70fd46eec57a2a46efc37f4d718a95b7c58cdebbe85710cc6a4ef8ec3907c75c4f587539517bbedbd8b088220088220a38213ca6af71f8e49febb6bcc57fb87f43afeaf3a837554ea26325237e9bb1393969d984cc6c9b14b8e3b7e77b2b0a9c3defb8a20088220087225d33f38787f481c4983fddf3e03e91242afe323758e2075c4eb8e9241a5eedbe313a9d411af3b39998eef4fc198f2c369876f4f4e5876aaed52afbd771a4110044110e4ca64636ab1e4b33d307478ddd70734a46efc3787c60bbd6e29eb7564fa95f13a3e5837e97b4eea7e60bd8e19679c7e3c33eebb53f356c7d87bbf110441100441ae40ee098a917cb8738cd6123b070daf5b7c909b7e65a58e4ebf4ee08c8e04eb969d98fcdd4912ac235e776a0af13a62744e8cd14df9f18cd3f270e71fc39d9647c0902c39f5da7e99bdf71e4110044110e4ca21a1b88194a4d308d9f146c74a9dae5c89a56ab912dcb23a46eabe2752c7c4e84ed1301d33c289d79111e1fc138c48979f229d7f8a927c7df27c59abbd0f038220088220c895c0e2530ac907dbc77cb95f3358c754ae53cf9560bd4e952bc17a1d27759a5e478275530452e70452b79c97ba48979fa360b8fe1c3df1c7c86b7d12ec7d24100441100441463cf706c74afebb930dd9692cab5305eb04b912acd71d9fa811ace37325be67d7d44de183753f7252c7781da37651bcd7b9fc12ed4a468ce4dbf0b5a915f63e1e0882200882202395868e4b6ecb8e483edda3d95742235762c91181d4097260977139b08cd44d66a58ef73a2a75aa609db35ab00e7eb25247c68a98a92b62a7fc1c738d4fa2bd8f0a8220088220c88824bdb2857489fd621f1fac73d415ac9bf82df5bae393b860dd641aac637260995c0912ac731204ebc8f42b1bac8b74a15ef73309d631613a22752ec4e8a2a7fe123395785decd495b16e2b62dd56c64d5d1927f92ef2484ebdbd8f0d8220088220c808e3587695e4bd6d63bedcefa05ead6e022f75ba4b10b391ba29aa9226a7d573254898ce89cb9570f939ca999b7e059d638275315357d041a40e748e4addd455f16ecc98fc73dc3d1bd2ed7d7810044110044146121b928b258bb6397ccde54ae8ee17769ccf819dac230796cf95205ee7cc799d76ae04b7a62e9a4a1d89d4d1601d953ab03b46eaa6c1cfd5096eabc890fc10d3d079d9de0709411004411064641072ae48f2df9d4c1f588dc226c7f86575c606eb9c7f8a104a1d1faca3cbea18a9e382752bd8609d1b17ac9b0646b73a017e4e5b9d0863ba67e2d81f63fd9231b702411004411064687e88c8917cb49ba89d5a0eac9e7e616cae8456611343c13a3e57229a5953c705eb560882752bd58275d35693319d51bb699e6077679d5626deb331c3de870a411004411064b8b321a544f2f19ef18b0f73fdc28e09fb854dd6e817c6163639c3f70bd3286ce2a25ed844287553b91c583781d781d44de32761579160dd74e27589d3579fe5bdceddebacbbe7d9699ee7243fc6d9fb682108822008820c6bd683da7db8db7109d32f6c29537f9804eb98e957360796997ee5fb8581ce91609da004b1aaaf44a4b36a595d149f2be1fa4b2cbbb20e5c6e059b2b317515e775ecb23a3afd9a30dd13fe7096489dd7d9e95ee740eae027196bcebb7b9d07bb8b2fc5be15088220088220ba892cac276ab754d02f6c99ee5c0961bf306703cbea7e5195aad3c8957053cf956097d5b1613ab2ac6e1a89ce9d9d4e74eeacbbe739772a7520788cd7cd58032369c28ac4e50965f63e6c088220088220c3919cba36c967fb1dd5fa859de0732554cbea0c3581d5ce811548dd0a5561132275826575c25c0966fa95953a61b08e4a9d3b2375a076eedef033c979d5b947772aec7de4100441100441861d2d5dbd8e4b8f8d5b7254d557825f56f78366bf30551358bdcbea9860dd2f6ab9126eeab912d356a9e54a4c67d6d4098275dc0c2c789d171bac735f93e4ee4d7e12c1f34ef6f04e9ab62669a64f8abd0f1e8220088220c8b0e39ad51192c54775f50b3ba39e2b11eeacde2fcc95933adeebf85c89a96ab912821cd8553458972008d6b1b912d38552b7e6dc0c2e58e7ce05ebc8f049f200b5f34906c18321598e2dc9100441100441d4786a5baae4ab236cbf302658a7ea17063ac73781fd4977bf305a825815ac23b9125cb08ecd950091e383754cae04cd81658275ee243ac705eb48808e481d193452c706eb9219a34b62a42e850c1ff86b0a8cb1bf9cabc39ac60882200882201c2be30a249f1d522b41fc838e12c47cbf30572e57429503bb229604eb042588997e61717c096266651db7ac0e2c8ecb81e57325dcbdced31c5881d425b933d3afc4eb7cf8485dca0c266ae7e19b32d33775266377e3569c4fadeeb0f7514410044110041916a455b682da4d16f60b5bae5982d8454fae842007364eab047182a0043191bae9825c0912ace3bd4e95004bbd8eaea96397d5715ea78ad4cde4bdce37950ec795e78fe436d9fb402208822008820c0bc62c3d39f1fbd3864b100bfb4aa8e54aac542b41acea17c6e54a4ce37225a66be54a30d9afe7d47225bc55b912c2609d07f53a903a1f2275bcd7cdf44b9be9970aa6376165d26659bdbd0f24822008822088fdf9bff549572d3da99d2be122ec17a6267522fb85a9e54a50a973f754e54af0c13a55ae842058c7cec00a83753e6ac13ae275bea9b37cd3c8f04b9bec99f26322769b451004411064b4139c5c2af9ea380dd6b9d0601d9b2b11e5fa8b2058b74215aca3fdc2485f0941bf30372e58375d2358e77556902b41e661d9748935e7d95c096fb55c0910399a034b8d8e589c0fbbb2cec337cdc38f0dd6cda25ee7973ed33f9dfc8b7fda14cf94ef13d0ee100441100419d5545dec912c3935e5c7082e572252d52f8cef2bf14bac2b9d7e657260f97e61d356d26575f15cbfb0043652a7962b7176ba27df2f8c4a5dd20c55b53ac6e218af9bc1e6c026cf10e44a80d779b0c13af03a81d4f9a6335e47a48e913df8eb0517afd4f74f15dbfb88220882200882d8935b42ce392c3bc3e74a18e817c6370b33d02f6cba56bf30773aebeaa5ca951094204e16e44aa468e44a10af63a48e5d56e7c74ebfb2c13ae27544f040ea66fbd391eeea9dfaeab1027b1f51044110044110bbe177be54b2f894c0eb34a56eaabe26b0827e616a39b07a9ac0ce502dab0397e34b10a7a8e54aa8491df5ba542658c74a1d17aca352c77b5dfaec00181760b87aa7bf76acc8de07154110044110c43eb476f78e5d16eef45394815c09b7553a732554fdc274e4c0ae11f60b3baf1dacd3972ba116ac03d3f31506ebd2b48275e98cd75da063967f060c57ef34b43b0441100441ec426c45876f46c32f2975ab53eb0f17b676f50ed87e1beedf90eaf07d84b05f989ba0609ddbca382e58c7f60b9beec9e54a68e4c07a69e5c07aabfa8579907574c2605db24661130f2a757ec4eb6631854d5452e797a615ac4b1706eba8d4cdf2671d6faa4ffaebc70a6d7f24110441100419cd044b1b9d82140e7ef209018a49018a89018af1fef2717ef2fbf71566d475db6c33220a1b25df9c6683755cbf30b6af04d72f4c902b91305d902b31ddd370bfb024ae5f98a004310dd6d1e9576161133f9db912c260dd85d99a33b0199cd465cc66bc6e4e60c69cc04c18537d2ebc7a14ed0e41100441101bd1373078d7eec2ab7c65ee6bb33d42b367aecba103fe3c2334db35384be22d05c76be9e9b3c1c64cf939c6e99718b795c27e61fcb2ba78da2f8caca963722538af63fa4ab0d5eaf4f40b5ba3d957825d59a7ea2bc107ebd2d835755c6113410e2c17a9a3c13a627442afbbc004eb32845ec78c0c17eff42fa3cb6c70f4100441100441803f6ccd9b1ca8e0a54e7b7884e63807658df7971f2c68b5ea962c8b2a1cf37d249b2b21e817461360b57325a8d7097325dc75f70b63a44ed82f8c0dd6a5aaf79548d3952ba12307965b5697a13e039ba121757302e8c874f64e5f965065d54387200882200842f9f7b1d2090186d48e1fee6bb325deb295a97556da92e6ee5ec71fa35d56b0cbeadc04fdc238a9e3bdee1c9f2bc1b60c1ba25f982a57c263a8be125a52275c567741d7b2ba0c3d5e47fe3c9b0ce914ef0bbea9b5563a6e0882200882203c674adb40d884b3b18607fce6185fd94731560943bd72206bfcf218365762b546bf302e5847fb85ad11e4c0d2489d5abfb0241d39b0aac2269a4d60b583759a52a719acbbc0ff555fb08e4addec20e91c664c5e93be4dd1608d8386200882200822647a48d6f4b562d58e17bcab7ce5ab52eb2dbb25854d5d92efa3a7d27e619e6ac13aa2739eaa7e61d399be12eec27e616b680e6c92a05f182b756afdc2d8be12b4fe301facd3ce9548d7a856374b7d0696333aceeb58a3cb981d408d8efc04a39b4bbc2e736e10f99d496bd2a34adb2c7bc410044110044134d89bd7eae027171fb8130a9ec45bb64ed664c18db96fd38549bfc4b152477225b812c45c02acb05f9840ea68d7d7245502acbe7e617e7c0962ed5c8934f55c093d52a7952ba1e5756cb06e2e2375ec00d30b944df44acf69b05dde318220088220a393db77e54f0dc93256ede898c1085e42658745b6e442759be4bb68661e96789d3b594a27e817c6f69510f40bf3d6ee1796acd12f4cd05782cf8135ae04f1eca1722534a65fe7aabc4e0a52c70cd9dc2019fc2747af0b1d97fb2d72ac1004411004417452d6767972a06286f1813b619285a3bfbca9db026552feb236cd6965a25613d8738226b0eafdc27c86ee1736d3cfe87e617cb08e95baa17225e6a8bc2e53ddeb88d4b12398d89d8367baf947094110044110c4001bb39ac0cd3c424d543b3a5c83b3aedda034734b12cb5a25cb62a66bf795e0fa8519ca9510f40b530bd619ca81d5ce95b8c04ebf5a285847a58e1bd29981d2df86ca2d72d6100441100441f4f1c4e112976013a765850bf02605289e3b6e569dde1b82535c569f2552c7799d3b9b2ea1abb00923783335fb85a5d1609db05f18c995f053cb95502f6c92314ba3b049a07ab02e405dea8284c13ab56575dac13a12af0b96724336dd3ff3d943d8a80241100441102b32303878ed46a5b1d9b2fa046facafccef8289e53ec20b9b253fc431529734432575ccf4ab25fb85d1e9d774cd12c4eafdc2f4e4c0eace95204647877aa48e973ae6aff279c172579fcc1f12b19431822008822056a4acedf224f316dd69645838f8c933ebbb4cd892f97ec9533dcf31b912e705fdc292d4fb85097325b8609d5abf3075a9e3d7d469e4c0fa0bfb8551a9cbd04e809da32e757384d3af42af539f819da3ee75f318af2323483e794dc6c942ebf6f8401004411064941359d636d6576e11b5a3c32d24eb6ae317e01d50368cfb29c19dcf9510f40b1b2a57224d7caec46cb55c097dcbea54b9125a5227c895d0b5ac8e4add5c41b08e4a1d3b82e56357a7d775f65ae33c22088220088250bcd31b268aeb3e267e4c0a502c38516ad466dcba3ec375f579937225f4358135d42f4c4fb08e7a9d4aead48375ba97d569cdc0aa05eba8d4d1313b583623506a9dd3882008822008c2f2595cf594400bdb1de961e123db9f27760a32baa4c5e1e7b3acd4b195ebf407eb7c0d07ebd27505eb0cf70b530bd6cd353a58273310ac2323840e997b80f4c90305563d9b088220088220cf1d2f750e32376156e7023c89b7ec52ff80986db87b93d4c53389cd95f0d1992b913654ae84700696cf95d0e8173664ae84544702acde5c09ea7572cd489d96d47143eee29bf9d3f91a6b9f50044110044146394f1db54039141de13ba602de9fb6e60db901c955ed92e5897ca4ce832d6c92aa9e00abd12f2c5dab5f58baa004f105c3fdc266ab57ab9b2b2a075684d4a9799d4ce875f34214738315e3bd32326a4dc937411004411004118f95ec8ececf8ef797af48a933bc010f6e57b87a25f3cbead4fa4a185a567741b0ac2e43d02f2c63c812c4738c2c41ac7bfa556b599d7ab08effab828ed94172188383b639ab08822008828c5eac6777747e76bcbf22abb15bdfbbe737754b7e3a4b8375da4d60f5e7c072b91201eab91201ea33b08142a953799dee19d82172258c9881154a1d3fdc03644f1fc43ac60882200882581dabda1d8ca9c1597fd03f3ffbcc7ea58b57f24c415f09c6e2d286ea17262c416c5eb04e53ea2c16acd318537c3243334dacf38c2008822008221e6bdb1d9d9ffd2aa15afbad3b2ff74b969f9dc9e64aa469e54a705ec797200ed02a412c0cd669e64ab05ea7b6a68e04eb64ba6660452fabd38cd4c90c181d1d7343147382e52ebed2caf6cbb63fbf08822008828c36ac6d7754f024de32edf9d9774f163a79a60896d5a581cee9cf95e01260352275aabe128cd7e9e82b9129beaf848eaa26a64a1df53a3a3c0265b76e35bac23382200882208809d8c0ee604c5f9bed1a9c257cdfbe8141c755491e7e827e615ad5eaf85c095d854d38a90b34d00456ca05ebb4bd8eef2ba1275817acd3ebe422837574d03f5f1da270f195aec05a280882200882d8847f1db185ddc19818a07827a2827fdfe58915933d93d9609dbfce19d80c41ae8476b08e2b416cb8af84de609d9ebe1246e64ae8f43afeafe07557072b401da7fa498b5b2ed9f12c2308822008327a581459e964856ac63ae767c7f8cacf5575d2f7bd3a3063866fbaae7e613457425f5f890ce39ac0ea08d6593257423b58c74b1d3b42143383705a164110044110dbf159ace53b91e91b6e21d9f337e4c09beecc6a98b03a791609d665e8296c626ab04e2b07566fb02ed85ac13a2a7574cc5b2b77f1cb0ccdacb7f779461004411064b4f0517495cdecce23347b52a0e293b8eabfefc89eee9baeca9530dc2f2c50dfb23a7d7d25d47260f556ab532dab33315762ae76a48e7add5a393fe07726f964f60e60156304411004416c845f46c3c4001bd9dd4cdaa12c40eeee95ccd4acd39f2bc1f70bd3d90456740eac050b9b0c3903abee750a6664b907c8171c29b6f749461004411064141190d138c15676e7119a336bbdd26d75cac4a531f382742eabcb9c13a85d8258ffb23aad609db86575a64cbf1a2575fc70f0caccacc3deb20882200882d88e4305ade3fde5360bdccd09534efe2ed66171b4db2f67899269f59598adb3af8409cbea0ce5c08aca9510b3ac4e5dead4bc0ec6ac20c50dcc3a430441100441109b115fd931cecf467637334c39d33fd3e19b28c7a5318e4ba26779a7ce09945a38581764e7609d704cf296eeca69b6f7194610044110647491d3d433c657e6116a8bc01dd89ddb2f67c72f8999f06d2c08dea46f63e687c8752cab0b5497ba60deebb4fb85c94444ea44499d76aec43ced5c8910a1d46519f03a18b38315734214f63ebd08822008828c3a2adb2fbb0465cd08cdb681dd5db74939ee9b48f03a6277dfc68e5f12edf6f3d97944de0ce7c0ea6f02abdbeb2c9b032b17e6c01a363a7ec0eb38f94a57a7d4dafbf4220882200832ea68bbdc3f3b2cc77dadd5ed6e669872ba57daf8c5d1a0767480e68d67e66789c26904ebd4bc4ea6b75f984583757a0a9b28c44b1d3fe6042b66072b7afbb1100a8220088220b667f0facdb9d3ac6c771ea1397336e64dfa2e9606ee848237f9bbd879645a5667b04e4f02ac2596d5e9cf9510b5a6ce70e0ced957f64b1206ee1004411004b10fb7ecc8770bb17a33b259c1729a4f21b43b180e8ba3dd57268195a907eb6cdd2f6cc80458a3027773421497fa06ec7d62110441100419a53c7bacd425d8ca7617a674f74c19bf245a43edd8f9d9c5d157076430e54df424c0aa6660655acbea8c933acd5c8910b9f9c13af5c05d968b9f74f9b91a7b9f550441100441462f5f26544fb66633328f7539f337e64e58aa392dcb8ff14b629c7e8807b3b2465f0911fdc22c2075c2c09d7ba06c701057dc21088220086237b6e5345bb7a07158ce8c804c87c55120783aed8ececfce5e934ac4cc50135899b15237cf6013580b4a1dbfe26eb28f3434b3c1dea7144110044190514d724d97a3bfdcc33a45513c4273666fc875f9f91c2d73a76f382e8d99b8349ad4af0b31654d9df97d252c3266079397b5f7f9441004411064b453ddd1eb1a6cad92771eeb726687664ffc3646dfb4ac2a7cb724dafd977357872aecd257c222813b07afccf88a767b9f4f0441100441905f3d42ad55f2ce234c39cb3f834ccb1a543b1abe735c123dc73f83f1b49111ac130ef700f9237b0bed7d2611044110044108375ba7280a332dab74597ed6d1e0b4ac2abd62698cf30ff1f343b3e60e15a913912b61f9657506066ccf141f6945db657b9f49044110044110c2c7315553ac9036ebb12e674e68d6785d65eef485ef48f78a35a9f398894e636660ed2375fc9cac93af745962b5bd4f23822008822008cb064513935861e1c0ddccf5cae95ea93acbdc194caf88bd3a586e837e61961a3383e4376ec8b1f7394410044110045191d3d433ded269b31eeb7266ad573afd102f327027287f173d6dc5b9abd5e7672dde2fcc8281bbc93ed2b8724ca64010044110647831c6d7f276373754e1f08da1327706d22be605645e6dcd7e611652bb2c577fd9c2d365f63e7b088220c808a6b1bbef4c69fbca94ba4f62ab5e3b5dfefa99f26f12abd7ca9a92aabbb0383e620e7fda9ae71662d1b459fdddc74484ef625c7e4c981f9a6da57e61961ab38315b38214f63e75088220c848a5b4edf2ffed2b9a1ca890f8c8c6f9c9c7fbcb2704286038f8cbc7f8cae01fa78664fd27bad2de9b898c543e8dabb66062850788d9a6fcf18ba38d9d96e5c3770e8ba3e6f8a65d1d9a65c77489a102778aab56679cadecb0f7a94310044146247b725b24deb289010ad7902cb790ac696bb33506fca34b70d6583fb973505663579fbdb71719791c29bce8e067c97e64b382a462cadc1910bcc9dfc65cbb2e6bde30933a7e38fbca3e8828b7f77943100441462417eaba245e52d7601d52a7ed78930315aec1d903d8c41c31928b97fbe11b84c596dead57baaf4a326d5a961f0e8ba33d5627cd5f976d7791d31e3383e4d78765dbfba421887d196cbbdc5fdfd59b54dd79b8b075a7b26597606ccf698ea9e848aded6ce8ee835feb1fc0a71282a871ffbec289018a21d58e1f121f99575abdbdb71a1979cc5b9f33dd121d2b3cd6e5ccdfa07434755a5618be9bb034faea2099dd5d4e63cc2505ee648a862e7b9fb1e145eba5fe8ecbc3775cbcd43f68c6d7de36ebec5dfbe57e0b9e021bd0d8dd77bcb8edb3b8aa07f617fd66937252a042e225852f86f0dcb9ca5773c03f92ffe425855f83dbcb6dbb0a9e3b5efa53726d5c45475547afbd77c544e008289b7b4e97b685c91b3dd3eaff1b53f59fe8aa0fb941ffbc26bd3e58da78b4e8e285baaed2b6cb23ee2c233600ee48a0765375cdc6ea1b53021577ec2eb0f78623238fb7c2cb9d822cd0b18214310ec87430dbee687ac5d49fce0eabf0dd3ca62d85574a9dbd4fd7f06260f057788ecf08cd1eb6c3d15f5e72f192a9fb3708af00df7dacb161d76c54fe6653ee759b94376cc9bd697bdee3874bfe135db93aad3ebcb4ada0c5e40db630cd3d7ddee90db7ee2c805b049ce8f1fef2c9810ae7e02c7836b90d3da9943d95593b342548018fb3717e727805f03d90c3974e96efcb6b6dea1eeeab89b21a7b56a5d53f7aa8184e936b4816b1561fd9185f395d03efa835e0dfe1bf52b99d10a080b37cfde6dc870e142d3d577bb2b8ad1c9bda20bffe9a5adb25592315af76305ce11367c6e46cefc06055c7e5bace5eed51dbd99b51d72dad6747667d775a2d862fae1c76295be04e65763e45ceec0db94ecb1345761f1b327c377e71d4bc808cab43878be0b9f9cb1edb87fd647520599d09379fe139402de0392b6fe83675e706c1649c8214d6d836676e8038c15b80f6801e8cf5236ee0c8acb5be7b4fe18a94ba9ca61e4b9e2dd16435763f75b4c40136c9570e7ae66a4ca8c1c02222f03de7a02c301fd84df879cb8efc6069634fff805df6511fd98dddef455582d583adc119815303db0ca74ce7ea77037b4ace72105937e5c09c563a19f7dcf1d22dd9cd2d3d18d61ba5245476c04dc938bb836f4941a6dbddf9ea4e8967265c873a075ce4f031a7837c05f3945a767f113b72b1a7dffcaa771eeb7266af554c581a637ee08e17bc29cbe2ae09b5bfd7c19815ac981dacf8151710e942e265dcf7505b0eb790ecab7c65b1152627380f4e0dc916b3f8d9a2dbcc8a01bdf1c28300f662d9f9daee5e1b29505377ff63878ae1b4d2f923f14a63c26e8237823d4ad648efdf5b9858d5699b1d34c0debcd66b362825de52306d1763744ee4fec26bc25125f52ed648afdda85c9654db86b3b7a38c7813ec8ef99ad06faadda5d49068e154e60ad41e6e82011a39d65766d9fd45eccb4ddbf3cdac7ae711a69ce99beeb0d8ac7c0aedf48a596b52ed1ebe9b17a218e79591657afce70a67f8db5d4cf948b23b0d25a0851188e679495f3a595edb65dd756b9e69f57456d14a52a76f1f27330bf966afcbb6d7c2bc03f9adb3c372c0eb9c82ac25b41abb0ccf6b12d35b9d79c7ae828305ad76d96bc4f6289b7ac0b58cbac69c83b3e69bd1f592d89d389f04d9835b8d057716b13b1fc7569953f58eacb85baf74fa31c152813b3e7c376969cc7c7b771c9bb026d32f1d97dbe96538db1d0cb0bb2d59cda6ee9c9ded4e4309c63353b74bcfd558f2fc0978605f113c058c5aef6dc1e11a92353140dedd67eb59dab2b6cbe057e075a05bf638ad64cd3c3cee6fd89c67e31d47ec4267ef005d9b21fe2271f4972f38617a6b24b4bbd14c7c65c7585f9947a81976b7566172116343e1bb25d1d37e39377f5d8ebdecced957faf2b1127b9f9f61cdf0b7bb9dca1653776e18d91d7ffb95f8c8feb035afdea2054e0707076787e538f8cb870c29b871d38b0e7e72921eeb4d261949fe2c3fd6b0b9b4637c65f082f09b4e41a2320441aee66f505a70a7c41090d9088fb389368c55ea1c5382147fdd916fe37d47ecc553474be09b9a111f796fd9853ad3931dd0ee4633f07d79e6ba6c7793eaa280da91ee635ea9e32d3a2dab965e1168ebea28f3429824595fe9dddbf10bf510e8b43b37664995be75bcb61c705bfb39d9e4d0ab6ebba36134ed4a20268c31be72d0a409010aa66629b70066a89b30d8c8a440457eb365526bfb0706e784290d14e0a25b0527942c18f3928207fefb78e9b2f3b57bf25a536a3b0b5b2f5dbcd4dfd24346eba57ed0ceccfaeec8b2f64d59cddf9dab7df164d94ddbf3e8e23ad859529c9fdb4d8d778183f08e6deb84bf7aaa0c2e8fe160ef7058fe7dacd496fb8ed891facebeb1be32f8c81bfe4e4117c2c127eeeb44b3c2f56877a39c7f1c2a86bb9c6976372b4ce9fc63bcc50377748c5f1ae3fc43bccdc2772075734314d302e4e33c33de3b833d298646dbeee84de9bebd8530eeb5f7b865477e88b4c9d49dd36177b07760563f25d7edce6ddd96d362ced89ed312a6685a9e5cf74e44056c2ac9f0f592929c59114bfa9d82488e2d9895f967f0f79b730d2cb4831b3ebc91c433f3d69d051b144d2072a6bd4b51eba575f246d0c249016422721cd362898fe9b98564833a6ec936790edd681e3f5c0c87dabe213b7e80e12f4fc2e51fa308f8385cbd41091f04f870d18c6c572ecdc195098fc34d86c4c6d7c8d62b4cbe7db1a0dd8d72763275514cc89cf560bc6bdc37a6771f1311be8b9eed73c1aae9152075738215ee8172275fa9ab9fec8d93a565589c4a1cda76e7cadca0ecbd5d1641b7dd39f8cbb31bad92653338381859d6fe4154251cc031be72c3dfee41f0c6fb2bccac1af7e28972d02a7d9d2e270628c6fac9413e2d5b9b0e1e6da0c7f337e4c0a384681ea3b2e05ad9b62afff2e8a192e1a376d398660407f32fda66df91e1436c453b7cb8aedba49c12a470622a054d09242b19a6afcd7efc704990b4d122ef827637caa9edec7509ca9a61a4dd91c0dd7aa5db4a73bb8f0d297893bf8b9d6f85ea282075b38214d3fc65937da4f3d7663d79b0687b76d3e561567d6b98a3d3eee0bbe7157118f5da5dbaf56b7e9e2a69fbdb9e4278ee1b58ed0ff675b319ebb54e14b731155774bc3e5de0f7c0bec29a4e2b26b116b55e5e7cb6e6eaf54a5201d833d37a6f24e4c3982a634b525875c0f1bfca57966ba1797664e4029fb51e2b6415a1dd21b7eec887936b743ec586dc89962b73a7c7ee62c11e3d3c532c15be03a9f30894bbf8c926f948ffb249f96144797c45c7259b27eb5d19a0dd5995c8b276f89439ea5f830df76ddf8c06d35e7c76588e932e75a40bb93d6dd8daf24c69fb8b274dcf0a14cfe1c28bc6d6a3b0f6a0b3728d164d9341101eb43bc4e742c3840085875133b361391e01990e569b961586efc021e707cbcd91bab9210af700f9641f2948dd237b0bbc53eb0a5becd308e04a02edce06fc6d4fe1185fddf7676a6226bce67a7993ce7bfe546621f791c22b70a2b07f60d0c14f3e1cd22884c33938ebda8db64e1646460f687748557bef8400b95193b31e61ca19abac3b2dcb0f7897e9a43a8a11e1bb79210a32f71aac98ea2f735c93e9e62f7be578c9d18256f1e251d9d11755d9b52daf2d40de1aa4683d5ad2d130ec9b63da18b43bdbf0e8a1e2b1beba23787043fec6f8acbaa94ca7368d977263d46e678ec9356486350b4e9489af4461b331254871e72eec118f580bb43b04f8e3d63cf14d2b3c4273aedd9ce7f04d9455a76585e1bbf18ba3e6074a45a648cc08943bfbca9c7ca5d7afcffe36be5a7cb389cbfd8389d5dd5ed29697a36a5e8eac7d35aaf68de8da3763ea60bc165dfb6264cd0709f5a079b62fbb3a3c41bbb319b7eec8d759b704b6d0d15f61d44bc55474684f50c25fc7fac9ff135d69a5edb72fa56d97255e9966cec9c2edd12d846d614cdb04d3c23b4e41ec5f5d9842b546757073f497bf175561efc3835cb1a0dd21807f06999c153d2dabf4f0cbb046993bbde13ba63aca357ac277739914093726450204ef8903451be58de273fdcadb7bf717762c4e6e7c3ebce695a8dab762eade8d63c77bf1f574d0bf2e8c259ab720a2e6c7f4e6a4daee4153dbff5d19a0ddd98c969e7e5a164f4b39c8b2fc3d794674b37aee7899b628829ccc5a677ac3a361ce7327ca26e8afe93794d41173730c904b7c64b4e6f3ac75d9f33728e7aecfb97f5fd183078afeb0356fdefa9c6b3628678432e1b840c5185ff2cbf0ac9cc4b89fab7edf1beb2bf7cfb04c76248268837687006d97fbe11bbd98ba281ea139b337e43a2f4f745c628bc01d3fc67d1335d757ad3a0a481d13a693baf8c96edaa4fc34ba32aebcbd7f40947175f60ea4d4f504295a3f48a8075b7b3dbaf69d58359dd337de8daf5f14570706f86224f1c0f53917abac995a389c41bbb325abd3eac7fae9e828010af1d08162f1af7395af7caa56e0ee2a1fd926d3bbb60d6b2e5eea77f417d53243fb79074e089e76ed46e53b1115c78b2f6637f6c07dc3c07bf5f40d54b5f7a6d7751d2eb8b822a5ee89c325376ecd730a2285b51dfce41a7e4ecd3cdaf456c8083204687708e50f5b444dce926cd9d0ac094bac9b2dab737e76d27731d7aecb9a1d4c6a0e4ff496ba07ca1fdf5f189ad95022bab26b5547dfd192ce65a94d6fc7d6bd1c49665d178a303adeeb18b52376b7085430b66e616cedeb51352f45d47c97d2985c3bead234d0ee6cccd4101debe5988dccba24ee986735f648b46adc91d70cc9be5203d1eb154dfacafa191844c97c640b4e94a5d5769ab9018ddd7da9355d3f24d5debbb7d029284be22da535ab197b941759a22a3582e804ed0ea10466364cf01f7a72d6234ce9e1936eb3695947a6e8caf8253192afa3249f9e912c3bfb9bb09c0fce944594b489b70869e3a5b09c8b1f26d4bf164d56d381da2d3252eade8d63bdee5de275b5efc6d141c27d8b62c1126b5f8aac792fbe6e7f51bb55cfd1b002edcec6fc2fbeda412b3580868052c56d55989caa8eda2b4c0850bc7ada163549ec0238d5e44023a665dd980e1df01dd61ade051f8df8ca8e0f63aa40a7e1e303cfd37edb4af5a5be81d2b6cb69b55d09951d7bf35a758ea4ea4e796377c3c8afd392dbdc73b4f0a2cf85864f63ab164556bc79a6fc851365ef45562c8ca800d9de94d59450d9d97c45e7ca8d68bbabedec5534769fabea3c5c7051fb2add93db1255de9e5cd359d53edcbb0fb4f4f449ebbb4f14b76dcb695e915ab72ab55e387e4ea9db9fdf7aaaa44dd1d0d3dc63adabf172ff207c5d353c39eb119a336f63aed30f09d60edc51a91bbb385af265a4e4b370c93731378764ac49aaa9153d0ddad3371853d9f5635a13e81ccd8f58286eee556d129606eb6269b0ae96f33ad5c23cf0bd8574c4d6be1d53fb4a44cd8be1359b95ada321f302edcec6806f5ca52b0c35d64f0e770931af005ea151408fcae1a1822bb00a0ad07eb99f0b6f8a553b38c5b7efb4451e6b7a5df727b155567d0bd8fd33a5ed3f26d73e7bacf4facdb970eac7fb93162170c1d0c581daed8fe11fc7fa925f80e300636e580e18916f467d7e8bd5638c5dbd03052d9764f5dd478b2e6e50347ba5d57f16570deffee8c16278f424d788fadcc12b2c3b5ffbe76df963996628b047f007d86bc700d2d379628002fe00c7c181f94f7010e077e096f5d2a93278bc5a7b073580b303bb9cdbd4a36cea3959d2064ffff58aa680cc866fcfd5c285f15678c5fd7b0bc34bcd0a17186577343f0b3649e4e8243f4dec4ea84d7a5d576066e39be115b7ef2a607af1907304e70eae467a596a5fa8f045752cd3ad7b3c130cfffbfea2a5e76a622b86c55207b85cbf3f5f7bffbe22b8dee07334d68fed4e4e7bf4680cba77f443077fbd7947fe7b5195bb725bc4db8e181e3b5462b8e72c7ca59d1da2705c126d25bb839775a061baff454abe889cf6f3b9d70ee61d2b3062d178595befcefcf68fcfd63f1f5e43c3741af91146481de37502a9abd521754caac5a2183a6a61bc1353f34a64f5b367aa02e42d6d97af00cfd10bda9ded9912a423b7029e594f1d2d15f3bf3fb0bf48239045eeea01f2d22bb4fb5e4a6d97be961c3a071c9c3f6fcbb3f7569b455d672f3c2541e7e0612df1cc24c9207e72b8429c82d866a66e82a1d36fe9a0bfec1cccf6a4830ffb787fc53be11519f556b9fee1c296acce94ac91c2f9a20fee71cc531bde7d5220d980e74f180a2fb75dee5f9c5803db0fdb09fb0b7a3055ff3e0a7796ae76200b2c99f77d37b2d2b28f540d5a2ff5c38d45b22a839c1a2f29196497498f695657fc585d219be425dd6c5eff65f176378d2b7769c45895694eb5c6c15f7f3d59dcf64174e5351b95e46878937d271dd9985b9cc6b5aaeff4f117aa2b93c30ef767721ebda4f7ee2db465eb6a9ed4daae174f96916df096b24b6d053b62f852e4f7650ad3499c18ac97745280e2a5936560fee66fdba1825690610381bb99eb95ee6bd22c3e2d0b52378e86e93e8f18b324e6e6e0f45f122a32ebc4de46e04b445a3d49917837aefe0526458209d389d539d5f46bbc70fab54e2352b7881bacd1d1c148ddc258183530de21a37621e378af46543f7fba2a50d602dfd1cc3f35c310b43bdbf3ecb112ed8c57789689ec4a367f83d2597da75cc9cde4ca680dac83808c067864887fba81e8e68dcc3ae7d94d3d5f2656ff76532e7c2ac7f8122972b574570e57e6f8c0eb5fbf39777b8e851f9dbfdda479650a075d6eaa7371694d67ef8ba7cac0916814ce9c1d64e25772308d37cf5474184c9f31998bc4eeb2440693e1f9be5d693bbb33768084dcbecbe86688cd3d7d41d2c6fbf6924e8bb06d70c09d838c28222466c0ab8156c1eb83247f16576d9b79b47d79ad7fd89a07d72108aa09395c7a3f74dc570fb8bc9f3b5e1a674664129ecbee6bb361e80ddcad573afd106fa9c01dbcce55df444bbe8800a9735d9ef8ecceacfdd98df5a2d77b3474f71d2fed5c9edef4664cdd4b4c8a84f8d574ba7225742fab7b572875bcd771913aea7554eade89a15e57fb4e34196fc7d4bc1d5df37244d52b11555b94adbd5782f3a88176677bbcd31bc669e90a1cf3ab3728fb44648bcf5c97adf1047465aab4d960cbedc2cba78ca885322950f18f4346641f0f079abafb3cd3eac963c55bea608507a5ae476736cd02fed3b6bc73d5e6a69cf018b63b37a62dcb698dc9d3c15f3f8dab8287b8a3bf8e5c7273dc80445d8214d608fe80dd4d13bd54e04ab2bb81c1c193c56d8f1c2ca673e2605f1654207dc39529e309ef65d5d68ab9cd3db7edcc87e30c07c47a9f3e385cf0950dec7156584eaca989f6af9f29770ad23d390b763777addcfc22c6e3973273af9f47483e0bffad77f297e1c5b2dace3eb18b8b07d3eabab6e6b57d7eaec18414094b04eb6a3582750b9960dd425eeaa26bc0ebde21a3fa9de8eab7a3abdf8caa7ef14c15fc3c5e322c9604580ab43bdb73a6a40d1e67da871d3eb3620a3cce0ad361772e57aeddddbfcf88940a89af6c9ba54352d6069e29f0ac74b2e66345e760c323deb2af13ab2db22386ed6e1a93fb23ec471c57d10e8fa4315ae57d2c35e043017bf7ca290b671b8d5abb5b185121f1cc9c6413a9d31870b4e19e79e7ae026b4ca2f96534c26982fdb2cd0790f99a2335f97b477275e7383fb9766e050ddcb9ad4a36a1fb985a8ac42767245f44dcb73e3330b9ea72bf58a56beee9df94d5fcf08162b8a5fc7e6bfec2b87a91e5e90ce64a50af336a591d3ffdcacec00aa48e09d681d17152f75654cddb5135e427f85e74f51b5155cf9fae7c37a6bab0f50a59e38476677b4a2f5e82af6f3a3ef23eb27211b9633aedee0a8eddddb43d1fcc47cc6d93cecad92077c0b2c09dd9cce94873c654e6c27bfc7089f93b32a4ddc155eac42d21f82aa1069e714e560e54c28b833dde66d1149b516b77df9eab7110bd46c21aa7d231807c1128b968c90f3851566fa9c59740181e7042936b4c8f99dfb025779a56e13bb0bb5961ca094b8d2873c75632e1e65e9dbe8f7bf38032b2c888148973559d5fc457cf09cb61e6d015701f730bc99ebf31f7e3b30da6cfc0c60a7225b48275fa7225d4a48e7a5db460069646ea18af7b8b313a4eea6ade22b1bbaa3723abde8a243f5f8ba87af244c5cf690d0323bfbc18da9ded69bbd4a77dd8c9477e8db4e4e2d076a73d334b17f18a99d51d710c0e0e5ebb710867101e073832e21bdc0c13eeda5330459cbe5aefb9090a74d76e73156848bba35f614e16b73d79b4c4a84c1933f70e9ce44f5b2d9668336aed6e3d538bc98e17ea34b23e394be229adebb4cc679c664fd838663e8db9d58b5fbda6cdcad4fa09010a8df01dd8ddbc6099c33751a2522440eabe8a927c1621f93afa4f7e293fc5942aeac5da664377df0645f3d3474b1dfc1557f9926e3eb0473342c9806d700fcdbe7653ee27e71a8d90ba381aacab53f33a2e58b748e875b1ec607325d483757ca46ea16006f6ed1812a6e383758cd455bf05ff290a7e56715e47266761bc1159454644e58ba72b9e3b55115769b1552b7601edce2e483c33757ce4bda5f2c6a1d3017ebf25176e711a3b35de5f9e3b325309866070f03a63ecce3928ab71a4d9dd0b274b753620b6e5a0def5fae97273766448bb63af55a6bf9b2d1fa9b405f383c6b48331c0a8b5bb88d20eed3aeab61f70f77309ca12d9d0ca005fc4576b77ebb6cd80fbbf395b0eb7b88901f2191a93b3eb95eeab920c4ccb82d48d591c4d2a997c1a3e6559dcc31b320f6737d47688ca2eefe91b385fd3f9797cf5cd3bf225be241f1c3ee9ee8cce690cf8c76b36e67e3454ec4ead0471ac05722516c6a845ea68b0ee6d22753582601d181d389e40eaa8d73152f726e375305e8fac7a3da2eab588caa78e972f4baeefb24e72960d40bbb30bbaedce471659367469acc70e174f525f87e616920ddfa943654d36d8729b639cdd4d09ccaa19695d05bf49ac19af55e0daf68308de1ae95633562d8ab13bfa466e76d93b1f99c892928619b57607df3dc75b34f9c5e4019bf1d08122738eeac1828bf6523b78c24e0a347721cd5266969c9440e16aa1ccdf983b4e573e054991a073af9f86cf5b79f63f47f2ce975dbc242e07b9bcfdf20645f3e3874b6687e5d0301d3c5267e8923aa1ddcd5daf7c7fc8609da05f984ea91359d884973aea75efa8a44ee5759cd4b15e0752f7569466b08e0c903af26750bbcad7c36154bc1651b1e054398c44cba59ed912b43bbba0cfeea2cb87b6bbefced56aaf7e9912a8b863972deaf7da18a36666e913dccce2b1b62748da38d6d7fe76378d3116786e9a1c1511697776db3ba69543b1d9ed4b46addd3575f74db268a9109307fda46f353531a16f6010be0e8b2f906ed9e11c94f5db4db9a66db9909b77e44fe4e767c3941e7e19b4cc1d4d917060e75ec341ea6ef24f5915575adb2ef6ca3f5fddf97562cd1fb6e64d09228f4bfaa1362c751a76f78185837535c260dd421dc1baea77b48275345742335817c507eb2ad9605d6425953a12b563bc0ea4eef5888ad7e00f672a5f0baf78f974c593c74bbd331acc3f653606edce2ee8b3bb0811b1bb238517aff2d1ec44469b1029444cec8e386edcaa39136d604c600a87da7b938de368e145ed1c6a7b0df874bc71c6c4f9d9616e77f4f278f8a0b9f3b3a3d6ee00e760b185feac3dc091406c4c3ba4cf9f28b363b47c72a0c2ccc023cfc3078ae0da8043317d9d72f2f7f1577d1d498c8e997b957c19f5f086ccfd72b1c16a30de3d79ad4f1e2d991c44bee2d1309dceb9573176f7bebad4f17d25168991ba1855ba84205782f3ba68b51c589a2b41a42e8a5b56a76b069606ebde6082756fd2481d9d81a5c1ba706271af8713a903c103af7bf50c0c10bcf257c3cb5f3953fecae9f2678f97bd1951d1da3392ea1ea3ddd90589a79eac0a11fd262e0d0cea9c5380ef717fdf6f999bc6b0e2aedd055344574499ca9cdf8a61dfb652484e538fc45bc7f5a031dcb87afe30e0210bcf658d013779da20c09cf9261215f1ccec115ddc4ac8f0b73b3afb7cdebc7996e16c776e213a2e0c03039ee337ef3022dfc44584ddb1172a73adba902c69cd37857fa1af63ceb54ac377fe994647548a5b2fc3f1342102c97f00e1cb2618dac40076c0dd698afa1e697cf5d6184c4f70b316b80a49aeee5c70a2ecfa2d792e5e6973fc32eed820fbfa745142498bc8ff1d6e3e3f2593ae7f704c68986e7aa8d8309d5ebb0b537e105fc7799dee5c8977357225045ea7992bc107eb34a42e9af53a61022ce37502a98b14485d64e59b9cd4bdc1acac7b8346eab4a4ee5546ea5e05a93b53015e07ff0282f7f2e9b20527cb1e3f52926246b2b38d41bbb33d177bf4e6cc168bc899056edfa5437868b5d8902b6ef5ddf3278c4b3a8023337f638ebdb7da08bafb06e07ad07eccb9b18f12b6a511ed5e41d3a5e7aecfb96b77215c06fcb87377c16f37e54e25551315e39816b4b4d8ace1078dcee1e027ff3aa1c6841db194ddb931b720d87e477fb64b296d9b4b9b9ac1b3d5d5a4fda2635280e21f87ccfa12346ced8e1cb7a0ac7bf7aa5d1886c7cd3bf20db787d3e0ce5dbaf3bbf98677b4e32a9c385aeb06c62d3bf3ef10bc23fcf9af3bf2ddf8e6713eb20901b49286d1570ebcc56f3619dd46eded880a630377b432249c4ad85438ef7fd892f7e081e2574e95bd74928cbbf614dcb6b380eed1a44005ed8c0c6f0137229dfb050fa06fcf9af2f9b21470011f2dbaf85678c5ecb01cb8b426060cbd9ace28bb9b13a67c9fc85bbd8148dda22173253497d569e64abcad992ba15a56c7e64a44a9e54a682caba352073f5f63fecc44ea2a78a97bf534313a2a75af9c2e7bf914f9c34ba7ca5e3c55f6f0c1a25db962e5d9bea0ddd99ea2d61eed7a7724e8e4a7109911b02faf55e70d9fd62e1333bd3b82589952afdddac3f0700c50fc7e4bee48e9103d3838488d85bf44e14149da69f99008c31fb7e6bd1759b935a7f97c756765fbe5c15f8788aa75f50e48ebbb03331bffbebf883e6b8c0d53c0c71feed226ec889976e7c6a43cd38723e8eb7d7b0bff1b53e997d110246da4e37ff1d5cf1c2bfdfde63c5216c34736c5a4c45bfa25a8d98c1996616b77cc3d446ece7b0dc90b27ca845fb55c199f213a17a0b86683f2d9e3a52b53eb622a3a0a5a2e0dd93b6c6070b0e4e2e58305adaf9c2af7082507ca848b079e5ff206e396a3b88aee224707f5babfed2ddc9ed35c36d4dc4a5d676f5a6dd74e65cbe7f1d5f0fd6b5658ce58eeab16ff0187bfaeb5c777706573cfcfc975b0235382480af91466b98b458c4ec3ee401a19a9ab134addbbea52b770a85c09e1b23a615f09baacee6dad65756fa91736799309d60997d5bdaeb6acae92913a66faf50c2b75246ac704ebe8542c91bad3e5d4eb5e06933f55fad2c952b0bb174f963d76b878454a9dedcfa0b1a0ddd99e13c5ba7a5530517d7870887c9109fe729df7283877f0c9d5ecf7349249acea30a126153c74e08eba37cf88ca9c76e4b74ce6880b95ba35d2eb362adf8daa8c2c6b177f3de8a4a1bbefab846a09d308c328ff810750aaf19f1173ec6e0ad319ed379b72bf3b5f9bd3d46df88d1abbfbe0017ac7ae02f81c895f93c90ff880fc62c6cd7938dbdd382bdbdd574c7ef7d41046eabc898f3d71a4647376b3f96b2176285be684e5c0f61bf549878df924ae4afcbbc0375f898fd89b09f34120ddfa32eb87b820f5d1373098d3d41390d9f8d08162aac1b4796e94ad32bfeabb070e14b6bf7aa6f2fa2d7970ac2630adab4d584d277ed03a2d6f45d7bc678960dd3b5ac13a81d4098275515ac1ba48ad601d9f2ba119acab1006ebb4a48e7a1d13b803bb63c60b274a9e385cfc695ca56d4ea2c9a0ddd99e55a93a825124916ab31189541bb39af52dd682d307cf14abb665b4256dc6346dd7380e70237d707f5191d96992d6e6cedd0512cf4cd8cdff44574a4d7d94e823afb967061382107fe8c699e43fa6d99d2bb316ee8fdbf24cf84a9250d9397f438e03288131ef0842f847338a1b8f66bb0bc86894accaa4cd4d8e145eb47829b0e74f945ee56b84e0c1f53677831171e68f63ab454ecb921a89bef2974e5a6c815ce7e5feddb92df7ed2b922c4fcf6ab4f0675c83d64b20755d4f1cad7062a6bf49f35cd149af16b13b10b3f7d4732584ad2504913a55ae04f53aae09ac5abf30b5609d2a57a24a6d595d44250dd6097325a8cee9cb9500a3e3827565e4e729a1d791481d19a778af2b79f144c90b274b169c2076b7e078f1bf0e172d8a281f18c64d04d0ee6ccf33c74a276a3d6a494913239b05dcb0256f929e47369da2bd6b77a199c19f61c2ffed2fd4b7a743dea227326b7b169c28abb5507d7b6bb038b1c6aa61c68ecbfdce4c2e86c8e3062a78f7ee4263dfc558bba3cb99c6f8ca7728cd5ac7f2e8a11278108b173c3239bbdaf472b2a3d9eee22a3abe395bd323ae5a9a69fcf370b1f875713409487c9b9edbf4ac1bd4f911b8cd3a35a6f25a7aacf778ede91ff4cd6c7be850253cfb9c8214eee6a548986677305e8faa7ed7987e616fabf70b7b5bb35f988e5c09c6eb98195861026ca45aaec46bcc9fb95c09ceeb4e83d155b0b91267f86575e52f7133b02f9e24ebeba8d4bdc0b8dc0bcc1f88d71d07bb2b7e1e7e1e2f79fe58c993878b9e395ad43f304c6509edcef69035185a8f06477ff9a2c80aa35ea7baa3171e6afa5a94ba71b327ff4bb04c8f783b7284a91962727a1d3cf5c8fa6dcfccc70e179b30e17865905cd329fe18c24535735d76af91772da3ecce8d690afc9b4dca21176889e1af3b0a8cf27f3814b1226a4bea6434db9d6d981ca410df79994c7496758879d9fec1c16b36882db83dd64f9635d20a4c155eec5d70bace9dac4b91dbdeebf801e7eeb9d3952476c7f50b1306ebb44b10bf2d5c56a73757829b8155ef2bc1e6c0aa9720e672252ae9523a664d1d9d75652275a799e81c95ba5344ea5e525f56c74fbfbe70b284913ae27220750b8e13af7b1e7e1e2b7eee5811338a9f3c5c0882373c7d09edcec614b55ebe4a57371fb8476d36be3827d51e7dcbe6690a3fdcf0c7fac957a4d45be4316a2f40369c8d5f61a5713488eeae91cedfa0f44cab6fbd347c437956e24126cf42a4278cf7971b3ba32ddeeedc18dfbe6da7c562230383834695b9809bc05253f316d1eeaccdbefc56f11520c7313737312fdbd4dd4fea9688b848e03286bb84b577d3b234f5f4bf145eff9fb8a657c2ebaedb98eb12acb0a3dd3d7fbaeabd3871fdc2a2f52dabd3d32f4c58ad4e5882385cb5ac8ecb95e0bceeb42a5782aea6e373605fe28275fcb23a12ac63a48e4cbf725ec74b1dfca452f7dcd1a27fb3a3f08943052f1c2feee81d76d36468773666d9f95aed6542b44a5b418b29cbc3fc331ae0241a7eaeb932cb83e179fa4e444576d308fb424a61d2842dd039c82d8458e2185f9298f9c8c1e24305177bfb87efc209cb1251d6aef39b85ce0146115b615c744bbcddc1af5dbbd102e5fa85fc985c273eb71a2cf7c92325a6bd918ded2e75f4d91d3049d70487ce313140b1e044a998d7ace9ec9d28aed706fcdaf3c745bde6f0e1dbe49677a21b3f886bfa30bee9e384e6470f973b0793af72b6b73b3871cf9eaa7837ae968fd4e9ec17260cd6bd6da05f58a4a1c226af870b7325d819589a00cbe64a70c13a7e06562b57824b97e066605f1004eb1650af236ac706ebe02795ba7f1f297af668d1b3470a61fcf340fe9ba74dbc9f580fb43b1b3393f96aa3fdb033e7abe2b69c66388f43ce65b8327361f0b8f9cbf6bc505953db485b9277dbce02a30adf0df928a4596ceea1d9cf1d2f8ba91035b933a2e9e91b70139d9f32d6571e246d34eaf5c5db1d7c069727d75a76efda2e0f88ef1c0a867f9da97a6963bb3b5fdd390aed0e1ec1223fec4e418a3f6f13952393dfd223f20a99480a0e8fa4963797fa065f8f6c783f96d81d1d9f2436bf13ddf0dbcdb9ce410a662d9c4dedee9fc7ca48ec4e730696e917467325f404ebc80c2cd757422d58c71736a15912ea39b04cb0ae9c7a9d4aeaf8c226a704b912a44aa146ae44292b75c74bb8785df182639cd4f1c1ba63aa601d277505f0f3992305cf1c2e7cfa70c13ff6e52d0a1f5e82a7d3ee60d87bbb2cc2b0b3bb758a669dc193f1fef28f638cc8ebd726a1b263ac1f49781ff2de45abd9c3664c0e24bd2d8e145eb4d4de599bdefe0103eb0c4d1b7c5555382070d9bf71a63cee8ad6bc3f6fcb17591d05aec9ffc51bb762d308bbf393ff906461bbfb95b4352914b966de9cd27036b6bbddb9adf0222277ea8ab1bb10d1cd97c92a02717b9dd7aca3d0a8ce41ef8dd6de470b92d7daab6177ef3341bccf129b1f3b52e1ca04f16c36510b67e49f47cbde8d154a1d9703abd52f8c4ebff2fdc26802ac817e61ea5257c957ab63fa4ab0854d68a4ee156606f6253658c72cab3bc9e74a9410af3b498275aa5c091aac3b56f21c91ba2212ac039763bd8e04e868b0ee19f0bac30520754f83da1d2e78fa50c1d387f3e1e753870a1edc93fb559cc592accd47dbeedc18bbfbe7a1e2c70f17ffd3b6e3de3d8549d516f4aee165778383b03d59da72425bea985f07e352ffc0dd7b0ae0f625a6f03b3dcb9398429d309e385c1263ea22735b9252db35e434b469836a9e6300896dc237f7ff4457558ea876662279fd4cf90471211166c2cbb8f085ddedeef338b1f52e8808f9cb4d9b9f40bbb301e7aa8c88588e15b7d7759d7d5302b3c4dc3d688f186befa305c96fed7d83d85d136f77fcf838a11934efc6adf92ec10aab56ba13dadd634788dd81d7bdad51d824ba8689daa97260df546f020b3aa7d12f8ccf95e00a9b5410a90b17f40b2346a76a2dc125c072e9126cae4429ef75ccca3a22750b8e9710af63722548b08e885cf173c741ea8aff4d0617a903a9238384e988d791485d2191ba43f94fd19f07f39f3c9847c7bd3b7302d32d7f67330d9d2db168a58249361f12cfcc1345162cc33bbcecee8923253a1f3d701bb9de984a7786d99ddb420b1a8b7cfad0cc0b9a5d0b0f91574f970ff3acd24da4d09f296d22450e3a7749aa0aafcefceb8efc93c5574e5d68e07b66d9a798e3007780470e151bf5e276b7bb5dca16a344a8f5b2298b136c6c777b46a5ddd577f5898cb351bb135314a5b9bbcf55449f5ce626404a5eff903402fa1150eabbfa356277c2f19fb8a62fceb53c75bc6a3a737fb376100fcec8a3474adf8dada17d25347260357225de505f56672057829620e6fa4a08fa8509736041ea4e69e4c0aa25c0bec0481d9d7e65722538a96373258aff7d4c20754cc8ee19264647a75f9f6682754f11af23e349d6ebf2ff75208f19b94f1cc8bd735b56fcf00895e8b43b7b0d898fecb4251fa6c3c8ee3e8babd6578f026e62870a2c3c3dfa457c35089b78c7e3ef93a4728897747658ceffe2ab8b2f0ed322c01b144d7030c5e4be993948038535b2df6fce3d563462e6af0db33a4d6c5b37d8f7bb8c2c796777bb13bf448d96bc2835e90a47bbb3010da2ed8e7494f09395893895fd0383f33728452eed98ca64a2edcf1f19cd6e800fe39aded563777c10efbdd8c69b7614c287d4aa413c267657ba2846776113aeaf44b581be125cb04ebbaf44b97a5f8972ad6a75ecb23abeafc48b2758a9e3722538af3b56acaa6d7254e7b23a664d1d51bbc2a7b919d8a718b57bf2102b75f0f35f0779afcb7b627feee3fb73ffb94f79df8eecaa76fb3f3dd1ee6cc047b155fa56f34eb168e04e486b4f3f389e2bd3afc1d85a22700384e7afc45776f79e82ddc3b26332113cefa11349cc1f70d69c48932ce95f77e4275577da7bbfcd6555aad8c452d8eb5b76e41bf5e276b7bb0b7562d34bdd18111ab26da84ed0ee6c809176271729eab7efca17b932939ee231bef2af134dac9c636376e677bc19d560c0ee6810efd3c4e6e74e56bb3357cb0cebadbba376a751d8244a2b58c7e54abca1ab092c5965a7de0416bcee65da5742d52fac9ccd95d0e8172608d6bd70bc98cd95a0c13a55c1ba62b51cd8a382601d932bf10c0dd61d2e784a2d5ec704eb8452073f19af23639f12eceea1ddd9ff3e647a371c4b817667556a3b7befda5da02f6a4756dc7949150d56ec4a73a97f60adb4e99a0d4a78a38922722e34368f7645f408cdfefe7ced50edeb6d4d6255e7583fb905b368873e14deb2d7ce940f0e0eb303610c46da9d71f5e8ec6e77f59dbde29500ed6e386394dd8d257627ea547e1e5725be11c6343682279f1d9633fc3b775775f4bd183e84ddd1f15142f347f14db7ee2e9c629da2c77046eedd5fbc28a65a4deab87e61bcd4097325686113e27567f8609da05f181baca3fdc238a963fb8595a93781657325b8601df5ba122e5857a41eac23d3af3458f70c9303cb05eb18a33bac0ad63d7588aca9fbd70161b02e8f0fd63dbe5ff9f83e12b26346ce637b958fedc9f9db76c54f678d6b4f6071f4adbbb3cb00913875a5d85d676fff5be1e5637de59302c1a974df94c01616dbea8be1f9aace678e96c2e9be8ae9293f3564e8cc0b7e3bc9423e5f9290bbf4dcf0fa1adbd53bf0976df9f0147015914862fe7063122de1bd526a466a10efcab6bb3ab43bb43b834497b71bdbf5067ed939883c9b7eb739775b8e59a7d2da2c8c697ccfe0e42c9f4e0b3f3f3bdbf24a782d0db55956f0e07977dffea24531357c619337b5722584fdc2b49bc072258889e6bd7c86aca97be5947006964d8015f40b53491d932b512cec17f61c5bad8e2eab2be697d53139b0dcb2ba23245782c981cd7f8a06ebc8c42bf5ba7cf03a46eae8f46bdee32458a724613a2e58f7d85e22758feecd79744fcea37bb3ffb127e791ddd9b76d96c594da73665f67ce2c2d1730d6e643b232e3a8250b74e8b53b699db5ecaef552ffb6ec96db7616c08175f4973312a5f7e16297a4fbcd594d7fdc9a37c657061be014242a838cd9607224e11cc137d9c04ce3caa0599badd9cd13031470c55a2fd542ed561f9c25f1947aa58b2a8f6f71e029064fa82dd9cd2b52ea40907e4aaefb20ba127efe9854fb6352dda6ace693c56dcaa69e7e3d0146b43be10710edce7ab4f4f4a7d674ed54b6f867347e7fbe767972dd5789355f25d4c01fe0affe190d7bf25a93aa3be1d774feef56b23bc03d34db84151dcc0a8dacab7c48ea192844cab04c3ddbac6c7f2b6a68bbe3c77fe39b3f3bdb7cc79e12b898a7afcdb6d4442d6377c50b99d89dce12c4aff1fdc2229892267459dd19beb049b92a01f6b4665f0961ae842a0756b3af4489a0af44917aae44a146aec4336ab91205ba7225d8b9573e52c785e958a97b8c4add9e6c18ff80b13bfb91dd59301edc9975df76c565fbb588d2b6bba98cddc55776a4d4749dafeeb4e58037d5f7613709dd76e718208f296fefea1d80f73261b4929f7da9b55d19f55d29359d870a2e0664367c1a5bf5f8e162f8064483635382146efa8363f4c972bb755a548ba4b6b3f79794badf6fce85e72c6c0c7c3915f37d96d651917893afb1c6b6a9b236ef4755c28e8cf7b791e3c1a3e7ed705b04de1bbbfb366537bf7caaecfacdb9f0a664308f18d8590766c09708fa8771c4bd65f05fc9ef7892ba318f1c2cde95abf6e511ed4ef81944bbb3207d038351e51d9fc655ddb1ab00be41c39d90a6e18fe52e54f86c8ee7ae55f847f84ff00bf06bf085116e86df24d6f40bf25ead67772b52ebc788eed8a2fd5e7090e1bb24992f08c9fa20aa0a1e5b03c366a946597bdf8be1f5e2edee032e88f77278edfc8db970495b24880707eae61df98ba2abd59ac0f2cbeac235fa85956bf40b63fb4aa8799d5ab53af51c589d4d6005fdc28439b07cae845a0e2c37fd7a90f7ba3c410eacaee9575eea38afa352f70f2275d98fecca7a980cc5c33bb3eed92afb38dc6e8513f5f5aab0d7f658141d76378dab2f476e3e268f35e4c6c50e1f72fb82bbd6a44085c84273f07f0d9f5299cae69e25676baedb980b5b05de2bf299c52c42930eb7201e28eb1b67cae15cc0338e9c0b53e54de47d9e085e84b504afb377204cde74cf9e42ea72130214220d9cdf3c3895a492a17abf2db43bfef8a0dd598ad88a8e678f91f80f1c7cf8f44d0912d5ed4bb8d9e04b70bdb55d56b57eb69edd0193997bb5997700175a37698dd43d34fb955365278bdb3b4d2ab063593e496c7e37c688f01d1fc4fb38a1f981fda5ce418ae966372f8357b87e4beea2986a55b04e5082583d5847fecc07eb04b912655afdc2b8601d277502af2b11e4c0b233b0dab912cf7233b07cae84caebf81cd80379aa1958ad5c0912acdba7dbeb1ea1f13ad6ebb21edaa9a0e3c11df23f875d48aab4cfa2cdd1d689ccbe8354d8f0922e31b57db95549abed7af34c853393630b77da21d5682aa3a92f1859f0d606d475f67d9358339d744a95328b1ead58190feeed5f2558f86c0e0efefa75420d3d1193cddb7ed22e53fd04a1ddf1e70eedce7cf6e7b5fe7e4b1e7cd0e04a33e74e0b4f9c99ebb2857dd8ad6a77274bdae03e6ca93b036d7603374337365ade22a6f89e95d825227356dff834b1e5adc8baab49d118a6799919760757c5a26841d730cd601d9b00ab0ad69dd2f0ba52be5f18b89cde26b06cbf302657e228df2f8c3495d05bd8442357829b87d52e6c428275fb730593b0741e96f5ba7fb05e9745bdee6175af7b90f1babf33e3fe6db27bb74aed7231a0ddd960b08bb5d648afdba44cb7da923f8b0077a51dca961bb7e64a3ca5542d0cdc03c97dd5577ed76e7b4e311be044f1c5070f14c1611f72aedc9c330b7775331fdf4276e7b682918ef1955b244f04edcec08943bb3387caf6dedb76e6c31710fac932f342b5b1dd016f86971b9b5e31e466c025415b57c39df3adf0f25293ae2e33a9eee87b39bc5e5f59e321c787f1c4f11e3a58e66246f3326a770ba3abf86661af8597bf26ac5647a5ee4c19df0496ab5657faa2a0092c972b4182750b4e94b0fdc2686113b57e61c56afdc28eb2b912eafdc248ae04ed17c6e54af039b0b944eaf673c13a41ae049981a55eb7271ba4ee1f7b721eddcd49ddaeec87d9609d824add833be50fede0bd4ef6f7edf2ffdb2efbbf6db2ffdb2ebd65c305dfe44adb5f0c6877d61bf4f33e91f95a0717fceedc11531813c86eecb97f5f21a9a362307c449f92b7da750de1906ccb69be797bbe640d9943773272da68c8e1ca24141bfb70d1c913474a2c5bc40fedcef0758b76671a61f226cb06c66d6f77c09dbb0be07059e31b1fdbecc65bf6cfc325d51dbd163df643f3e5b9e645c64fce0ac72789cdefc5345cb729d7c5a49578eea1d9d76ccc7d238216aca3854d2a680eac96d4d17e617cae04953abaac4ed52f4cb5ac8e09d6a972258e16ab7225f87e61aa5c0955bf302a7564faf5509e7aae049303abbeac8ec6e8d4732572b85c09d5b23ae1f42b1ba9db0e4346a5ee816d5218f76f25e3be2d993787a53777dbfa4a40bbb3c6471b9e8ce3e1d3cd7c89fbd79192e8b261d197c404e071f9c88162fa0dddc02ec3d3e7d963a5f6ded821b8d437e095de70c3963cbacc5bcc224991031e737fdc6a56edcacede7e50a3b1967ed6a0dd19b868d1ee4ce3c3e82a8967a665bf22d9c5ee807b76178ef1b5bce091ad62368c7cb5f7cc7cf954d9e57edbcdd5eeceef347972961fa479d9d9967f1c2e6776c738c703bbbb96d85df9abacd4956bf50b53e5c03246a72b5782cec00a72259e17e64a1cd5ce9528d49d2ba1bb5f589e2a07769f460e2c9d7bcd66a75f777339b0bbf8e9574eea7682d47133b054ea34bd2ef33e185bc8b8657dfa67e1c6b5fe319f516877b47e11e88a45066dc8ebc8ace427c91a3e32b8b6e159ff716cd599d2b6e1934e650ee9755d2461d3476f7757ba026d7bce70ec6aa14d7653cf1709d573c272608fe0dc59e43925f19606499b4cdb1ed04ed898095628cb8c76a7f7e18b7667126f8557c0a5aeb3ca9339c35e7607bc70b24ce26dc5b686b079f04d1fb6d0664dcdaa3bfbde88d2db73d6b8205e42f3a2e8861bb7e63b332bf18c88dd6dca7d83c99ba052c7f70b13e4c00a13604bd54b10b3b9120bd472258ad4722548a9ba22237325f42eab7b6c9fce35755cb08e5b56f710ef753b54cbead819d8ed2075c4ebee67bcee3e265e07e35e3232feb639e39e4d197f5e9b5ad262c5ce05da8c36bba3b579ffb23defcedd05b7ef3277dcba33ffc103458f1d2e0697f34aab3f5e7c51d9d4d33e0c32a7acc1d78935a043fae60de91c74c788daf7c8b2f6870e14d3509e998e0787c5e44cf31bb7e4390618513f5ffc40bb33f0cc45bb3396e5c975965dab26fcf8d8cbee8075f2269a966ebd0c2c9a50fc7e948d165f993f392b5c89f74962f393c7abc8bae5b55922ed6efe46e56b54ed4e69e5c09e5205eb84b9125cbc8ee6c016abf70bd3d10496ab6da2ca95785a2d58972fe81796a79103ab912b41a46e6fb6bad7e9cb9560bc6ebb86d4c95493b05b79a9cb04a9a3e39e4d1760dcbc2ef5e333c6f5763493516877f04dcaaacdbfae6022cada1d98e278baeeb1d90efe72db9480b32c359dbd5fc4578ff59399b90847e22ddba9343a7af9e6997291cf6e1306da9dbe8176672c89559d57e98fde9b39ec6b77407d57df63878ae11d992411ab7c18e90a96870f149b7d2a86e64449f7eb91e64ece0ac7c709cd1fc435deb8351f6e0b249d3674a899d94db9af9fa169b0d4e804c1ba13252f6a04eb4e143f4f8375c25c0962745cae0417ac7b8693baa785fdc2e8b23aae5f1897039b2be817c6aca913781d1bacdbc31536d92d94baec479844095dc13ad9ff890cd66dba40e375d4ebeede78e1ae8de9776e48bb3e30a9aaadc70617006514da1d48c8856159697c4450d47ac9c14fa1f3213e9598b3a2b6d3d66b472d42dfc0e09709d5124fa9c95fe1a7042a8cad501d5bd9010f1463df8e9654756182a50eb42a2cb32480565fe46b1dd3fffadcf152e13ba2ddf1c710edce2866adcb71d2bff8d6c07176657a3493d9495fb9c6854a8b853afa936b159cc18e764749abedfad3d67c8957265db0618d848b31bef2470e5abdd8e9c5cb036f4589ea4a2672bccfacc4fbfc6ccb7327d9209e81895a6a77af9d29a3b9122fa9d225d87e610b34fa851d2b614b101fe7722584258899601d18ddb36cbfb0023657827a1db81c2b7579b45f18d75782f40b7b9ceb17c6952066fa85d15c092607962cabdb93f50897034b4b1053a9a3b912e075dcb23ab9604d9dec01baac6e8b9435bacd197fa3c13aa273198cd1a5c3b80bbc6e43fa5d1bd2ee5c9f7ec7fab43f87247f7832d7da679f6774da9d0dfacc5ec180e0e95c83479f989fc456d97b034d676070f0b1c3c5f0f431ad5791c433d3a8b79b4d9e98c6b5bc7461fac15143fbf7f15270a46d39cda74bda4f96b4a5d6761d2f6e3b55d2063eb032b51e6ea1708e9e3a5a2a7c47b43be1b58a7627926f126bae32b2bf036c0c7c510299710c903fb0afe88bf8eab5b2c613c56d7089a6d4744696b59f2c6e3b5a743128b3f13fd155376dcf7709b65d3563c36437f63c72b0989a27edd568c1681eada5ff6ea4d5e7387e48695968a1c959e1f828a1f9bff14d7fda5ee01aac70d72378d4ee5e3d5d4e2b9ce8cf9500af13f6952856cb9538aa3357a2c060ae44eebf547d253473251ed3ec2bc1f60b235e4782753a736075e64a48f95c897bb764305e47a5ee0217a903a94b67a58e785dda1d64a4de1e967adbbad46bfdce5eeab3d1fa25b43bc404762a5b98c5d59a777b78b85fb35169efad3397238517a70491d255c676bb002d8c149d1fbd56d62431e6893995a92e387d6d96675a7d45bb89cf32b43bfe3e807627924b7d0370618b9f937563bcced15ffef2a9f2b3d59da6bda91ded8edf80d569f5bfdbac1cef4f9a6b4fb650fad534f66ba0f4789175fb1724d5f6bc1ed9f07eac85edee032688f76962cbb327aa6685e5c031d19ea5a576f70a09d951a92b5da0d12f8c6d025bacde0496af6da2d52fec90aa04312f754f1ed4dd0456e5759a4d6073844d6085fdc28452c72cab5355ab63a44e46a5ee7e0da9a3432075bcd709a5ee8e30e275b787a5dcb68e8ceb03ce85a4955bf5d4f3a0dd21a671f7ee02b8e3e9b871794be5237f59635d57efef36e54e0c304ef0e0d9fa734abdc8b7b8614baef8a92e1ab25b76ce5c2342bbe32f54b43b912c4faa1b2bee9a99c6c5a61e3a5064669d37bbdb1d4fc9c5cb6b2ed4ff6d6f21f82a9c088b681e5c3c0e7e322b6d30cfab11a697351619c4bb655711dc28348278f0d7eb88ddf109b07cae44897a13588d1c58b5be127c0e2c1face37360d512600fa812601f57973a5d39b07cae8442a35fd8833a126075e74adcab9e2b7137b7ac8e91ba748d601d89d791905dcaad3042536e094dfe4b4812fcb4f6a9a7a0dd21a651de7e59e79a3178befc22da70863974799bf89b36d8a0c8ba7fb2866ef1e987e459e0af48acec307f8fd0eef8fb00da9d48dc42b2c57f0a2cd59b6ff8d81d4f7d575fa8ace9fe7d45f0c91de3cbb46b3455f3e090c299fa5f42b555373858def676b4b5ec8e0fe23d7faa7a46683613c4cb16dadd4b27359ac0163dcf05eb04fdc2044d608ff0854df2d5fb85098275077524c00a2661359ac0b25ef70817afd3cc9550f50b93e9cc9550f33a3e58075eb791953ab560dd062a75699a5247bc2e198cee96b5c97f5d9b046396675cd5455be456a0dd212673d7ee82295ae1bb494c01677b6f9a6590828379668abf69c30dffa66da272de3f8fab86eb50e4c30b9e26969ac741bbe38f2ada9d188a5b2f6b3f23f48df1fef27f1db5cc677f18da1d4f67ef40a0b4f18f5bf3e0c838facb4dcbbf80ebc73948d16fcd8eb4151d7d2f9eb162f88e0de2c5377f14df74ebee623e8847ec6e63ee4b2788d73dc725c0d2740955bf303e58c7e64ab0fdc258a923b9125c0eec011aaccba5c1bac7c924ac52b35fd85ee5a36c0e2c3303cbe44a9060dd2e1aac533cbc930fd6c941eafece06eb78a9930a827599f76f2152478d8ef53a3607f602e775e93407960bd6a5de11c605ebd6a510af0b05a903a34b2146170a4647bceee690f3370527dd1472fe37be095e676df18844bb434c666356d318ade78e7350d6ef36d92e2dc8da3c78a0587b025adf800fced4b5a2aadefd7547be81f61f82cb357b428062c189524bed0eda1d7f1f40bb13c32f29f5222f18734a3e6a339ced8ea7aabdf783a84a383bb001c63645a2dfdaf6e659b7c4f1e789162b7c67787c7eb6e595f05a8f75e4229ccef4aa78f1045385f868d1bf8f69f60b7b46ad5f18ad3facde2f4c952ba1b9ac4e3d5742a9962ba16b599df85c099dcbeaee215ec786e9ee667325744dbfae6397d5dd1a9acc45ea4898eeaf212075d4ebc8f84bd0391837069cbd7f438a55cf3b05ed0e319986ee3eedc959f8743bfa2becbd6916e368512bdc8445deb1e1b3333170e87defea1da05ff9453d02bca5ad3d16cbb142bbe30f2cda9d181e3b543c49dcb79b31be72eff4064bbdef88b03b9e95a975130348d517a38278f0bf3c65a150a73ea22bbb5fb368e13b7de3fdd8a6ffc6377f9cd07cfbee62e720c5fc0d392f1c67a54ed82f8ceb03abd55782ad3fcc3795d05a56a7d6045638fdcae7c0aa358155e54aec940bfa4a08a54ea6ea17b64535fd7aaf66ae8470591d9f03cbe74aa47252a739fdca4a1deb7544eafe0c23f0ec9f02cffe2120f15aeff84bfd56cf9c45bb434c667070706e588ef69a1c630b830c679a7bfac4cf4cc167679208bbcb69ea11f9e49a1264740d3dc3a0ddf1f701b43b314c13b7e80ede1ace291c194bbdefc8b23be052ffc073c7cb24be32f1413ce7a0acdf58799aa37760f0ed684b16be1b72d09578bfdb9cfbf491c27f1f55973a55bfb07cbeb6c9939afdc272f5f695d05c56a7962bf188765f097e591db7a64eb5ac6eab56096255b02e83cf95d09503cb2dab5ba7e975dcf42b1954eafe4206237541e7fec478dd1f03602482ddcdf58c49afbc68d553ff2bda1d621eb7edccd74efc848bca82e1267b3328f1169dfe20ceee8e145e14190f8487b597e5e221bfa2dda1dd1989c8267d70b5fc758725bb2c8d38bba3eccb6b75103d4b4b1fb5b0a756dda475596d6f45d9ceee3e20cdcb9abf38dbfc4164d9837b739f66a54ed52f4cbd601db3a64ed82f4c771358be5f98be1c588d7e613a9bc01aea1726ec2b2190ba748d5c89db75e74ae8f23a3658a7ee75fe64dce89f306b55f4e60b56af7988768798c33d7b0ab5d78fc16db9b8f592bd37cd520c1a91dc2aceee3cd3eb45969880b78e2e175b404f0c6877fc7d00ed6e486a3b7bc7f989aa743791ac0e2d1bfa15453342ed0e3855d226b2f233ed4d96d762ddf4c9ea8efe57231aac9d5b211cefc6347e798ef4643c90d77cf78e9c7f1ec87bea50818e601ded17b69fc99538407325b860dd5ea1d7656bf60bdb4583750a81d4c9870ad665f2c1ba7b3767aae74a6804eb04b9125ac1ba5bd725d3c226b708722538a93ba7923a365897c807eba8d4dde8177f835fc20d7ef1f33ca3bf3c6df5c2b068778839e8b33bd39e9bc390fec1412366668349dfa5215f738568c592784bb31b2d79f347bbe3ef0368774352d67669ac9f285171f497ff27aad2826f3d72ed0e78e144d98400518b1525deb2f43aab3f8c7e4c6d5968cdd228da76f7f9d9e65f07493a7077efc0fbe1a50fec5682c2a9d22584fdc2f865758cd73db637871636019d7b8cf40b039d2339b08fa8f70b7b88cb8125b9123b69b33041bfb0ed5afdc2b6f27d2532b95275827e61aabe12e977b2b91269c212c42457629d60599d2a578278dd5fc8b2baf3dcb2ba734ca48e781d13a94bb811bc8e31ba1b7c137eef1bff7bdfb8eb7de2aff68c59b0eb82b5cf3bda1d620ebaedce536aefedb2188ac66eb8038bb9515323facbb6bc215f73a578bbf392b6f75a728e1bed8ebf0fa0dd0d091c1f7841317667f1250423daee729a7ac6880bdf497c64870bad9b360b64365e7e2dd276e13ba1dd514e17b73ebe3fefc13d4a46eaf274f59510d61fced6ec17c6e74aa84ad5c9f5e6c0f209b07cba84ee5c090daf637225d6abf595d02e55f75761022c932bf117b565758974305297c04a9d5f3c277564fcce3bf6773eb157af8ebe37ecbcb5cf3bda1d620e376cc9750ed23cc2705bb6f776598c2069a3f842fd9302151a7d5d756284ddad91e65b74e266759ad802176877fa40bbd31e8efef2ffc658b2c174e348b63b609cb8f58a6077478bacbeba1ef8cc56a55174daddaf4cd6c94fe7aafeb623fb913d4aad1c58034d600d1436d1c881d5d30456d057426713d83b05854da8d7ddaa56d844734ddd4d9ad3af2aaf63a75f79aff35579ddefbc89d7fd16c69ad8dfac89b97a75d4ad4189d63ee9687788c9f4f60fc01d4ce308c35fddd766db7bd32cc63d7b74345cd32b2dfef2c567872ed46fccccac2ca5d6c44e9d3af925a5ce01ed0eed4e1ca5a267662704281646587295787de7c8b6bb49816491c6d01f701fd9f1625bd85d4c65cf6bd6693b2bd2ee28d90d5d2f1cc9bf7b9be251b5c226d982be12593afb8531c13a6659dd76cd5c09ae5a9d8e5c0955bf303db912d4eb6e530bd6a5e8c8950836982ba15a56974097d581d45d0f03a48ef13a5eea605ce705237adeaac8bf062658fba4a3dd212653dfd5ab5def0eace04fe2fa3588a7b6b337b3de0ebd6b5b2f917228e26b58c1bdfa50c1d0f32c3e171a44c603e1b1be4369c9899b070f14899455b43b7d8c1ebbabebea151983828bea81fd85167ceb93c56d22f3ca87a7dd8d1719bbf396ca6cd5957b618c8d4aa318b03bcade9cc67bb629eedf91a55e85583d01969f84dda19603fb001bac53f50b3350d8e41ebe09acb05f5898de26b02283759a52e79f70836f0237031bcfcdc0aa05eb18a98bb9d62bfa5acfe86b3ca367ad88f8fb7a9c993507b43beb72205f47a5df4901a266278d22bcb45db222e3d5d3e5362eb472ffbe2291a55cd97bb5a7b45e447d833d792d229fd78efef2f72cb758bde3723fec8e9890c234b43bfdd8d8ee76e78abd5aac5211455cd96d7864cc5b6fc91cc0870f88fde80d4fbb1beb3bf4712339b33e56cf99e53953d6fdba4d2a1b0f69770008c697d1a5b76d96fe7d6796a05f182775245702744ea1ea17c6e64a30913aad7e61345742d52f6c533a2375b40a31c995b863032d414cbd2e854a9daa5f18db5a22f9663e073698cd8165a4eeffdb3b0ff0a8aab48f0f2020522558103bf6b6965dcbbaeaea5ad6eeba45c5caaaebbabbaeedc30662a1a54c420a106ae881d05b2084d00910924c4befbdf76432c9b4e47bcf399361e6de3b73cf4c2609b2efefb98f0f2699b9e79673ceffbce72dc77b8c753d31b0a147cfc6c0325d078ace66ac3bc48c759399a8eb31d65d1770e05aff846bfd0f5ce31f7f8dff814b7edef7dafae4be7ee2a8ee10af01b9250e0d83897bc6091f4fdcf3536b07876840eac052f78dd8e28a36936fbf5f92a0e45afe5c286cbae74987029cacd073466a404f9ce0bb6dee29b1c5fce9f451ddb9a29fd5ddd65cdeec884ce734187c993fed82f93adea22a416a5f19d84907e1b6999f83eaee68999e27290a4cb5d05f78d683bee2cdfdb5fd60bee351778cf4daf61763d2ef078db756ba5ed8e33d294ddcb9d539c44afc56e45647749da0ae843d56a2a75e180b8015d40bb39796606e75b7d9b2d50962258e9c8d95b059eac8f6eb64aae8ae0f20963aaaeb40d41db8665efcd570cc8dbf6aeefeb1336367c6f779bd4e547788d7805410188258e5acc40a5fba8a01efc595828c1cbf905827e01f8a40d5139bf20f97b6f9f62c8e446737c294ca33afd90f68d83bfb4a78bebccec0bbe1cb8a511e2af541cabbe8ac46feb4cc7ea8ee5cd3cfea0e062bceb5005cd4e0106d8c4f4b97debd46225db9abf7ffb53d3e487907a200d671fc151f3c557745cd9deb331b7bdf4e373cb7ad7004474614e82cd72ccb842beed3c638b2bd40df0f85c9f8d51d233abdf6f76bb4f747a97e4f03256c6e753df5c2dc148175d075c9527525ecf5c24ecbd40b7388811588badbeda24e102b117cd849d739bbd5d9459dcd58372ffeaa7944d4c171e59cfd93e6c48d9cbe6b7bbabc87762f41758778478cd4b62cdced51116906938f5f9efba3731df3ae8ca74983611ebf7249c6d7c72b0b9b7d9c39f9cb23159e4a3b3f1adf7aa48c4b705aad5d572e95a8e02679c0dc7a53afcb15c517b79042e79e5c11aa3b57f4b3ba63b941386539f48b27b714f4e6740260c1c299ba8daeec3479bd4b636eb676ddb232db2377084fd51d7452c5ac94c762f2d57de3ca7bb2423f84cfe96e54b8ee81685fd619e4e123505f7d6cbef354dd0106b375f6f192bb97a53e14a5725357421003fbd00ac722b04ebace3905b1b45b9d2b639da35bdd6df6588990b3c6bab3b1123d3bb00263dd35d458773535d65d458d754cd44d9a1d77c5ecb889b3f68d9cb1bb4edfe709ff51dd21de71c5920c412e143fea5cfd684cbecfcf75dd7269d9003f049d001328cc08d38e562456e8db7b212c3b2dd6a5bafaab976672a69a773ca0cb5cb63883ff5c8f6ecce38c6e603a646a1c97555092c033b530edf21b43d881eace15fdacee60e2bb78813032ddd57131953a27ca7d663c5fa16b18cce7f547df99b44b22d3bd3646696a0d972fcee014938e8fd22375b74c570f0f852c0f83354f6d29385ce6cb8d86d64ecbe591e43e70f682af8ef5b90147405c49fb9bfbfbd67ce785ba6394b574beb323ebd645490faf5439e93a4f8bc08aea85dde360ac3b1b2bd1132e61b3d439d40bb3c54a505de7b4031bec142b41459dcd58776d4042cf0eec81b3a2ce49d7edbb62d63e9076137edc73ab32a12f1eae0054778817acce90dee68301332aad577399989a76f39805ee6201a019309cc26365b6c4fbd6e5fcf770f9aa8c46558da1a143c6a705a64e75ad61b9aee1b9ed8517d36d50b164e59cc47f3e55cd7f51334e54712645b1cf5fcf6c2bb4783860a6d777fc667dae1776483f5477aee9677507dcb73e579c33dcd5012ff08445e965adbef14dad845b1ac05babc58f1a0fe1ec9e3ae0192d5d1f2794818ce4dc0516f70e7e75f7c5918a61a15abf9e2d0038e9b5cb33e7265597f4babc0edc2b5887f2ecc9faf594213bcc67edf72d9f1ce9dbdc77a0ee3e3bd6d0e5b9ba631c2b6efe6d94eacec833bfb565214e7136d625db62259cea8591edd71e63dd2907639d9b7a61c74531b0479d129bd054754ec6baa0b3c63a871d58d07532c63ad07513a9aebbfce7bd705cf8ed8e80c33e4e2b2109aa3bc4535a8c16585f8b6737f8c9d888b4de58cf2449abebe074181b4f93efc13c08a3378c9c307d433b478693a6deb93a078ea7b6e4ff7957d1d35b0aee5c93735354d6a8701d0cc5f06783e95a1efe6cfc42cf6616fb85c3494d9e741998fe3cf2821b4f1d0ee1babee3c8a707c417b53e1a9307ba0e2edf533b243b50ddb9a2ffd5dd5b52e14bee9f1d5c5d50724d2fcfcbb898ce08fc670779092fdeb35b0bf3397669cb5a8dff4c2883d67206e74a3e4a8fd4ddb3db0a1c777ee1e3d060f80668c3a42519ff3e58beafa8d564f558994c3f510557cd2fc2e1fd81c7e4e9597c425275679f569eeda5ba632c5755deb3e4ccaf22cf3ce8545742b0fd7aa6275622e93e7bbdb045b658897b24b65f13cfbad58539d70b9bcf8c75ac5ed86191a5ce2156c266a92331b03db11207aea63e7554d4c55de96ca99b386befe5b3f65ef6532c1c97fe147bc98f7b149f6ff6d5a3740faabb5f1c1fec2ffb30de97251d3de5e6a82cb1630cbbb13e4cdf61873f2384b84917d3830da4708ca4720e1a0fff86211d7e0ebf1d4f0f2fbedf7e1618d5e79ef67826bd212a937307c77e22e89ba08b1401aa8736e4cd3c59bd2bbf25aba1a3b4d558d26a04a172a4b42d4c55fbe28e42459006a4a3d7baceaf4721a0ba93a4ffd5dd9e82568fd6027e748b16d62cf066bebdaf64657a83aaa6bdac8dbc2765ada6c40afd9a8cc66f8e575e1a997ea0583e60e7ebe3959c19b01d6f2fd9fa0c544f5894fe9f83e56b331b93ab7b1ad0664ca96e5f9fd50483d88448526b6f38d5755ebfab9eaabb2b976688df5216b1053f1f4eb700a08b8d0c4f7b717be18cc4aa8dd94dea5a43955e680b859f1c2dd307a5d43e16930f7f3f94cfd7ce763a9aece8cdbddebb5bf49219a79bfede6795673f385837f3b40fe256ccd6aee9070b6e5d70eaeec8245254c25e2facef62254284b1123708632598aeb3c54ad018585bac04137593ce5aeaf6324b9d4dd7fdb80774dd253fec19f6f5f64f76687a7f73784075f78be377317930855d1299be25b73f929c0b786253bee49622131e8d723ba15ef0d5d14ab693726e1ea3c275377815f5f07d62d510be324fe2e90c4e4a641e4c434a35bc0cb62358035f08b3aa773610c181eace15fdafeeda4d56f150c673b0187322f3949ab3ef895203ad823e05ffdeca318690b00e4f727a3b1e63a95e1a24d580e1615a8f4c826e1e25bfba3359ba60e4e4b9932cc1d150c7c607c0a18266c3dd20ffa617026f9117cb289640069666bd7c31bca6b8c5fc669f559ef595ba6314341aa66ecfb829fce4af224f89139bdc17e9ce5877a7a3ae0b73d675f31d759dd058e71800eb60ac734c6ce264ac73dc7e65ba8e59ea98b10e8e093fecf6fb61f7b8ef770dff669b171e89de81eaee17073346c1340a63cb5d6bb2f773acbe7d42bdc17ccbca2c4969072b5f9841a61dade88bf33ebfbdc0a318bafe3c98ab5e4ab537af53a7b98bed1a0ff855481ea8ee5cd1ffea0ef8db9e62d015be7dc44342b411ea3a9eb3bfb0bdd0d360877e3b3c5277a5adc65111bd5afef4c6cc683f6040fbdd465f96f6f082706dcb7b07fa24bc02d4dd0cdfa93b465279f3ab1bb4d7861cbf6be14967639db85ed809e97a61a1b670097bb130e77a612eeb4a3889ba79e258099baeb359ea7a745d8fa8a3ba6ee6eef1707cbf4bf1d9a61875ffedbba1bafb6551d66ab21b67880d2742071aefa6a8ac35197d9bc169655ac385744f5372b01a1de1cba4bb02eee2ceb8d5ffd30a68899f4f79efddf4ddf1aac121de98ef7ad9ece11cb6505477ae181075975a6df022945be629846a679ce072e3cc69ecf02e36a797c78830f9d22a1ea9bba4aa768f5294f7c571311d37bc7bf77ccb94be496efcf7843aff145f265db49352d1f2ec9ad4494147ee8848ecc96a628b81bd4bb65ed87c675de75c2f6cb2a3ae0b9030d6d9632588ae938a95b019eb7e8c653bb0a0ebfc6cba6e17e8ba8b41da7db179cabaa4beb82dae90547770f4671bfa8cf350dd919a5ccea3138d18d5c1c80f9afcdd7d2529bebeb4fdc5ad77acce8193ba9acec86015a8cea8ef935d06586570eea4f4f3c1dced5ede59d4cb0b8457d4bb285def9badd4fc78aa4a56e0a1ba73c580a8bb6e52172f8f331e93f380f5dadff7f3ba7efdfb60597fea221652fa8ff8b2494b32dc0b3c8fd4ddaa0c2f9d787d785dd001a7fbba9a8f771c2b37bc11e7fbfd59507701a97da2ee1867ca9b9f5a957c55d0919b4349dcab2d5b5db8ad5ed8edac5e58684fbd30410ae29023f662610e2988137a449d63ac041575f3e8f6ebdc3826ea2691580992b06ee2cf3d6e753fb370893d3da26ef7849920ea40d11163ddc53376c2316ec64ec5975b7e33bf3fb2a038225677cc79fbc9cdf94f6dc987ff9e0bc7231bf3be38e2c5aedf79a8ee7e3e55ed626f946cd7129f9060e20a3225b63826a7a9b11755594b5a8c30fffad12427a3225c3a968ca7d26ea9b6de87d7e80899afbdf5f9e9eba9e7315f64f62356910055ff5845880e0f502dd311b1217b5751ddb962a0d45d7d8705aece87afcac870dd139b3d78876f5d953d22ac57a13a9c07136c8fd0bdcba7b616b8cf0ce991ba9b76b462009d78d9ecf3c840efc93af26352d3545f8757c01746a6f5b9bf90aebaf5b58dea6b9547ae531eb935f498cda72ecc395662bebb5809c714c43d7525ec963a875809a718d8bd139d62256ce11244d4514b9d9fcd52671375e3a6ef18337d87e2f34df7861ce8eb1b2246aceed84b081deadc39068768fee04d02f6f350dd3dbc41260b2e13e7b02a27cec001aaf10bd39fdc5cf0d5d18a65bafaa3656d85cd9d9d66abd9da65ed3a7bc0ff765aac59f51d7b0a5ae62555bfbca39038f505aa610a1ebbc09d93c9c5741dfa932779de3c65577e0b7fa2fefe3998afddabbdb6dad92135c282d41e1592f0e280470967b1fb595dbf3ccbbd124375e78a815277c0f2b4061f7687d1116920d8f8cf6e305be1239c59b8bd3ed8d2e9f79b6cb29344ecbad5631ea9bbe7b7150e94132fb41384e58d517d5e5dd4239a3a2def1cf0f1feec7b076ad764f7531ebf8a968e697159b7871d9f38efe064e561bb5b9d63bd306aac13a4204e70ac172670ab734c6c32c99ed8e4e7bdce3bb06263ddaeb3c6bae93bc6c2f1dd8e91df6c537cb2e1a51527fae76e08905477e7da716198f67d6f72809c87eaeed1987c8552cd1f6b06970fa3318c2a831d22bf6001ce4233c8c1721704a848f425b5fb5dc4e7ea3f8e8675fcdc0773b42327caf5246d42b0668cb7c9e87c7b905c5e4acdcc441f5ff5525d3dbbc6be6833dcb78b688cede69cb30192cfca4d73a8ee5c3180ea0e981a57ea69761457070c23b4b48407d4b59be1c2fb2ec2621c5d57be1b576a3fe386ac26ea70e8ee51f2ab3b7845fb5a9dba6a245cc503d1b916cf33e9f53507cb0cbe4d7ff74e7cedaea27e9d618d166b8caef2f9d567fc66c74f9a9770bdf29053bd3067639d53acc4d914c4a2c426b3ceeabacb1cdcea2e75889520478fa8a3963a9bae1bf3ddf6d1df6e1ffc7f9b159fc5841debef6273767e11ea6e78a8f69343b8336b039400331f79ed8d7656da2de8c9f9e6e137c0080983d5ba3e2ec66dc7ff4ccda4251970c91e2588f3edc12611f8c781923ed974882b6a81bbeaf37993bd2ab7aecc2e704e2dfbad9c4904d59d2b0656dd016fc496f824c681b955787a7693a5ebde7539a0307deb4ec0f275c34359a67372f3c86bea1ce4d6dfcf2375f7052d210d134a7f6e0710b37980eafdfda5f2ed1b20662737bde7bbfdd9b7e36b8f550c4cb2978a968e598772ef0e3f36ea877d97cf89bf36e0a0285602745dbc74acc4d93ab07b1d6225f65e668f95708a81b5c54a305d37d626ea6cba6ed8b42d8a8fd73f1876b0b265c092de74ff42d4ddb050ed346feaf19d9fea8e11945c338a964a74bf79eadb83e5078681fd9a6599253e2a75c4cfea8cc69ba2b21401ea0ba9edb17fae9ae53a1e114652b34e8debdbf1b9bec3fcf0c63c38d1985e3f53f6a4484e33a566d66989adf3adb94dac709bab03d59d2b065cdd01b34f57c37b32aa7709ab69d0b7c6bbb2b0df2756c2abe513373c96bf112ee7e9ad05557a898499ee6d959e6633ae6c33bd09f2385035ac77599479ae8b9822a934dd5bd8e2c54dee378cd62e50771ffac27cf7d1a1fa29fb6bb31b073822b8a0a1fd870339b7851cbe70c69ef13fedbb7cf67e62a3a3ba4e6cacbb82c5c0ce3a1b037b99730caca3b1ce51d48d9b6ed77544d45df4cdb6c15f6e567cbceeba59b189855cb986fa945f84ba83ce1baaaaf5fce2ce6775c70855d5f92d22fe542c4d4a9f8e5420232fa01974953eaa70e41dba3ac39bb1c56497994e2ee3fa4cdcb24b26022940f5f496fcde97a1e464477ef38445e9f04c477afe4c99a81b1d41eb1428d51fc697b59ba4236bcada4ccc45dfd50167bf67ad67c51041ddc1a9c72f943fe045f2f9ee76372d1fc0a245640fb8c021219ae216f952596288ba5b98ce5655b2c7a060cdea3e5077dd241ea7f39695d970bd5ebc277e3d0ebaf06e97b779f962c3ddfec3e602586d0d0fd57ad10d59ff1a4efbd7dd6b72525d278dbc6e39bc573a572fea38bae959d4ecd9a3ac33983f39543e2858ebf36184bd5d2457553049193d276920474b7e321b8dafc7d5f47e7f16bee19d03b53506dfa7b5f78e7abd312aa5f4e5d54957cc89bbf887d851dfeff1fb11c4dbbe893d594d680caca0ae8474ac84c30eec594bdda86fb78ff86aeba02f3629febb51f179cc8bcb4f2497f6497ff70285bfca7193eedc3ca09b84a47ad147bac69012544e5f05e3c9e0f99af346dd31122bf47fdc5638943ad7c148e5436b1e5b7e8ea446c2311169df786341ed2be28b5b5fda5108173b2484d48884e57fef2fdc569028228d55aa852ffcf47079dd408c547b0b5b1fde90c79a313c8c944e1bbbc0369d89a792b1f43d67a134702b406585ab64568e06b3157ac7505a8a57f28077e9764f5cee81cb17a733d74dd90326f4affbe05daa68332a66a7f23460086d4381879280d1d8611e166abbd5f2573a4fb52cadaf22ca81c3a56df747e7c289a03df0d4e0d51ddb535f4ffc9eb02ce823a91326fc3d8c180f46e7b618bd8fac07cadb4cefc6958c0a270b0a56b861acdddfc3397193bd01b0141d421f01fce54707ca4a5a65e4e55f7617c17be5ea451d4e8b6ee4377af328817d452d7fde5d04dd87d59b1e1166ab51e8c5aa8a5d1a7c095cdaedabb357f7710e529f139da39fb2bfb7f98dff71a8eee3c3f51de764bedcac9ad6f5aad2b737a6de117c70d2ecb88bbedb35ec9b1d174ddf3566c6ee71dfd384c320e47ed843e49c2d56a2670796c64a8c99be63f4b73b467ebbfdc2afb65e306d8be273aae8bed874e9cc9d7f8a4adcaa2db39e4b4e95d016ba9191768e1fd05fb6e77b5175abcb8ffa1d397e154be57ae6fc52770c4b57d7c6acc65776165db12403866e36528df66aa4828fc0da93955c8411f8a1e8bc0d597d98bfa8972455b5ff78b2ea81e8dccb22d3997511262fb8f651112e273bc174037f3982fafcc0421efe3d7979164c3a874afa29eccb0d2d9d96989ca6f7e24a40685dbe38633479283a12ff424d97f00f907f206b4156ddb2327b4a6cf1f2b4fa32b9b9d24e659ba9bcd508b3b3e401df23aeade99e946ac3e9ca76781cb2c7c90a7d29773bf9315bbb8e97eb791a0007ac893a2dde8cc6d0d1384fc1ce52dbdee7ab83a64ecb9a8c8637634bae5b9e09bd80e937c7f704841c088f098bd2af5d9ef9c8c6fcef8e57ee2b6c0185efc3361c2bd7ff9058f5db0d79572ecd6015d068a53cdb313844cb92f55dbb2cf3e9ad057392aa553506ce6f6e355a4a5dbfa8e56dc61250a8bd9e58b5b5867075dd2b3b0b6f589135813a0fd06613c90a23215c8e20930313964c57d37123edaaa519cf6e2b5caaab97d5abe72c334f37be77a057e6bb0f0ed67d9d78ae18afdcd0da69caac69dd9951393b21fbade8e4c7161dbd2b24e1bab9fb40e08dfa8ea4a7537cb6891c9fc6900354dc7f370efb6aebc86fb65df1e3ee3b03f73fb3e4d8973b3531ead2fcba819f265c516f3037775acef1a3c1603679d5796195ddd4e1f4554df4db2cfd55e86da0d0d59191eacfbb8aee5c9d7d49643a1be761a41ada3352898fa164e9aa6543f184c8f47bd6e67c9c50b6a7b0a53749f3fa1993c59ad5d0b125b769fa892a50b9f7afcfbd312a6be2e20c106c64a732482d38e0e7308c4f5e9179dfba9c977714fd78aa2abeb81534cf405f8734205d602ecb6dec046904220a8e53957ab85e98f88c5ea914e4bca4c36c05b59359df01af87fd3dc96ce8286e31b6f5ce4cc70f4c2b794d9dc9d5edf606686a0d85cd9db05ae99f06f412d093d0b30e95b6c17269cee9eaf7e34be1787c53befd786c53ded4b8d20f0f94c16f5767349eaad2979fabe38647c034fbcfc375a0d0bc56775313ea16f77db2bb3e02d6082d1da6c6766379b3a1b8b1dde1d0c37febf59dcd1d26b3f55c344b22ff9be84d561879124a5a57a4d5ff70b2eadf07cb5fdf533c25f6ecf1466cf17b7125df27562dd6d683bc81a9013e32d0adf61930d93574982bf52698dd4a9c0ff8799bd1da75be4b7d0441104eea0c9637e36b3f3c58f791174e7787ebdfda5f7baacacb5d72044110044110a42f286d33bf1d5ffb81e702ef1f87eaa626d4b61acf1fe3008220088220c8f94173a7f52322d53cdba27dff60ddf453bfb05812044110044190ff11acd6ee69271adf8ee72d63f1d121b22d7bb26a20f3f722088220088220ee5994d632653f5721da0f0fd5bd7f70e053f822088220088220ee395ed1f1767cedd4843a37463cf8d5dff6d524d7603c058220088220c82f800eb3f5a7a4c6d7f6d590500b91c6839fbcb9bf3644e5454e5a04411004411064c0c86a304e4b6c786b7fedbb07484ebc0fe9f1f784ba37e26a433528ed1004411004417e91e4379b5667b57e95d8f0dfa3f59f1eab9f97dc9c56ff4badcd8120088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220088220e72b4995ed1317678c0ad70525d70c745b905f2a957ad36dabb24784e9ded95732d06d4110c44bda8cd6860e734ba7c5d30f5aac5df506734387c71f3cc7c969ecdc99df3cd0ad40106fb86d65f6b050edf050ed4d2bb306ba2dc83947638779734e93b5abcbfd9f81a853046bc644a429e6a5f64fc31004f1390f45e70d0dd5425ff654e0edca6f5104aa262fcfeca3860d080d06b3e2a7e4df6fca1fe8862088373cbda54031375511a00a44db1d224211a25104a965ffecbbe395e42df257bdbd176d7708f24be5ea6599a3237443e76bdf8d2bf5e883307d2802d5afec2ceca3860d08b1852d30a67d77a26aa01b8220ded0d5d555d66aac69370d744390738e860e0bace2ef5d97c3f3c7e56da68a367c8b10e4978ad1621d14a21dbb206ddc823445a0ca6c95b1d83bf2d1813258064e3fbf84d0cc93d5a0ee56a4370c74431004417c494271ab22408dae7408f2bf404e53a722507dc38aac898b3386856a9fdde68121eee18df9f0d9e8acc6be6b5efff3d41672514995fa816e088220882f999754034bd78033b8658f20e73fdb729b40cc80a85b97d9302844a308d1143475727ed66f519a22589352d3dea72dec67fc16a6c14da8339807ba21088220bee485ed858a00d5ae8296816e0882207dcedc33d5a0eedea2aeb3172f4cbb60bef64f3b8b783ed861b68e0cd70d0ed1d61afacf37c360b2c2a137593dfa543bfd14fcd722b7efac37592e0cd30e9dafed451bbbcdd62e8359be8596aeae76dbe5f447d0b1bee726f07fc47ab6859edd7001ecbc1d72f7a49dfe99472d1400a768eff5fde47c7c266b57cf7bd5abd3b14b96f588607fd669e9d5831000b78bb35f48b5c7c23e2b1b7dd97bf4f45c9e3ed676dba77c79c7a4cee271b7b2f8a85bd1b35bd85771fefd35cb3261b46fe8cba52b4f4f77f541ce810241101ede8b2b5104a9679e24be731bb39ae0df43423469751db21fcc6ee80015748194102a6e3182447c7a4b014f03d664343eb7adf09be3956efee67069dbbbfb4a6e8ccaf25b48fc03c72f4cbb7659e6335b0bf615b5baf9544271ebdbfb4a6e5f9d3d6151badfa234bf45e9572ecdb87b6dce6787cbcf5439d91b9fdd56f8da9ee229b125f09da32274f0fd7fdf5f0a3fb11f7fde55fcef83e58e1fd99cd3f4c8c63cb8d2b357dd6afcbfa315bf5a937df5b2cc894b326e8aca7a374ec2bf25afb1f3dbe395f7accd85c6c089a055972c4a9fbc220bdab023cfc769588c16eb224ddd139bf3af5b9e0967b934921c701b9fd95a1895d6e06a5a2e6d35fe9058f5ebf5b95739b4f0fae5994f6d29d890ed6e177e455ac36331f9d98db697a7526ffa38a10ceec365f4bc1317673c189d7bb4ac4df0a9c60ef3ccc4aa3b5767b3165ebe38fd576b725667b8f47b4cad31fc7a5dee125dbdfd2745cdc62f8e54dc697bd0e44ba0b5f0d4e0e7aebe243aabe9d198bc3c07337549abf1ab631577ac268fef0afaf824a30533ea0d9f1faeb8775d0e5c8e1fbb3991e937acc87a6947e16eb726919f4f553fb1b9c068b1dd745814bdbbaf149e05bbea494b329edc5290d520ec77252d2678f1a031ecd9c17b757f746e6ca1cbd7bed36cfd30beecd96d05398d2e2df0d04e789f6f5999052d877e3181f68b07a2f3a62756a5bbedf8207a23d4754f6c22af137b31e0b3572fcd7c68436e6072ad9b0f7ac7eaf48667b6145cbb3c13ba3c2c3ce16ec37d782fae34a7d1652341a62ed7353cbfbd70f28a4cd6e5fde8abfbf086bcc0e49a4a1fc50880ce0c4bad7b6c533eb4ed92485bb7ba8974ab82f5992e3b088c15df2756b18eefd7d3ade04ec2e8e7be5b85a4d6fe6e635e69ebd9c6c7e434c12386cfc2f75c42bbccdd6b72e00593fcf897472afebcbbf88dd892bfec2e82db7851b8eef5d812f85ffbe0f6b73dc57fdd5d2c909a3f9cac82cb89733bc0326018d992dbf4cebe52185aaf27b79df40878b1ef5a930da3c1abbb8ae05eb9f9f8fee2d63762c9dbc84669f8efc4c5e93068fff750791ef72e1282206240a2c06a6e637613fb5fe85c20d87884d9a1d236459006a642f1af56a63728e6a5de1c95cdd3805776162afc55efb888bbaf359861ae87162ae6a68e08d3ddb72ef7e59d85308c2882358a001568d1e7b7493415c6ffc9cbb3e0b7e46fe6a55eb33cf39eb539b7aecc824b53cc53c1e9e00befeb091cd3d41a14df9d56cc498563c87c2d4c5b243f0cfddfb3c78fc92fef70f2487c69479162766a6ecf1c0aba4ea1a44d0aa02725e7553d109d2b68d85b7b491629d280792a3811b40a0e1872c94f946af886fbd70b3fe23501676a2f0ad3915b17402e79fcc27438d16892c04ac57e029729b61e801e1bc4eeeddcd491e1ba7b690be1ad202d84fba954c3b8ed6adbfa9e7539f037e56d4453c19c42fe7e6e2afc1706fc5170de0015b9ff41ea45eab3a3bd32a5969c8e66f080e6915b11a01a4c933680c0963ccbfc945ac5ac94488ded4b5edf5342ae119e5188e6f655d930cd0d83c717a866e7daef627a827947f1734a4387ed42602ab1bd51f6c73737f5c92dc2ac382fee28244fd9f6f8880a85fb336601bda5f073a546fcc4ed80621c16aa63ff86b50f3b059c146ece8830adede628358eeaf7cb2395d0c5c89f05daef21bdae4075708ab49a820991bc4801ea36a384a50bbe1cc418b95dfee44a4194c2c385074ab264b07e11a47e618774df9f9b54031d90bdd8d0863bd7905b4d6d41a43741cbc72f4ae35915f2b0aba0051402bbcff00fd0e120814000b02e0fe70a5749080658b0d85e787a21f0f7707520c0c847fc55ac8b4d3bea6e15c9c3ecd3d5173a742b782ef0d28e0aefe95601aab10bd2c4b6dfa971a58343b46c38823e08ca47d0f16f5b99dd6694b6595db934f3a2306d2b7da0074a5a49679c4b062568063c025865b0fb0fefd2a4a5196253aae2fb24c5ec14d24182d430e6c0ea5538b8fd9c02f74df029f29acd4d3d2de77efce5d10ab85edbedf5578d5d98f6abd5d9374465921f066986d27715ee98e467e16db901de3df6bc02d520566160bf6d5596ad27066b06056b7f3829fd5904416481751ff42c5d9d81fd2fc90742c60ab5ec401da9ad87bf7c69874414c657c788d479693b5780c66dabb2e18f435512b3d5b1723de9e981ea7bd6e4a8aa85de7dcbd31a2e984f7e1be09cd72bb9aa9d0c17c11a9817d68b223eea0d6668398c7292a1be7fde55048d997e427e0ab86375f6d0505d4d3b91074f6c2a605a68c6892a6dada1bec3dc405286361f2975b2535dcf269a608d7f724da7f3f80fd3c16787891c8241156e88ecd965f9e3d64272ae2035a8f723227319ccf24f6d29f820be4cf07310c064ae09d67c7daca2c5591e982c5d3f9e249bf8a09dae7391e110e4c7b8056930bffc716b0108b00737e43ada489b3a2d70d38687928def669a59f14dd0bab3536081b0bbf0acd5abd36205114526177f95bac6203ecb3f0f94c3af980a2293c89c545820a4d73bbdaef1c5add0187822700724f7bfee5c9d0df286fdfb37eb73616a8639f7879355aa1a436387b9b6ddbc35afe978f9d9a9ada5d3e2b7301dde0d90c461aa3a93c5690e6deab0801685fb3624442b996ea2c3d2353c4c7b0b4d2f7c0bcc68735241e0653ab439bba103a669f89b8b17a49d6dd5ec14f8ef318766d4b49bee5d9b7b6198765088b64a2f61893a5cda0acd90742dd896d74c949852038f6f7fb150f456b499fccfd48060806e25feecdff61493612148fdd6dee28226a145745d6623dc16f82cf4887a436fdd0ca0f7b119ff83fda5f51dc275c49b3deba30ce7273eed58251bb87eb7312fa94a3856c0ed9d9958057f902af546f1f330ac85a15b05aaa1fb9caa109ee56049ebc31b723f3b5221f839e9f84a35ac62a62756192dc28e0f8213be136ea0abc4a18a10eda591e4ad9875ba9aad4003ced40872932a936ba0cbc0affe205a92d859a6ab87a7ffeb75f2eb47bdd14a17593098b9dcc3d5d51ac62d4867caf9afbb8bc5830c701f5dee6d97da92d896dbccdea89b5766899760c9d5869bd9623c101683f5e28f2308220bcc6bb09aab7698297eb5360726a9c737cba4f3fd674219743dc91dd55776128df4c551e128270951684acd01d17443ac1054da7d75cca5d65aa425e315ac581d7f3884ee1773ee0b0b60f2c6cdb6a043b3b5572c21e7fdcbee229885df93da84758458488235935764759a5dfa2945a537904b0e526fc86af2b4e58ebc4aeebf1a1ee21e4fdca7c9cc15acb978611a33be4972b88cea6da5264c4a8d835e82cbfcf7c172988324ff000065021f870b5c02cf6e56ca5417291641070e0ed14c91b2e83eb1391f6ed1b1b236b8fff0559a5ae9f9baa8d9084214662890cd825f192d5da0fcc72d4cef269bf24499ffe38050e80ab86185edf1b9f99bf9aaba2121e48d15bfcca09d60120449f0fb4df970ba78d11f74d30d7162c40b546735747e145faa989d1a922a7d0f59ee71c964c5919a3ab82770f7043f6fea30c337c3dd907d51c57c458513bcf0272a5c5a7240d4c1f382bff9cbae224fbfdf91c5d07e7f621b3c5422a116182f6c27c3cbc709671fd9515806d275932b33914f80c707e705117b584ac9b802d43e34ecb2c88c26d7b9e27715b40ca2f66ae814825f811a8421fa37eb72c9939d9df2ec5697c3da125d03310fce4b6d9132db76b304564a0d4f3a94a4ca7668cca4251946177e9ebbf2a9360bd6dcbd36c795251f7a19b32be6899c04406c33ebdca7a2bee9c8431bf286d3aa2bb20d461044403e4d8772d5d20c93f56c2f3e50d24aecfc81ea44d78339f0680c59c64a0aa1fba3c9926d451ad79a4b11a81a16aacb6e108e00b076832ff987c8bee44895de3474be7684c3b6c2420de83df5386200f1d8d9db6aed825b01179e2cb2130a80810b865c58996ece690225239bf16f7e6a2d5ccbd80569b5ed32fecc0f45e7c2d4f6782f2a65acc96c24f6b720f5199105c30d1bb39b985d2ed7b5bf16e3856d85a09f7f2db25095b418e1b5a15913d561521b678cb7f616c3053e1a930fb3a41b2530eb54350cfea015c5bfba7e45e645e13a627c0b92de7fb4032a175e8f2b9dc53f00f3117cf681e8dc0d70d5b3527e94dbfdf9ee04b1ae80ee1598ecc4dc14450c0e7fda25b45a839c63ca196e8eabcde26e62afcb01e546f66dfd55aedca880d7f614c3b7bd28653607cd034fe1afbb8b053fff1a145ab0e666cf6b93918998e879f5d65c19a7d01927aa40e08d5f98de2977975c514c5e21b2c9b8afd0ddaa641dbce1816ab809f69f3cb9251fd491770b3a4e22d4754c40ba5a4d48b2846e70c0f259362df0a31bf3e05dbd5764584bad6e877b7269643a9c1a16926ebec162edba6411312fc7644baf0d6154814b08e2f0905c9bd1087f79ef5ae9a4c745cd9d7016b8e1926fa09d4abd892dcfc5bfba6659267cfc15b9f0bdc266e310ea5f0153926c9b11047124ae88ecc3de295ae93f12930fddea576bdca534bf91ba4c482a40e23313a83e5d29af2eb260ee0852fb2d4c6b759ea697ebc8a8084b3ff71f87ee0fcbd54b1dfeec6598198335efbb70d9720f68c5d1d43d4cefc201c68eaa86ac6def5a930dcbdbbfed11cea462868711638ba4b39080859a3a18f786ccd7f036da196b57d7043ac27fe7364a45cc954b33e986acfca7c8069fd4a09d5042040ce82e506e6e3eee7f866c21c19f8d8e10bafa38b2b7b095ce2012cb76bb4c4a706dde6110c91a4c04a7e0ed3a5da9878fdfbf3e774c84ee6f222124a0abab6b103557ae73ed306f0784223c3e988b053f07790f1d0ac4f3bb6e2d27d09811647f532bee928ef82755437bee919a7c7f1f930fbffa3e51b8dcb88f5a90e69cf638d1d973db0ae0830f6fcc93fdcb6abd99edb509f64cf9213ec04ab52b73ae9d0520b402541f27d8a29cccd62e62c5ed4b0da03759880f805233cb43db2059ec046b66b916ea765665344876abb5594df046813e746f3766b00d8220173e99c4072648bd4d4ea503df1eaf8407f1c7add2e26dd2d20c68d263722bd0e3e5a49789d756240797523d325cc713687ce71a2fdf5b04f91f2794da945e1039c89dacb039bc25b950681d16ebe58b3314feaa5691f1c468b532a3bd1b9f0d3b5b412a04a9af5a2a7438613634d93cc9f3928827d854072d47bc9582353f8866371e34350662b4e428c2b8810eb96322d260ccef923312ae8185b052336e611a4f1bc89e088dcee06ab18870552d7c7c8c5be124667f3193521a9ee416053d3be6824c3830e782d2060d73caadc937e04c2da83b38d702b53bad7bb0a48d398a0b7e5ed166845383387cc6f516959dec06d2d4e1a1da6ce728cb15690d834334a0e44784c96ffa10bbab52733d5f31e5bd852df0c7631708d5dd3f0e9481b483ab76b56bc6f82b5577d0e6c36e856bc0996aea4025a1ee6e8e2216ef981ca1f586e8e1604d94944f9d1b2af52612a21220ef85cb20711f4acdee026f42bf4b5b8c309ec0e5574bf9133af2f0863cc53c957d77bbc568be24320dae5ad5678937679f2696e411e19e6d116e87c14da91e159ed6c5d1afe00eb3b00b9373761a105a43a1bf044bf8ae8861eaee6ba9955d9bc972295d7467897649c430d71ab14b4337edbff02b784cb2794b166b89b553bc2e804531ff02fc756aa6fe20de9bd53a82fc2f035d0c3ae057c7247af1ef37e5c12c7cc30ae949ada8c5389c068e897fa5ad33c0cf41fbf16cd0049ca981b1e2a10d4e23c0b132b2e883b1c8fda058a537119bd8ec144719f91275c8bf496a474f16921046a9e699c7bf4fac22e160c11a57a18b8e3c42fdd9de77bbc56c27bfc97861a80ee653ef329bddbe9a8c9ceed3cb8821b124c19a3ff06d6c55b79b478613d359957325d37f2594c1f474addcdd5326d782b28207e73e4fdacefc6616c220f8f901bac509bf72b5ee70a4a0d948430c34ba5a2771f2e591ca61d4756d994ede7960f20a62d5e4ac3b9c48e280b423c3750dcee1007fd89c0f37473204c91198cba061eead9addd4851eeec0dd22d37aa7d94aac5881a07384bb8777afcda13bfef226384742528817dfc4c542b1ea0aa22d951a1eb75531ffa27bcab2bbab6caff31a87507dd04e131767c0edfd5214cee02b98d7e51c0f0d77702df0291edb7e37edf823e888daecec9ef70a1dd0245d14c4dc48efff028dc45b5dd66a22ae7dfe5ccb46129eac94ee1d2c83fd3c8e6a17240e5da99e12eb64ac2e6f3351cf5b75269f81f7f3c315703ad98e8320888007a27341ddad911a8db31b3ac868a0d46ccf9758891faf688381e8fae512634e7426f1d9b8733557a1ea77e24ae114539db7aba6d21f4e8975372ac6b1597e9e6a7586937d2fb6b0151a36643e97f3b0801927aa60d8794e2ac58a009043300bfb2d4c37c969b07693650c3168a80f95727962db0679a2ee3c765e228e2e34378263163e1e262d25e1095b72b94239aa5ca8bb47371111fb85dc0cfbe18132a224e56276c8ee9b5273f34ae10665686a1d7cfc7a8e5daa6e16cb10ac1906eaced9f4f4eaaea2e1a1da51e1f2d65493b50bae7450883699cf89f1b80b7507ab2478075665c8d8a27f471702ff72ceac28e6c303a4838865030b245104a8c4d98941719177234433d313b336096009d6c034cdf9f777acf25edd9134234acd4eb776bf1f12ab147353878468cb9cddd83edc5fcaa212d672ec9e7b4a467d07cdad04bacbb30517b1972a35bbf2b9229bf21a3bc9b24ea4ee6e5b994d17175cebb5ab96911dea9d7912673c52d606bfba9c4fa8d3f43eea9322237c2c354dc3c1f325245e29483dcb795375557a037c5c9c80c5153f9eac72e5628a20881b4685936d20712f66c0da730859364a58639650bfb8e7b74b08a1e930022b354ff119827ebd3e07fe3830c5690420bec141ea5d52aab29b4ea00f6ec855cc4e1d19a1db962b318ebdbdaf84a5f5006d90c0b19d61e7559a0ee573b7615c8c5b5666c3829a67559e58a167f30e671b743d1b3416cf4b0090447024ae936b0fd14e5683ed8ccdae63fa1ca9d49b4784ebc4eaeed2c5c4df6f97dcaedc73db0b79dc023f250b7f8dd86780c5fdbdb2936bb42f6a315275a74daf77da8dba676d0e5cb264b262017145adf02e4d58246346b67382e6f0194ba2719d3ec0ec8db2d959592491388d8f00d0c6f06ddf889c24e165a3d9c8a537109fa6219f2c9c445d2b2f56ad5d5de3491218f55eb7310e8e106f0da57a9be749b90b9b49480ea862c900cc4e8b352abd9e6c2cce4ebd292a5b32a61b6e1deb68b03acb6ff66516dcb9745bf6b6559e6d07a86b0cf020e0a278ea9e74dbd59dc8684f723f066b645d4c81e64ef378ea8f9a2ff59a2dd2d4c3cde149a769b274c168007dbc50741bff44bd9a5fd95124fb25dd4cea07a9b73aaf19df88253bad7f761b1ee2c87b7124d1d0877c1b1f0882d881de7751b8aea455dad453d74e420b61bd1f2d0ac222399a02d59242886408516a3ee15bef335fe55887e9c360b230f79bd69ed00618ee60bc5a9fd5f4da9e623f107eb39287876a3f4e2877336c86a6d6925c674a9299eab655d93035f06c74129f3da57a91d4be86003259076ba239f29644a888ad69e21299f0103b64575ac9bb8122806db0becc37f6dad994d3c41c6938ff3ed366ca706a2128815111a42c9dac8081c5027c7ca38bb03e3b4f5201334d945487c4fd2979135f9cae225a6b4c445abdb36620beee4a354f6590ef1389e9409c60c415c48f54a9b978919355b016fa5180ca6f617a8b5bfdac37515f56e21925b369c50267c45ea92ca1999bd6fe7caa9a7814d07e4143861bdd849613cb27cd20d7d8c19bc28ed8df82d470db39ffde0e8929506aae775898c05a435d6b808e0c5296044ece4ab972696654ba3bab205dd669d8f1ccd6021e47351e585cc95b1c6b014756a491288951dc1eb029d5ede28edfda6921fe7e613a1e6b7c262d1ea408941e3afe9940964bafbbdd1061e8a86b0d2cd6c4a5dfc80eb592375fd348ba0614bcccb7d2eca62129f2f1658c17613118acf9922fb91682200c96c2c26f519a1b0f285864c1942dce5efbecb642e8b98b45d999ba69a632f85ac95f096833596085084377a683a3ef9152226f609dfed9e1f2977614deba2aeb62560b60560ab4e4c9cd05ab331a3a3996c33093c2d4cc822b693a8b7450a4ed6697f394d5da75ed32223cc4a5b20490ddba20e23926cee324e65dbaf67c997b6781a5bc1bbf882b0443c04d516413e7a7539e4594b05c19bfddc0eb91c576672e748e47286a217b8230b9c8562c1d4433c2d9b367bb82e5b85e218a0220061ca57a1bdf263213ae139c2d69f0f280d61a12a2a9d6cb47fd3cb78d4c2e53b943b095d47c2af058385c4adc18647d41a13f9244761cc29ea4f10fd19c12d511f8f47039356c16b9f96c95def4c5910ae6e2c5b6eae62549fb50b1a08049b030e1b35b427726953e946ad9ec1f62603108e3c0cd2bb3be3a56f9f86652e16b38ab17333be592c87458d61de4305e75134374e75f77170d99af61398727afc8944cceec113752a73b658a67619bff3948aa9f3cc19dda68732e094517389aa6d6185884384f21e0bd45a463bab2dc3ebbbd001ecdf71ceea324d23c487da3680ba0aadd7411156cb5edf2cfb7b183ac68ec79cb19b07eb92c92ec1d1fe67353e9b6adb835116e23b01004114072702949b23b377fd36ab4b2d23f028716520b2c505a08b132528e09f65d91ddd071014d13e1187eb54843422fc9ec33871460ba312a6b4a6cb1ff991a6d9dc1bb7ae531d94dc4d99826cf84af7555081246a10b69a1a546b964fbe9f506b8409874784aafdf4f6378bf3dceabb8be394eb4d6c3dc5acb111664caa97cec8084864fbd279786c24e700a71e9bf65a540c0e8792c156d34073ecc11eef3feb59bada4848a54ca3e103ff08269f9728eb1a479d73817cb4bad26a609d00f3c8fef6a9a28268423768641aa36076b04f1bc0bd5d2c183028e9713cf28d97b58d36e629967ca5b85932cb13249193cc558baba9668eb59643a0df24d13f765521941a9f90d7769bca44a3dcb0ac893e942c0535b0ae08a88f29f9d0a2bbedfaccff920be0cc69c72af2ac3c2ca6e6e5235ab54029770c38a2c37158765194437583df2f1e86646e660cdbfe55c28edfc44dfd5db9debd4c0d8054334a7e53f388544b3dee5228d15fc1cee4634875fe24cea5af39828af515a5d07cbf8c7d39813341d0aed6567bb19ac0159f909570990c5306b612cb76f008220dd247b0699746483d4fe4517a1d73a4c919d16eb449a0ea5415427c84a0a16a8868549f86c8821d9f694309d39d9a9a6d182adcff15531e3e74071eb154bd2c9164f804a32d095646d0d54c3cc22fb559b7359682d971fcecdd4cf5c6c8372c5335bc8a4f0cf048f33009004cb01c41a932e67161370df3ab23a9ee3c28023e61dbafff59ab3cfe1d2342eaf1e9668ee9a6519ee6d11c52db6e800814e205b9c812455b56c5268c6cb3b0b07895cb2d7d2a89ffba3b9a27ec6d2442292a59424b98ba6e7127815feeb60199c51b648c4122d0924b94b2e1c89046e28893d47bcd861757e57baddbe14b023bf1954d0505a9977b3731e957fd0f8177e87f6485a38e676afeae85dbd8ca8e8f92eea9b784dc0991a582ab2f0f67c5101351e1a0c1666e42cf5305289199f79525c32fe44dd2ade728e05fbf114115ab221488cbfc797bada7b85de46eae805aa351c83c35fa96b8d5897d26c3f2437294f6348f267a55a900ce17415c9ccccef76022270387d333d0d134390ff7188837a905a32a991237aa36508ad6f1eda531789f8e3054b7b6a696b8961e4b2c8f47691cf86189a494cfda0f3084092ed07a93f3fccbbe6f5882736e7b3e1a25a240fb6e692fd889b39320ffc0cabec20f58b1cfa93ec442ca679568b797722269392949ad5e91e87fe3518ccacd844918723e14d519ee9cf5fad218130f3929c3cdf4810048780594c0480fa6e1739f0ed24d2c2528343845602b2c5490b24713675e2920c92dcd5b96217314d04a9793cc34d16eb98053a4588f6b8db0c7e76406ef9518f3841e0e7535bb86a047c4203495e970bd5594245d4b5cb841b67262b2dfce4618d12c68d51591786e9606963702893f7c28e427e07daee1e07f857bc0a6f9c48c3314e547850e18b93ea76137c39f40b715a5d1ef21a3b59a04a1ddf82a287aec9344a5ad6bfd40e53830b9d6baafe6d7731ff237874633e9c5132574963a7996d5eb4710ccbb7d09688cbcd6ca623a46ce765bcb48388d5579d9d04761790bde3cbb813ec1cb38d0358890c413ce3115a11db7d5259c6f413c4b77c748f914d556380b142b2d8fd3a5a06eb06be841553f7d37428ce7b822fd0984a9edd25afe81a4bb3c7fb8bc640a2d994eaa75cd7e0b643126c06b9ab7e6bc760b64e5ce2c1845ba5379138bb00b5171b529a5ab25f7c5184cea3cf8220b9767926d59f5c1b4f1d662bcbdb905aed640420e55395eab972064092bd4a2a1256004d9ba0be55940e652129a2aa765f42c54e0949c9488c36a9ce496effb2ab08ae7706478a898a56e388702d88cc6cb93007063c820b68e124813bfa155474ed96abf9fbcc56ea192597b184ddc3e7b609ef616387856599765f9d4d12b3b58b05236c7088d47889a6b4e54f22475d2235911a2f5ca4bafc888d547da8b44f8a4d1c2fd7936ee5aff274e1d34d3314c12d1db3208d33a29cd16eb45e4e3bfe090e07956e6a941e4ab3460bb63cee7021b4246101d79b4489acbb99bd37487dc5920c9e48fc61d4d4298ed25d444b18dfbd96cb360bdf007d4150a291c5ce4c88e4752afe96baa93c14cdeb1b802008e3729ac28227d6de60b28ea659e8d94603a94218a8fea354b180ef48091bf922358c476248e121a5b34de3adbd2530107d239560d92790e570b0465c106a4a2cd970fc58ae9a7c37091b21fb5f3c89703d557791746fee4a6edb942379b464f0c8085d855caa7f47bababaaea3ea2ebe98cbb385acbe832476676ea22512b64b25da72e459226034dfcaa543f93fba3b2fceb7f39f83241dca1b7ce9618965385818fdd1cda2f682d4e2307031956d367557c4976163164d9d21766485591b66ba34b94db1bba967946cb2b83fd27b28165df08eb15ac63c4d15f3d006b241ef5833cb237547b465806ac87cadb860340fb440aafa885c4093d7b080a9ad9ea76a61ea0e463fcfd49dc9d6f153aab9dc24e8a258e3b74868d4ba64111975e339565e2d460b89a40e94ae2ac2e938d14d1cad2d43a92f744ea3f07b683895fa125123c52c4bab1f4413b96c70ee65c1c9a44bf2abbb7bd6926d028f3234220862b1768da156ac12bef52cabc5c3e64a62ca0b527f24258448f18b60cd9fe4ca43335875c8fdce63d7bf5c9441f7153455b25abcd9f1480cd93e9b9f2aeff9c36a471e2b979f89f4669ae322883795f1c3a4cea6740120599a3acccc435e3c2cbbc1cad49d52b39e2fcbc1f3344181a09ab9d1d235919648c8950b229eb484a44d5e25e718c6ecb7e27c3b2c1dca4f1c553bbbc956174980267e4b59eab9e46a79bd0db714d4b222447b52149d2ac9edab89d39dc0f8c6d20a81e8aa33b853dd264bd7a5b6401299735d45534f8b9debe027348bb8376e6fc013b4c4bca34b2adb99fd7702d7b6201b1f6ee433da8ba189f2349ba5ec4e3ee186a84c783f392d698e14b71899df5da5272671a3b98b146e56721575edee09c1104436c19b333a82e423e5f13a2b6b33b2842a9255cfd872e9058e4d734d6d3b2c674685eb8ca21452c964f9c095ba7364781adb22513bd74cd946f3054de04b084072b307913b5fd88b881804f91fa4a0b9f3425af892ff234cd584a5d67e00122e501d2ee5026d4b00c2a1ee92682e32c5bc54c1cfc368a554af272959eea0a69b25a2842db7934d10b5acc35b4ba76564b80e0640574902055c4f62be34911cf96132ea3b993ccb954b19e70a96c3792bdf8462874455f055e6d51b6d1ee6825c1ca5ad46129fc893ca2340ed267bb69d7bc99a5dbd5474d3c8de5f1057b2dcd88216f276f9abc4d91be087d0da52bec747fcee941a71d95631c42790160816545eb66f8ab9ff38bc572c8987412ee09464180ed69c10dd435af95df3bcb7e1486369ee20473311099f09d63c2b95b15c0ca9301bac0996f32d74c56354b77b5a418f93860e33d97af057358aa2c0e4e962851bb8cabc3a428a79056b5c659b718414d8258f5e95ee5c9c4b55d33e846e92f29c8e54e80b52bbcaa4f49f43659cc9ee681a1ccd18290b7053072dbb13acd9e87625084bb38bc275a0eee095a8704e3a74b44ccfaa7ec836a39b2df38335f7f2b9f9210862e7109d8c3cdac76176f54b22d31f8dc98789403203d5d7c72a41318a5dbec59022682422af48f0f3ac864e98228787ea7a93c4c01530600ea6e5d56a443ed24cddc99659d7d61960c8bd603eafa3ef139bf28784681f15a517107313ad00fe2a77167731f7aecd85b6795a93f1f53dc58343b4925e94021ed9984f33e309f7774ed2120943e5ee0915304459b937179b2c5d9751159728f2b11f11a6839b295ba1b28b4437a4d10cb4c2e92cadae1d5edd898b334c3cf950babbef5c9d0367e4b124b3d29cefef179a0a99494dd657f0041581132285452e048012b888d697a912edbfff85565af9ef216f0cbf441b041203a33d857837ab6e10ac19b7407e278ef9478d8ef0725318f8d9b6a9ed5999154ee6d262d6b202db1577adc98141e31db9882101afec28846e753f87cfd8fd74247c5294bb80965a96cf90c3a095fb48866ac9df3275c7b3e82695bf949adf6e94fe9e67b791a2b7e2eacf76886d7f760ac9e90d4f734986d5b99755eacdb4c8ac665f918c0b07a95de2afe2dc954610c41192be2048fd3bb91c5c02262c4a87319cace082a4739692d559a07a50b0c4ce91239f1d2259561441129314000212548afba4acdd3478708a4302f969472bdd17033598adac22fcb35295641f89c9075d2a9bf66d573e713eb9349237ec6b15cd4e0cb72bc7edae25c97daa545f14a6e3c914ea0a167400b72ec3adfe7937ae748b83316a0f0d6483a776dcedbe15d97a0b520f9eafcd6d127ef9725d3d4f305d12750c835be75e59358308a4ed69722e9150da4ad2a4c0912867fa7b607d2e3ccab10b7466d18962729a49a656be9aec40100803e2902063eb83f790583c22d24ca2eac034c38f5a561fd23213eabbe5442011d2c1d2853e99c173a12848eaedbd25eefd06db4dd631b4648ca09e6c75bb89ecc4056b0293dd19a0b6e436d1680e95a43f3f27e56d26161d299b05fdf5d862c78a1553624bf46ea348e08eb17c2f5e376f6e520d4b1fed7ebdf997ddc5874ace4a912d3493365c94fbdc8c249778901a5e30f1703a2f898852ce9802e6d0e2aac2d7b463159c25575edb43a2743f7091be1beec050da07c72f4a5baaad6feab47498ad9d166b59abd1ff4c0d33e09fae6cdf9e4f7a99e4e9ee8fce8365a0fbb524bc90c40f13cbcb2288577c425358fc23c1b3fa7d2b690de8710bd240e6b9ca597addf24c18ac4063ac90127805cdc63f6e2b64e39e787b94415cf7e916de94d8e236a3e82c5d5d47cada1edc90078b44fb066e25cc0e7353e16b3f3d5451263511c31a70127558ba2c32bd4bca3cf2e9a17258a1c3d2d2717fa4cd6899babf54ef70a564a857aa1fe7b0c5d9b97c71c6f0502d9c57552331ce836c20d576689ad0fdbd5ea84e5a42923f8c5d90962825d58e96b7ddb12a47f173ca7f9c9359ddb62a8b0927c91cf2b506f3bbfb88b322a9d29e21b173fde511226064abeeb202e2b2765d758d8139aa09a419b40d66ff5134e7edf4135592bb6cf094af5c4ab2a0c044932ee55ece22a39f960a0872c5f0302d3cbeab97654a8645c08bf7f8e67cb6a52ede2ded264110f0b6ab7f3a29b3f14d6679a9401201ab321a5d99a188e34490303001a65ac59cd40be66bbf395e592f95421634cf785aec5e72c2655541878448bb4a9a2c5656a90d7aeb27dc697b5dc1c29ae0258cd44a8488c268b32eb3f1b2c5e9d0ebbfe871c85c9e56aff829d96f51fa224d9db8ca9bc5da353fb5964531bfbaabc8eb86c11a01863b7807e0443a29a9066fddcd2bb3a15bcd70766f98bc9c742bd0fc92ae08f038488417c9b7acde2015e3f3165d324ce54b33ce0655575bdb242022908c306b339d9e63c0991ac19873ef3a12c82099119471aa520fab6ff26d012a78ee30d40f0fd5c14381d7ec9eb5396c5df91f961f699f44cbf7d31de42121da3fef2e962c39b4bfa8f5d248921e07ee9ea40f218220eef9c3e602e8a14aee24fc7660f68421cb4d59a52abd6974441a2b7e7dd5d28c5776164d3f51f9ddf1ca37f796dcb5269b14ac0f520f0ad1badf0325b3464f16fdc737e57f7ea4fcdbe395ff3d54fe87cdf96484072117a4feeaa8d350b64c574fc6197f15ccfea0fa60110a2785534303ae5996c986a3fbd6e5ea5d88d272ea963c224c07c2e085ed45d38f57fe8124c7d329669e7134854dd95b0c5f251951e28adcc64e964f1514ef6fd6e77e7ab81c262338feef68c5831b722fa00996e1a447b8abf3b821aba18354dca06570ef5d9b039215067cb80fafc7165fbd2c830a60b5d81453d66a624e95f0d4607807e51faeae03713eed68c5c31bf358090f18905de5f420411081eaefe48a1c11d7ee20f5139b6404cc9a8c06f836412d8c6e128847c421cc202493cfec14986d7fbd2ef713870b248659eaba76d5d24c57a55a896922d0b36c8aa09307d1fb094feac1e8dc2f8f56c0aa041edf6787cb1f88ce25ef7980ead2c87457611a9368e8508c5c88ee2b3b89c2ff542eb319bb87e2f4b69d162bdbc982d758f0ab80a46ae66f0f2ff33d6b72dedd57f21dbd637fdc5a3089c6c2c0af1e8d7169c3bf8f66485604696e8ccafa7b5c69e0999aa8f486ef132b9fd95a4092fb9193aa67f1c5b9c84232b6d15e7ff5d28c97769071037afd8707caa0d78c8a2012024603c7f01f93b5ebc3f832f29179aad1113a783a1f2594c1a5c172e3c92d051358f302541ff30586b8c1deade07143633e3f5cf1cd3132b6fc657731b987d0ad82350b45a960f29b3ad936fae0f95ae88c307c2d54d7c130f57f472a1e89a18937035423c2b4a067244f4a8cb1416a1ecf3de0e6a82cb80feb5c97a2b86a59068c4270c0700a77f5a59d85e4fecc3c23a8d446122904cabbb66ecc6e7c675fc9139bf37fbb210fba3facb61c17c557d0e02957effc5c7821fd5574d33fede59d4530d443d7069df96e5cc98df42ae0693eb5391f851d827807499e19acd9eb798517e676fbc46677737487d9fafefe523227d2f51de9cb749865d2eb83f8b27a0ef7e68492d607a2f314f352c967e1bf73e9313be59ae599b0466e91da8e3159ac205d48ca0bf8cb792adb47e008503f1a93bf472ee1d8b1723d5936b2d6ce21e7050d2cd8e5248923823dae7ba83759de8fa737045a35cfe172e6a6c248e8abc991d166b4bc4f1309d2fba6b2df3718ccbf3a5629610ba598acd6ff1c2c2769c1442d04e932ed6865a768cfd1ce6f68b53549fb83232f6d2f0455ffb95c860d987ae025797e7b91e0e75f5261c312266fc86e7c004eeaeff088e7914776c38aaca53a77ab0652412f58b384239b8d23b5ed6666c5b2dd1cfb49e7a45ebf22d3dfedfc0b53d805a1baa44a99105d62330991afcefce20ee97bc86ad0c3bba4977abead46cb8c139593576491c7eaf064a99742a1ec4e7740722dd9296337d9e1e32077e1adaef424038f2c61aa5ae275394f2578b8bf5e97e3cad45fd262fcefa10aa255e6385d1d2c2441f3677995a1454c638719d6a74c0c3b0e479744a6c31bdb6196ee1dd0adfebebf942cee446fcec4c519208adc7829dc401d7177e7cb0fd1c4ba1849b63225770718956d26123fe5df7363e7a4c25a5b5084a5de60260eab219a1cbe048f92801206c13f2c546b705d0dfc48a99eac1a58639c066a15acdd5cc95d0441ce1db21b3ad66735c6e4346dcc6eda96db2c9b3143124d8d21b9aafd4c55bbe45e9b9b53c347922af59ece3e0d1de65395fabe88e9e8a65ef1074b5ba3b39ab6e636ab6bda25f7267c457e5327dc81647ab49b79b37555eacda072e179412353abdbbda819da473cb199244c9e7dda4909c31bc5ae515d63e8877d9c8226e321faf8b6e436eb6abd2c7c3cb064d17e71a64a2f0e2c720f48c4c4723df465b8fcd39e772b8f68e9b49ca9248f35a9aabd80bb2782c8813e055707224772f5e713ecaf5c7275bb386d882bcada4c47cbda6005043dabaf3bbe1be01641a77665d9f609645748294c9ae40a4dad61677e0bbc51f1c5ad9c39c311044190f389ebe9c6ebc63e4b898620482f894a6b600553c46e900882200822a0d362bd2c92a5e2e74afe8f20886f91cd05bd445b3f884abb851acf3c1f10044190ff4d0a9a8d236870c72f6f2b14417ef9b41aad20dbae5892f1e5d18ae4aaf6861ec76983d95ad8dcb932bd8178b406929826df7a1123088220e731a4e2c33c1567967b04417c4b53a7e5e9ad0524448e7443d545e1bacb17a783d8bb78615a4fb451eaf5cbb324532a210882208824a72af5efc6957c7ba24f2a552108c283d1d2b533bf79dad18a67b716dcb93ae7f655d9bfdd98fb466cb132a5b6af6322fe1f771783740a656e6473747265616d0a656e646f626a0a372030206f626a0a3c3c2f436f6c6f7253706163652f4465766963655247422f537562747970652f496d6167652f4865696768742037302f46696c7465722f4443544465636f64652f547970652f584f626a6563742f5769647468203139342f42697473506572436f6d706f6e656e7420382f4c656e67746820353432313e3e73747265616d0affd8ffe000104a46494600010101004800480000ffdb00430001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101ffdb00430101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101ffc2001108004600c203011100021101031101ffc4001d000100020300030100000000000000000000060704050801020903ffc40014010100000000000000000000000000000000ffda000c03010002100310000001fbf80000000000000000000000000000c2334000000000d794b17c800000e7805f26702b437e4b0000028c310a0cec62687a1864509d02892306e0e8500e622e826a53a5c4002ad3d8f97e7d5b29237c7419cb6454ece3c94916c1469cba5b85a05165fa4548791a23074f17e18c631cb27469c884308d1b429b3eba1ba21a5687e85a254c59c7e0629a226c6b0dc9a9276698a38fc093175835c73d1559dce7b9e01e400000000000018a641ec0000000000000000000000000000000ffc40026100003000202010206030000000000000004050603070102001011141517203050121640ffda0008010100010502fd365207c1cfe528b141c03ecf82318fe06544d1eb0edaba4338a361f861fd2cdbf6411e84acc6a3fbdf52b2f9987af147722c6fe449b5474682985f39e78ebc0c48c68c91f86fb9f4b5358f7ec1512b542ff6e7aa49f5dcddb8fa5f378fbe19df2f9a1a8e4fecb2707239f56a469343a1585a55eb09f9e512eaa842c0a7623ed97393acbcd3c6e3e7594cd0aa9603d2be52669f302084b03da5931f68c3764b2619db6e20449ba0d8204c97b27bd1d5ca8ee338b6dafaff000d7e0babd9d2e7d5b4be346b2872dd55a5efd92d4f993162cdc182e3384d22a039e8170f134f06665b3a43a27533b3a1b554bed362921749b3c465745d2c7eb55c2fc0aff1da5c0f05ed9764adec9a61a666ca12aa42299ac644de154fa84b86812fcf82ed382f6a15512b121e9922b9f57de694f3e364eadf02866514c0fe1e08ec84efaf3dfce9ac96ff0024faea2d11de859588217ea575c7d6eedd3d5c9f5e3db8ff002e6c3849c3c71c75e3f55fffc40014110100000000000000000000000000000070ffda0008010301013f0161ffc40014110100000000000000000000000000000070ffda0008010201013f0161ffc4003910000203000103020305050509000000000304010205061112130014152122071031324116232430612034425051254043444562728183ffda0008010100063f02ff00261c1ce10c9af020c14b41c9493f80c7df31df79fd2b5eb6fe9fce234eb2ba6a86bde665a30d700ab1f8d8862daa3a57fadad11e96cb539367b2d3acd1352e0f7054196c96ec12a1d6a06d94460c4fdd003573c862cd442adc96ad67f90df1ae117154e91656e41cb4e186b2f8e963a7973910dba076b93c567fb8f77b0c79e86dabc93c392f3f47d09d7d3d2cf6b3dbe47b77f8b720b51c0f84a40bee56fec66bf2b8019c34d256f5afb55434ac5200bc5ee5f00441f2167b8a4f15229de4b7f8af6e9dd79fd6d333f7f2adca1bdb5f1f8eed698d8f141fc25473996464f05be93cd2e3acc06df22cfd13f8fac6758b77b0de567347bf6c0fb8c7502525bb222229d6f699ed8888afe111fc88e2fc4535b47917846d68b8ff009a3078ba269e816b66ebcd4cd3edc77db2b014209c7ea3230c319b9f5f7dea9a7ca0a6e69b51d96877905047453bd63fe8d815ac636452b336ec2015be8da263dde8b77af93d6570f73752433388bc8722e4f6faef05d64fb99e33c74755e8598f68e0c5c875cb35a8928cfca4ac4f2681a80b3bc7b6737695a5fc44366b806ea12fe3e13f86f69017a7cfc458a13a7cfb7a7dd36b4c56b5899b4cfca2223e73333fa4447a0389b016d468236156962d0cbb0b9a90409c061cd86511476adc64a5a697acc5ab3313eb6614a1a9f04dc7b01af356b5ef710a2f735c5db6b750cfb8a765addb69e93f4c47499fbb0f8b63b97cdd1e58f30a1b505fdeb2b0d04caeed3e84f4b56ba7615419b9a5bd6d451dd103d7a16aac8894e31f675c718e443c4aca1db9850a5c7738a0b44180ef25d0bfb765f825ef77e887c6757dd4989a22ab17bde51af31e34a63666938be6afb391bd6de492d076f50a0bed54d8f88c678b41bbd1155e089d53df1965da22bee057bfdfcc873d3a379719df3fcbfed36d6cefabfedfe27eafe9d7d608491d082c5cb1923af5e97a220ada3afcfafce27e7d7e7f76a6ce792c33e54e7e85e6b51dbb92534d33690660b4256287cea34025bb7be8325ae2b50b5a5ebfd869aca0818d860e864e30599e8b5b5b65f5b2d0bb3f58e6caae76ead343a12852ae028c33e6b53d375ab37619a8dbd5d7d8729e467575257ee7359ea8e69dd72f86915583230aaa0819e9d42aacb8c78bc7f25bd1cf4ceff2036ff39626d2ca3997d962a2c5e250cdd892ee394f34cbe68ba3c6d59834435a044c155b1b113a248ab1f2ac4dae6396f3dc66dc649363baf3449b19b759215968f7b98c4bded33eb81eee78c0b37c899dae29bde11450bac8471fd2e439e56e6b35f31321dc2e8b18b52117068ba215e94609176339c1eb1a9996ce8e43a896710f8fc62bad6a573c9bba13618d7a9bc82312ab436649328f43404aa17ab33eb8741d917941809d8bde5ac1216b1580a6c9ab6b770aadd179b53bbe99b54941cdbc73ebed6b90ee332962e5fda3ec98eddc64b760a72f8d06f3021d6c4bff001c42047d959927d3688fabefc3a6f91b11c6cbc9e77b2d4772ccfd1f40a4d5c62dd1304aca3a19e85eef2bdd1e40293f556b178b2d9f9ca2e8a29868ba89a811aeb2c01c76d04000ab518c758f945695888f5a397d2b77b91991e378e09edef2ebec3625d420eb6fcdf0ff00de6b1ad5f9814cf61afa6a09b4724654e6f9187a38bbbb985c6f8825993be1d3630751c4687e66d810734910720f6f5a069984cba64aa50bd2de91afe1a71edccccaf8835c8304fc8459cebff08f12c9fb30379d53d9270ef6fdb5b413c4cec541061b7f40dff0015b1bd7184347179219ee5907ae6ad97991a44ab8aa52fb28310063bc6c056a1096b452cbc50452d8d510897ace7b9c77f67f8f3dc938428ec6ae8089bfa0a33ccf007602ea631d94f2e84ee8f332dea1cf507943f0ea1af528b93e534cd6b8d9fc478c6e2f4b78041ce93bdcad3d09efeda4d465165284fde92d41f8addbe3accf5018dabc68cc6b2b1b39f938ed5d87b2f34ddb7023ab6f21c4c6805522e57ce2f6751b6632744a46b55a3f2dc7b29b8d65593dee35adc956ca62dc6f2357da3491167f4a224d5a2ee7455bd14d27b3731afdde834b58658a7d9b11de5aaac2e739342f93278ca7494b43f676bc84202cea686b7b8a309afa3043d2013070066828a1ad03e178fce39d6fbfc7df9e437cea22b65f1dafed30039e4cdcf2bb9ca412c63e47ed01d098b85c19112dd43d4fdb6a9387acc38f65578e8b697979e6b4dcc7bd1ef87c24c3ced9870ebe957b98cff7ad94f5b67e8d296b02b4a87d454c3196b5208b5a9295bc54a1254a12445a2620822d28515ff35095adeb316889f4d246eef0b8b9d52f64f4b78d81d857ed9e93d2ddb69e93d27a4fe9e85c791a1e8be0f25e71914867b6c79aa1ccb7002b14c3881324b02a29b9c35a8ef7ee8ad29db34adb4373511c94e9ff0030fb225a96b74eb031f92d12635bf0180517312dd2a3a5ad311ebf6f3178f8a80c243513e0b93c8fdde7b6d99f05ada9cbb5336b4aba0f74048189c67109edb42c0d175fd32670dca0952839a730e5abe8737a39b7cbf1d1f81a14f88f235283d245b3df1dcd23f8138065f84afd80baead140068010e9570bca39cf2aca6b27419c8e27a02f82915d3c3cc2173467d7e35a5857b12c43284606f36cc68e828cae5a302ad2ac3598dfda45b8e6ea38fc3b238ba1c7d35debe59cf90ce95d5d9dd49e39b3b534d6534da5553cafe10fb93180b2c6edb47daf710171b0e970ad573637b03489c90153e0a3e0cf6aa07556456719845f47cb923099b31c55a2ae956e905b208f92e5f669aaaf94969b909edc34179096b4dad6bdfb3bad6b5ad3333333333f708053b499d46c2fe7e8237a0ddcf797efa8d95e4a3302d3222997305801d665539d66024096f5990511e2bcac3311e07efa6ff136e9d2bf83c8d72f922a79ebd3f89498562df3e99e28e9e97e51cc9d4f4775309c38f9d98220f038cd1ca409c9cd9663dee8e9b818f6ed6dbd0124ade4590432d665c0b574b1d1067a8471d7ecbaf13517bbd168aeba68af59ed93b462966b5e94acdba52b5ac45632e0aabe3f82ed6def65ca9b3aa81117f90dd82eb7b53a4d81802ec95b62f55c25a517924d56f10fe8f500ce53c74834b11263b2e9a0f21f6f26f70f19963c921ea29b797acd2d689fcd6eaba52c4af40ece06b5e629e4f2c61eda1b3edba77d3b619b230192759f1f7f7f65fa76cbbbf6bf93e2580af1fd1ce3042551a5d175e7132dbbebdfdd4f8ae900c29ef0b0338fbab1218efab394e6ca280cac9c1c701a65a71b58ce77cb12be5c474106c4210f446a5f872ec5ec55940dbd2f8d90a513cc57cfe1562e53447b9395a62d72317298b73b07318b7292f721097b5a6667d71aa8832a0789b30c62aeacc0c00edc77f0a8bda9db6ee5a88689ab51c4d662f40dbbba526b62e66c22be8226ecb5d7669df5f20ad0409873f2b858012b52aec06d43ae5ad4a125095ada0cb61e7091a326f70d13bccc34e1fa76f99d75b21dc70b1588a548c9cb6ad2229598ac74fb8a935e7f09bb7ba566da458acd2f5252c26d132ed02f5bd6b31709a96f97e3d3afab543ce7ed1161cfe5a5392c31e3ff00c4cfa2e336ff00ea724cfebd7d0ecd728fb4376b58b41025e77c89503336fc6c7165b99f5ebd7eafdd78ab36999b567d46a2182bcead7f26ae899cdad517fac874b6587dd0cdbfc7223d649f2ef9b748fbd970fdfe0500564de31dcd7f1029625fb042ad884b76d67b463adaf79fa6b1333e8646f82fda4a832c5ad5b4714269cf65667eab8f09bd530bba23bab428e849898fa3acf4f5c87896027c99ee43c872cd90867978572e43c67d38852ad38ce9e1aa8a2aa5e6f78c32db0210841b5bba6dd22623af5e9111d7fd7faffeff00dd8abb0219d738ee2380d4a9426112b35208a3bc4d083bd666b7a5a26b6accc4c74f515ac4444474888f944447e1111fa447f95fffc4002210010003000300010403000000000000000100112110314130205051614071e1ffda0008010100013f21fb375ad785315fe733cf9897c5d00e6abd31f985750dc6d0c043f0b811b93d72fc9a3ed505ca5579220f473b38e1a08ec6d583ff00bdcc39ea4afde4d8434041aa7fb11184b2ced8540af81fd080e742448ba52908fad5f0bb2718e01c35e61d1ac85744140333fd2d453a0862b0787fa0583ec9802ab81b0d75f055866169ca67ba2b7441662dbd799335e09ab6a6918342adb7a43978fa5a9719be2b9567d80e3d7c1d32ea2b202859ad93714ea6ca466be24d3d5bc3dcc9d9bd2bafe962419863d492eb9a253b696496169bd248eb2398b3a43b6b033972dbabbc91c6e6806f0526032cde5a7f29f18a46feda0326d23aecafccd997cc13ba05f3ca11c04943fad521c21c88dbcc93d400ce2c002e04cc61583174423dbc5f61ecb8cd8a0f4200a05ea4918a624ca28dc655e9864f86f30be62ee22a9c9be233d9d49ddf7c906f221b95019d4d9ea30058e5837cd2c23d0b79fdd75243d2e2c8115002862c9cc823d2698c9d1d94c2a5a81d093edb1f36f1d6833f2849b3d06001489d148937bf0db41436eb8d4e5ad753099832bc450d82b0edd8895ce7ab97618abff2bb0d2bb9dd158ccf6040bbbd580c73d9b00728e6e310867e6352454fbd71f14bd79c8c5bf3f6f55f9dc438c561c8e3eb43f81f062a1b445b396eef6b2aac115a098699043838f22a667e9c085c5f99f404554d53eb410ec932416be657c7a64c92163ca95c3f087141c8cc3a38a4a050ec67a033d1ed03bbdd847ec18e01027a1acf44cc047962ab2455f5081cda80842396167d430220a9592a983602e1e6829621ddaff8d82c32f568ed67ebabaa1745c47ee1b26045905f25813b6bce0015e566e80e13b09817c2f3e088d0a398090078c832ed69a68c76a2a23448f04c8fa6a3ed855bf7d9fe33c7c27111a32746490c038f0250180c03030fb5ff00ffda000c030100020003000000100000000000000000000000000000000000000001000000008008000009200200048009000000049049041240200241000241209201200000241009201200000000000000000000000000000000000000000000001fffc40014110100000000000000000000000000000070ffda0008010301013f1061ffc40014110100000000000000000000000000000070ffda0008010201013f1061ffc40023100100030001020701010000000000000001001121102031304150516171b14081ffda0008010100013f10f461d53317b3d30a22969e37ecf1b5d44ff308d3feb25f05d8f053877b3736fbb8159b18eef1141f0d9e8ba70c6f97ad3a004e520d00e5b0fd0619d6a6024ecb1cd039b7f2d3b5851d695abb430dd7ae35c483334bd5c3b580365e4bd50d8cd2ba7213591f2d723b07018b47a47546aa880e00a408e20587f0cda45d86ff00e7542af39c867254bea526184e827d8bd91fa7c39aa679309f465ea570f00d673a1324fcd68cea36a422ca86799558e96071a83beb60a97362bea60fd39612c374e6212e8ac023eb6001c4e67089263275cca03dcadd83e02ccb416738c17ceac85cbe886b302f65b46bf2f69067f34244116811311129ef8fe4b2fe15d994fbe1729f31592f06bcf7459977a68e8fbf14ebc3e2812d5a9b208a4f4a40c9e1918ecddaeba85eb6803e49eee420a9f33408751cdbfcd305e0e98843b18ce7a7bc888df335da9355d0de2d245c8826f8c027c55a7f2266e10e7b13e37ef16d6ea950b92edd5e16525be83850ee8f095c78c20a5ed8de77d15901836f8b31b7fc654cdf3d4aa33fbcff007dd5ae9287b0896624fdb3ab284daa60537899940dab3663414717110bd687489771b5f1992ca46eb87da5171f9e83b174027ffcbac3154b755ae32edcbcb9f870ebb02aba55491e5a70446b163171381fe30190d06fa600778e9c902ca045d70467fc842fa2307d79405640566571f5037dc7a8b1be7fc848e7d299e7bdcd27d32c6523b8452eb06494e44d4a824bb8ca4c2e58b7525da12041109b8eb11cf0d74ebc3eecb8d960ed966162afb5292ac536b30be9ab1ce53bcad915a19a1354d9b5cd591d999cbc51b02e981866ede754eb023cc482a7c28b009c86508968903e38c9dbb1c73b68add81c84a24564322b2e3a57fd06dc1a9aaf2c30cb5e1ba6a86b14b2fcacb2cf8b2fdc85d17dfce8a2fe0b6beadfb7f8ddded7549bfef4bf02cba1285a110f00001e97ffd90a656e6473747265616d0a656e646f626a0a382030206f626a0a3c3c2f46696c7465722f466c6174654465636f64652f4c656e677468203835353e3e73747265616d0a789cad56cd72db3610bef329f6a8ccd83400feaa375aa2137a642996389ec9d43d4024aca243110a48394d1fa42fd65b6e39e6d043a72fd00565d5b2e3209a48d20c49fced876f7781fdde3be7b9e385100521e4a593e6ceb5c3e0d2f45220f837cfa8cf205f3a6717142881fccee9bdca7f3373df03edfb6ee07533c3081889210c28144b3893cb0585a182eb5d5bdb0968edff95087bbadb4877a109dada3510e37a1ab881ff7443a41bd60ba70730484f0909e114c8e64709813f11997966d704162f20fcfc0bbecb8ef9b7b15918ba8c4110c52ed2e8f01950ff29fe209de6d94536480e0443a241c0dce8c1f3de73a2d8fa601e85d3bb5e0ba8f86dafb97d052ba11b553f34b4a87821b1593e74702854ddca7a8dddffd6209af6f36dafc60105bff2cd17f6f15201bf93957c5cb725f3887a002d127e9b562fcfde4ee01d8c3f5da5d3090c53c886e978e3d141f6d7f840af7a981876fcc10028ed7b7eec518f1c1e433f2616b0f1e4ea7c9ace906ff2361d8db2e1647604827ee0db1c2cdb75c5f511a8d9614c1c317cc94536ca92e1e418bcacbe4c74216b2916bc812ba545ad4e2ef9bd141ad2a615735e1f81308bf7209c4f93f3e412194f8f419958ae801e6567949e3142fb8793f322dba9486739327a8ce7118ea271a895dd453a78933c85846404d3f4757695fe10fa8f46c1ee9b1bb910752b8e106d2fb025f81b3ec73bd9dccec78062b6c33b5bcf1b59cac3a14c6259910e88e63318abef1ef377964e6fb241b6df7db42fb8353fce795d7f847742cbf60f0e33ae9712f345c10dafcd6db5ddc8aec2091e04c64e59524a97122bb9d2f01a6bb429dfa529fb907495dad4f3bd28a164f3623788baa18018b838dc0a36f69560db0c1bb9b65dd5c9b59dc6f7e41a239e45c5b8343683282a5c12f938dd089a118795168d3955d00810bfaf2472e550abe55c0bc3fb7b97fd09ceae54835ca1fc1b2795a282a5306f34b86aa53086be16353bdba67df63c082f6fd698e6ffa84e60ba769358bf7cff695c5f883e0d63f7397048a8e76d90994f50291be4f1244f7e328c51d609ddca3b596c745dad8ccec32469d71fd16f2bade69b01a4df6ade54984627504b301e51c57ad9e5e3fde74aa2f25b71cda151952cf0aed1764241e4d2709fad3642dfa3418cc8f24b290bd5bce0296bdafe071f01dc4c0a656e6473747265616d0a656e646f626a0a312030206f626a0a3c3c2f546162732f532f47726f75703c3c2f532f5472616e73706172656e63792f547970652f47726f75702f43532f4465766963655247423e3e2f436f6e74656e74732038203020522f547970652f506167652f5265736f75726365733c3c2f436f6c6f7253706163653c3c2f43532f4465766963655247423e3e2f50726f63536574205b2f504446202f54657874202f496d61676542202f496d61676543202f496d616765495d2f466f6e743c3c2f46312032203020522f46322035203020522f46332036203020523e3e2f584f626a6563743c3c2f696d67322037203020522f696d67312034203020522f696d67302033203020523e3e3e3e2f506172656e742039203020522f4d65646961426f785b30203020363132203739325d3e3e0a656e646f626a0a31302030206f626a0a5b31203020522f58595a20302038303220305d0a656e646f626a0a322030206f626a0a3c3c2f537562747970652f54797065312f547970652f466f6e742f42617365466f6e742f48656c7665746963612f456e636f64696e672f57696e416e7369456e636f64696e673e3e0a656e646f626a0a352030206f626a0a3c3c2f537562747970652f54797065312f547970652f466f6e742f42617365466f6e742f54696d65732d426f6c642f456e636f64696e672f57696e416e7369456e636f64696e673e3e0a656e646f626a0a362030206f626a0a3c3c2f537562747970652f54797065312f547970652f466f6e742f42617365466f6e742f54696d65732d526f6d616e2f456e636f64696e672f57696e416e7369456e636f64696e673e3e0a656e646f626a0a392030206f626a0a3c3c2f4b6964735b31203020525d2f547970652f50616765732f436f756e7420312f4954585428322e312e37293e3e0a656e646f626a0a31312030206f626a0a3c3c2f4e616d65735b284a525f504147455f414e43484f525f305f3129203130203020525d3e3e0a656e646f626a0a31322030206f626a0a3c3c2f4465737473203131203020523e3e0a656e646f626a0a31332030206f626a0a3c3c2f4e616d6573203132203020522f547970652f436174616c6f672f50616765732039203020522f566965776572507265666572656e6365733c3c2f5072696e745363616c696e672f41707044656661756c743e3e3e3e0a656e646f626a0a31342030206f626a0a3c3c2f4d6f644461746528443a32303233303931333136353930312d303527303027292f43726561746f72284a61737065725265706f727473204c6962726172792076657273696f6e20362e312e30292f4372656174696f6e4461746528443a32303233303931333136353930312d303527303027292f50726f647563657228695465787420322e312e37206279203154335854293e3e0a656e646f626a0a787265660a302031350a303030303030303030302036353533352066200a30303030303532333035203030303030206e200a30303030303532363435203030303030206e200a30303030303030303135203030303030206e200a30303030303030343330203030303030206e200a30303030303532373333203030303030206e200a30303030303532383232203030303030206e200a30303030303435383039203030303030206e200a30303030303531333833203030303030206e200a30303030303532393132203030303030206e200a30303030303532363039203030303030206e200a30303030303532393735203030303030206e200a30303030303533303331203030303030206e200a30303030303533303635203030303030206e200a30303030303533313730203030303030206e200a747261696c65720a3c3c2f496e666f203134203020522f4944205b3c63613937336234666330386638643034383834643539633030613737396232633e3c35636239373266623932653339616138616638316162613233626530623964323e5d2f526f6f74203133203020522f53697a652031353e3e0a7374617274787265660a35333333380a2525454f460a, 28900, 20, '2023-09-14', '11:15:00', 'texto prueba', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`pkid_actividad`),
  ADD KEY `fk_actividad_estadoActividad1` (`estadoActividad_pkid_estado_actividad`),
  ADD KEY `fk_actividad_responsableActividad1` (`responsableActividad_pkid_responsable`);

--
-- Indices de la tabla `estadoactividad`
--
ALTER TABLE `estadoactividad`
  ADD PRIMARY KEY (`pkid_estado_actividad`);

--
-- Indices de la tabla `estadonovedad`
--
ALTER TABLE `estadonovedad`
  ADD PRIMARY KEY (`pkid_estado_novedad`);

--
-- Indices de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  ADD PRIMARY KEY (`pkid_estado_pedido`);

--
-- Indices de la tabla `estadoproduccion`
--
ALTER TABLE `estadoproduccion`
  ADD PRIMARY KEY (`pkid_estado_produccion`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`pkid_ingredientes`),
  ADD KEY `fk_ingredientes_produccion1` (`produccion_pkid_produccion`);

--
-- Indices de la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD PRIMARY KEY (`pkid_insumo`),
  ADD KEY `fk_insumo_inventario1` (`inventario_pkid_inventario`),
  ADD KEY `fk_insumo_ingredientes1` (`ingredientes_pkid_ingredientes`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`pkid_inventario`);

--
-- Indices de la tabla `novedad`
--
ALTER TABLE `novedad`
  ADD PRIMARY KEY (`pkid_novedad`),
  ADD KEY `fk_novedad_produccion1` (`produccion_pkid_produccion`),
  ADD KEY `fk_novedad_estadoNovedad1` (`estadoNovedad_pkid_estado_novedad`),
  ADD KEY `fk_novedad_remitente1` (`remitente_pkid_remitente`),
  ADD KEY `fk_novedad_remitido1` (`remitido_pkid_remitido`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`pkid_solicitud`),
  ADD KEY `fk_pedido_estadoPedido1` (`estadoPedido_pkid_estado_pedido`),
  ADD KEY `usuario_pkid_usuario` (`usuario_pkid_usuario`);

--
-- Indices de la tabla `produccion`
--
ALTER TABLE `produccion`
  ADD PRIMARY KEY (`pkid_produccion`),
  ADD KEY `fk_produccion_estadoProduccion1` (`estadoProduccion_pkid_estado_produccion`),
  ADD KEY `fk_produccion_actividad1` (`actividad_pkid_actividad`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`pkid_producto`),
  ADD KEY `fk_producto_pedido1` (`pedido_pkid_solicitud`),
  ADD KEY `fk_producto_inventario1` (`inventario_pkid_inventario`);

--
-- Indices de la tabla `remitente`
--
ALTER TABLE `remitente`
  ADD PRIMARY KEY (`pkid_remitente`);

--
-- Indices de la tabla `remitido`
--
ALTER TABLE `remitido`
  ADD PRIMARY KEY (`pkid_remitido`);

--
-- Indices de la tabla `responsableactividad`
--
ALTER TABLE `responsableactividad`
  ADD PRIMARY KEY (`pkid_responsable`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`pkid_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`pkid_usuario`),
  ADD KEY `fk_usuario_rol` (`rol_pkid_rol`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`pkid_venta`),
  ADD KEY `fk_venta_pedido1` (`pedido_pkid_solicitud`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `pkid_actividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estadoactividad`
--
ALTER TABLE `estadoactividad`
  MODIFY `pkid_estado_actividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estadonovedad`
--
ALTER TABLE `estadonovedad`
  MODIFY `pkid_estado_novedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  MODIFY `pkid_estado_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estadoproduccion`
--
ALTER TABLE `estadoproduccion`
  MODIFY `pkid_estado_produccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `pkid_ingredientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `insumo`
--
ALTER TABLE `insumo`
  MODIFY `pkid_insumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `pkid_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `novedad`
--
ALTER TABLE `novedad`
  MODIFY `pkid_novedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `pkid_solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `produccion`
--
ALTER TABLE `produccion`
  MODIFY `pkid_produccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `pkid_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `remitente`
--
ALTER TABLE `remitente`
  MODIFY `pkid_remitente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `remitido`
--
ALTER TABLE `remitido`
  MODIFY `pkid_remitido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `responsableactividad`
--
ALTER TABLE `responsableactividad`
  MODIFY `pkid_responsable` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `pkid_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `pkid_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `pkid_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `fk_actividad_estadoActividad1` FOREIGN KEY (`estadoActividad_pkid_estado_actividad`) REFERENCES `estadoactividad` (`pkid_estado_actividad`),
  ADD CONSTRAINT `fk_actividad_responsableActividad1` FOREIGN KEY (`responsableActividad_pkid_responsable`) REFERENCES `responsableactividad` (`pkid_responsable`);

--
-- Filtros para la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD CONSTRAINT `fk_ingredientes_produccion1` FOREIGN KEY (`produccion_pkid_produccion`) REFERENCES `produccion` (`pkid_produccion`);

--
-- Filtros para la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD CONSTRAINT `fk_insumo_ingredientes1` FOREIGN KEY (`ingredientes_pkid_ingredientes`) REFERENCES `ingredientes` (`pkid_ingredientes`),
  ADD CONSTRAINT `fk_insumo_inventario1` FOREIGN KEY (`inventario_pkid_inventario`) REFERENCES `inventario` (`pkid_inventario`);

--
-- Filtros para la tabla `novedad`
--
ALTER TABLE `novedad`
  ADD CONSTRAINT `fk_novedad_estadoNovedad1` FOREIGN KEY (`estadoNovedad_pkid_estado_novedad`) REFERENCES `estadonovedad` (`pkid_estado_novedad`),
  ADD CONSTRAINT `fk_novedad_produccion1` FOREIGN KEY (`produccion_pkid_produccion`) REFERENCES `produccion` (`pkid_produccion`),
  ADD CONSTRAINT `fk_novedad_remitente1` FOREIGN KEY (`remitente_pkid_remitente`) REFERENCES `remitente` (`pkid_remitente`),
  ADD CONSTRAINT `fk_novedad_remitido1` FOREIGN KEY (`remitido_pkid_remitido`) REFERENCES `remitido` (`pkid_remitido`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_estadoPedido1` FOREIGN KEY (`estadoPedido_pkid_estado_pedido`) REFERENCES `estadopedido` (`pkid_estado_pedido`),
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`usuario_pkid_usuario`) REFERENCES `usuario` (`pkid_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `produccion`
--
ALTER TABLE `produccion`
  ADD CONSTRAINT `fk_produccion_actividad1` FOREIGN KEY (`actividad_pkid_actividad`) REFERENCES `actividad` (`pkid_actividad`),
  ADD CONSTRAINT `fk_produccion_estadoProduccion1` FOREIGN KEY (`estadoProduccion_pkid_estado_produccion`) REFERENCES `estadoproduccion` (`pkid_estado_produccion`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`rol_pkid_rol`) REFERENCES `rol` (`pkid_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
