-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-02-2026 a las 02:53:52
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca_dbutres`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Autor', 7, 'add_autor'),
(26, 'Can change Autor', 7, 'change_autor'),
(27, 'Can delete Autor', 7, 'delete_autor'),
(28, 'Can view Autor', 7, 'view_autor'),
(29, 'Can add Categoría', 8, 'add_categoria'),
(30, 'Can change Categoría', 8, 'change_categoria'),
(31, 'Can delete Categoría', 8, 'delete_categoria'),
(32, 'Can view Categoría', 8, 'view_categoria'),
(33, 'Can add Editorial', 9, 'add_editorial'),
(34, 'Can change Editorial', 9, 'change_editorial'),
(35, 'Can delete Editorial', 9, 'delete_editorial'),
(36, 'Can view Editorial', 9, 'view_editorial'),
(37, 'Can add Libro', 10, 'add_libro'),
(38, 'Can change Libro', 10, 'change_libro'),
(39, 'Can delete Libro', 10, 'delete_libro'),
(40, 'Can view Libro', 10, 'view_libro'),
(41, 'Can add Préstamo', 11, 'add_prestamo'),
(42, 'Can change Préstamo', 11, 'change_prestamo'),
(43, 'Can delete Préstamo', 11, 'delete_prestamo'),
(44, 'Can view Préstamo', 11, 'view_prestamo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$TE7sFVx3PiLWtTQRC4ATBR$R70F2l+0vStba2JGt3yRR0WK2kqWxsSI2au9dc97XBo=', NULL, 1, 'admin', 'Administrador', 'Sistema', 'admin@biblioteca.com', 1, 1, '2026-02-13 15:57:21.868725'),
(2, 'pbkdf2_sha256$1000000$ngaDoo56tniacj11rD15U4$mGWREc1ancXWwtinAMae45bsQ7RgR8rWn/r2HSIvJNI=', NULL, 0, 'juan_perez', 'Juan', 'Pérez', 'juan@email.com', 0, 1, '2026-02-13 15:57:22.355637'),
(3, 'pbkdf2_sha256$1000000$1dsusk8cqrHM1K1ei03G9W$K5mTwm25URXU6b9F509e4L+4d9K1BgVSpWNiUZKj234=', NULL, 0, 'maria_lopez', 'María', 'López', 'maria@email.com', 0, 1, '2026-02-13 15:57:22.864736'),
(4, 'pbkdf2_sha256$1000000$s7ecfdIXfTmn0VUrJAgthN$Ex4k+elQxpTBnlYFfLMCD1nXihKdgyB5ejO8AckUnPc=', NULL, 0, 'carlos_ruiz', 'Carlos', 'Ruiz', 'carlos@email.com', 0, 1, '2026-02-13 15:57:23.350701'),
(5, 'pbkdf2_sha256$1000000$UQN05YBMqSCtb5UFjr7Gqu$1ztDuYz4PyOKMkwK6C0i2k7gpi8ExtZopPWXWYkjbBw=', '2026-02-13 19:03:40.824590', 1, 'Admin1', '', '', 'admin@gmail.com', 1, 1, '2026-02-13 16:06:12.098434');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'libros', 'autor'),
(8, 'libros', 'categoria'),
(9, 'libros', 'editorial'),
(10, 'libros', 'libro'),
(11, 'libros', 'prestamo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-02-13 15:37:28.833235'),
(2, 'auth', '0001_initial', '2026-02-13 15:37:29.460796'),
(3, 'admin', '0001_initial', '2026-02-13 15:37:29.638735'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-02-13 15:37:29.646075'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-02-13 15:37:29.652142'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-02-13 15:37:29.743388'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-02-13 15:37:29.779385'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-02-13 15:37:29.820682'),
(9, 'auth', '0004_alter_user_username_opts', '2026-02-13 15:37:29.828359'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-02-13 15:37:29.868807'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-02-13 15:37:29.870809'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-02-13 15:37:29.878679'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-02-13 15:37:29.917361'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-02-13 15:37:29.957452'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-02-13 15:37:29.996546'),
(16, 'auth', '0011_update_proxy_permissions', '2026-02-13 15:37:30.004781'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-02-13 15:37:30.047346'),
(18, 'libros', '0001_initial', '2026-02-13 15:37:30.471257'),
(19, 'sessions', '0001_initial', '2026-02-13 15:37:30.523781');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('v8vnoqtc9rveq2ddu7mp68rlsteuz7br', '.eJxVjMsOwiAQRf-FtSGMvF267zcQBgapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5swvT7PS7YUwPajvI99hunafe1mVGviv8oINPPdPzerh_BzWO-q2V9E4noZL1gKiKNY4SFBKUtTCuCDxHyIRktDcFwCJIK1NxIA1aYdj7A-LEN6s:1vr50W:6KrC6XoPy5ChDh7QHgilS5Yh6Z_HD_nyB_p8vgbckXU', '2026-02-27 19:03:40.828824');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_autor`
--

