-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2021 a las 21:49:09
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `redes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulo`
--

CREATE TABLE `capitulo` (
  `capitulo` varchar(100) NOT NULL,
  `idcapitulo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `capitulo`
--

INSERT INTO `capitulo` (`capitulo`, `idcapitulo`) VALUES
('CAPÍTULO 1 - INTRODUCCIÓN', 'CAP1'),
('CAPÍTULO 10 - CONTROL DE ENLACE DE DATOS', 'CAP10'),
('CAPÍTULO 2 - CONCEPTOS BÁSICOS', 'CAP2'),
('CAPÍTULO 3 - EL MODELO OSI', 'CAP3'),
('CAPÍTULO 4 - SEÑALES', 'CAP4'),
('CAPÍTULO 5 - CODIFICACIÓN Y MODULACIÓN', 'CAP5'),
('CAPÍTULO 6 - TRANSMISIÓN DE DATOS DIGITALES: INTERFACES Y MÓDEMS', 'CAP6'),
('CAPÍTULO 7 - MEDIOS DE TRANSMISIÓN DE DATOS', 'CAP7'),
('CAPÍTULO 8 - MULTIPLEXACIÓN', 'CAP8'),
('CAPÍTULO 9 - DETECCIÓN Y CORRECCIÓN DE ERRORES', 'CAP9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `idhistorial` int(11) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `capitulo` varchar(50) NOT NULL,
  `respuesta_correcta` int(11) NOT NULL,
  `respuesta_incorrecta` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`idhistorial`, `usuario`, `capitulo`, `respuesta_correcta`, `respuesta_incorrecta`, `nota`, `fecha`) VALUES
(71, 'araujo0003', 'CAP10', 2, 8, 4, '2021-07-06'),
(72, 'araujo0003', 'CAP10', 2, 8, 4, '2021-07-06'),
(73, 'perzeus', 'CAP5', 3, 7, 6, '2021-07-06'),
(74, 'araujo0003', 'CAP5', 2, 8, 4, '2021-07-06'),
(75, 'araujo0003', 'CAP7', 4, 6, 8, '2021-07-06'),
(76, 'araujo0003', 'CAP2', 2, 8, 4, '2021-07-08'),
(77, 'araujo0003', 'CAP10', 1, 9, 2, '2021-07-08'),
(78, 'araujo0003', 'CAP8', 2, 8, 4, '2021-07-08'),
(79, 'araujo0003', 'CAP4', 2, 8, 4, '2021-07-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `idpregunta` varchar(10) NOT NULL,
  `idcapitulo` varchar(10) NOT NULL,
  `pregunta` varchar(500) NOT NULL,
  `Numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`idpregunta`, `idcapitulo`, `pregunta`, `Numero`) VALUES
