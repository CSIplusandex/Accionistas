-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2024 a las 20:26:22
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
-- Base de datos: `plusandex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('14ed3f193343f4b128055c819259a618e8c5b103', 'i:1;', 1721140444),
('14ed3f193343f4b128055c819259a618e8c5b103:timer', 'i:1721140444;', 1721140444),
('31ebdb8c1cae6dcf4d815efe2b1ce3451eeb5f05', 'i:1;', 1721328327),
('31ebdb8c1cae6dcf4d815efe2b1ce3451eeb5f05:timer', 'i:1721328327;', 1721328327),
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1721226820),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1721226820;', 1721226820),
('4085060a2dc9ed4d2861b539726174377a412470', 'i:1;', 1721163790),
('4085060a2dc9ed4d2861b539726174377a412470:timer', 'i:1721163790;', 1721163790),
('7a0f81dd2f365f073bfddf81f916eb6af27f68e1', 'i:1;', 1721327357),
('7a0f81dd2f365f073bfddf81f916eb6af27f68e1:timer', 'i:1721327357;', 1721327357),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1721156933),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1721156933;', 1721156933),
('a79cb40bc845a24958b8ac103d216bb4a38a6404', 'i:1;', 1721161418),
('a79cb40bc845a24958b8ac103d216bb4a38a6404:timer', 'i:1721161418;', 1721161418),
('adaaa093c9b2764cc31663082b17ed529191622f', 'i:1;', 1721221135),
('adaaa093c9b2764cc31663082b17ed529191622f:timer', 'i:1721221135;', 1721221135),
('ae06f755ba36b4926cf2fa843e90dada3df8a25a', 'i:1;', 1721327827),
('ae06f755ba36b4926cf2fa843e90dada3df8a25a:timer', 'i:1721327827;', 1721327827),
('e33c92cd84be356aca9bb842e8665577716165da', 'i:1;', 1721329010),
('e33c92cd84be356aca9bb842e8665577716165da:timer', 'i:1721329010;', 1721329010),
('filament-backgrounds:image:admin', 'O:31:\"Swis\\Filament\\Backgrounds\\Image\":2:{s:5:\"image\";s:47:\"url(\"http://10.0.10.8:9500/images/LogoPLX.svg\")\";s:11:\"attribution\";N;}', 1721337252);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_15_201320_create_shareholders_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('COKrNAcpzxN0PrFtTo501WaYxPLi9YC6OcuOYRi4', NULL, '10.0.10.220', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiek9aUmNtbTU5d0V2bEVlU3pmQW5CU1VxNWVnZ1RuVEE4RDYxSmFBOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMC4wLjEwLjg6OTUwMC9hZG1pbi9sb2dpbiI7fX0=', 1721329045),
('G5NeIaFrW2q6m7ScUefno8EA7cYrFaqVNlk73uma', 1, '10.0.10.174', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiV2FqM3Z4VmNoR0ZKQk0xYzduVE55TXhPSjRoQ0JxY0NWSmhpeGhaSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMC4wLjEwLjg6OTUwMC9hZG1pbi9zaGFyZWhvbGRlcnM/dGFibGVTZWFyY2g9TGVkZXptYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiR5QzJDVVFLRVNMOHlucEdBTnhtb1hlMW9VcmJud2RlNTFMN1ZpVGZhWS80QS8yNHhjVHJCRyI7czo2OiJ0YWJsZXMiO2E6MTp7czoyNzoiTWFuYWdlU2hhcmVob2xkZXJzX3Blcl9wYWdlIjtzOjM6ImFsbCI7fX0=', 1721328371),
('w8KTsGqnjrN3QB6nnjxABsdnQVRkJeIEUNeZeuy6', 1, '10.0.10.20', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTzBTT3VkQ0VOU0YxVHpKWGdYb1lsVlFGV0VQV05rblJCMmhWWDNlQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMC4wLjEwLjg6OTUwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkeUMyQ1VRS0VTTDh5bnBHQU54bW9YZTFvVXJibndkZTUxTDdWaVRmYVkvNEEvMjR4Y1RyQkciO3M6NjoidGFibGVzIjthOjE6e3M6Mjc6Ik1hbmFnZVNoYXJlaG9sZGVyc19wZXJfcGFnZSI7czoyOiIxMCI7fX0=', 1721328601),
('Z4DUofNOuRVPSvx70M2smoVntv3GBW01IqMQIUKA', 1, '10.0.10.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNDlVZ1JSaTZrUmJCNHdpb3FOZWR3a3VzUXp4UnR1anFSbXpPNDhIdCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTAuMC4xMC44Ojk1MDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkeUMyQ1VRS0VTTDh5bnBHQU54bW9YZTFvVXJibndkZTUxTDdWaVRmYVkvNEEvMjR4Y1RyQkciO3M6NjoidGFibGVzIjthOjE6e3M6Mjc6Ik1hbmFnZVNoYXJlaG9sZGVyc19wZXJfcGFnZSI7czozOiJhbGwiO319', 1721329709);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shareholders`
--