DROP TABLE IF EXISTS `libros_autor`;
CREATE TABLE IF NOT EXISTS `libros_autor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biografia` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libros_autor`
--

INSERT INTO `libros_autor` (`id`, `nombre`, `apellido`, `fecha_nacimiento`, `nacionalidad`, `biografia`) VALUES
(1, 'Gabriel', 'García Márquez', '1927-03-06', 'Colombiano', 'Premio Nobel de Literatura 1982. Autor de Cien años de soledad.'),
(2, 'Isabel', 'Allende', '1942-08-02', 'Chilena', 'Una de las novelistas más leídas en español. Autora de La casa de los espíritus.'),
(3, 'Jorge Luis', 'Borges', '1899-08-24', 'Argentino', 'Uno de los escritores más importantes del siglo XX en lengua española.'),
(4, 'Octavio', 'Paz', '1914-03-31', 'Mexicano', 'Premio Nobel de Literatura 1990. Ensayista y poeta mexicano.'),
(5, 'Mario', 'Vargas Llosa', '1936-03-28', 'Peruano', 'Premio Nobel de Literatura 2010. Autor de La ciudad y los perros.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_categoria`
--

DROP TABLE IF EXISTS `libros_categoria`;
CREATE TABLE IF NOT EXISTS `libros_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libros_categoria`
--

INSERT INTO `libros_categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Ficción', 'Novelas y cuentos de ficción literaria'),
(2, 'Fantasía', 'Literatura fantástica y de mundos imaginarios'),
(3, 'Ciencia Ficción', 'Narrativa especulativa y futurista'),
(4, 'Romance', 'Novelas románticas y de amor'),
(5, 'Misterio', 'Novelas policiacas y de suspenso'),
(6, 'Terror', 'Literatura de horror y terror'),
(7, 'Aventura', 'Historias de aventuras y acción'),
(8, 'Historia', 'Libros de historia y biografías'),
(9, 'Poesía', 'Obras poéticas y antologías'),
(10, 'Ensayo', 'Ensayos literarios y filosóficos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_editorial`
--

DROP TABLE IF EXISTS `libros_editorial`;
CREATE TABLE IF NOT EXISTS `libros_editorial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitio_web` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_fundacion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libros_editorial`
--

INSERT INTO `libros_editorial` (`id`, `nombre`, `pais`, `sitio_web`, `fecha_fundacion`) VALUES
(1, 'Editorial Sudamericana', 'Argentina', 'https://www.megustaleer.com.ar', '1939-01-01'),
(2, 'Planeta', 'España', 'https://www.planetadelibros.com', '1949-01-01'),
(3, 'Alfaguara', 'España', 'https://www.penguinrandomhouse.com', '1964-01-01'),
(4, 'Anagrama', 'España', 'https://www.anagrama-ed.es', '1969-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_libro`
--