('PREG1', 'CAP1', '_____ son reglas que gobiernan un intercambio de comunicación.', 1),
('PREG10', 'CAP1', '_______ son grupos de interés especial que prueban, evalúan y estandarizan nuevas tecnologías rápidamente.', 10),
('PREG100', 'CAP5', '¿Qué tipo de codificación tiene siempre una amplitud media no nula?', 19),
('PREG101', 'CAP5', '¿Cuál de los siguientes métodos de codificación no proporciona sincronización?', 20),
('PREG102', 'CAP5', '¿Qué método de codificación usa valores alternativos positivos y negativos para los unos?', 21),
('PREG103', 'CAP5', '¿En qué tipo de codificación digital a digital se usan violaciones deliberadas de la inversión de marcas alternas?', 22),
('PREG104', 'CAP5', 'Una señal modulada está formada por ____.', 23),
('PREG105', 'CAP5', 'Si se siguen tas regulaciones de la FCC, las frecuencias de la portadora de las estaciones de radio adyacentes deben estar separadas _______.', 24),
('PREG106', 'CAP5', 'Si se siguen las regulaciones de la FCC, ¿Cuántas estaciones potenciales de FM son teóricamente posibles en una zona?', 25),
('PREG107', 'CAP5', 'En PCM, hay conversión analógico a ________.', 26),
('PREG108', 'CAP5', 'Si el máximo valor de una señal PCM es 31 y el mínimo valor es —31, ¿Cuántos bits se usaron para codificar?', 27),
('PREG109', 'CAP5', 'Cuando se descompone una señal ASK, el resultado es ______.', 28),
('PREG11', 'CAP1', '¿Qué agencia desarrolló estándares para conexiones eléctricas y la transferencia física de datos entre dispositivos?', 11),
('PREG110', 'CAP5', 'La codificación RZ involucra _______ nivel(es) de amplitud de señal.', 29),
('PREG111', 'CAP5', '¿Qué nivel de cuantificación da como resultado una reproducción de la señal más fiable?', 30),
('PREG112', 'CAP5', '¿Qué técnica de codificación intenta resolver la pérdida de sincronización debida a largas secuencias de ceros?', 31),
('PREG113', 'CAP5', '¿Qué tipo de conversión incluye modulación de una señal?', 32),
('PREG114', 'CAP5', '¿Qué tipo de conversión necesita el muestreo de una señal?', 33),
('PREG115', 'CAP5', 'El ancho de banda de una señal FM necesita 10 veces el ancho de banda de la señal ________.', 34),
('PREG116', 'CAP5', 'La modulación de una señal analógica se puede llevar a cabo a través de la modulación de ________ de la señal portadora.', 35),
('PREG117', 'CAP5', 'La modulación de una señal digital se puede llevar a cabo a través de la modulación de ______ de la señal portadora.', 36),
('PREG118', 'CAP6', 'En la transmisión _______, los bits se transmiten simultáneamente, cada uno a través de su propio hilo.', 1),
('PREG119', 'CAP6', 'En la transmisión_____, los bits se transmiten a través de un único hilo, uno cada vez.', 2),
('PREG12', 'CAP1', '¿Qué organización está formada por científicos de computación e ingenieros y es conocida\r\npor el desarrollo de estándares de LAN?', 12),
('PREG120', 'CAP6', 'En la transmisión_____, se enmarca cada byte con un bit de inicio y un bit de terminación.', 3),
('PREG121', 'CAP6', 'En la transmisión asíncrona, el intervalo entré los bytes es _______.', 4),
('PREG122', 'CAP6', 'La transmisión síncrona no tiene ______.', 5),
('PREG123', 'CAP6', 'Un _____ es un dispositivo que es origen o destino para datos digitales binarios.', 6),
('PREG124', 'CAP6', 'Un ______ es un dispositivo que transmite o recibe datos en forma de señal analógica o digital a través de una red.', 7),
('PREG125', 'CAP6', 'El EIA-232 define las características _______ de la interfaz DTE-DCE.', 8),
('PREG126', 'CAP6', 'El método de codificación especificado en el estándar EIA-232 es ______.', 9),
('PREG127', 'CAP6', 'El estándar EIA-232 especifica que 0 debe ser _______ voltios.', 10),
('PREG128', 'CAP6', 'La interfaz EIA-232 tiene ______ patillas.', 11),
('PREG129', 'CAP6', 'Los datos se envían por la patilla _______ de la interfaz EIA-232.', 12),
('PREG13', 'CAP1', 'La información que se debe comunicar en un sistema de transmisión de datos es el ______.', 13),
('PREG130', 'CAP6', 'La mayoría (13) de las patillas de la interfaz EIA-232 se usan para tareas de _______.', 13),
('PREG131', 'CAP6', 'En el estándar EIA-232 ¿qué representa un valor de —12 V en un patilla de datos?', 14),
('PREG132', 'CAP6', '¿Cuáles de las patillas siguientes son necesarias previamente a la transmisión de datos?', 15),
('PREG133', 'CAP6', '¿Qué patilla es necesaria para probar el bucle local?', 16),
('PREG134', 'CAP6', '¿Qué patilla es necesaria para probar el bucle remoto?', 17),
('PREG135', 'CAP6', '¿Qué patillas no se usan actualmente?', 18),
('PREG136', 'CAP6', '¿Qué patillas son usadas por el canal secundario?', 19),
('PREG137', 'CAP6', 'El estándar _______ especifica una longitud máxima de cable de 50 pies.', 20),
('PREG138', 'CAP6', 'De acuerdo al estándar EIA-449 es posible usar una longitud de cable entre los 40 pies y los _______ pies.', 21),
('PREG139', 'CAP6', 'La tasa de datos máxima para el RS-422 es ______ veces que la tasa de datos máxima del RS-423.', 22),
('PREG14', 'CAP1', '______ es la división de una tarea entre múltiples computadoras.', 14),
('PREG140', 'CAP6', 'En el circuito RS-422, si el ruido cambia de un voltaje de 10 V a 12 V, su complemento debería tener un valor de _______ V.', 23),
('PREG141', 'CAP6', 'Si un ruido de 0,5 V corrompe un bit de un circuito RS-422, se añadirán _____ voltios al bit complementario.', 24),
('PREG142', 'CAP6', 'El X.21 elimina muchas de las patillas de _______ que se encuentran en los estándares EIA.', 25),
('PREG143', 'CAP6', 'El X.21 usa un conector _____.', 26),
('PREG144', 'CAP6', 'La información de control (distinta del saludo) se envía casi siempre en el estándar X.21 a través de las patillas de ______.', 27),
('PREG145', 'CAP6', 'Un módem nulo conecta la patilla de transmisión de datos (2) de un DTE a la _______.', 28),
('PREG146', 'CAP6', 'Si hay dos DTE cercanos y compatibles que se pueden transmitir datas que no necesitan ser modulados, una buena interfaz a usar sería ______.', 29),
('PREG147', 'CAP6', 'Dada una línea de transmisión en la que I-I es la frecuencia más alta y L es la frecuencia más baja, el ancho de banda de la línea es _______.', 30),
('PREG148', 'CAP6', 'En una línea telefónica, el ancho de banda de la voz es habitualmente _______ el ancho de banda que se usa para datos.', 31),
('PREG149', 'CAP6', 'Para una tasa de bits dada, el ancho de banda mínimo para ASK es ______ el ancho de banda mínimo para FSK.', 32),
('PREG15', 'CAP1', '¿Qué agencia internacional está relacionada con los estándares en ciencia y tecnología?', 15),
('PREG150', 'CAP6', 'A medida que se incrementa la tasa de bits de una señal FSK, el ancho de banda _____.', 33),
('PREG151', 'CAP6', 'En FSK, a medida que se incrementa la frecuencia de las dos portadoras, el ancho de banda ______.', 34),
('PREG152', 'CAP6', '¿Cuál de las siguientes técnicas de modulación se usa en los módems?', 35),
('PREG153', 'CAP6', 'La modulación 2-PSK necesita habitualmente _______ el FSK para conseguir la misma tasa de datos.', 36),
('PREG154', 'CAP6', '¿Cuál de los módems siguientes usa modulación FSK?', 37),
('PREG155', 'CAP6', '¿Qué módem estándar ITU-T usa la codificación de trellis?', 38),
('PREG156', 'CAP6', 'En la codificación trellis el número de bits de datos es _______ el número de bits transmitidos.', 39),
('PREG157', 'CAP6', 'Para el estándar V22bis, usando su velocidad más baja, si se está actualmente en el tercer cuadrante y el siguiente dibit es 11, hay un cambio de fase de _______ grados.', 40),
('PREG158', 'CAP6', '¿Cuál es el propósito de la codificación trellis?', 41),
('PREG159', 'CAP6', 'En la modulación _______, los cambios de fase son función del patrón de bit actual y de la fase de los patrones de bits anteriores.', 42),
('PREG16', 'CAP1', 'Si un protocolo especifica que los datos deberían enviarse a 100 Mbps, se está hablando\r\nde un aspecto de _______.', 16),
('PREG160', 'CAP6', '¿Para qué tipo de señal la tasa de bits es siempre igual a la tasa de baudios?', 43),
('PREG161', 'CAP6', 'Un modulador convierte una señal ______ a una señal ______.', 44),
('PREG162', 'CAP6', 'La implementación DB-9 del estándar EIA-232 se usa en una conexión ______.', 45),
('PREG163', 'CAP6', 'El estándar _____ usa el protocolo LAPM.', 46),
('PREG164', 'CAP6', 'El estándar_____ usa el método de compresión Lempel-Ziv-Welch.', 47),
('PREG165', 'CAP6', 'Un módem de 56K puede recibir datos en una tasa de ______ Kbps y emitir datos con una tasa de ______ Kbps.', 48),
('PREG166', 'CAP6', 'Los usuarios conectados a Internet a través de un proveedor de televisión por cable pueden tener una tasa de datos mayor debido a ______.', 49),
('PREG167', 'CAP7', 'Los medios de transmisión se clasifican habitualmente como _____.', 1),
('PREG168', 'CAP7', 'Un cable _____ está formado por un núcleo interno de cobre y una segunda cubierta exterior conductora.', 2),
('PREG169', 'CAP7', 'En la fibra óptica, el origen de la señal son ondas de _______.', 3),
('PREG17', 'CAP1', 'Cuando un protocolo especifica que la dirección del emisor debe ocupar los primeros cuatro bytes de un mensaje, se está hablando de un tema de _______.', 17),
('PREG170', 'CAP7', 'En el extremo más bajo del espectro electromagnético están las _____.', 4),
('PREG171', 'CAP7', '_____ son las ondas electromagnéticas de alta frecuencia que se usan para comunicaciones de datos.', 5),
('PREG172', 'CAP7', 'Las señales de humo son un ejemplo de comunicación a través de _____.', 6),
('PREG173', 'CAP7', '¿Cuál de los siguientes usa principalmente un medio guiado?', 7),
('PREG174', 'CAP7', '¿Cuál de los siguientes no es un medio guiado?', 8),
('PREG175', 'CAP7', 'En un entorno en el cual hay muchos dispositivos de alto voltaje, el mejor medio de transmisión seria _____.', 9),
('PREG176', 'CAP7', '¿Cuál es el factor principal que hace que el cable coaxial sea menos susceptible al ruido que el cable de par trenzado?', 10),
('PREG177', 'CAP7', 'El número RG nos da información acerca de _____.', 11),
('PREG178', 'CAP7', 'En una fibra óptica el núcleo interno es ______ la cubierta.', 12),
('PREG179', 'CAP7', 'El núcleo interno de una fibra óptica está compuesto por _____.', 13),
('PREG18', 'CAP1', 'Cuando un protocolo especifica que la dirección del emisor significa el emisor más reciente y no la fuente original, se está hablando de un aspecto de _______.', 18),
('PREG180', 'CAP7', 'Cuando se están haciendo conexiones en la fibra óptica, ¿Cuál de las siguientes cosas contribuiría a la distorsión de la señal?', 14),
('PREG181', 'CAP7', 'Las frecuencias de comunicación de radio van desde _____.', 15),
('PREG182', 'CAP7', 'El espectro de comunicación por radio se divide en bandas basándose en _____.', 16),
('PREG183', 'CAP7', 'En la propagación _____, las ondas de radio de baja frecuencia abrazan a la tierra.', 17),
('PREG184', 'CAP7', 'El tipo de propagación que se usa en la comunicación por radio depende muy fuertemente de la ______ de la señal.', 18),
('PREG185', 'CAP7', 'La propagación VLF se produce en _____.', 19),
('PREG186', 'CAP7', 'Si un satélite está en órbita geosincrónica, completa una órbita en _____.', 20),
('PREG187', 'CAP7', 'Si un satélite está en órbita geosincrónica, su distancia a la estación emisora es _____.', 21),
('PREG188', 'CAP7', 'Cuando un haz de luz viaja a través de un medio con dos densidades distintas, si el ángulo de incidencia es mayor que el ángulo crítico hay _____.', 22),
('PREG189', 'CAP7', 'Cuando el ángulo de refracción es _____ que el ángulo de incidencia, el rayo de luz se mueve de un medio más denso a un medio menos denso.', 23),
('PREG19', 'CAP1', '¿Cuál es la diferencia principal entre un estándar de facto y un estándar de jure?', 19),
('PREG190', 'CAP7', 'Si el ángulo crítico es 50 grados y el ángulo de incidencia es 60 grados, el ángulo de reflexión es _____ grados.', 24),
('PREG191', 'CAP7', 'Si el ángulo de refracción es 90 grados y el ángulo de incidencia es 48 grados, el ángulo critico es _____ grados.', 25),
('PREG192', 'CAP7', 'Si el ángulo de refracción es 70 grados y el ángulo de incidencia es 50 grados, el ángulo crítico debe ser mayor que _____ grados.', 26),
('PREG193', 'CAP7', 'En la propagación ______, el haz de luz propagado es casi horizontal y el núcleo de baja densidad tiene un diámetro menor comparado con los núcleos de otros modos de propagación.', 27),
('PREG194', 'CAP7', 'La propagación ______ es el método sujeto a más distorsión.', 28),
('PREG195', 'CAP7', 'En la propagación ______, el núcleo tiene densidad variable.', 29),
('PREG196', 'CAP7', 'Cuando se habla de un medio no guiado, se está hablando habitualmente de ______.', 30),
('PREG197', 'CAP7', 'Las fibras ópticas, a diferencia de los cables, son altamente resistentes a ______.', 31),
('PREG198', 'CAP7', 'En la telefonía celular, un área de servicio se divide en pequeñas regiones denominadas ______.', 32),
('PREG199', 'CAP7', '¿Qué determina el tamaño de una célula?', 33),
('PREG2', 'CAP1', 'El _______ es el camino físico sobre el que viajan los mensajes.', 2),
('PREG20', 'CAP2', '¿Qué topología necesita un controlador central o un concentrador?', 1),
('PREG200', 'CAP7', 'La MTSO es responsable de ______.', 34),
('PREG201', 'CAP7', 'La MTSO busca la localización de un teléfono móvil. Esto se denomina _____.', 35),
('PREG202', 'CAP7', 'Una señal se mide en dos puntos distintos. La potencia es P1 en el primer punto y P2 en el segundo punto. El dB es 0. Esto significa que _____.', 36),
('PREG203', 'CAP7', '_____ es un tipo de deterioro de la transmisión en el cual la señal pierde potencia debido a la resistencia del medio de transmisión.', 37),
('PREG204', 'CAP7', '______ es un tipo de deterioro de la transmisión en el cual la señal pierde potencia debido a la distinta velocidad de propagación de cada frecuencia que compone la señal.', 38),
('PREG205', 'CAP7', '_______ es un tipo de deterioro de la transmisión en el cual una fuente externa, como un cruce, corrompe la señal.', 39),
('PREG206', 'CAP7', 'El rendimiento del medio de transmisión se puede medir por ______.', 40),
('PREG207', 'CAP7', 'El ______ tiene unidades de metros/segundo o kilómetros/segundo.', 41),
('PREG208', 'CAP7', '______ tiene unidades de bits/segundo.', 42),
('PREG209', 'CAP7', 'El ______ tiene unidades de segundos.', 43),
('PREG21', 'CAP2', '¿Qué topología necesita una conexión multipunto?', 2),
('PREG210', 'CAP7', 'Cuando la velocidad de propagación se multiplica por el tiempo de propagación, se obtiene el ______.', 44),
('PREG211', 'CAP7', 'El tiempo de propagación es ______ proporcional a la distancia y _____ proporcional a la velocidad de propagación.', 45),
('PREG212', 'CAP7', 'La longitud de onda es _______ proporcional a la velocidad de propagación y ______ proporcional al periodo.', 46),
('PREG213', 'CAP7', 'La longitud de onda de una señal depende de ______.', 47),
('PREG214', 'CAP7', 'La longitud de onda de la luz verde en el aire es _____ la longitud de onda de la luz verde en un cable de fibra óptica.', 48),
('PREG215', 'CAP7', 'Usando la fórmula de Shannon para calcular la tasa de datos de un canal determinado, si C = B, entonces ________.', 49),
('PREG216', 'CAP8', 'Compartir un medio y su enlace por dos o más dispositivos se denomina _____.', 1),
('PREG217', 'CAP8', '¿Qué técnica de multiplexación transmite señales analógicas?', 2),
('PREG218', 'CAP8', '¿Qué técnica de multiplexación transmite señales digitales?', 3),
('PREG219', 'CAP8', '¿Qué técnica de multiplexación desplaza cada señal a una frecuencia portadora distinta?', 4),
('PREG22', 'CAP2', 'La comunicación entre una computadora y un teclado implica una transmisión ______.', 3),
('PREG220', 'CAP8', '¿Cuáles de las siguientes son necesarias para la multiplexación?', 5),
('PREG221', 'CAP8', 'La multiplexación requiere _____.', 6),
('PREG222', 'CAP8', 'En la TDM síncrona, con n señales origen, cada trama contiene al menos _____ ranuras de tiempo.', 7),
('PREG223', 'CAP8', 'En TDM asíncrona, para n señales origen, cada trama contiene m ranuras de tiempo, donde m es habitualmente ______ n,', 8),
('PREG224', 'CAP8', 'En la TDM asíncrona, la tasa de transmisión del canal multiplexado es habitualmente _______ la suma de la tasa de transmisión de las señales origen.', 9),
('PREG225', 'CAP8', '¿Qué tipo de multiplexación tiene múltiples caminos?', 10),
('PREG226', 'CAP8', '¿Qué tipo de servicio telefónico es más barato?', 11),
('PREG227', 'CAP8', '¿Qué tipo de servicio telefónico analógico necesita marcado?', 12),
('PREG228', 'CAP8', '¿Qué tipo de servicio analógico proporciona una línea dedicada entre dos clientes?', 13),
('PREG229', 'CAP8', 'Los servicios conmutados implican que las conexiones entre los abonados deben tener _____.', 14),
('PREG23', 'CAP2', 'En una red con 25 computadoras, ¿qué topología necesitaría el cableado más extenso?', 4),
('PREG230', 'CAP8', 'Los servicios dedicados implican que las conexiones entre los abonados deben tener ______.', 15),
('PREG231', 'CAP8', 'Para disminuir la atenuación y la distorsión de la señal, se puede usar una línea ________.', 16),
('PREG232', 'CAP8', 'El servicio conmutado/56, el 56 significa _______.', 17),
('PREG233', 'CAP8', 'Una unidad de servicio digital (DSU) es necesaria para ______.', 18),
('PREG234', 'CAP8', '¿Qué servicio telefónico ofrece al abonado la elección de velocidad de transmisión?', 19),
('PREG235', 'CAP8', 'En la jerarquía FDM de AT&T, el ancho de banda de cada tipo de grupo se puede encontrar multiplicando _______ y añadiendo el ancho de banda extra para bandas de guarda.', 20),
('PREG236', 'CAP8', 'DS-0 hasta DS-4 son ______, mientras que T-l hasta la T-4 son _____.', 21),
('PREG237', 'CAP8', 'En una línea T-l, hay entrelazado a nivel de _____.', 22),
('PREG238', 'CAP8', 'Las bandas de guarda incrementan el ancho de banda en ______.', 23),
('PREG239', 'CAP8', '¿Qué técnica de multiplexación implica señales compuestas de haces de luz?', 24),
('PREG24', 'CAP2', 'Una topología en árbol es una variación de una topología en _______.', 5),
('PREG240', 'CAP8', 'DSL es un ejemplo de ______.', 25),
('PREG241', 'CAP8', 'En la familia DSL, _____ usa codificación 2B1Q para reducir los efectos de la atenuación.', 26),
('PREG242', 'CAP8', 'En la familia DSL, para _____, el coste es dependiente del tipo de comunicación deseado.', 27),
('PREG243', 'CAP8', '_____ es similar a HDSL, pero usa únicamente un único par de cables trenzados.', 28),
('PREG244', 'CAP8', 'Si la distancia del abonado a la central telefónica es 1.800 metros o menos, ______ es una buena elección.', 29),
('PREG245', 'CAP8', 'En ADSL la banda de frecuencia más grande se usa para ______.', 30),
('PREG246', 'CAP8', 'En ADSL la banda de frecuencia más pequeña se usa para ______.', 31),
('PREG247', 'CAP8', '_____ es una técnica de modulación que elimina el uso de una señal portadora.', 32),
('PREG248', 'CAP8', '_____ es una técnica de modulación que usa elementos de QAM y FDM.', 33),
('PREG249', 'CAP8', 'En FTTC ______ es el medio que va desde la central de la compañía de cable hasta el bordillo del abonado.', 34),
('PREG25', 'CAP2', 'La emisión de televisión es un ejemplo de transmisión ________.', 6),
('PREG250', 'CAP9', 'La detección de errores se hace habitualmente en el nivel _____ del modelo OSI.', 1),
('PREG251', 'CAP9', '¿Qué método de detección de errores consiste en añadir un bit de paridad a cada unidad de datos así como una unidad completa de datos de bits de paridad?', 2),
('PREG252', 'CAP9', '¿Qué método de detección de errores usa la aritmética en complemento a uno?', 3),
('PREG253', 'CAP9', '¿Qué método de detección de errores consiste en añadir un bit redundante a la unidad de datos?', 4),
('PREG254', 'CAP9', '¿ Qué método de detección de errores usa polinomios?', 5),
('PREG255', 'CAP9', '¿Cuál de los siguientes describe mejor un error de bit?', 6),
('PREG256', 'CAP9', 'Si se ha enviado el carácter ASCII G y se ha recibido el carácter D, ¿Qué tipo de error es este?', 7),
('PREG257', 'CAP9', 'Si se ha enviado el carácter ASCII H y se ha recibido el carácter I, ¿Qué tipo de error es este?', 8),
('PREG258', 'CAP9', 'En la verificación de redundancia cíclica ¿Qué es el CRC?', 9),
('PREG259', 'CAP9', 'En la verificación de redundancia cíclica el divisor es _____ que el CRC.', 10),
('PREG26', 'CAP2', 'En una topología en ________, hay n dispositivos en la red cada dispositivo tiene n - 1 puertos para los cables.', 7),
('PREG260', 'CAP9', 'Si la unidad de datos es 111111, el divisor 1010, y el resto 110, ¿Cuál es el dividendo en el receptor?', 11),
('PREG261', 'CAP9', 'Si la unidad de datos es 111111 y el divisores 1010, ¿Cuál es el dividendo en el transmisor?', 12),
('PREG262', 'CAP9', 'Si se usa paridad impar para la detección de errores en ASCII, el número de ceros por cada símbolo de 8 bits es ______.', 13),
('PREG263', 'CAP9', 'La suma de suma de comprobación y datos en el receptor es ______ si no hay errores.', 14),
('PREG264', 'CAP9', 'El código Hamming es un método de ______.', 15),
('PREG265', 'CAP9', 'En CRC no hay error si el resto en el receptor es ______.', 16),
('PREG266', 'CAP9', 'En CRC el cociente en el emisor ______.', 17),
('PREG267', 'CAP9', '¿Qué método de detección de errores usa bit de paridad?', 18),
('PREG268', 'CAP9', '¿Qué método de detección de errores puede detectar un error de bit?', 19),
('PREG269', 'CAP9', '¿Qué método de detección de errores puede detectar un error de ráfaga?', 20),
('PREG27', 'CAP2', 'Una conexión proporciona un enlace dedicado entre dos dispositivos.', 8),
('PREG270', 'CAP9', 'Se quiere calcular el LRC para 10 grupos, cada uno de ellos de 8 bits. ¿Cuántos bits forman el LRC?', 21),
('PREG271', 'CAP9', 'En el generador CRC, se añaden _______ a la unidad de datos antes del proceso de división.', 22),
('PREG272', 'CAP9', 'En el generador CRC, se añade ______ a la unidad de datos después del proceso de división.', 23),
('PREG273', 'CAP9', 'En e¡ comprobador CRC, ______ significa que la unidad de datos es errónea.', 24),
('PREG274', 'CAP10', 'El dispositivo secundario en una configuración multipunto envía los datos como respuesta a _____.', 1),
('PREG275', 'CAP10', 'En el control de flujo con ventana deslizante, si el tamaño de la ventana es 63, ¿Cuál es el rango de los números de secuencia?', 2),
('PREG276', 'CAP10', 'En el control de flujo con ventana deslizante las tramas a la izquierda de la ventana del receptor son tramas _____.', 3),
('PREG277', 'CAP10', 'La regulación de la tasa de transmisión de las tramas de datos se conoce como _______.', 4),
('PREG278', 'CAP10', 'La _____ decide el papel (emisor o receptor) de un dispositivo en la red.', 5),
('PREG279', 'CAP10', 'La retransmisión de las tramas perdidas o dañadas en el nivel de enlace de datos se conoce como ______.', 6),
('PREG28', 'CAP2', 'En una conexión ________, más de dos dispositivos pueden compartir un único enlace.', 9),
('PREG280', 'CAP10', 'Cuando un dispositivo primario quiere enviar datos a un dispositivo secundario, necesita enviar primero una trama ______.', 7),
('PREG281', 'CAP10', 'Cuando un dispositivo secundario está listo para enviar datos, debe esperar por una trama _____.', 8),
('PREG282', 'CAP10', 'En un sistema paritario, cuando un dispositivo quiere enviar datos a otro dispositivo, envía primero una trama ______.', 9),
('PREG283', 'CAP10', 'El control de flujo es necesario para prevenir _______.', 10),
('PREG284', 'CAP10', 'En la vuelta atrás n con AIÍ.Q, si las tramas 4, 5 y 6 se reciben correctamente, el receptor puede enviar un ACK ______ al emisor.', 11),
('PREG285', 'CAP10', 'Para una ventana deslizante de tamaño n - 1 (n números de secuencia), puede haber un máximo de ______ tramas enviadas pero sin reconocer.', 12),
('PREG286', 'CAP10', 'Un ACK 3 en control de flujo con ventana deslizante (tamaño de ventana 7) indica que la trama que espera a continuación el receptor es ______.', 13),
('PREG287', 'CAP10', 'En la parada y espera con ARQ, si datos 1 tiene un error, el receptor envía una trama _____.', 14),
('PREG288', 'CAP10', 'En ______ ARQ, cuando se recibe un NAK, todas las tramas enviadas desde la última reconocida se retransmiten.', 15),
('PREG289', 'CAP10', 'En ______ ARQ, si se recibe un NAK, solamente se retransmite la trama específica dañada o perdida.', 16),
('PREG29', 'CAP2', 'En la transmisión __________, la capacidad del canal es siempre compartida por los dos dispositivos que se comunican.', 10),
('PREG290', 'CAP10', 'ARQ significa ______.', 17),
('PREG291', 'CAP10', '¿Cuál de las siguientes es una función del nivel de enlace de datos?', 18),
('PREG292', 'CAP10', 'En una comunicación ______, el método sondeo/selección se usa para determinar el control de la línea.', 19),
('PREG293', 'CAP10', 'Se activa un temporizador cuando se envía _______.', 20),
('PREG294', 'CAP10', 'La disciplina de línea de sondeo/selección necesita ______ para identificar el receptor del paquete.', 21),
('PREG295', 'CAP10', 'Con el control de flujo parada y espera, si se han enviado n paquetes de datos, se necesitan _______ reconocimientos.', 22),
('PREG3', 'CAP1', 'La frecuencia del fallo y el tiempo de recuperación de la red ante fallos son medidas de _________ de una red.', 3),
('PREG30', 'CAP2', 'MacKenzie Publishing, con oficinas centrales en Londres y otras oficinas en Asia, Europa y Sudamérica, está probablemente conectada por una ________.', 11),
('PREG31', 'CAP2', 'BAF Fontaneros tiene una red formada por dos estaciones de trabajo y una impresora.\r\nEsta red es probablemente u n a .', 12),
('PREG32', 'CAP2', '¿Qué topología se caracteriza por tener una configuración de línea punto a punto?', 13),
('PREG33', 'CAP2', 'En un enlace ________ el único tráfico existente se da entre los dos dispositivos conectados.', 14),
('PREG34', 'CAP2', 'En una topología en malla, la relación entre un dispositivo y otro es _________.', 15),
('PREG35', 'CAP2', 'Una rotura de cable en una topología en _______ detiene toda la transmisión.', 16),
('PREG36', 'CAP2', 'Una red que contiene múltiples concentradores está configurada muy probablemente como una topología en ________.', 17),
('PREG37', 'CAP2', 'La seguridad y la privacidad no son un tema importante para dispositivos conectados en una topología en _________.', 18),
('PREG38', 'CAP3', 'El modelo ________ muestra cómo deberían estar organizadas las funciones de red de una computadora.', 1),
('PREG39', 'CAP3', 'El modelo OSI está compuesto de ________ niveles.', 2),
('PREG4', 'CAP1', 'Las prestaciones de una red de comunicaciones de datos depende de _________.', 4),
('PREG40', 'CAP3', 'El nivel _____ decide la localización de los puntos de sincronización.', 3),
('PREG41', 'CAP3', 'La entrega extremo a extremo de todo el mensaje es responsabilidad del nivel de _______.', 4),
('PREG42', 'CAP3', 'El nivel _____ es el nivel más cercano al medio de transmisión.', 5),
('PREG43', 'CAP3', 'En el nivel ________, la unidad de datos se denomina trama.', 6),
('PREG44', 'CAP3', 'El descifrado y el cifrado de los datos son responsabilidad del nivel _________.', 7),
('PREG45', 'CAP3', 'El control del diálogo es una función del nivel _______.', 8),
('PREG46', 'CAP3', 'Los servicios de correo y de directorio están disponibles a los usuarios de la red a través del nivel _________.', 9),
('PREG47', 'CAP3', 'La entrega nodo a nodo de las unidades de datos es responsabilidad del nivel ______.', 10),
('PREG48', 'CAP3', 'A medida que los paquetes de datos se mueven de los niveles inferiores a los superiores, las cabeceras son ______.', 11),
('PREG49', 'CAP3', 'A medida que los paquetes de datos se mueven de los niveles superiores a los inferiores, las cabeceras son _______.', 12),
('PREG5', 'CAP1', 'Los virus son un aspecto de _______ de la red.', 5),
('PREG50', 'CAP3', 'El nivel está entre el nivel de red y el nivel de sesión.', 13),
('PREG51', 'CAP3', 'El nivel 2 está entre el nivel físico y el nivel _______.', 14),
('PREG52', 'CAP3', 'Cuando se transmiten los datos del dispositivo A al dispositivo B, la cabecera del nivel 5 de A es leída por la cabecera del nivel ______ de B.', 15),
('PREG53', 'CAP3', 'En el nivel ________, ocurren las traducciones de un código de caracteres a otro,', 16),
('PREG54', 'CAP3', 'El nivel _______ cambia los bits en señales electromagnéticas.', 17),
('PREG55', 'CAP3', 'El nivel _____ puede usar la cabecera de la trama para detección de errores.', 18),
('PREG56', 'CAP3', '¿Por qué se desarrolló el modelo OSI?', 19),
('PREG57', 'CAP3', 'El nivel físico está relacionado con la transmisión de ________ sobre el medio físico.', 20),
('PREG58', 'CAP3', '¿Qué funciones de nivel constituyen un enlace entre los niveles de soporte de usuario y los niveles de soporte de red?', 21),
('PREG59', 'CAP3', '¿Cuál es la principal función del nivel de transporte?', 22),
('PREG6', 'CAP1', 'La protección de datos frente a un desastre natural, como un tornado, es un aspecto de _______ de la red.', 6),
('PREG60', 'CAP3', 'Los checkpoints de nivel de sesión _________.', 23),
('PREG61', 'CAP3', '¿Cuál de los siguientes es un servicio del nivel de aplicación?', 24),
('PREG62', 'CAP4', 'Antes de poder transmitir la información, debe transformarse en _______.', 1),
('PREG63', 'CAP4', 'Una señal periódica completa un ciclo en 0,001 segundo. ¿Cuál es su frecuencia?', 2),
('PREG64', 'CAP4', '¿Cuál de las respuestas siguientes puede ser determinada mediante un gráfico de una señal en el dominio de la frecuencia?', 3),
('PREG65', 'CAP4', '¿Cuál de las respuestas siguientes se puede determinar mediante un gráfico en el dominio de la frecuencia de una señal?', 4),
('PREG66', 'CAP4', 'En una traza en el dominio de la frecuencia, ei eje vertical mide la _________.', 5),
('PREG67', 'CAP4', 'En una traza en el dominio de la frecuencia, el eje horizontal mide la _________.', 6),
('PREG68', 'CAP4', 'En una traza en el dominio del tiempo, el eje vertical es una medida de ________.', 7),
('PREG69', 'CAP4', 'En una traza en el dominio del tiempo, el eje horizontal es una medida de ________.', 8),
('PREG7', 'CAP1', '¿Qué agencia de los Estados Unidos es miembro con voto en ISO?', 7),
('PREG70', 'CAP4', 'Si el ancho de banda de una señal es 5 KIIz y la frecuencia más baja es 52 KIIz, ¿cuál es la frecuencia más alta?', 9),
('PREG71', 'CAP4', '¿Cuál es el ancho de banda de una señal cuyo rango varía de 40 KHz a 4 MHz?', 10),
('PREG72', 'CAP4', 'Cuando uno de los componentes de una señal tiene frecuencia 0, la amplitud media de la señal _______.', 11),
('PREG73', 'CAP4', 'Una señal periódica siempre se puede descomponer en ________.', 12),
('PREG74', 'CAP4', 'A medida que se aumenta la frecuencia, el periodo ________.', 13),
('PREG75', 'CAP4', 'Dadas dos ondas seno A y B, si la frecuencia de A es dos veces la de B, entonces el periodo de B es _______ que la de A.', 14),
('PREG76', 'CAP4', 'En la Figura 4.2, parte a, ¿Cuántos valores se han representado a lo largo del eje vertical?', 15),
('PREG77', 'CAP4', 'En la Figura 4.2, parte b, ¿cuántos valores se han representado a lo largo del eje vertical?', 16),
('PREG78', 'CAP4', 'Una onda seno es _________.', 17),
('PREG79', 'CAP3', 'Si la amplitud máxima de una onda seno es de 2 voltios, la amplitud mínima es ________ voltios.', 18),
('PREG8', 'CAP1', '¿Qué agencia creó estándares para comunicaciones telefónicas (serie V) y para interfaces\r\nde red y redes públicas (serie X)?', 8),
('PREG80', 'CAP4', 'Una onda seno completa 1.000 ciclos en un segundo. ¿Cuál es su periodo?', 19),
('PREG81', 'CAP4', 'En la Figura 4.7, parte b, si la amplitud máxima es A y el periodo es P segundos, ¿Cuál es la amplitud en P/2 segundos?', 20),
('PREG82', 'CAP5', 'ASK, PSK, FSK y QAM son ejemplos de modulación ________.', 1),
('PREG83', 'CAP5', 'La codificación unipolar, bipolar y polar son tipos de codificaciones ______.', 2),
('PREG84', 'CAP5', 'PCM es un ejemplo de conversión _____.', 3),
('PREG85', 'CAP5', 'AM y FM son ejemplos de modulación ________.', 4),
('PREG86', 'CAP5', 'En QAM, tanto la fase como la _____ de la frecuencia portadora cambian.', 5),
('PREG87', 'CAP5', '¿Cuál de las siguientes se ve más afectada por el ruido?', 6),
('PREG88', 'CAP5', 'Si el espectro de frecuencia de una señal tiene un ancho de banda de 500 Hz con la frecuencia más alta en 600 Hz, ¿Cuál debería ser la tasa de maestreo de acuerdo al teorema de Nyquist?', 7),
('PREG89', 'CAP5', 'Si la tasa de baudios es 400 para una señal 4-PSK, la tasa de bits es _____ bps.', 8),
('PREG9', 'CAP1', '¿Qué organización tiene autoridad sobre el comercio interestatal e internacional en el\r\ncampo de las comunicaciones?', 9),
('PREG90', 'CAP5', 'Si la tasa de bits de una señal ASK es 1.200 bps, la tasa de baudios es ______.', 9),
('PREG91', 'CAP5', 'Si la tasa de bits de una señal FSK es 1.200 bps, la tasa de baudios es _______.', 10),
('PREG92', 'CAP5', 'Si la tasa de bits de una señal QAM es 3.000 bps y un elemento de señal se representa mediante un tribit, ¿Cuál es la tasa de baudios?', 11),
('PREG93', 'CAP5', 'Si la tasa de baudios de una señal QAM es 3.000 y el elemento de señal se representa con un tribit, ¿Cuál es la tasa de bits?', 12),
('PREG94', 'CAP5', 'Si la tasa de baudios de una señal QAM es 1.800 y la tasa de bits es 9.000, ¿Cuántos bits hay por elemento de señal?', 13),
('PREG95', 'CAP5', 'En 16-QAM, hay 16 ____.', 14),
('PREG96', 'CAP5', '¿Qué técnica de modulación usa tribits, ocho diferentes desplazamientos en fase, y una amplitud?', 15),
('PREG97', 'CAP5', 'El teorema de Nyquist especifica que la tasa mínima de muestreo debe ser ______.', 16),
('PREG98', 'CAP5', 'Dada una señal de radio AM con un ancho de banda de 10 KHz y cuyo componente de frecuencia más alta es 705 KHz, ¿Cuál es la frecuencia de la señal portadora?', 17),
('PREG99', 'CAP5', 'Un factor de la exactitud de una señal PCM reconstruida es el ______.', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `idrespuesta` varchar(10) NOT NULL,
  `idpregunta` varchar(10) NOT NULL,
  `respuesta1` varchar(500) NOT NULL,
  `respuesta2` varchar(500) NOT NULL,
  `respuesta3` varchar(500) NOT NULL,
  `respuesta4` varchar(500) NOT NULL,
  `Mensaje` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`idrespuesta`, `idpregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `Mensaje`) VALUES
('RESP1', 'PREG1', 'MEDIO', 'CRITERIO', 'PROTOCLOS', 'TOLOS LOS ANTERIORES', 'El intercambio de comunicación se hacen mediante protocolos'),
('RESP10', 'PREG10', 'FOROS', 'AGENCIAS REGULADORAS', 'ORGANIZACIONES DE ESTANDARIZACION', 'TODAS LAS ANTERIORES', 'Un foro es un sitio de discusión en línea asincrónico donde las personas publican mensajes alrededor de un tema'),
('RESP100', 'PREG100', 'UNIPOLAR', 'POLAR', 'BIPOLAR', 'TODAS LAS ANTERIORES', 'La codificación de tipo unipolar, polar y bipolar tienen siempre una amplitud de media a nula.'),
('RESP101', 'PREG101', 'NRZ-L', 'RZ', 'B8ZS', 'HDB3', 'El método NRZ-L no proporciona sincronización en su codificación.'),
('RESP102', 'PREG102', 'NRZ-I', 'RZ', 'Manchester', 'AMI', 'El método AMI usa valores positivos y negativos en su codificación.'),
('RESP103', 'PREG103', 'AMI', 'B8ZS', 'RZ', 'Manchester', 'El tipo de codificación digital a digital B8ZS se usan violaciones de marcas alternas.'),
('RESP104', 'PREG104', 'Cambios de la señal que se modula por la onda portadora', 'Cambios de la onda portadora por la señal que se modula', 'Cuantificación de los datos fuente', 'Muestreo de la frecuencia de Nyquist', 'Una señal está formada por cambios en su onda modulada.'),
('RESP105', 'PREG105', '5 KHz', '10 KHz', '200 KHz', '530 KHz', 'La FCC sus frecuencias de las estaciones de radio adyacente es 10 KHz.'),
('RESP106', 'PREG106', '50', '100', '133', '150', 'La cantidad de estaciones de FM en una regulación FCC es de 100.'),
('RESP107', 'PREG107', 'ANALOGICO', 'DIGITAL', 'QAM', 'DIFERENCIAL', 'La conversión de PCM es de analógico a digital.'),
('RESP108', 'PREG108', '4', '5', '6', '7', 'Se usaran 4 bits para codificar una señal PCM de 31 a -31.'),
('RESP109', 'PREG109', 'SIEMPRE UNA ONDA SENO', 'SIEMPRE DOS ONDAS SENO', 'UN NUMERO INFINITO DE ONDAS SENO', 'NINGUNA DE LAS ANTERIORES', 'Ninguna de las respuestas seria un resultado de la descomposición a una señal ASK.'),
('RESP11', 'PREG11', 'EIA', 'ITU-T', 'ANSI', 'ISO', 'La EIA(Asociación de Industrias Electrónicas) es una asociación de comercio que desarrolla y publica una serie de estándares que abarcan el cableado estructurado'),
('RESP110', 'PREG110', '1', '3', '4', '5', 'Los niveles de amplitud es de 4 para una señal de codificación RZ'),
('RESP111', 'PREG111', '2', '8', '16', '32', 'Una reproducción de señal más fiable seria de un nivel de 32 en su cuantificación.'),
('RESP112', 'PREG112', 'B8ZS', '1IDB3', 'AMI', 'a y b', 'Las técnicas de codificación B8ZS y 1IDB3 resuelven la pérdida de sincronización.'),
('RESP113', 'PREG113', 'CONVERSION DIGITAL A DIGITAL', 'CONVERSION DE ANALOGICO A DIGITAL', 'CONVERSION DE DIGITAL A ANALOGICO', 'TODAS LAS ANTERIORES', 'Todos los tipos de conversión incluyen una modulación en su señal.'),
('RESP114', 'PREG114', 'CONVERSION DIGITAL A DIGITAL', 'CONVERSION DE ANALOGICO A DIGITAL', 'CONVERSION DE DIGITAL A ANALOGICO', 'TODAS LAS ANTERIORES', 'El tipo de conversión analógico necesita el muestreo de su señal.'),
('RESP115', 'PREG115', 'PORTADORA', 'QUE SE MODULA', 'BIPOLAR', 'MUESTREO', 'Una señal FM necesita 10 veces el ancho de banda de una señal portadora.'),
('RESP116', 'PREG116', 'AMPLITUD', 'FRECUENCIA', 'FASE', 'NINGUNA DE LAS ANTERIORES', 'La frecuencia es la modulación de una señal analógica a través de la modulación de la señal portadora.'),
('RESP117', 'PREG117', 'AMPLITUD', 'FRECUENCIA', 'FASE', 'NINGUNA DE LAS ANTERIORES', 'La amplitud es la modulación de una señal digital a través de la modulación de la señal portadora.'),
('RESP118', 'PREG118', 'SERIE ASINCRONA', 'SERIE SINCRONA', 'PARALELA', 'a y b', 'Los bits se transmiten simultáneamente en un transmisión paralela.'),
('RESP119', 'PREG119', 'SERIE ASINCRONA', 'SERIE SINCRONA', 'PARALELA', 'a y b', 'Los bits se transmiten a través de un único hilo, en la transmisión asíncrona y síncrona.'),
('RESP12', 'PREG12', 'EIA', 'ITU-T', 'ANSI', 'IEEE', 'El IEEE(Instituto de Ingenieros en Electricidad y Electrónica) es un organismo profesional para aquellos que trabajan en los campos de la electrónica y de la ingeniería eléctrica y se dedican a promover la innovación tecnológica y crear estándares'),
('RESP120', 'PREG120', 'SERIE ASINCRONA', 'SERIE SINCRONA', 'PARALELA', 'a y b', 'Se enmarca cada byte con uno de inicio y uno de fin en la transmisión asíncrona.'),
('RESP121', 'PREG121', 'FIJO', 'VARIABLE', 'UNA FUNCION DE LA LASA DE DATOS', 'CERO', 'El intervalo entré los bytes es variable en la transmisión asíncrona.'),
('RESP122', 'PREG122', 'BIT DE INICIO', 'BIT DE PARADA', 'INTERVALO ENTRE BYTES', 'TODO LO ANTERIOR', 'La transmisión de serie síncrona no tiene bit de inicio, de parada e intervalo entre ellas.'),
('RESP123', 'PREG123', 'EQUIPO TERMINAL DE DATOS', 'EQUIPO DE TRANSMISION DE DATOS', 'CODIFICADOR TERMINAL DIGITAL ', 'EQUIPO DE TRANSMISION DIGITAL', 'Un dispositivo que es origen o destino para datos digitales es un equipo terminal de datos.'),
('RESP124', 'PREG124', 'EQUIPO DE CONEXION DIGITAL', 'EQUIPO TERMINAL DEL CIRCUITO DE DATOS', 'EQUIPO DE CONVERSION DE DATOS', 'EQUIPO DE COMUNICACION DIGITAL ', 'Un dispositivo que transmite o recibe datos en forma de señal analógica o digital es un equipo terminal de circuito de datos.'),
('RESP125', 'PREG125', 'MECANICAS', 'ELECTRICAS', 'FUNCIONALES', 'TODAS LAS ANTERIORES', 'La interfaz DTE-DCE tiene como características mecánicas, eléctricas, funcionales del EIA-232.'),
('RESP126', 'PREG126', 'NRZ-I', 'NRZ-L', 'Manchester', 'Manchester diferencial', 'El estándar EIA-232 tiene el método de codificación NRZ-L.'),
('RESP127', 'PREG127', 'MAYOR QUE—15', 'MENOS QUE-15', 'ENTRE-3 Y -15', 'ENTRE 3 Y 15', 'La especificación de que 0 debe ser menos que -15 voltios es el estándar EIA-232.'),
('RESP128', 'PREG128', '20', '24', '25', '30', '25 patillas tiene la interfaz EIA-232.'),
('RESP129', 'PREG129', '2', '3', '4', 'Todas las anteriores', 'La patilla 2 de la interfaz EIA-232 se encarga de enviar datos.'),
('RESP13', 'PREG13', 'MEDIO', 'PROTOCOLO', 'MENSAJE', 'TRANSMISION', 'Los datos que uno transmite en una comunicación de datos se le conoce como mensaje'),
('RESP130', 'PREG130', 'CONTROL', 'TEMPORIZACION', 'DATOS', 'PRUEBAS', 'La interfaz EIA-232 tiene patillas que mayormente se usan para tareas de datos.'),
('RESP131', 'PREG131', 'I', 'O', 'Indefinido', '1 o 0 dependiendo del esquema de codificación.', 'La I representa un valor de - 12 V.'),
('RESP132', 'PREG132', 'Petición de envío (4) y listo para enviar (5)', 'Detector de señal de recepción de linea (8)', 'DTE listo (20) y DCE listo (6)', 'Todos los anteriores', 'La petición de envió y listo para enviar, el detector de señal de recepción de línea, y el DTE listo y DCE listo son patillas necesarias para transmisión de datos.'),
('RESP133', 'PREG133', 'El bucle local (18)', 'Bucle remoto y detector de calidad de señal (21)', 'Modo de prueba (25)', 'a y c', 'El bucle local es una patilla que sirve para probar el bucle local.'),
('RESP134', 'PREG134', 'Bucle remoto y detector de calidad de señal (21)', 'El bucle local (18)', 'Modo de prueba (25)', 'a y c', 'El modo de prueba es una patilla que sirve para probar el bucle de retorno.'),
('RESP135', 'PREG135', '9', '10', '11', 'Todas las anteriores', 'Las patillas 9, 10 y 11 no se usan actualmente.'),
('RESP136', 'PREG136', '12', '13', '19', 'Todas las anteriores', 'Las patillas 12, 13, 19 son usadas por el canal secundario.'),
('RESP137', 'PREG137', 'E1A-449', 'E1A-232', 'RS-423', 'RS-422', 'Una longitud máxima de cable de 50 pies lo especifica el estándar E1A-232.'),
('RESP138', 'PREG138', '50', '500', '4000', '5000', 'Es posible usar una longitud de cable entre los 40 pies y los 4000 pies en el estándar EIA-449.'),
('RESP139', 'PREG139', '0,1', '10', '100', '500', 'El RS-422 tiene una tasa de datos máxima la cual es 100 veces que el RS-423 en su tasa máxima.'),
('RESP14', 'PREG14', 'PROCESAMIENTO DISTRIBUIDO', 'MENSAJERIA DISTRIBUIDA', 'TELEFONIA DISTRIBUIDA', 'MENSAJERIA ELECTRONICA', 'El procesamiento distribuido se define como, la forma en que es posible conectar distintas máquinas, en cierto tipo de red de comunicaciones, generalmente una LAN o una red de área amplia o una red como Internet'),
('RESP140', 'PREG140', '-2', '-8', '-10', '-12', 'En un voltaje de 10 V a 12 V al momento que cambia el ruido, su complemento tendría un valor de -10 V en el circuito RS-422.'),
('RESP141', 'PREG141', '-1,0', '-0,5', '0,5', '1,0', 'Se añadirán -0,5 voltios al bit complementario de un ruido de 0,5 V lo cual corrompe un bit de un circuito RS-422.'),
('RESP142', 'PREG142', 'DATOS', 'TEMPORIZACION', 'CONTROL', 'TIERRA', 'Las patillas de control son eliminadas por el X.21 las cuales se encuentran en los estándares EIA.'),
('RESP143', 'PREG143', 'DB-15', 'DB-25', 'DB-37', 'DB-9', 'El DB-15 es un conector perteneciente al X.21.'),
('RESP144', 'PREG144', 'DATOS', 'TEMPORIZACION', 'CONTROL', 'TIERRA', 'Las patillas de control son las encargadas de enviar la información de control por el estándar X.21.'),
('RESP145', 'PREG145', 'Patilla de recepción de datos (3) del mismo DTE', 'Patilla de recepción de datos (3) de otro DTE', 'Patilla de transmisión de datos (2) de otro DTE', 'Una señal de tierra de otro DTE', 'La patilla de recepción de datos se conecta a otra patilla de recepción de datos de un DTE en un modem nulo.'),
('RESP146', 'PREG146', 'Un modem nulo', 'Un cable EIA-232', 'Un conectar DB-45', 'Un transceptor', 'Un modem nulo seria una buena interfaz para dos DTE que transmiten data sin ser modulados.'),
('RESP147', 'PREG147', 'H', 'L', 'H - L', 'L - H', 'Si I-I es la frecuencia más alta y L es la frecuencia más baja, el ancho de banda de la línea seria H-L.'),
('RESP148', 'PREG148', 'EQUIVALENTE A', 'MENOR QUE', 'MAYOR QUE', 'DOS VECES', 'El ancho de banda de la voz en una línea telefónica es mayor que el ancho de banda que se usa para los datos.'),
('RESP149', 'PREG149', 'EQUIVALENTE', 'MENOR QUE', 'MAYOR QUE', 'DOS VECES', 'El ancho de banda mínimo en una tasa de bits es menor que el ancho de banda mínimo para FSK.'),
('RESP15', 'PREG15', 'ISO', 'OSI', 'EIA', 'ANSI', 'La ISO(Organización Internacional de Estandarización) es una organización para la creación de estándares internacionales compuesta por diversas organizaciones nacionales de normalización'),
('RESP150', 'PREG150', 'SE DECREMENTA', 'INCREMENTA', 'SIGUE SIENDO EL MISMO', 'SE DOBLA', 'El ancho de banda incrementa al igual que se incrementa la tasa de bits de una señal FSK.'),
('RESP151', 'PREG151', 'SE DECREMENTA', 'SE INCREMENTA', 'ES EL MISMO', 'SE DIVIDE POR LA MITAD', 'El ancho de banda es el mismo que la frecuencia de dos portadores en FSK.'),
('RESP152', 'PREG152', '16-QAM', 'FSK', '8-PSK', 'Todas las anteriores', 'Las técnicas de modulación 16-QAM, FSK y 8-PSK se usan en los módems.'),
('RESP153', 'PREG153', 'Mas ancho de banda que', 'Menos ancho de banda que', 'El mismo ancho de banda que', 'Una orden de magnitud de ancho de banda mas que', 'Normalmente se necesita menos ancho de banda para la modulación 2-PSK para conseguir la tasa de datos en comparación que el FSK.'),
('RESP154', 'PREG154', 'Bell 103', 'Bell 201', 'Bell 212', 'Todos los anteriores', 'El modem Bell 103 usa modulación FSK.'),
('RESP155', 'PREG155', 'V.32', 'V.33', 'V.34', 'a y b', 'Los módems estándar V32 y V33 usan codificación de trellis.'),
('RESP156', 'PREG156', 'IGUAL A', 'MENOR QUE', 'MAS QUE', 'DOBLE QUE', 'El numero de bits de datos es menor que el numero de bits transmitidos en la codificación trellis.'),
('RESP157', 'PREG157', '0', '90', '180', '270', 'Si se usa una velocidad más baja en el estándar V22bis, además actualmente permanece en al tercer cuadrante y el siguiente dibit es 11 tendría un cambio de fase de 270 grados.'),
('RESP158', 'PREG158', 'ESTRECHAR EL ANCHO DE BANDA', 'SIMPLIFICAR LA MODULACION', 'INCREMENTAR LA TASA DE DATOS', 'REDUCIR LA TASA DE ERROR', 'La codificación trellis tiene como propósito reducir la tasa de error.'),
('RESP159', 'PREG159', 'FSK', 'PSK', 'DPSIC', 'ASK', 'Los cambios de fase en la modulación DPSIC son función del patrón de bit actual y los patrones de bits anteriores.'),
('RESP16', 'PREG16', 'SINTAXIS', 'SEMANTICA', 'TEMPORIZACION', 'NINGUNO DE LOS ANTERIORES', 'La temporización afecta a la cantidad de información que se puede enviar y la velocidad con la que puede entregarse en la comunicación entre las redes'),
('RESP160', 'PREG160', 'FSK', 'QAM', '4-PSK', 'Todos los anteriores', 'La tasa de bits es siempre igual a la tasa de baudios en la señal de tipo FSK.'),
('RESP161', 'PREG161', 'digital; analógica', 'analógica; digital', 'PSK; FSK', 'FSK; PSK', 'De una señal digital a una señal analógica lo convierte un modulador.'),
('RESP162', 'PREG162', 'ASINCRONA SENCILLA', 'SINCRONA SENCILLA', 'SIMPLEX', 'NINGUNA DE LAS ANTERIORES', 'Una conexión asíncrona sencilla se usa en el estándar EIA-232 al momento de la implementación DB-9.'),
('RESP163', 'PREG163', 'V.32', 'V.32bis', 'V.34', 'V.42', 'El protocolo LAPM lo utiliza el estándar V.42.'),
('RESP164', 'PREG164', 'V.32', 'V.32bis', 'V.42', 'V.42bis', 'El método de compresión Lempel-Ziv-Welch lo utiliza el estándar V42bis.'),
('RESP165', 'PREG165', '33,6; 33,6', '33,6; 56,6', '56,6; 33,6', '56,6; 56,6', 'Se pueden recibir datos en una tasa de 56,6 Kbps y emitir datos con una tasa de 33,6 Kbps en un modem de 56K.'),
('RESP166', 'PREG166', 'La modulación en la estación de conmutación', 'La modulación en el proveedor de servicios', 'La modulación AMI', 'Alto ancho de banda de! cable coaxial', 'Un proveedor de televisión por cable puede tener una tasa de datos mayor debido al alto ancho de banda del cable coaxial, para los usuarios conectados a Internet.'),
('RESP167', 'PREG167', 'FIJOS O NO FIJOS', 'GUIADOS O NO GUIADOS', 'DETERMINADOS O INDETERMINADOS', 'METÁLICOS O NO METÁLICOS', 'Se clasifican habitualmente como guiados o no guiados a los medios de transmisión.'),
('RESP168', 'PREG168', 'PAR TRENZADO', 'COAXIAL', 'FIBRA ÓPTICA', 'PAR TRENZADO BLINDADO', 'Un núcleo interno de cobre y una segunda cubierta exterior conductora es una característica que forma parte del cable coaxial.'),
('RESP169', 'PREG169', 'LUZ', 'RADIO', 'INFRARROJOS', 'FRECUENCIA MUY BAJA', 'Las sondas de luz son orígenes de la fibra óptica'),
('RESP17', 'PREG17', 'SINTAXIS', 'SEMANTICA', 'TEMPORIZACION', 'NINGUNO DE LAS ANTERIORES', 'La semántica estudia diversos aspectos del significado, sentido o interpretación de signos lingüísticos como símbolos, palabras, expresiones o representaciones formales'),
('RESP170', 'PREG170', 'ONDAS DE RADIO', 'POTENCIA Y VOZ', 'LUZ ULTRAVIOLETA', 'LUZ INFRARROJA', 'La potencia y voz se encuentran en el extremo mas bajo del espectro electromagnético.'),
('RESP171', 'PREG171', 'ONDAS DE LUZ VISIBLE', 'RAYOS CÓSMICOS', 'ONDAS DE RADIO', 'RAYOS GAMMA', 'Las ondas electromagnéticas de alta frecuencia que se usan para comunicaciones de datos son las ondas de luz visible.'),
('RESP172', 'PREG172', 'UN MEDIO GUIADO', 'UN MEDIO SIN GUIAR', 'UN MEDIO REFRACTIVO', 'UN MEDIO PEQUEÑO O GRANDE', 'Un medio sin guiar son las señales de humo como medio de comunicación.'),
('RESP173', 'PREG173', 'SISTEMA DE TELEFONÍA CELULAR', 'SISTEMA TELEFÓNICO LOCAL', 'COMUNICACIONES VÍA SATÉLITE', 'EMISIONES DE RADIO', 'Un sistema de telefonía local es un medio gratuito.'),
('RESP174', 'PREG174', 'CABLE DE PAR TRENZADO', 'CABLE COAXIAL', 'CABLE DE FIBRA ÓPTICA', 'ATMÓSFERA', 'La atmosfera no es un medio de comunicación guiado'),
('RESP175', 'PREG175', 'CABLE DE PAR TRENZADO', 'CABLE COAXIAL', 'FIBRA ÓPTICA', 'LA ATMÓSFERA', 'La fibra óptica es el mejor medio de transmisión para dispositivos de alto voltaje.'),
('RESP176', 'PREG176', 'CONDUCTOR INTERNO', 'DIÁMETRO DEL CABLE', 'CONDUCTOR EXTERNO', 'MATERIAL AISLANTE', 'Un cable coaxial es menos susceptible al ruido si su conductor es externo.'),
('RESP177', 'PREG177', 'PARES TRENZADOS', 'CABLES COAXIALES', 'FIBRA ÓPTICA', 'TODOS LOS ANTERIORES', 'Los cables coaxiales dan información sobre el numero RG.'),
('RESP178', 'PREG178', 'MÁS DENSO QUE', 'MENOS DENSO QUE', 'DE LA MISMA DENSIDAD QUE', 'OTRO NOMBRE', 'El núcleo interno es mas denso que la cubierta de una fibra óptica.'),
('RESP179', 'PREG179', 'VIDRIO PLÁSTICO', 'COBRE', 'BIMETÁLICO', 'LÍQUIDO', 'El vidrio plástico forma parte del núcleo de la fibra óptica.'),
('RESP18', 'PREG18', 'SINTAXIS', 'SEMANTICA', 'TEMPORIZACION', 'NINGUNO DE LAS ANTERIORES', 'La sintaxis consiste en las normas a las que debemos atenernos para darle las instrucciones a un programa u ordenador y generar en él una respuesta adecuada'),
('RESP180', 'PREG180', 'Núcleos internos o fibras de conexión desalineadas angular o lateralmente.', 'Un intervalo entre las conexiones de los núcleos internos', 'Rugosidades en las caras de las fibras en conexión', 'Todo lo anterior', 'La distorsión de una señal en las conexiones de fibra óptica son los núcleos internos o fibras de conexión desalineadas angular o lateralmente, un intervalo entre las conexiones de los núcleos internos y rugosidades en las caras de las fibras en conexión.\r\n'),
('RESP181', 'PREG181', '3 KHz a 300 KHz', '300 KHz a 3 GHz', '3 KHz a 300 GHz', '3 KHz a 3.000 GHz', 'Desde 3 KHz a 300 GHz llega las frecuencias de radio como medio de comunicación.'),
('RESP182', 'PREG182', 'AMPLITUD', 'FRECUENCIA', 'COSTE Y HARDWARE', 'MEDIO DE TRANSMISIÓN', 'Se basan en la frecuencia para dividir las bandas en un espectro de comunicación.'),
('RESP183', 'PREG183', 'EN SUPERFICIE', 'TROPOSFÉRICA', 'IONOSFÉRICA', 'ESPACIAL', 'Las ondas de radio de baja frecuencia abrazan a la tierra en la propagación en superficie.'),
('RESP184', 'PREG184', 'TASA DE DATOS', 'FRECUENCIA', 'TASA DE BAUDIOS', 'POTENCIA', 'La frecuencia de una señal de radio depende mucho para la comunicación.'),
('RESP185', 'PREG185', 'LA TROPOSFERA', 'LA IONOSFERA', 'EL ESPACIO', 'TODOS LOS ANTERIORES', 'En la troposfera se reproduce la propagación VLF.'),
('RESP186', 'PREG186', 'UNA HORA', '24 HORAS', 'UN MES', 'UN AÑO', 'Se completa una orbita en 24 horas en un satélite que esta en orbita geosincrónica.'),
('RESP187', 'PREG187', 'Constante', 'Varía de acuerdo a la hora del día', 'Varía de acuerdo al radio de la órbita', 'Ninguna de las anteriores', 'Su distancia a la estación emisora es constante en un satélite está en órbita geosincrónica.'),
('RESP188', 'PREG188', 'REFLEXIÓN', 'REFRACCIÓN', 'INCIDENCIA', 'CRITICISMO', 'El ángulo de incidencia es mayor que el ángulo crítico hay reflexión cuando un haz de luz viaja a través de un medio con dos densidades distintas.'),
('RESP189', 'PREG189', 'MÁS QUE', 'MENOS QUE', 'IGUAL QUE', 'NINGUNO DE LOS ANTERIORES', 'El rayo de luz se mueve de un medio más denso a un medio menos denso y el ángulo de refracción es mas que que el ángulo de incidencia.'),
('RESP19', 'PREG19', 'El estándar de facto ha sido legislado por un organismo oficialmente reconocido; el\r\nestándar de jure, no.', 'El estándar de jure ha sido legislado por un organismo oficialmente reconocido; el estándar de facto, no.', 'La compañía inventora puede poseer totalmente un estándar de hecho y no un estándar de facto.', 'Un estándar de jure es de un propietario; un estándar de hecho, no lo es.', 'Un estándar de facto es aquel patrón o norma que se caracteriza por no haber sido consensuada ni legitimada por un organismo de estandarización mientras que un estándar de jure es aquel generado por comisiones con estatus legal y que gozan del respaldo de un gobierno u organismo'),
('RESP190', 'PREG190', '10', '50', '60', '110', 'El ángulo de reflexión es 60 grados cuando un ángulo crítico es 50 grados y el ángulo de incidencia es 60 grados.'),
('RESP191', 'PREG191', '42', '48', '90', '138', 'El ángulo critico es 48 grados cuando un ángulo de refracción es 90 grados y el ángulo de incidencia es 48 grados.'),
('RESP192', 'PREG192', '50', '60', '70', '120', 'Ángulo de incidencia por debajo del cual un modo de propagación es totalmente reflejado. Por ejemplo: El primer ángulo crítico es el ángulo por debajo del cual la onda longitudinal incidente es refractada únicamente en ondas transversales.'),
('RESP193', 'PREG193', 'Multimodo de índice escalonado', 'Índice de gradiente gradual multimodo', 'Índice único multimodo', 'Monomodo', 'En la comunicación por fibra óptica, una fibra óptica monomodo (SMF por sus siglas en inglés) es una fibra óptica diseñada para transportar luz solo directamente a través de la fibra, el modo transversal.'),
('RESP194', 'PREG194', 'Multimodo de índice escalonado', 'Multimodo con índice de gradiente gradual', 'Indice único multimodo', 'Monomodo', 'Las fibras multimodo de índice escalonado están fabricadas a base de vidrio, con una atenuación de 30 dB/km, o plástico, con una atenuación de 100 dB/km. Tienen una banda de paso que llega hasta los 40 MHz por kilómetro.'),
('RESP195', 'PREG195', 'Multimodo de índice escalonado', 'Multimodo con índice de gradiente gradual', 'Índice único multimodo', 'Monomodo', 'Las fibras multimodo de índice de gradiente gradual tienen una banda de paso que llega hasta los 500MHz por kilómetro. Su principio se basa en que el índice de refracción en el interior del núcleo no es único y decrece cuando se desplaza del núcleo hacia la cubierta.'),
('RESP196', 'PREG196', 'CABLES METÁLICOS', 'CABLES NO METÁLICOS', 'LA ATMÓSFERA', 'NINGUNO DE LOS ANTERIORES', 'Los medios de transmisión son las vías por las cuales se comunican los datos. Dependiendo de la forma de conducir la señal a través del medio o soporte físico, se pueden clasificar en dos grandes grupos: Alámbricos o guiados e Inalámbricos o no guiados.'),
('RESP197', 'PREG197', 'TRANSMISIONES DE ALTA FRECUENCIA', 'TRANSMISIONES DE BAJA FRECUENCIA', 'INTERFERENCIA ELECTROMAGNÉTICA', 'REFRACCIÓN', 'La interferencia electromagnética, radio interferencia o interferencia de radiofrecuencia es la perturbación que ocurre en cualquier circuito, componente o sistema electrónico causada por una fuente de radiación electromagnética externa o interna.'),
('RESP198', 'PREG198', 'CÉLULAS', 'CENTRALES DE CÉLULAS', 'MTSOs', 'LUGARES DE RETRANSMISIÓN', 'En un sistema de telefonía celular, la zona total de cobertura se divide en pequeñas regiones denominadas celdas, cada una de las cuales es servida por una estación base (BS) ubicada en las coordenadas (Xi Yj).'),
('RESP199', 'PREG199', 'EL TERRENO', 'LA POBLACIÓN', 'EL NÚMERO DE MTSO', 'TODO LO ANTERIOR', 'El tamaño de las celdas depende de muchos factores como el tipo de antenas utilizado, el terreno (llanuras, montañas, valles, etc.), la ubicación de la instalación (área rural, urbana, etc.), la densidad de población, etc.'),
('RESP2', 'PREG2', 'PROTOCOLO', 'MEDIO', 'SEÑAL', 'TODOS LOS ANTERIORES', 'Los mensajes viajan mediante medios como un camino físico'),
('RESP20', 'PREG20', 'MALLA', 'ESTRELLA', 'BUS', 'ANILLO', 'La topología en estrella es una red de computadoras donde las estaciones están conectadas directamente a un punto central y todas las comunicaciones se hacen necesariamente a través de ese punto'),
('RESP200', 'PREG200', 'Conectar la célula con la central telefónica central', 'Asignar canales de transmisión', 'Efectuar funciones de facturación', 'Todo lo anterior', 'La Oficina de Conmutación de Telefonía móvil es el equivalente de una Oficina Central PSTN para Telefonía Móvil. La función de MTSO es controlar el procesamiento y establecimiento de llamadas, así como la realización de llamadas, lo cual incluye señalización, supervisión, conmutación y distribución de los canales de RF.'),
('RESP201', 'PREG201', 'TRANSFERENCIA', 'INJERENCIA', 'RADIOLOCALIZACIÓN', 'RECEPCIÓN', 'Las medidas son algunas veces realizadas usando los tiempos de viaje, o la diferencias en tiempos de arribo de dos señales de radio, o la fase o diferencia de fase en un patrón de onda estacionario resultante de la interferencia de dos transmisiones de onda continua, ocasionalmente de un desplazamiento de la frecuencia Doppler.'),
('RESP202', 'PREG202', 'P2 es cero', 'P2 es igual a P1', 'P2, es mucho mayor que P1', 'P2 es mucho menor que P1', 'El valor en dB es negativo si una señal se ha atenuado y positivo si una señal se ha amplificado. La expresión matemática del db es la siguiente: dB=101og10(P2/P1) donde P1 y P2 representan la potencia de la señal medidas en los puntos 1 y 2.'),
('RESP203', 'PREG203', 'ATENUACIÓN', 'DISTORSIÓN', 'RUIDO', 'DECIBELIO', 'Se denomina atenuación de una señal, sea esta acústica, eléctrica u óptica, a la pérdida de potencia sufrida por la misma al transitar por cualquier medio de transmisión. Por ejemplo, la atenuación del sonido es el reparto de energía de la onda entre un volumen de aire cada vez mayor.'),
('RESP204', 'PREG204', 'ATENUACIÓN', 'DISTORSIÓN', 'RUIDO', 'DECIBELIO', 'La distorsión consiste en la deformación de la señal, producida normalmente porque el canal se comporta de modo distinto en cada frecuencia. Para una señal que se transmite en un rango de frecuencias, la velocidad es mayor en las frecuencias centrales y disminuye en las frecuencias de los extremos.'),
('RESP205', 'PREG205', 'ATENUACIÓN', 'DISTORSIÓN', 'RUIDO', 'DECIBELIO', 'Se denomina ruido a toda señal no deseada que se mezcla con la señal útil que se quiere transmitir. Es el resultado de diversos tipos de perturbaciones que tiende a enmascarar la información cuando se presenta en la banda de frecuencias del espectro de la señal, es decir, dentro de su ancho de banda.'),
('RESP206', 'PREG206', 'RENDIMIENTO', 'VELOCIDAD DE PROPAGACIÓN', 'TIEMPO DE PROPAGACIÓN', 'TODOS LOS ANTERIORES', 'El rendimiento de red se refiere a las medidas de calidad de servicio de un producto de telecomunicaciones desde el punto de vista del cliente. Hay muchas formas diferentes de medir el rendimiento de una red, ya que cada red es diferente en su naturaleza y diseño.'),
('RESP207', 'PREG207', 'RENDIMIENTO', 'VELOCIDAD DE PROPAGACIÓN', 'TIEMPO DE PROPAGACIÓN', 'B O C', 'El factor de velocidad de una línea de transmisión es la relación entre la velocidad de propagación de una señal en un cable y la velocidad de propagación de la luz en el espacio libre. Vf=Vp/c'),
('RESP208', 'PREG208', 'RENDIMIENTO', 'VELOCIDAD DE PROPAGACIÓN', 'TIEMPO DE PROPAGACIÓN', 'B O C', 'También puede definirse como la cantidad de datos movidos satisfactoriamente de un lugar a otro en un período determinado. El rendimiento se mide en bits por segundo (BPS). En términos de hoy esto se expresará en megabits por segundo (Mbps), o gigabits por segundo (Gbps).'),
('RESP209', 'PREG209', 'RENDIMIENTO', 'VELOCIDAD DE PROPAGACIÓN', 'TIEMPO DE PROPAGACIÓN', 'B O C', 'La industria de la comunicación usa cinco unidades para medir el periodo: segundo (s), milisegundo (ms = 10 -3 s), microsegundo (μs= 10 -6 s), nanosegundo (ns = 10 -9 s) y picosegundo (ps = 10 -12 s).'),
('RESP21', 'PREG21', 'MALLA', 'ESTRELLA', 'BUS', 'ANILLO', 'La topología en bus es aquella que se caracteriza por tener un único canal de comunicaciones al cual se conectan los diferentes dispositivos'),
('RESP210', 'PREG210', 'Rendimiento', 'Longitud de onda de la señal', 'Factor de distorsión', 'Distancia a que ha viajado una señal o 1111 bit', 'La longitud de onda, también conocida como periodo espacial es la inversa de la frecuencia multiplicado por la velocidad de propagación de la onda en el medio por el cual se propaga. La longitud de onda se suele representar con la letra griega λ.'),
('RESP211', 'PREG211', 'INVERSAMENTE; DIRECTAMENTE', 'DIRECTAMENTE; INVERSAMENTE', 'INVERSAMENTE; INVERSAMENTE', 'DIRECTAMENTE; DIRECTAMENTE', 'Velocidad de propagación C= λ·Frec (C=3·10 8 m/s)'),
('RESP212', 'PREG212', 'INVERSAMENTE; DIRECTAMENTE', 'DIRECTAMENTE; INVERSAMENTE', 'INVERSAMENTE; INVERSAMENTE', 'DIRECTAMENTE; DIRECTAMENTE', 'La velocidad de propagación es la velocidad de la onda que se propaga a través del medio. Si la velocidad de onda es constante, la velocidad se puede encontrar mediante v = λT = λf. La frecuencia es el número de onda que pasa un punto por unidad de tiempo. La longitud de onda es directamente proporcional a la velocidad de la onda e inversamente proporcional a la frecuencia.'),
('RESP213', 'PREG213', 'FRECUENCIA DE LA SEÑAL', 'MEDIO', 'FASE DE LA SEÑAL', 'A Y B', 'También conocida como periodo espacial es la inversa de la frecuencia multiplicado por la velocidad de propagación de la onda en el medio por el cual se propaga. La longitud de onda se suele representar con la letra griega λ.'),
('RESP214', 'PREG214', 'MENOR QUE', 'MAYOR QUE', 'IGUAL A', 'NINGUNO DE LOS ANTERIORES', 'La región donde la fibra óptica y los elementos ópticos trabajan, incluye la luz visible al ojo humano que va desde las longitudes de ondas de los 400 a 700 nm. Sin embargo, para las fibras usadas en telecomunicaciones se usan longitudes de onda mayores (menores frecuencias), o las que se encuentran en la zona infrarroja.'),
('RESP215', 'PREG215', 'La señal es menor que el ruido', 'La señal es mayor que el ruido', 'La señal es igual al ruido', 'No hay suficiente información para dar una respuesta', 'Se define como la proporción existente entre la potencia de la señal que se transmite y la potencia del ruido que la corrompe. Este margen es medido en decibelios.'),
('RESP216', 'PREG216', 'MODULACIÓN', 'CODIFICACIÓN', 'DISCIPLINA DE LÍNEA', 'MULTIPLEXACIÓN', 'La multiplexación es la técnica de combinar dos o más señales, y transmitirlas por un solo medio de transmisión. La principal ventaja es que permite varias comunicaciones de forma simultánea, usando un dispositivo llamado multiplexor.'),
('RESP217', 'PREG217', 'FDM', 'TDM SÍNCRONA', 'TDM ASÍNCRONA', 'B Y C', 'En las telecomunicaciones, la multiplexación por división de frecuencia (FDM) es una técnica mediante la cual el ancho de banda total disponible en un medio de comunicación se divide en una serie de sub-bandas de frecuencias levemente distintas, cada una de las cuales se utiliza para transportar una señal separada.'),
('RESP218', 'PREG218', 'FDNM', 'TDM SÍNCRONA', 'TDM ASINCRONA', 'B Y C', 'La multiplexación por división de tiempo (TDM) es una técnica que permite la transmisión de señales digitales y cuya idea consiste en ocupar un canal (normalmente de gran capacidad) de trasmisión a partir de distintas fuentes, de esta manera se logra un mejor aprovechamiento del medio de trasmisión.'),
('RESP219', 'PREG219', 'FDM', 'TDM SÍNCRONA', 'TDM ASINCRONA', 'NINGUNA DE LAS ANTERIORES', 'Multiplexación por división de frecuencia (FDM) es una técnica analógica que se implementa solo cuando el ancho de banda del enlace es mayor que el ancho de banda combinado de las señales a transmitir.'),
('RESP22', 'PREG22', 'SIMPLEX', 'SEMIDUPLEX', 'FULL-DUPLEX', 'AUTOMATICA', 'Una transmisión simplex, también denominado unidireccional, es una transmisión única, de una sola dirección'),
('RESP220', 'PREG220', 'ENLACE DE DATOS DE ALTA CAPACIDAD', 'TRANSMISIONES PARALELAS', 'QAM', 'MÓDEMS', 'Un enlace de datos es el medio de conexión entre dos lugares con el propósito de transmitir y recibir información y que consiste en un transmisor y un receptor  y el circuito de telecomunicación de datos de interconexión.'),
('RESP221', 'PREG221', 'UN CAMINO Y UN CANAL', 'UN CAMINO Y MÚLTIPLES CANALES', 'MÚLTIPLES CAMINOS Y UN CANAL', 'MÚLTIPLES CAMINOS Y MÚLTIPLES CANALES', 'Los términos Multiplexación y Acceso múltiple apuntan a la compartición de un recurso de comunicación determinado. En ellos un número de señales independientes se combinan en una única señal compuesta para ser transmitida por un canal común.'),
('RESP222', 'PREG222', 'n', 'n + 1', 'n - 1', '0 a n', 'En transmisión síncrona se envía, además de los datos la señal de reloj; de esta manera el receptor se sincroniza con el emisor y determina los instantes significativos de la señal que recibe.'),
('RESP223', 'PREG223', 'MENOR QUE', 'MAYOR QUE', 'IGUAL', '1 MENOS QUE', 'Este modo de transmisión se caracteriza porque la base de tiempo del emisor y receptor no es la misma, empleándose un reloj para la generación de datos en la transmisión y otro distinto para la recepción.'),
('RESP224', 'PREG224', 'MAYOR QUE', 'MENOR QUE', 'IGUAL A', '1 MENOS QUE', 'La multiplexación por división de frecuencias ortogonales en inglés orthogonal frequency division multiplexing (OFDM) es una técnica de transmisión que consiste en la multiplexación de un conjunto de ondas portadoras de diferentes frecuencias, donde cada una transporta información, la cual es modulada en QAM o en PSK.'),
('RESP225', 'PREG225', 'FDM', 'TDM ASINCRONA', 'TDM SÍNCRONA', 'MULTIPLEXACIÓN INVERSA', 'Un multiplexor inverso se diferencia de un demultiplexor porque los múltiples flujos de salida del primero permanecen interrelacionados, mientras que los del segundo no lo están. Un multiplexor inverso es lo contrario de un multiplexor porque divide un enlace de alta velocidad en múltiples enlaces de baja velocidad.'),
('RESP226', 'PREG226', 'LÍNEA ANALÓGICA CONMUTADA', 'LÍNEA ANALÓGICA DEDICADA', 'SERVICIO CONMUTADO/56', 'SERVICIOS DDS', 'Las líneas que se incluyen dentro de la Red de telefonía conmutada (RTC o RTBC) son las denominadas líneas analógicas. Son un conjunto de elementos de medios de transmisión y conmutación que se necesitan para unir dos equipos mediante un circuito físico.'),
('RESP227', 'PREG227', 'LÍNEA ANALÓGICA CONMUTADA', 'LÍNEA ANALÓGICA DEDICADA', 'SERVICIO CONMUTADO/56', 'SERVICIO DDS', 'Las Líneas Analógicas funcionan gracias a la señal analógica que es un tipo de señal generada por algún tipo de fenómeno electromagnético que es representable por una función matemática continua en la que es variable su amplitud y periodo en función del tiempo.'),
('RESP228', 'PREG228', 'LÍNEA CONMUTADA ANALÓGICA', 'LÍNEA ANALÓGICA DEDICADA', 'SERVICIO COMNUTADO/56', 'TODO LO ANTERIOR', 'Las líneas \"dedicadas\" posibilitan la transmisión de datos a velocidades medias y altas (de 64Kbps a 140 Mbps) a través de conexiones de punto a punto o multipunto (servicio Transfix).'),
('RESP229', 'PREG229', 'MÓDEMS', 'LÍNEAS DEDICADAS', 'MARCADO', 'LÍNEAS DEDICADAS', 'Los servicios por conmutación de circuitos son servicios conmutados que establecen una conexión virtual antes de transmitir los datos.'),
('RESP23', 'PREG23', 'MALLA', 'ESTRELLA', 'BUS', 'ANILLO', 'Una topología de tipo malla es una red en la que cada nodo está conectado a todos los nodos. De esta manera es posible llevar los mensajes de un nodo a otro por distintos caminos'),
('RESP230', 'PREG230', 'MÓDEMS', 'LINEAS DEDICADAS', 'MARCADO', 'DESPLAZAMIENTO DE FASE', 'Los servidores dedicados se denominan así cuando son utilizados exclusivamente por un usuario o empresa pertenecen a la empresa de hosting que ofrece el servicio de alojamiento que asume también la gestión de estos servidores y garantiza su funcionamiento ininterrumpido.'),
('RESP231', 'PREG231', 'MULTIPLEXADA', 'CONECTADA A TIERRA', 'EXTENDIDA', 'CONDICIONADA', 'Las frecuencias más altas sufren una mayor atenuación. La distorsión consiste en la deformación de la señal, producida normalmente porque el canal se comporta de modo distinto en cada frecuencia.'),
('RESP232', 'PREG232', 'Número de líneas dedicadas posibles por conexión', 'La tasa de datos en Kbps', 'Número de microsegundos para hacer una conexión', 'La resistencia de la línea en ohms', 'Este es un servicio digital de datos que se transmite a 56 Kbps. Debido a que es digital, no requiere de un modem y tiene una resistencia en ohms.'),
('RESP233', 'PREG233', 'SERVICIO DDS', 'SERVICIO CONMUTADO/56', 'SERVICIO DEDICADO ANALÓGICO', 'A Y B', 'Es necesaria para el DDS que es un estándar para sistemas en tiempo real que aborda la comunicación de datos entre los nodos de una arquitectura de mensajería basada en publicación/suscripción; y para el Conmutado/56, que es la versión digital de una línea conmutada analógica y permite tasas de datos de 56 Kbps. No se necesita módem, sino una unidad de servicio digital (DSU) que adapta la señal digital del computador a la de la línea.'),
('RESP234', 'PREG234', 'SERVICIO ANALÓGICO CONMUTADO', 'SERVICIO ANALÓGICO DEDICADO', 'SERVICIO CONMUTADO/56', 'SERVICIO DS', 'El servicio DS elimina los problemas de escalabilidad por flujo y por salto, sustituyéndolos por un mecanismo simplificado de clasificación de paquetes, además utiliza los bits del byte de tipo de servicio (TOS) IP para separar los paquetes en clases.'),
('RESP235', 'PREG235', 'Número de canales de voz por 4.ÜOO Hz', 'La tasa demostrada por 4.000 Hz', 'El número de canales de voz por 8 bits/muestra', 'La tasa demostrada por 8 bits/muestra', 'El canal de voz se determina primordialmente de acuerdo con las características de la voz y oído humanos. Se ha establecido que un canal debe tener aproximadamente 3 kHz de ancho. Por lo general, la banda de transmisión del canal de voz abarca aproximadamente de 300 a 3300 Hz. Esto se debe a que la voz humana se encuentra comprendida entre las frecuencias 400 y 4000 Hz.'),
('RESP236', 'PREG236', 'SERVICIOS, MULTIPLEXORES', 'SERVICIOS, SEÑALES', 'SERVICIOS, LÍNEAS', 'MULTIPLEXORES, SEÑALES', 'El servicio DS-0 es el ancho de banda requerido para una llamada telefónica digitalizada sin comprimir. Los anchos de banda de las conexiones seriales pueden aumentar cada vez más para satisfacer la necesidad de una transmisión más rápida. Mientras que el T-1 es un estándar de entramado señalización para transmisión digital de voz y datos.'),
('RESP237', 'PREG237', 'bit', 'byte', 'DS-0', 'Conmutador', 'Byte es la unidad de información de base utilizada en computación y en telecomunicaciones, y que resulta equivalente a un conjunto ordenado de ocho bits, por lo que en español también se le denomina octeto. La unidad byte no tiene símbolo establecido internacionalmente.'),
('RESP238', 'PREG238', 'FDM', 'TDM síncrona', 'TDM asincrona', 'Todas las anteriores', 'El FDM es una técnica mediante la cual el ancho de banda total disponible en un medio de comunicación se divide en una serie de sub-bandas de frecuencias levemente distintas, cada una de las cuales se utiliza para transportar una señal separada.'),
('RESP239', 'PREG239', 'FDM', 'TDM síncrona', 'TDM asincrona', 'WDM', 'La multiplexación de división de longitud de onda es aquella tecnología que transmite distintas señales solas cobre una sola fibra óptica por portadores ópticas de varias longitudes de onda, utilizando luz de un LED. Esto permite las señales compuestas de haces de luz.'),
('RESP24', 'PREG24', 'MALLA', 'ESTRELLA', 'BUS', 'ANILLO', 'La topología en árbol y la topología en estrella, no requieren de un nodo central, con lo que se reduce el riesgo de fallos, y por ende el mantenimiento periódico'),
('RESP240', 'PREG240', 'MULTIPLEXACIÓN', 'DEMULTIPLEXACIÓN', 'MODULACIÓN', 'TODAS LAS ANTERIORES', 'DSL conocido como línea de abono digital brinda acceso a internet por la transmisión de datos digitales mediante el par trenzado de hilos de cobre de la res conmutada que está formada por líneas de ADSL, ADSL2, ADSL2+, SDSL, IDSL, HDSL, SHDSL, VDSL, VDSL2; donde entra en función la modulación, demultiplexación y multiplexación.'),
('RESP241', 'PREG241', 'ADSL', 'RADSL', 'HDSL', 'VDSL', 'El HDSL o línea de abonado digital alta velocidad binaria, dan el acceso para establecer mediante un par telefónico de una línea digital unidireccional de 1,544 Mbit/s (T1) o 2,048 Mbit/s (E1), utilizando una transmisión full dúplex para cada uno de los pares de hilos que es un total de 1024 Kbit/s que recibe un flujo.'),
('RESP242', 'PREG242', 'ADSL', 'RADSL', 'HDSL', 'VDSL', 'Las líneas de abonado digital de tasas adaptable o RADSL ofrece su ventaja de ajustar la velocidad de transmisión de manera dinámica, en concordancia a longitud y calidad de la línea; lo cual puede llegar hasta 2.2 Mbps para la descarga y 1,088 Mbps para la subida.  permite la adaptación de la velocidad mientras la conexión está en funcionamiento; la adaptación de la velocidad durante el establecimiento de la conexión es posible en muchas otras variantes de DSL, incluido G.dmt y sus sucesores.'),
('RESP243', 'PREG243', 'SDSL', 'ADSL', 'VDSL', 'RDSL', 'Línea de abonado digital simétrica (SDSL) brinda datos digitales por cables de cobre de la red telefónica donde el ancho de banda en la dirección descendente , desde la red al abonado, es idéntico al ancho de banda en la dirección ascendente , desde el abonado a la red. Este ancho de banda simétrico se puede considerar opuesto al ancho de banda asimétrico que ofrece la línea de abonado digital asimétrica.(ADSL), donde el ancho de banda ascendente es menor que el ancho de banda descendente.'),
('RESP244', 'PREG244', 'SDSL', 'ADSL', 'VDSL', 'RDSL', 'Línea de abonado digital de muy alta velocidad (VDSL) ofrece una transmisión de datos más rápida que la de abonado digital simétrica (ADSL). Ya que ofrece hasta 52 Mbit/s en sentido decadente y 16 Mbit/s en sentido creciente, sobre un solo par plano sin trenzar o trenzado de cables de cobre utilizando la banda de frecuencia de 25  kHz a 12 MHz. Significan que VDSL es capaz de soportar aplicaciones como televisión de alta definición, servicios telefónicos y acceso general a Internet.'),
('RESP245', 'PREG245', 'POTS', 'Comunicación de entrada', 'Comunicación de salida', 'Todos los anteriores', 'ADSL es una tecnología de transmisión de datos digitales y acceso a internet que consiste en la transmisión mediante pares simétricos de cobre de línea telefónica. Hace un método de acceso a Internet a través de la línea del teléfono que no impide el uso regular de la línea para llamadas. Lo cual hace que la frecuencia mas grande sea usada para la comunicación de entrada en este tipo de tecnología; lo que permite que tenga un canal de envío de datos, recepción de datos y servicio telefónico.'),
('RESP246', 'PREG246', 'POTS', 'Comunicación de entrada', 'Comunicación de salida', 'Todas las anteriores', 'Lo primordial del ADSL es la capacidad de brindar servicios de datos unido con servicios de voz POTS o servicio telefónico convencional. Lo que brinda el POTS es el servicio telefónico analógico por medio de cableado de cobre; a lo cual se le da el nombre de RTC- red telefónica conmutada o red telefónica básica-RTB. El POTS consiste en servicios como información telefónica y asistencia en conferencias de larga distancia. Además de usar la banda de  frecuencia más pequeña.'),
('RESP247', 'PREG247', 'TDM', 'FDM', 'CAP', 'DMT', 'La modulación en DSL son los que se encargan de aplicar los esquemas de modulación (2B1Q-2Bi 1 Quaterbay; CAP y DTM), La CAP es una modulación en amplitud y fase sin portadora lo que tiene una Propiedad Semiconductor lo que permite funcionar a la técnica de como se transmiten los bits entre módem del abonado y la oficina central; CAP divide la señal modulada en segmentos que después almacena en memoria. La señal portadora se suprime, ya que no aporta ninguna información.'),
('RESP248', 'PREG248', 'TDM', 'CAP', 'DMT', 'FTTC', 'La modulación por división octogonal de frecuencia o DMT es una generalización o técnica que consiste en enviar la información modulando en QAM (técnica que transporta dos señales independientes, mediante la modulación, tanto en amplitud como en fase, de una señal portadora) que es muy grande frente al multitrayecto en los canales de radio fusión y lo podemos ver en la TV digital, radio digital DAB, etc. Por lo que usa también el elemento FDM.'),
('RESP249', 'PREG249', 'COAXIAL', 'PAR TRENZADO', 'PAR SIN TRENZAR', 'FIBRA ÓPTICA', 'Cuando hablamos de FTTC es la fibra óptica que llega hasta las cabinas de telecomunicaciones. A diferencia de la FTTP, en este caso no llega directamente al punto final. Es decir, estas cabinas van a estar a unas decenas o cientos de metros de nuestro hogar. Para cubrir ese último tramo hasta el destinatario se utiliza cable de cobre tradicional. Lógicamente esto hace que se pierda algo de señal y por tanto menos velocidad.'),
('RESP25', 'PREG25', 'SIMPLEX', 'SEMIDUPLEX', 'FULL-DUPLEX', 'AUTOMATICA', 'Una transmisión simplex, también denominado unidireccional, es una transmisión única, de una sola dirección'),
('RESP250', 'PREG250', 'FÍSICO', 'ENLACE DE DATOS', 'RED', 'NINGUNO DE LOS ANTERIORES', 'La detección y corrección de errores se implementa bien en el nivel de enlace de datos o bien en el nivel de transporte del modelo OSI.'),
('RESP251', 'PREG251', 'VRC', 'LRC', 'CRC', 'Suma de comprobación', 'LRC de n bits puede detectar fácilmente un error de ráfaga de n bits, Sin embargo, si se dañan dos bits de una unidad de datos y se dañan otros dos bits de otra unidad de datos que están exactamente en la misma posición.'),
('RESP252', 'PREG252', 'VRC', 'LRC', 'CRC', 'Suma de comprobación', 'Para detectar un error, en el caso de un código binario, se debe agregar un símbolo binario (0 o 1) a cada cadena de datos de K símbolos de información.'),
('RESP253', 'PREG253', 'VRC', 'LRC', 'CRC', 'Suma de comprobación', 'Con la verificación de redundancia vertical (VRC), se añade un bit a cada unidad de datos de forma que el número total de unos sea par.'),
('RESP254', 'PREG254', 'VRC', 'LRC', 'CRC', 'Suma de comprobación', 'Utilizando los polinomios CRC-16 y CRC-CCITT es posible detectar todos los errores simples y los dobles, todos los que afectan a un número impar de bits, todos los errores tipo ráfaga de 16 bits o menores.'),
('RESP255', 'PREG255', 'Un único bit se ha invertido', 'Un único bit invertido por unidad de datos', 'Un único bit invertido por transmisión', 'Ninguno de los anteriores', 'Cuando se presenta un error de un único bit un bit de la cadena puede cambiar su valor de 1 a 0 o de 0 a 1, mientras que cuando el error es de rafaga se cambian mas de dos bit de la cadena.'),
('RESP256', 'PREG256', 'EN UN ÚNICO BIT', 'EN MÚLTIPLES BIT', 'RÁFAGA', 'RECUPERABLE', 'El error de ráfaga significa que dos o más bits de la unidad de datos han cambiado. Los errores de ráfaga no significa necesariamente que los errores se produzcan en bits consecutivos.'),
('RESP257', 'PREG257', 'BIT ÚNICO', 'MÚLTIPLES BITS', 'RÁFAGA', 'RECUPERABLE', 'Normalmente el código ASCII se extiende a 8 bits (1 byte) añadiendo un bit de control, llamado bit de paridad.'),
('RESP258', 'PREG258', 'EL DIVISOR', 'EL COCIENTE', 'EL DIVIDENDO', 'EL RESTO', 'El CRC es un código de detección de error cuyo cálculo es una larga división de computación en el que se descarta el cociente y el resto se convierte en el resultado.'),
('RESP259', 'PREG259', 'EL MISMO TAMAÑO QUE', 'UN BIT MENOS QUE', 'UN BIT MÁS QUE', 'DOS BITS MÁS QUE', 'No se habrán producido errores si el resto es cero. Verificación de Redundancia Cíclica (CRC) Los divisores se representan como polinomio algebraico.'),
('RESP26', 'PREG26', 'MALLA', 'ESTRELLA', 'BUS', 'ANILLO', 'Una topología de tipo malla es una red en la que cada nodo está conectado a todos los nodos. De esta manera es posible llevar los mensajes de un nodo a otro por distintos caminos'),
('RESP260', 'PREG260', '111111011', '111111110', '1010110', '110111111', 'El dividendo en una división exacta es el número que ha de dividirse por otro.'),
('RESP261', 'PREG261', '111111000', '1111110000', '1111111010', '1111111010', 'Se dice que un divisor “cabe” en un dividendo si el dividendo tiene tantos bits como el divisor.'),
('RESP262', 'PREG262', 'PAR', 'IMPAR', 'INDETERMINADO', '42', 'Si el total es impar, el bit de paridad se establece en uno y por tanto la suma del total anterior con este bit de paridad.'),
('RESP263', 'PREG263', '-0', '+0', 'El complemento de la suma de comprobación', 'El complemento de los datos', 'En matemáticas, informática y teoría de la información, la detección y corrección de errores es una importante práctica para el mantenimiento e integridad de los datos a través de diferentes procedimientos y dispositivos como medios de almacenamiento confiables.'),
('RESP264', 'PREG264', 'DETECCIÓN DE ERRORES', 'CORRECCIÓN DE ERRORES', 'ENCAPSULAMIENTO DE ERRORES', 'A Y B', 'El método Hamming es un tipo de codificación por bloques, que trabaja de la siguiente manera: cada vez que, y solamente cuando llegan al codificador k símbolos (mensaje), detecta y corrige los errores.'),
('RESP265', 'PREG265', 'IGUAL AL RESTO EN EL EMISOR', 'CERO', 'NO CERO', 'EL COCIENTE EN EL EMISOR', 'Si el residuo de dicha división binaria es cero, el dato es aceptado, quitando los bits de CRC y el receptor seria igual a cero.'),
('RESP266', 'PREG266', 'Se convierte en el dividendo del receptor', 'Se convierte en el divisor del receptor', 'Se descarta', 'Es el resto', 'Los bits representados de entrada son alineados en una fila, y el (n + 1) representa el patrón de bits del divisor CRC (llamado polinomio) se coloca debajo de la parte izquierda del final de la fila y el emisor se descarta.'),
('RESP267', 'PREG267', 'VRC', 'LRC', 'CRC', 'a y b', 'Se suman los bits cuyo valor es uno, si da un número impar de bits, entonces el bit de paridad (impar) es cero.'),
('RESP268', 'PREG268', 'VRC', 'LRC', 'CRC', 'Todos los anteriores', 'Para detectar un error, en el caso de un código binario, se debe agregar un símbolo binario (0 o 1) a cada cadena de datos de K símbolos de información, de forma que la cantidad total de unos en la cadena codificada sea par, es decir, que la cadena tenga paridad par.'),
('RESP269', 'PREG269', 'VRC', 'LRC', 'CRC', 'b y c', 'Los errores tipo ráfaga de 16 bits o menores, el 99,997% de errores ráfaga de 17 bits y el 99.998% de los de 18 bits.'),
('RESP27', 'PREG27', 'PUNTO A PUNTO', 'MULTIPUNTO', 'PRIMARIO', 'SECUNDARIO', 'Una conexión de red de punto a punto difunde la información a todos en la red'),
('RESP270', 'PREG270', '10', '8', '18', '80', 'La secuencia de dígitos en el LRC se calcula en el transamisor y se transamite como el último cáracter del mensaje.'),
('RESP271', 'PREG271', 'CEROS', 'UNOS', 'UN POLINOMIO', 'UN RESTO CRC', 'En esta técnica, se añaden bits redundantes en la unidad de datos de forma de datos por el divisor predefinido usando un proceso de división.'),
('RESP272', 'PREG272', 'CEROS', 'UNOS', 'UN POLINOMIO', 'UN RESTO CRC', 'El resto se convierte en el resultado, con la importante diferencia de que la aritmética que usamos conforma que el cálculo utilizado es el arrastre de un campo, en este caso los bits.');
INSERT INTO `respuesta` (`idrespuesta`, `idpregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `Mensaje`) VALUES
('RESP273', 'PREG273', 'UNA TIRA DE CEROS', 'UNA TIRA DE UNOS', 'UNA TIRA DE UNOS Y CEROS ALTERNADOS', 'UN RESTO NO CERO', 'El error de CRC informa de que se han detectado archivos dañados o incompletos durante la comprobación de redundancia cíclica.'),
('RESP274', 'PREG274', 'Un ACK', 'Un ENQ', 'Un sondeo', 'Un SEL', 'Una vez que han sido configurados cada uno de los protocolos de la capa de red elegidos, los datagramas de cada protocolo de capa de red pueden ser enviados a través del enlace.'),
('RESP275', 'PREG275', '0 a 63', '0 a 64', '1 a 63', '1 a 64', 'Los números de secuencia en la ventana del emisor representan las tramas que se han enviado, o que se pueden enviar, pero aún no se ha confirmado su recepción.'),
('RESP276', 'PREG276', 'RECIBIDAS PERO NO RECONOCIDAS', 'RECIBIDAS Y RECONOCIDAS', 'NO RECIBIDAS', 'NO ENVIADAS', 'Para cumplir con estas metas, la capa de enlace toma de la capa de red un paquete y lo encapsula como carga util en una trama, que es la unidad de control de flujo de la capa de enlace.'),
('RESP277', 'PREG277', 'DISCIPLINA DE LÍNEA', 'CONTROL DE FLUJO', 'CONTROL DE TASA DE DATOS', 'CONTROL DE CONMUTACIÓN', 'Líneas de transmisión; también se denominan circuitos o canales. Es el medio físico a través del cual se realiza la transmisión de los datos.'),
('RESP278', 'PREG278', 'CONEXIÓN DE LÍNEA', 'CONEXIÓN DE ENLACES', 'DISCIPLINA DE LÍNEA', 'DECISIÓN DE ENLACE', 'Mediante la comunicación el emisor y el recepto encuentran una manera de compartir información y esto es lo que provoca el contacto entre seres cambiado constantemente sus posiciones previas, puntos de vista o perspectivas.'),
('RESP279', 'PREG279', 'CONTROL DE ERRORES', 'ACONDICIONAMIENTO DE ERRORES', 'DISCIPLINA DE LÍNEA', 'CONTROL DE FLUJO', 'El control de errores significa detección y corrección de errores. Permite al receptor informar al emisor de las tramas perdidas o dañadas durante la transmisión y coordina la retransmisión de esas tramas por el emisor.'),
('RESP28', 'PREG28', 'PUNTO A PUNTO', 'MULTIPUNTO', 'PRIMARIO', 'SECUNDARIO', 'Las redes o conexiones multipunto son redes de computadoras en las cuales cada canal de datos se puede usar para comunicarse con diversos nodos'),
('RESP280', 'PREG280', 'ACK', 'Sondeo', 'SEL', 'ENQ', 'Cuando un dispositivo quiere transmitir datos, debe enviar primero una trama de control llamada solicitud (también llamada trama ENQ). Esta trama sirve para preguntar al receptor si está listo para recibir datos.'),
('RESP281', 'PREG281', 'ACK', 'De sondeo', 'SEL', 'ENQ', 'Comprueba el Administrador de dispositivos para ver si hay problemas. Selecciona y mantén pulsado el botón Inicio (o haz clic en él con el botón derecho) y, a continuación, selecciona Administrador de dispositivos en el menú contextual.'),
('RESP282', 'PREG282', 'ACK', 'De sondeo', 'SEL', 'ENQ', 'El controlador actúa como un intercambiador: si un dispositivo quiere enviar datos a otro, envía los datos al controlador, que los retransmite al dispositivo final.'),
('RESP283', 'PREG283', 'Errores de bit', 'Desbordamiento del buffer del emisor', 'Desbordamiento del buffer del receptor', 'Colisión entre emisor y receptor', 'TCP proporciona control de flujo para evitar precisamente este problema, TCP es capaz de adaptar la velocidad para que el host más lento pueda procesar los datos adecuadamente sin desbordamientos.'),
('RESP284', 'PREG284', '5', '6', '7', 'Ninguno de los anteriores', 'Las transmite a la capa de red, o libera los buffers correspondientes o avanza la ventana para poder recibir siete tramas más, cuyos números de secuencia podrán ser 7,0,1,2,3,4,5 o envía un ACK para las tramas 0 a 6 recibidas Imaginemos ahora que el ACK no llega al emisor.'),
('RESP285', 'PREG285', '0', 'n - 1', 'n', 'n + 1', 'El emisor y el receptor establecen una conexión explícita de antemano, las tramas a enviar se numeran y se aseguran ambos de que son recibidas todas correctamente en su destino y transmitidas a la capa de red una vez y sólo una.'),
('RESP286', 'PREG286', '2', '3', '4', '8', 'Para analizar las prestaciones del algoritmo de ventana deslizante, distinguimos dos casos. El primer caso es cuando, al terminar la transmisión de la W-ésima trama, se ha recibido ya la confirmación (Ack) de la primera (ver gráfico adjunto).'),
('RESP287', 'PREG287', 'NAK 0', 'NAK 1', 'NAK 2', 'NAK', 'El método anterior es ineficiente cuando la longitud del enlace en bits supera a la longitud de la trama la eficiencia mejoraría si se transmiten varias tramas al mismo tiempo.'),
('RESP288', 'PREG288', 'Parada y espera', 'Vuelta atrás n', 'Rechazo selectivo', 'a y b', 'ARQ con parada y espera. Se basa en la técnica de control de flujo de parada-y-espera. Consiste en que el emisor transmite una trama y hasta que no recibe confirmación del receptor, no envía otra.'),
('RESP289', 'PREG289', 'Parada y espera', 'Vuelta atrás n', 'Rechazo selectivo', 'a y b', 'Obligarían a una retransmisión y no es muy corta porque representaría una pérdida de tiempo: cada vez que se recibe una trama, ésta debe ser tratada para saber qué tipo de trama es y si es correcta.'),
('RESP29', 'PREG29', 'SIMPLEX', 'SEMIDUPLEX', 'FULL-DUPLEX', 'SEMISIMPLEX', 'Una transmisión full dúplex transmite y recibe en ambas direcciones al mismo tiempo'),
('RESP290', 'PREG290', 'CUANTIZACIÓN DE REPETICIÓN AUTOMÁTICA', 'PETICIÓN DE REPETICIÓN AUTOMÁTICA', 'PETICIÓN DE RETRANSMISIÓN AUTOMÁTICA', 'PETICIÓN DE REPETICIÓN DEL CONOCIMIENTO', 'Si la trama perdida fue un NAK, el receptor acepta la nueva copia recibida y devuelve un ACK. Si se perdió en ACK, el receptor detecta que la trama es duplicada, ya que las tramas se envían numeradas y por tanto descarta la misma y envía una trama ACK.'),
('RESP291', 'PREG291', 'DISCIPLINA DE LÍNEA', 'CONTROL DE FLUJO', 'CONTROL DE ERRORES', 'TODAS LAS ANTERIORES', 'Cada uno de estos niveles tendrá sus propias funciones para que en conjunto sean capaces de poder alcanzar su objetivo final. Precisamente esta separación en niveles hace posible la intercomunicación de protocolos.'),
('RESP292', 'PREG292', 'ENTRE IGUALES', 'DISPOSITIVO AL PRIMARIO', 'PRIMARIO AL DISPOSITIVO', 'PRIMARIO AL SECUNDARIO', 'En la práctica la subcapa de acceso al medio suele formar parte de la propia tarjeta de comunicaciones, mientras que la subcapa de enlace lógico estaría en el programa adaptador de la tarjeta.'),
('RESP293', 'PREG293', 'Un paquete', 'Un ACK', 'Un NAK', 'Todos los anteriores', 'Conseguir una transmisión eficiente (el emisor puede enviar múltiples segmentos sin esperar su reconocimiento) como para proporcionar control de flujo permitiendo al receptor restringir el número de octetos que puede recibir en cada momento.'),
('RESP294', 'PREG294', 'UN TEMPORIZADOR', 'UN BUFFER', 'UNA DIRECCIÓN', 'UNA LÍNEA DEDICADA', 'Este nodo primario controla todas las demás estaciones y determina si los dispositivos pueden comunicarse y, en caso afirmativo, cuando deben hacerlo mediante una dirección.'),
('RESP295', 'PREG295', 'n', '2n', 'n — 1', 'n + 1', 'No se enviarían más paquetes hasta recibir el reconocimiento del último paquete enviado. El concepto de ventana deslizante hace que exista una continua transmisión de información, mejorando el desempeño de la red.'),
('RESP3', 'PREG3', 'RENDIMIENTO', 'FIABILIDAD', 'SEGURIDAD', 'VIABILIDAD', 'La fiabilidad es una medida la cual se utiliza ante un fallo de la red'),
('RESP30', 'PREG30', 'LAN', 'MAN', 'WAN', 'NINGUNA DE LAS ANTERIORES', 'Una red WAN, es una red de computadoras que une varias redes locales, aunque sus miembros no estén todos en una misma ubicación física'),
('RESP31', 'PREG31', 'LAN', 'MAN', 'WAN', 'NINGUNA DE LAS ANTERIORES', 'Una red LAN es una red de computadoras que abarca un área reducida a una casa, un departamento o un edificio'),
('RESP32', 'PREG32', 'MALLA', 'ANILLO', 'ESTRELLA', 'NINGUNA DE LOS ANTERIORES', 'Una topología de tipo malla es una red en la que cada nodo está conectado a todos los nodos. De esta manera es posible llevar los mensajes de un nodo a otro por distintos caminos'),
('RESP33', 'PREG33', 'SECUNDARIO', 'PRIMARIO', 'DEDICADO', 'NINGUNO DE LOS ANTERIORES', 'Un enlace dedicado es un tipo de conexión a Internet que permite estar conectado permanentemente, es decir, las 24 horas del día, los 365 días del año'),
('RESP34', 'PREG34', 'PRIMARIO A IGUAL', 'IGUAL A PRIMARIO', 'PRIMARIO A SECUNDARIO', 'PARITARIA', 'Se le denomina paritaria a la relación que existe entre un dispositivo y otro'),
('RESP35', 'PREG35', 'MALLA', 'BUS', 'ESTRELLA', 'PRIMARIO', 'La topología en bus es aquella que se caracteriza por tener un único canal de comunicaciones al cual se conectan los diferentes dispositivos'),
('RESP36', 'PREG36', 'MALLA', 'ARBOL', 'BUS', 'ESTRELLA', 'La red en árbol es una topología de red en la que los nodos están colocados en forma de árbol. Desde una visión topológica, es parecida a una serie de redes en estrella interconectadas salvo en que no tiene un concentrador central'),
('RESP37', 'PREG37', 'MALLA', 'ARBOL', 'BUS', 'ESTRELLA', 'Una topología de tipo malla es una red en la que cada nodo está conectado a todos los nodos. De esta manera es posible llevar los mensajes de un nodo a otro por distintos caminos'),
('RESP38', 'PREG38', 'ITU-T', 'OSI', 'ISO', 'ANSI', 'El modelo OSI(Interconexión de Sistemas Abiertos), es un modelo de referencia para los protocolos de comunicación de las redes informáticas o redes de computadoras'),
('RESP39', 'PREG39', 'TRES', 'CINCO', 'SIETE', 'OCHO', 'El modelo OSI esta compuesto por: la capa física, capa de enlace, capa de red, capa de transporte, capa de sesión, capa de presentación, capa de aplicación'),
('RESP4', 'PREG4', 'EL NUMERO DE USUARIOS', 'EL MEDIO DE TRANSMMISION', 'EL HARDWARE Y EL SOFTWARE', 'TODO LO ANTERIOR', 'Para una buena comunicación mediante la red son necesarios los usuarios, la transmisión, el hardware y software'),
('RESP40', 'PREG40', 'TRANSPORTE', 'SESION', 'PRESENTACION', 'APLICACION', 'El nivel de sesión o capa de sesión es el quinto nivel del modelo OSI,​ que proporciona los mecanismos para controlar el diálogo entre las aplicaciones de los sistemas finales'),
('RESP41', 'PREG41', 'RED', 'TRANSPORTE', 'SESION', 'PRESENTACION', 'El nivel de transporte o capa de transporte es el cuarto nivel del modelo OSI,​ y está encargado de la transferencia libre de errores de los datos entre el emisor y el receptor, aunque no estén directamente conectados, así como de mantener el flujo de la red'),
('RESP42', 'PREG42', 'FISICO', 'ENLACE DE DATOS', 'DE RED', 'TRANSPORTE', 'El nivel físico o capa física es el primer nivel del modelo OSI, se refiere a las transformaciones que se le hacen a la secuencia de bits para trasmitirlos de un lugar a otro'),
('RESP43', 'PREG43', 'FISICO', 'ENLACE DE DATOS', 'RED', 'TRANSPORTE', 'El nivel de enlace de datos o capa de enlace de datos, es la segunda capa del modelo OSI, es responsable de la transferencia fiable de información a través de un circuito de transmisión de datos. Recibe peticiones de la capa de red y utiliza los servicios de la capa física'),
('RESP44', 'PREG44', 'FISICO', 'ENLACE DE DATOS', 'PRESENTACION', 'SESION', 'El nivel de presentación o capa de presentación es el sexto nivel del Modelo OSI, y es el que se encarga de la representación de la información, de manera que aunque distintos equipos puedan tener diferentes representaciones internas de caracteres, números, sonido o imágenes, los datos lleguen de manera reconocible'),
('RESP45', 'PREG45', 'TRANSPORTE', 'SESION', 'PRESENTACION', 'APLICACION', 'El nivel de sesión o capa de sesión es el quinto nivel del modelo OSI,​ que proporciona los mecanismos para controlar el diálogo entre las aplicaciones de los sistemas finales'),
('RESP46', 'PREG46', 'ENLACE DE DATOS', 'SESION', 'TRANSPORTE', 'APLICACION', 'El nivel de aplicación o capa de aplicación es el séptimo nivel del modelo OSI, ofrece a las aplicaciones la posibilidad de acceder a los servicios de las demás capas y define los protocolos que utilizan las aplicaciones para intercambiar datos, como correo electrónico, gestores de bases de datos y protocolos de transferencia de archivos'),
('RESP47', 'PREG47', 'FISICO', 'ENLACE DE DATOS', 'TRANSPORTE', 'RED', 'El nivel de enlace de datos o capa de enlace de datos, es la segunda capa del modelo OSI, es responsable de la transferencia fiable de información a través de un circuito de transmisión de datos. Recibe peticiones de la capa de red y utiliza los servicios de la capa física'),
('RESP48', 'PREG48', 'AÑADIDAS', 'ELIMINADAS', 'RECOLOCADAS', 'MODIFICADAS', 'Las cabeceras se eliminan al momento que un dato en un nivel inferior se mueve a un nivel superior'),
('RESP49', 'PREG49', 'AÑADIDAS', 'ELIMINADAS', 'RECOLOCADAS', 'MODIFICADAS', 'Las cabeceras se añaden al momento que un dato en un nivel superior se mueve a un nivel inferior'),
('RESP5', 'PREG5', 'RENDIMIENTO', 'FIABILIDAD', 'SEGURIDAD', 'TODAS LAS ANTERIORES', 'Entre los aspectos en base a la seguridad de una red esta el virus'),
('RESP50', 'PREG50', 'FISICO', 'ENLACE DE DATOS', 'TRANSPORTE', 'PRESENTACION', 'El nivel de transporte o capa de transporte es el cuarto nivel del modelo OSI,​ y está encargado de la transferencia libre de errores de los datos entre el emisor y el receptor, aunque no estén directamente conectados, así como de mantener el flujo de la red'),
('RESP51', 'PREG51', 'RED', 'ENLACE DE DATOS', 'TRANSPORTE', 'PRESENTACION', 'El nivel de red o capa de red, es el tercer nivel del modelo OSI es la capa que proporciona conectividad y selección de ruta entre dos sistemas de hosts que pueden estar ubicados en redes geográficamente distintas'),
('RESP52', 'PREG52', 'FISICO', 'TRANSPORTE', 'SESION', 'PRESENTACION', 'El nivel de sesión o capa de sesión es el quinto nivel del modelo OSI,​ que proporciona los mecanismos para controlar el diálogo entre las aplicaciones de los sistemas finales'),
('RESP53', 'PREG53', 'TRANSPORTE', 'SESION', 'PRESENTACION', 'APLICACION', 'El nivel de presentación o capa de presentación es el sexto nivel del Modelo OSI, y es el que se encarga de la representación de la información, de manera que aunque distintos equipos puedan tener diferentes representaciones internas de caracteres, números, sonido o imágenes, los datos lleguen de manera reconocible'),
('RESP54', 'PREG54', 'FISICO', 'ENLACE DE DATOS', 'TRANSPORTE', 'PRESENTACION', 'El nivel físico o capa física es el primer nivel del modelo OSI, se refiere a las transformaciones que se le hacen a la secuencia de bits para trasmitirlos de un lugar a otro'),
('RESP55', 'PREG55', 'FISICO', 'ENLACE DE DATOS', 'TRANSPORTE', 'PRESENTACION', 'El nivel de transporte o capa de transporte es el cuarto nivel del modelo OSI,​ y está encargado de la transferencia libre de errores de los datos entre el emisor y el receptor, aunque no estén directamente conectados, así como de mantener el flujo de la red'),
('RESP56', 'PREG56', 'A los fabricantes no les gustaba la familia de protocolos TCP/IP', 'La tasa de transferencia de datos se incremento exponencialmente', 'Los estándares eran necesarios para permitir que cualquier sistema se pudiera comunicar entre si', 'Ninguno de los anteriores', 'El modelo OSI permite comunicar los dispositivos entre si'),
('RESP57', 'PREG57', 'PROGRAMAS', 'DIALOGOS', 'PROTOCOLOS', 'BITS', 'La transmisión que transmite el modelo fisco es en bits'),
('RESP58', 'PREG58', 'NIVEL DE RED', 'NIVEL FISICO', 'NIVEL DE TRANSPORTE', 'NIVEL DE SESION', 'El nivel de red o capa de red, es el tercer nivel del modelo OSI es la capa que proporciona conectividad y selección de ruta entre dos sistemas de hosts que pueden estar ubicados en redes geográficamente distintas'),
('RESP59', 'PREG59', 'ENTREGA NODO A NODO', 'ENTREGA DE MENSAJE EXTREMO A EXTREMO', 'SINCRONIZACION', 'ACTUALIZACION Y MANTENIMIENTO DE TABLAS DE ENCAMINAMIENTO', 'El nivel de transporte o capa de transporte es el cuarto nivel del modelo OSI,​ y está encargado de la transferencia libre de errores de los datos entre el emisor y el receptor, aunque no estén directamente conectados, así como de mantener el flujo de la red'),
('RESP6', 'PREG6', 'RENDIMIENTO', 'FIABILIDAD', 'SEGURIDAD', 'GESTION', 'Un aspecto de la fiabilidad de una red se puede medir mediante un desastre natural ante la protección de datos. '),
('RESP60', 'PREG60', 'Permiten que una porción de un archivo se pueda reenviar', 'Detectan y recuperan errores', 'Controlan la edición de cabeceras', 'Están relacionadas con el control', 'El checkpoint tiene la función de reenviar cierta parte de un archivo'),
('RESP61', 'PREG61', 'TERMINAL VIRTUAL DE RED', 'TRANSFERENCIA, ACCESO Y GESTION DE ARCHIVOS', 'SERVICIO DE CORREO', 'TODOLOS LOS ANTERIORES', 'Los servicios de la capa de aplicación para intercambiar datos son los de correo electrónico, gestores de bases de datos y protocolos de red de transferencia de archivos'),
('RESP62', 'PREG62', 'SEÑALES PERIODICAS', 'SEÑALES ELECTROMAGNETICAS', 'SEÑALES APERIODICAS', 'ONDA SENO DE BAJA FRECUENCIA', 'Una señal electromagnética se caracteriza por ser periódica en el tiempo, es decir que se repite con exactamente la misma forma cada un intervalo de tiempo determinado'),
('RESP63', 'PREG63', '1 Hz', '100 Hz', '1 KHz', '1 MHz', '1KHz equivale a 1000 Hz y eso equivale a 0,001 seg'),
('RESP64', 'PREG64', 'FRECUENCIA', 'FASE', 'POTENCIA', 'TODAS LAS ANTERIORES', 'La frecuencia representa la velocidad en la que se transmiten y reciben datos entre los dispositivos de la red inalámbrica'),
('RESP65', 'PREG65', 'ANCHO DE BANDA', 'FASE', 'POTENCIA', 'TODAS LAS ANTERIORES', 'El ancho de banda es la medida de datos y recursos de comunicación disponible o consumida​ expresados en bit/s o múltiplos de él como serían los Kbit/s, Mbit/s y Gigabit/s'),
('RESP66', 'PREG66', 'AMPLITUD PICO', 'FRECUENCIA', 'FASE', 'PENDIENTE', 'Amplitud Pico es la distancia máxima de la onda del punto cero o del punto de equilibrio'),
('RESP67', 'PREG67', 'AMPLITUD PICO', 'FRECUENCIA', 'FASE', 'PENDIENTE', 'La frecuencia representa la velocidad en la que se transmiten y reciben datos entre los dispositivos de la red inalámbrica'),
('RESP68', 'PREG68', 'AMPLITUD', 'FRECUENCIA', 'FASE', 'TIEMPO', 'La amplitud de la señal se refiere al valor máximo que esta alcanza. Es la distancia máxima entre el punto más alejado de una onda y el punto de equilibrio o medio'),
('RESP69', 'PREG69', 'AMPLITUD DE SEÑAL', 'FRECUENCIA', 'FASE', 'TIEMPO', 'El dominio del tiempo es un término utilizado para describir el análisis de funciones matemáticas o señales respecto al tiempo'),
('RESP7', 'PREG7', 'USO', 'IEEE', 'NATO', 'ANSI', 'ANSI(American National Standards Institute), es una organización sin fines de lucro que supervisa el desarrollo de estándares para productos, servicios, procesos y sistemas en los Estados Unidos'),
('RESP70', 'PREG70', '5 KHz', '10 KHz', '47 KHz', '57 KHz', 'El ancho de banda = frecuencia alta - frecuencia baja, entonces si 5KHz=frecuencia alta-52KHz, la frecuencia alta seria 57 KHz'),
('RESP71', 'PREG71', '36 MHz', '360 KHz', '3,96 MHz', '396 KHz', 'El ancho de banda = frecuencia alta - frecuencia baja, entonces si el ancho de banda=4MHz-40KHz, \"40KHz equivale a 0.04MHz\", finalmente nos quedaría que el ancho de banda=4MHz-0.04MHz y eso equivale a 3.96 MHz'),
('RESP72', 'PREG72', 'ES MAYOR QUE CERO', 'ES MENOR QUE CERO', 'ES CERO', 'A O B', 'Cuando una frecuencia es igual a 0 su amplitud puede ser menor o mayor que 0'),
('RESP73', 'PREG73', 'Exactamente un numero impar de ondas seno', 'Un conjunto de ondas seno', 'Un conjunto de ondas seno, cada uno de los cuales debe tener una fase de cero grados', 'Ninguna de las anteriores', 'Un conjunto de ondas es la descomposición de una señal periódica, sin necesidad de tener una fase de cero grados.'),
('RESP74', 'PREG74', 'SE INCREMENTA', 'DECREMENTA', 'SIGUE IGUAL', 'SE DOBLA', 'Cuando una frecuencia aumenta su periodo disminuye y cuando una frecuencia disminuye su periodo aumenta'),
('RESP75', 'PREG75', 'LA MITAD', 'DOBLE', 'EL MISMO', 'INDETERMINADA', 'Cuando una onda A duplica a la onda B su periodo de A también duplica la de B, entonces el periodo de B seria la mitad que la de A'),
('RESP76', 'PREG76', '1', '2', '3', 'UN NUMERO DE VALORES INFINITO', 'En una señal análoga su eje vertical muestra múltiples valores'),
('RESP77', 'PREG77', '1', '2', '3', 'UN NUMERO INFINITO DE VALORES', 'En una señal digital su eje vertical muestra 3 valores'),
('RESP78', 'PREG78', 'PERIODICA Y CONTINUA', 'APERIODICA Y CONTINUA', 'PERIODICA Y DISCRETA', 'APERIODICA Y DISCRETA', 'Una onda seno tiene la función de ser periódica y su derivada es continua'),
('RESP79', 'PREG79', '2', '1', '-2', 'ENTRE -2 Y 2', 'La amplitud máxima de una onda seno es +X su amplitud mínima es -X'),
('RESP8', 'PREG8', 'ATT', 'ITU-T', 'ANSI', 'ISO', 'La ITU(Unión Internacional de Telecomunicaciones) es el organismo especializado en telecomunicaciones de la Organización de las Naciones Unidas, encargado de regular las telecomunicaciones a nivel internacional entre las distintas administraciones y empresas operadoras'),
('RESP80', 'PREG80', '1 ms', '10 ms', '100 ms', '1.000 ms', 'El periodo = 1/frecuencia entonces si el periodo=1/1000seg, \"1/1000seg es igual a 0,001seg lo cual equivale a 1ms\", entonces el periodo=1ms'),
('RESP81', 'PREG81', 'A', '-A', '0', 'CUALQUIER VALOR ENTRE A Y -A', 'En una amplitud máxima A si su periodo p se divide entre 2, su amplitud seria el contrapuesto de A que es -A'),
('RESP82', 'PREG82', 'DIGITAL A DIGITAL', 'DE DIGITAL A ANALOGICO', 'DE ANALOGICO A ANALOGICO', 'DE ANALOGICO A DIGITAL', 'De digital a analógico son ejemplos de modulación para ASK, PSK, FSK y QAM.'),
('RESP83', 'PREG83', 'DIGITAL A DIGITAL', 'DE DIGITAL A ANALOGICO', 'DE ANALOGICO A ANALOGICO', 'DE ANALOGICO A DIGITAL', 'Digital a digital son tipos de codificaciones para la codificación unipolar, bipolar y polar.'),
('RESP84', 'PREG84', 'DIGITAL A DIGITAL', 'DE DIGITAL A ANALOGICO', 'DE ANALOGICO A ANALOGICO', 'DE ANALOGICO A DIGITAL', 'De analógico a digital es un ejemplo de conversión para PCM.'),
('RESP85', 'PREG85', 'DIGITAL A DIGITAL', 'DE DIGITAL A ANALOGICO', 'DE ANALOGICO A ANALOGICO', 'DE ANALOGICO A DIGITAL', 'De analógico a analógico son ejemplos de modulación para AM y FM.'),
('RESP86', 'PREG86', 'AMPLITUD', 'FRECUENCIA', 'TASA DE BITS', 'TASA DE BAUDIOS', 'La tasa de bits de la frecuencia portadora cambian en QAM.'),
('RESP87', 'PREG87', 'PSK', 'ASK', 'FSK', 'QAM', 'ASK es la más afectada por el ruido.'),
('RESP88', 'PREG88', '200 muestras/segundo', '500 muestras/segundo', '1.000 muestras/segundo', '1.200 muestras/segundo', 'Calculando la tasa de muestreo de acuerdo al teorema de Nyquist con un ancho de banda de 500 Hz con la frecuencia más alta en 600 FIz tendremos como resultado 1.000 m/s.'),
('RESP89', 'PREG89', '100', '400', '800', '1.600', 'La tasa de bits es 400 bps en una señal 4-PSK con una tasa de 400 baudios.'),
('RESP9', 'PREG9', 'ITU-T', 'IEEE', 'FCC', 'INTERNET SOCIETY', 'La FCC(Comisión Federal de Comunicaciones) es la encargada de la regulación de telecomunicaciones interestatales e internacionales por radio, televisión, redes inalámbricas, teléfonos, satélite y cable'),
('RESP90', 'PREG90', '300', '400', '600', '1.200', 'En una señal ASK la tasa de baudios es 1.200 teniendo una tasa de bits de 1.200 bps.'),
('RESP91', 'PREG91', '300', '400', '600', '1.200', 'En una señal FSK la tasa de baudios es 600 teniendo una tasa de bits de 1.200 bps.'),
('RESP92', 'PREG92', '300', '400', '1.000', '1.200', 'En una señal QAM la tasa de baudios es 1.000 teniendo una tasa de bits de 3.000 bps, representando una señal de un tribit.'),
('RESP93', 'PREG93', '300', '400', '1.000', '9.000', 'En una señal QAM la tasa de bits es 9.000 teniendo una tasa de baudios de 3.000 bps, representando una señal de un tribit.'),
('RESP94', 'PREG94', '3', '4', '5', '6', 'Existen 5 bits por elemento en una señal QAM con la tasa de baudios es 1.800 y la tasa de bits es 9.000.'),
('RESP95', 'PREG95', 'COMBINACIONES DE FASE Y AMPLITUD', 'AMPLITUDES', 'FASES', 'BITS POR SEGUNDO', 'Hay 16 combinaciones de fase y amplitud en 16-QAM.'),
('RESP96', 'PREG96', 'FSK', '8-PSK', 'ASK', '4-PSK', 'La técnica de modulación 8-PSK tiene ocho diferentes desplazamientos en fase y una en amplitud.'),
('RESP97', 'PREG97', 'Igual a la frecuencia mas baja de la señal', 'Igual a la frecuencia mas alta de la señal', 'El doble del ancho de banda de la señal', 'El doble de la frecuencia mas alta de la señal', 'La tasa mínima de muestreo debe ser el doble de la frecuencia más alta de la señal en el teorema de Nyquist.'),
('RESP98', 'PREG98', '700 KHz', '705 KHz', '710 KHz', 'No se puede determinar con la información anterior', 'La frecuencia de la señal portadora no se puede determinar en una señal de radio AM con un ancho de banda de 10 KHz y una frecuencia más alta de 705 KHz.'),
('RESP99', 'PREG99', 'Ancho de banda de la señal', 'Frecuencia de la portadora', 'Numero de bits usados para la cuantificación', 'Tasa de baudios', 'En una señal PCM un factor que le pertenece es el número de bits usados para su cuantificación.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `contraseña` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `apellido`, `dni`, `nick`, `contraseña`) VALUES
(25, 'jhon', 'alexander', '75656443', 'araujo0003', '$2a$12$j3T/YhnNH2BmrogJOt4II.gQAD0Q5qX5DxQLM3Lltae7f0aNcdWdC'),
(26, 'martin', 'velasquez', '21654654', 'martin14', '$2a$12$jUgY1/Pe61UQTmpXpKuxhuKijQtf6rTizvx5ISwi7hE/VMkkltEuW');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `capitulo`
--
ALTER TABLE `capitulo`
  ADD PRIMARY KEY (`idcapitulo`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`idhistorial`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`idpregunta`),
  ADD KEY `idcapitulo` (`idcapitulo`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`idrespuesta`),
  ADD UNIQUE KEY `idpregunta` (`idpregunta`),
  ADD KEY `idpregunta_2` (`idpregunta`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `idhistorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `PregunCap` FOREIGN KEY (`idcapitulo`) REFERENCES `capitulo` (`idcapitulo`);

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `ResPreguntas` FOREIGN KEY (`idpregunta`) REFERENCES `pregunta` (`idpregunta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