CREATE TABLE `shareholders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(7000) DEFAULT NULL,
  `actions` int(11) DEFAULT NULL,
  `assistance` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shareholders`
--

INSERT INTO `shareholders` (`id`, `number`, `name`, `actions`, `assistance`, `created_at`, `updated_at`) VALUES
(79, '1', 'Abasali De Gil Cloris Marcelina', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(80, '2', 'Albarran Lacruz  Neptalí Miguel', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(81, '3', 'Albornoz Maldonado  Javier Alberto', 9, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(82, '4', 'Aldana Márquez  Héctor Acacio', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(83, '5', 'Aldana Márquez  José Orangel', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(84, '6', 'Altamiranda Gutiérrez  Jorge Isaac', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(85, '7', 'Altomare La Forgia  Marta Silvana', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(86, '8', 'Altuve Godoy  José Germán', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(87, '9', 'Alvarado Hernández  Vernizon José', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(88, '10', 'Alvarez De Molina  Minerva Beatriz', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(89, '11', 'Amado Leal  Fanny Esther', 9, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(90, '12', 'Amaya De González  Ydelma Argelia', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(91, '13', 'Aponte De Padilla  Ylva', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(92, '14', 'Araque Araque  José Olavides', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(93, '15', 'Araque Barroeta  Eduardo Antonio', 5, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(94, '16', 'Araujo Paz  de Urdaneta  Magaly Josefina', 5, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(95, '17', 'Araujo Rodríguez  José Hildebrando', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(96, '18', 'Ardila Ontiveros   Rafael Esteban', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(97, '19', 'Arellano Medina  Nabor Alejandro', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(98, '20', 'Arrieta Portillo  Bestalia', 8, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(99, '21', 'Asuaje De Medina  Olga', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(100, '22', 'Balza De Garcia  Gloria Tibisay', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(101, '23', 'Barboza Barboza  Ada Margarita', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(102, '24', 'Barrera de Albino Ana Dolores', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(103, '25', 'Barrera de Velasco  Belkys Yolanda', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(104, '26', 'Barreto Cabrera   Silvio Ramón', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(105, '27', 'Barreto De Del Orbe  Lumay Delfina', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(106, '28', 'Barrientos De Casanova  Maria Edit', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(107, '29', 'Barrientos De Gonzalez  Isabel', 6, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(108, '30', 'Bastidas De Díaz  Nancy Del Rosario', 24, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(109, '31', 'Bautista Castro  Sandra Patricia', 6, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(110, '32', 'Bello Sifontes  Igor Jesus', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(111, '33', 'Benítez Arellano  José Beltrán', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(112, '34', 'Berbeci Saavedra   Ciro Javier', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(113, '35', 'Biagiotti De Briceño   Aleida Mercedes', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(114, '36', 'Boscan De Atencio  Ada Raquel', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(115, '37', 'Boscan Martinez    Oslaida Margot', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(116, '38', 'Breto De Tovar  Damarys Indalecia', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(117, '39', 'Briceño Uzcategui  Gerardo Josè', 6, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(118, '40', 'Burguera  Chitraro. Rodolfo  Josè', 34, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(119, '41', 'Cabrera Martín  Juan José', 8, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(120, '42', 'Cabrita De Monagas  Norelys Coromoto', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(121, '43', 'Cáceres Hernández  Jorge ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(122, '44', 'Cadenas Cuevas  Gregorio Oswaldo', 22, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(123, '45', 'Caldera Partidas  Cándida Coromoto', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(124, '46', 'Calderón Barazarte  Andrés Leonardo', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(125, '47', 'Calderón Guillen  Alfredo Enrique', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(126, '48', 'Calderón Rivas  Alvaro Antonio', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(127, '49', 'Cañizales De Carreño  Elide  Sorena ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(128, '50', 'Cañizalez  Emiro Ramon', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(129, '51', 'Cañón Zapata  Neida Del Carmen', 6, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(130, '52', 'Capriles Herrera  Ildith Marìa ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(131, '53', 'Cárdenas Cáceres  Manuel Humberto', 17, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(132, '54', 'Cárdenas Chacón  José De Jesús', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(133, '55', 'Cárdenas De Toro  Maria Coromoto', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(134, '56', 'Carradini Sánchez  Hildebrando', 9, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(135, '57', 'Carradini Sánchez  Hildegard', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(136, '58', 'Carrero Márquez  Maria Yuraima', 3374, '1', '2024-07-17 18:32:45', '2024-07-18 22:56:08'),
(137, '59', 'Carrero Zambrano  Javier Alejandro', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(138, '60', 'Carrión De Echeverría  Isaura Antonia', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(139, '61', 'Casal De Altuve  Rosa Aura', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(140, '62', 'Casanova De Rosales  Rosa Alba', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(141, '63', 'Castillo Garcia Yofre Vicente ', 8, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(142, '64', 'Castillo Hernández  Yoffi Bonifacio', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(143, '65', 'Chacón Pernia   Moisés Asisclo', 8, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(144, '66', 'Chacón Ramírez Nilza Carolina', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(145, '67', 'Chirinos Avila  Angela Aurora', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(146, '68', 'Colmenares Molina  Julio Cesar', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(147, '69', 'Contreras De Fernández  Maricela', 5, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(148, '70', 'Contreras de Moreno   Lucila Haydee', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(149, '71', 'Contreras Escalante   Eloina', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(150, '72', 'Contreras Peñuela  Anaminta', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(151, '73', 'Cordero De Villarroel  Aracelis', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(152, '74', 'Cordero Schotborgh  Eva Maria', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(153, '75', 'Coronel Graterol  Agustín Jesús', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(154, '76', 'Cortez De Vallenilla  Milagro', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(155, '77', 'Cuellar Hernández  Luis Enrique', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(156, '78', 'Dávila Delgado  Violeta Maria', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(157, '79', 'Dávila Rojas  Elizabeth Del Valle', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(158, '80', 'Dávila Vielma  Abdón', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(159, '81', 'De Luca Alonso Esperanza Cruz', 16, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(160, '82', 'De Luca Alonso Pierina Teresa', 16, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(161, '83', 'De Santis De Márquez  Maria Rafaela', 7, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(162, '84', 'Delfín De Araujo  Beatriz Coromoto', 7, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(163, '85', 'Delgado  Sergio Alberto', 8, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(164, '86', 'Di Frisco Pascua  Gina Maria', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(165, '87', 'Díaz Jimenez   Juan Ramòn ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(166, '88', 'Díaz Lobo  Rafael Antonio', 1288, '0', '2024-07-17 18:32:45', '2024-07-18 01:03:19'),
(167, '89', 'Djorki Andraous   José Antonio', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(168, '90', 'Dugarte Zambrano  Luis Segundo', 437, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(169, '91', 'El Charif Franco  Nasser Muryb', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(170, '92', 'EL Darjani De Lippa  Chajide de los Angeles.', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(171, '93', 'El Quaouti  Abbes', 15, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(172, '94', 'Escalona De Contreras  Maria Elsida', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(173, '95', 'Estebanez De Leal  Esperanza Josefina', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(174, '96', 'Estrada De Leal  Norys Beatriz', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(175, '97', 'Farmacéutica Milexa  C.A.', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(176, '98', 'Farmacia  La Nueva Central C.A', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(177, '99', 'Farmacia  San  Celestino   (Sucesores)', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(178, '100', 'Farmacia Alto Chama C.A ', 15, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(179, '101', 'Farmacia Corazón De Jesús C.A', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(180, '102', 'Farmacia Cristo Moreno 2015  S.A ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(181, '103', 'Farmacia Farmasalias C.A ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(182, '104', 'Farmacia Salvador Guerra S.R.L', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(183, '105', 'Farmacia San Luis  C.A ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(184, '106', 'Farmacia San Rafael C.A', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(185, '107', 'Fernández De Fernández  Etilma', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(186, '108', 'Fernández Mendez   Janett  Coromoto ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(187, '109', 'Flores De Cesar  Sonia del Carmen', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(188, '110', 'Flores Flores  Carlos Ali', 6, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(189, '111', 'Flores  Luis Ramón', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(190, '112', 'Fonseca Marin Hercilia Ramona', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(191, '113', 'Frontado De Ledezma  Yolanda Isabel', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(192, '114', 'Fuentes  de Chacon Maria Marlegny', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(193, '115', 'Gallo Pulido  Carlos  Vincenzo', 53, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(194, '116', 'Gallo Pulido  Lucia Coromoto', 43, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(195, '117', 'Gallo Pulido  Salvatore Gonzalo', 43, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(196, '118', 'Gamboa Carrillo  Olimar Tibisay', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(197, '119', 'Gamboa Salazar  Gustavo Adolfo', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(198, '120', 'García Bolìvar    Amelia  Lucia ', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(199, '121', 'García de Contreras   Rosa Helena', 5, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(200, '122', 'García De Diaz  Luisa  Margarita', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(201, '123', 'García Rangel   Rosa Ysbelia', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(202, '124', 'Garrido Duque  Tomas Antonio', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(203, '125', 'Gimenez Barradas  Liliam Esther', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(204, '126', 'Gómez Alvarez  José', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(205, '127', 'Gómez Brito  Raùl Josè ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(206, '128', 'Gòmez Ramòn', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(207, '129', 'Gómez Ramos  Alfredo Enrique', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(208, '130', 'González De García  Bedirva', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(209, '131', 'González De Montero  Elia Ramona', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(210, '132', 'González De Sifontes  Irama Isabel', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(211, '133', 'González De Uzcategui  Ydelma Argelia ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(212, '134', 'González González  Daniel José', 5, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(213, '135', 'González Gutierrez  Livia Sahilys', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(214, '136', 'González Travez   Lecsy Margarita', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(215, '137', 'Grillet Valdez   Ramón Edilberto', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(216, '138', 'Gudiño  Gilberto Antonio ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(217, '139', 'Guerrero Cardenas    Maria Eugenia', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(218, '140', 'Guerrero Cardenas  Maria Elizabeth', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(219, '141', 'Guerrero Cardenas  Maria Mercedes', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(220, '142', 'Guerrero De Velasco  Eglis Cecilia', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(221, '143', 'Guevara Ugel   Antulio Felipe', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(222, '144', 'Guillen Rojas  Maria Luisa', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(223, '145', 'Gutiérrez Rincón  Elsida Margarita', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(224, '146', 'Henríquez Franco  Nony', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(225, '147', 'Hernández De Linares  Gilda Elena', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(226, '148', 'Hernández Garcia   Cora', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(227, '149', 'Inciarte de Borjas    Alba Marina', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(228, '150', 'Irausquin  de Dikdan    Isbelia Yudy ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(229, '151', 'Jaramillo Higuera De Gomez    Maria Eugenia', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(230, '152', 'Kababe Dyadji  Karim', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(231, '153', 'Kirby Carrero Marco Andres Gerald', 67, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(232, '154', 'kirby Carrero Robert Gerald', 47, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(233, '155', 'La Cruz Alvarez  Daniel Enrique', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(234, '156', 'Lecuona Ribot  Humberto', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(235, '157', 'Ledezma Cobarrubia  Cesar Jose ', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(236, '158', 'Ledezma Nava  Angel De Jesús', 1424, '0', '2024-07-17 18:32:45', '2024-07-18 01:03:21'),
(237, '159', 'Ledezma Prieto  Jeniree  Julye ', 12, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(238, '160', 'Ledezma Prieto Angel de Jesus ', 12, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(239, '161', 'Ledezma Prieto Yngris Karina', 411, '0', '2024-07-17 18:32:45', '2024-07-18 00:54:14'),
(240, '162', 'León Fernández  Omaira Isabel', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(241, '163', 'León Gomez  Pedro José ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(242, '164', 'Leonardi Troconis   José Domingo', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(243, '165', 'Linares Cabrita  Javier Enrique', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(244, '166', 'Linares de Morales  Fanny Coromoto', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(245, '167', 'Lobo De Giannini  Soraida Ramona', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(246, '168', 'López Guillen  Norma Gisela', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(247, '169', 'Lozano De Landaeta  Leli Margarita', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(248, '170', 'Luzardo Gonzalez  Onesimo Segundo', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(249, '171', 'Macias Figueredo  Teodoro', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(250, '172', 'Maestre Parra  Elitio Enrique', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(251, '173', 'Maldonado  Selenia', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(252, '174', 'Manrique Bolívar  Maria Angélica', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(253, '175', 'Marín Dugarte  Nadia Paola', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(254, '176', 'Marin Lucena  Aunario De Jesus Pastor', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(255, '177', 'Márquez Quijada Milexys de los Angeles', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(256, '178', 'Márquez Rojas  Cosme Josè  ', 2, '0', '2024-07-17 18:32:45', '2024-07-18 01:03:30'),
(257, '179', 'Marquina De Espinoza  Maria Alba', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(258, '180', 'Martínez Barrueta  Gloria Elizabeth', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(259, '181', 'Masci Masci  Angela Carmela', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(260, '182', 'Masci Masci  Carlos Stefano', 9, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(261, '183', 'Matheus Dàvila Auxiliadora', 10, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(262, '184', 'Matheus De Varela Josefa de La Paz', 33, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(263, '185', 'Mazzei de Olivo Margarita Guillermina', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(264, '186', 'Medina Castillo  Lourdes Zulay', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(265, '187', 'Medina De Román  Alida  Rosalba', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(266, '188', 'Mendoza de Franco    Míreya Josefina', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(267, '189', 'Meneses Vivas  Wolfang José ', 10, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(268, '190', 'Molina De Módica  Nely Margarita', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(269, '191', 'Molina Moros  Maria Guillermina', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(270, '192', 'Molina Pulido  Roque De Jesús', 13, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(271, '193', 'Molina Vielma Carlos Antonio ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(272, '194', 'Molina Vielma Carlos Eduardo', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(273, '195', 'Molina Vielma Juan Carlos ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(274, '196', 'Monsalve Prieto  Juan Gerardo', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(275, '197', 'Montañez Zambrano   Edwar Iván', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(276, '198', 'Montes De Oca De Suárez  Sinai del carmen', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(277, '199', 'Montilla Vasquez   Yoleida Antonia', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(278, '200', 'Montilva Contreras   Maria Gladys', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(279, '201', 'Montoya Noguera  Libsen Coromoto', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(280, '202', 'Mora Lobo  de Yañez  Doribel ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(281, '203', 'Mora Lobo  José Edgardo', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(282, '204', 'Mora Moreno  Ignacio', 9, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(283, '205', 'Mora Moreno  Matha', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(284, '206', 'Mora Ramírez  José Yovanny', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(285, '207', 'Mora Sandoval  Gustavo Efren', 6, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(286, '208', 'Morales De Gil  Amarilis', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(287, '209', 'Moreno Bastidas  Yelipza Maria ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(288, '210', 'Moret Sanchez   José Hernán', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(289, '211', 'Morillo Bermudez   Antonio Benito', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(290, '212', 'Morris Collante  Griselda Teresa', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(291, '213', 'Muñoz  Antonio Benito', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(292, '214', 'Narváez Cassis  Eulalio', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(293, '215', 'Narváez Cassis  Rafael', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(294, '216', 'Narváez Jiménez  Douglas Alberto', 13, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(295, '217', 'Narvàez Riera  Douglas Alberto', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(296, '218', 'Narvaez Riera  Oscar Eduardo ', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(297, '219', 'Natera Macuare  Rosa Aura', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(298, '220', 'Nava De Socorro  Gladys Maria', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(299, '221', 'Navarro De Schotborgh  Maria Luisa', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(300, '222', 'Noguera  Garnica  Martha Milagros', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(301, '223', 'Ocanto  de  Quintero  Maritzabel', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(302, '224', 'Ocariz  Héctor', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(303, '225', 'Olivo Belisario Luis Vicente', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(304, '226', 'Orlandi De Milano  Silvana', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(305, '227', 'Pabòn Duque  Carmen Marisela', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(306, '228', 'Pacca Campo Elías C.A', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(307, '229', 'Pacheco Armas  Teresa De Jesús', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(308, '230', 'Padilla Aponte  Miguel Elías', 5, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(309, '231', 'Paredes De Mesa  Yoly  Isabel', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(310, '232', 'Parra  Sulbaran   Maria Ramilda', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(311, '233', 'Paz Rincón  Belxys Xiomara', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(312, '234', 'Peña De Cárdenas  Ana Tiliza', 92, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(313, '235', 'Peña De Gavidia  Laura Irene', 21, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(314, '236', 'Peña Rivas Elvia Maria', 22, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(315, '237', 'Peña Rivas  Fernando Antonio', 43, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(316, '238', 'Pereira Contreras  Diomira Del Carmen', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(317, '239', 'Pereira Contreras  Mercedes Coromoto', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(318, '240', 'Pereira Díaz  Alis Margarita', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(319, '241', 'Pereira Mora Richard Wilfredo', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(320, '242', 'Pérez Arellano  Glaydis Yraida', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(321, '243', 'Pérez Colina   Mariela Beatriz', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(322, '244', 'Pérez De El Masri  Mercedes Elena', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(323, '245', 'Pérez De Rivas  Nery Ofelia', 24, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(324, '246', 'Pérez Marcano   Francisca Elena', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(325, '247', 'Pérez Pérez  Luis Beltrán', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(326, '248', 'Pernia Cañas  Luz Magaly', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(327, '249', 'Pineda De Pineda  Laura Domitila', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(328, '250', 'Porras Luna  Hildemaro', 94, '0', '2024-07-17 18:32:45', '2024-07-18 00:54:14'),
(329, '251', 'Prada Chacón  Víctor Alejo', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(330, '252', 'Prada de Perez  Marlene', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(331, '253', 'Prieto De Ledezma  Igris Noleyda', 30, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(332, '254', 'Prisco Núñez  Miriam Laudelima', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(333, '255', 'Promotora Padilla Gilly  C.A ', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(334, '256', 'Pugliese Campos  Francesco Saverio', 2339, '0', '2024-07-17 18:32:45', '2024-07-18 01:03:16'),
(335, '257', 'Pulgar Ramírez  Roxana', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(336, '258', 'Pulido Mendoza Eunices ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(337, '259', 'Pulido Ramirez Gerardo Alberto', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(338, '260', 'Pulido Ramirez Gonzalo Antonio', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(339, '261', 'Pulido Ramirez Julia Elena ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(340, '262', 'Pulido Ramirez Ligia Coromoto ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(341, '263', 'Pulido Ramirez Maria Ines del Rosario', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(342, '264', 'Quintero Cabrera  Luz Marina ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(343, '265', 'Ramírez De Peñuela  Sandra Isabel', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(344, '266', 'Ramírez Ramírez  Ramón Leonardo', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(345, '267', 'Ramos Sánchez  Guido Armenio', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(346, '268', 'Rangel Díaz  Leticia Josefina', 11, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(347, '269', 'Rangel Zambrano  Hugo Enrique', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(348, '270', 'Rangel  José Luis', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(349, '271', 'Rey Hernández Josè  Ricardo', 8, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(350, '272', 'Reyes Pacheco   Ida Elena ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(351, '273', 'Riera De Narváez  Alba Josefina', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(352, '274', 'Rincón Manrique  Leonardo José', 82, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(353, '275', 'Rivas Pérez  Nathalia Karin', 37, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(354, '276', 'Rivas Romero  Maria del Carmen', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(355, '277', 'Rodríguez García  Magdellys Coromoto', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(356, '278', 'Rodriguez Gonzalez  Marcial Humberto', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(357, '279', 'Rodríguez Martinez   Carmen Elena', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(358, '280', 'Rojas de Urrego Josefina del valle', 4, '0', '2024-07-17 18:32:45', '2024-07-18 01:03:09'),
(359, '281', 'Rojas Pérez  Luz Marina', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(360, '282', 'Romero de Urdaneta   Yadilma Del Valle', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(361, '283', 'Romero González  Omaira Leocricia', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(362, '284', 'Romero Soto  Juan Pedro', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(363, '285', 'Romero  Domingo Rafael', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(364, '286', 'Ruiz Flores  Cesar Augusto', 78, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(365, '287', 'Salas Chirinos  Néstor Jose', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(366, '288', 'Salas Osorio  Elaysa  Josefina', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(367, '289', 'Salas Peña   Sixta isabel de Coromoto', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(368, '290', 'Sampayo López  Tony José', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(369, '291', 'Sánchez Arellano  Enix Maritza', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(370, '292', 'Sánchez De Carradini  Blanca Dominga', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(371, '293', 'Sánchez De Fernández  Belquis del Carmen', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(372, '294', 'Sánchez Rodríguez  Asner Betulio', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(373, '295', 'Sánchez Ruiz   Alis Ramona', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(374, '296', 'Santiago de Matos Yony Del Carmen', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(375, '297', 'Serafini Salas de Molina  Anabell', 5, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(376, '298', 'Silva Sánchez  Omar Alirio', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(377, '299', 'Suárez Benavides  Geovanny Enrique', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(378, '300', 'Suárez De Castellón  Inés', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(379, '301', 'Suárez Mora  Herminia Esther', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(380, '302', 'Sucesión Alvarez Gutiérrez  Ricardo Ramón', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(381, '303', 'Sucesión Ana Ilba Sánchez Oliveros ', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(382, '304', 'Sucesión Araujo de Linarez Yolanda', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(383, '305', 'Sucesión Cadenas Uzcategui  Carlos Oreste(SUC)', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(384, '306', 'Sucesion Carmen Mireya Alvarez de La Cruz', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(385, '307', 'Sucesión Casanova Martinez   Omar Darío', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(386, '308', 'Sucesión Chaffardet Flores   Judith', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(387, '309', 'Sucesión Clavijo Contreras  William Andrés', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(388, '310', 'Sucesión Curiel De Reyes  Morelba Susana', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(389, '311', 'Sucesión Díaz Chacón  José Gilberto', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(390, '312', 'Sucesión Domínguez Contreras  Rafael Maria', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(391, '313', 'Sucesión Duarte Villanueva  Omar Antonio', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(392, '314', 'Sucesion Garcia Medina  Jinmy Pausides', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(393, '315', 'Sucesión González Luna   José Jesús', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(394, '316', 'Sucesión González Reverón  Silmar  Josefina', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(395, '317', 'Sucesión Guillermo Enrique Ortega', 59, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(396, '318', 'Sucesión Infante Escalona  Ramón', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(397, '319', 'Sucesión Isabelino Morillo Angel', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(398, '320', 'Sucesión Jesús Maria Cecilio Andueza Leonardi', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(399, '321', 'Sucesión Joaquin Ramon Colina ', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(400, '322', 'Sucesión Jorge Celestino Díaz Daza', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(401, '323', 'Sucesion Jose Ramón Valiente / Farmacia San Rafael', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(402, '324', 'Sucesión Ligia Marina Contreras González', 178, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(403, '325', 'Sucesión Luis Ramón Martinez  Vasquez', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(404, '326', 'Sucesión Márquez  Mario Jose', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(405, '327', 'Sucesion Martín Enrique Carrillo Rivera ', 17, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(406, '328', 'Sucesión Miguel Arcángel Moreno Guerrero ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(407, '329', 'Sucesión Morales Zavala  Antonio Ramón', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(408, '330', 'Sucesión Noemy Altagracia Agüero De Urbano', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(409, '331', 'Sucesión Olivia Matilde Ramirez de Ramirez ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(410, '332', 'Sucesión Paz Manzano  Rafael Angel', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(411, '333', 'Sucesión Pérez Barrè  Fernando', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(412, '334', 'Sucesion Rafael Enrique Suarez Silva', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(413, '335', 'Sucesión Riera López  Cesar Moisés', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(414, '336', 'Sucesión Rodríguez Quintero  Pedro Antonio', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(415, '337', 'Sucesión Romero Salas  Elio Blas', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(416, '338', 'Sucesión Schotborgh Reyes   Marco Gerardo (sucesores)', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(417, '339', 'Sucesion Torres Altuve Jose Natividad', 51, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(418, '340', 'Sucesión Tovar Orellana  Héctor Augusto', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(419, '341', 'Sucesion Uzcategui Uzcategui  Alonso Maria', 92, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(420, '342', 'Sucesión Valera   Rafael Simón', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(421, '343', 'Sucesión Valera Eljuri  Nohemi', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(422, '344', 'Sucesion Yolanda Mercedes Rivera de Spinetti', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(423, '345', 'Sucesión Yustiz Ramos  Elba Gisela ( sucesores)', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(424, '346', 'Sulbaran Torres Félix Eduardo', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(425, '347', 'Tesoreria Laboratorio Plusandex', 0, '0', '2024-07-17 18:32:45', '2024-07-18 00:29:04'),
(426, '348', 'Tognetti De Valecillos  Roberta', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(427, '349', 'Torrealba Rodríguez  Olga Maria', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(428, '350', 'Torres Garcia David Danilo ', 33, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(429, '351', 'Tortosa Contreras  Rafael', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(430, '352', 'Tortosa de Sanchez    Rosa Elena', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(431, '353', 'Tua Morillo  Aída Virginia', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(432, '354', 'Urbina Bonilla  José Vicente', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(433, '355', 'Urbina Prajedes', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(434, '356', 'Urdaneta Castillo  Elizabeth Josefina', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(435, '357', 'Urdaneta Leal  Ricaurte  Emiro', 3, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(436, '358', 'Urdaneta Martínez  Maribel Coromoto', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(437, '359', 'Urdaneta  Luz Marina', 6, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(438, '360', 'Uzcategui Rivera  Maria Leonidas', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(439, '361', 'Valeri Peña  Maria Andrea', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(440, '362', 'Valero De Porras  Carmen Beatriz', 21, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(441, '363', 'Valero Otero  Norka Berenice', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(442, '364', 'Valero Rondón Kaswan De Jesús', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(443, '365', 'Vargas Burguera  Claudio Gonzalo', 17, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(444, '366', 'Vargas de Perez  Maria Victoria', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(445, '367', 'Vargas León  Oscalido Josè', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(446, '368', 'Vázquez Pernia  Miguel Armando', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(447, '369', 'Vega Montero Luis Atilio', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(448, '370', 'Vega Rivas  David Segundo', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(449, '371', 'Velasco Muñoz  Helio José', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(450, '372', 'Ventura Freddy Coromoto', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(451, '373', 'Vergara Rodríguez  Rafael Angel', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(452, '374', 'Vielma De Monsalve  Marina', 16, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(453, '375', 'Vielma Lobo  Maria Teresa ', 19, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(454, '376', 'Vielma Morales  Zaida Angelina', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(455, '377', 'Vielma Peña   Gladys Narvey', 10, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(456, '378', 'Villalobos Villalobos   José Danilo', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(457, '379', 'Villamediana Bejas   Hilmer Dixon', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(458, '380', 'Villamediana Camejo   Arnaldo Marcos', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(459, '381', 'Villamediana Torres  Aura Cristina', 6, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(460, '382', 'Villamediana Torres  Carlos Eduardo ', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(461, '383', 'Villarreal de Sanchez   Delcy Aurora', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(462, '384', 'Villarroel Rosas    Alberto Trinidad', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(463, '385', 'Villarroel  Olga ysabel', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(464, '386', 'Vivas Ramírez  Gonzalo Antonio', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(465, '387', 'Younese Maali  Munir', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(466, '388', 'Zambrano Almeida  Yajaira  de la Cocepciòn', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(467, '389', 'Zambrano De Rangel  Olga Elena', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(468, '390', 'Zambrano Mora  Blanca Elena', 2, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(469, '391', 'Zamora  Josè Jesus', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(470, '392', 'Zavala De Cordova  Ana Ramona', 1, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45'),
(471, '393', 'Zerpa Castillo  Juan Francisco', 4, '0', '2024-07-17 18:32:45', '2024-07-17 18:32:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$12$yC2CUQKESL8ynpGANxmoXe1oUrbnwde51L7ViTfaY/4A/24xcTrBG', '4AXNCqfJAlIe6qyRbA9l0wN2XfSAqOklnfvZYctBz9NK1p2njFxUMCCfyz42', '2024-07-16 16:45:29', '2024-07-16 16:45:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `shareholders`
--
ALTER TABLE `shareholders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `shareholders`
--
ALTER TABLE `shareholders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