DROP TABLE IF EXISTS `libros_libro`;
CREATE TABLE IF NOT EXISTS `libros_libro` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `numero_paginas` int NOT NULL,
  `idioma` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_total` int NOT NULL,
  `stock_disponible` int NOT NULL,
  `ubicacion_fisica` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` datetime(6) NOT NULL,
  `ultima_actualizacion` datetime(6) NOT NULL,
  `autor_id` bigint NOT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `editorial_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isbn` (`isbn`),
  KEY `libros_libro_autor_id_e687beda` (`autor_id`),
  KEY `libros_libro_categoria_id_2d9d7810` (`categoria_id`),
  KEY `libros_libro_editorial_id_94f04520` (`editorial_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libros_libro`
--

INSERT INTO `libros_libro` (`id`, `titulo`, `isbn`, `fecha_publicacion`, `numero_paginas`, `idioma`, `descripcion`, `estado`, `stock_total`, `stock_disponible`, `ubicacion_fisica`, `fecha_registro`, `ultima_actualizacion`, `autor_id`, `categoria_id`, `editorial_id`) VALUES
(1, 'Cien años de soledad', '9780307474728', '1967-05-30', 471, 'Español', 'Obra maestra del realismo mágico', 'disponible', 5, 4, 'Estante A-12', '2026-02-13 15:57:23.903828', '2026-02-13 18:19:03.351978', 1, 1, 1),
(2, 'El amor en los tiempos del cólera', '9780307387738', '1985-01-01', 368, 'Español', 'Historia de amor que transcurre a lo largo de más de cincuenta años.', 'disponible', 3, 1, 'Estante A-13', '2026-02-13 15:57:23.908440', '2026-02-13 18:45:41.961311', 1, 1, 1),
(3, 'La casa de los espíritus', '9788401242281', '1982-01-01', 433, 'Español', 'Saga familiar chilena que mezcla lo cotidiano con lo maravilloso.', 'disponible', 4, 3, 'Estante B-05', '2026-02-13 15:57:23.913699', '2026-02-13 16:21:44.518136', 2, 1, 2),
(4, 'Ficciones', '9780802130303', '1944-01-01', 174, 'Español', 'Colección de cuentos que explora temas filosóficos y metafísicos.', 'prestado', 3, 0, 'Estante C-08', '2026-02-13 15:57:23.919659', '2026-02-13 15:57:23.940180', 3, 1, 1),
(5, 'El laberinto de la soledad', '9786071613578', '1950-01-01', 191, 'Español', 'Ensayo sobre la identidad mexicana y latinoamericana.', 'disponible', 2, 2, 'Estante D-15', '2026-02-13 15:57:23.923176', '2026-02-13 15:57:23.923176', 4, 10, 1),
(6, 'La ciudad y los perros', '9788420412146', '1963-01-01', 399, 'Español', 'Novela ambientada en un colegio militar de Lima.', 'disponible', 4, 3, 'Estante E-20', '2026-02-13 15:57:23.925173', '2026-02-13 15:57:23.925173', 5, 1, 3),
(7, 'Conversación en La Catedral', '9788420412153', '1969-01-01', 729, 'Español', 'Retrato crítico de la sociedad peruana bajo dictadura.', 'disponible', 2, 2, 'Estante E-21', '2026-02-13 15:57:23.927685', '2026-02-13 15:57:23.927685', 5, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_prestamo`
--

DROP TABLE IF EXISTS `libros_prestamo`;
CREATE TABLE IF NOT EXISTS `libros_prestamo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion_esperada` date NOT NULL,
  `fecha_devolucion_real` date DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renovaciones` int NOT NULL,
  `multa` decimal(10,2) NOT NULL,
  `notas` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `libro_id` bigint NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `libros_prestamo_libro_id_16aaab94` (`libro_id`),
  KEY `libros_prestamo_usuario_id_34e8aa15` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libros_prestamo`
--

INSERT INTO `libros_prestamo` (`id`, `fecha_prestamo`, `fecha_devolucion_esperada`, `fecha_devolucion_real`, `estado`, `renovaciones`, `multa`, `notas`, `libro_id`, `usuario_id`) VALUES
(1, '2026-02-13', '2026-02-27', '2026-02-13', 'devuelto', 0, 0.00, '', 1, 2),
(2, '2026-02-13', '2026-02-20', NULL, 'activo', 0, 0.00, '', 4, 3),
(3, '2026-02-13', '2026-02-27', NULL, 'activo', 0, 0.00, '', 3, 2),
(4, '2026-02-13', '2026-02-27', NULL, 'activo', 0, 0.00, '', 2, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
