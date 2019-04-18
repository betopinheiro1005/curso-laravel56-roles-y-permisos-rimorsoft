-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2019 at 06:16 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-roles`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(42, '2014_10_12_000000_create_users_table', 1),
(43, '2014_10_12_100000_create_password_resets_table', 1),
(44, '2015_01_20_084450_create_roles_table', 1),
(45, '2015_01_20_084525_create_role_user_table', 1),
(46, '2015_01_24_080208_create_permissions_table', 1),
(47, '2015_01_24_080433_create_permission_role_table', 1),
(48, '2015_12_04_003040_add_special_role_column', 1),
(49, '2017_10_17_170735_create_permission_user_table', 1),
(50, '2019_04_17_210019_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Exibir usuários', 'users.index', 'Lista e exibe todos os usuários do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(2, 'Ver detalhes de usuário', 'users.show', 'Ver em detalhes cada usuário do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(3, 'Edição de usuários', 'users.edit', 'Editar qualquer dado de um usuário do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(4, 'Eliminar usuário', 'users.destroy', 'Eliminar qualquer usuário do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(5, 'Exibir roles', 'roles.index', 'Lista e exibe todos os roles do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(6, 'Ver detalhes de rol', 'roles.show', 'Ver em detalhes cada role do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(7, 'Criação de rol', 'roles.create', 'Criar role do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(8, 'Edição de rol', 'roles.edit', 'Editar qualquer dado de um role do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(9, 'Eliminar rol', 'roles.destroy', 'Eliminar qualquer role do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(10, 'Exibir produtos', 'products.index', 'Lista e exibe todos os produtos do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(11, 'Ver detalhes de produto', 'products.show', 'Ver em detalhes cada produto do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(12, 'Criação de produto', 'products.create', 'Criar produto do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(13, 'Edição de produto', 'products.edit', 'Editar qualquer dado de um produto do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(14, 'Eliminar produto', 'products.destroy', 'Eliminar qualquer produto do sistema', '2019-04-18 00:26:58', '2019-04-18 00:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2019-04-18 10:46:06', '2019-04-18 10:46:06'),
(2, 2, 4, '2019-04-18 10:46:06', '2019-04-18 10:46:06'),
(5, 10, 4, '2019-04-18 10:46:06', '2019-04-18 10:46:06'),
(6, 11, 4, '2019-04-18 10:46:06', '2019-04-18 10:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Culpa non sed asperiores necessitatibus.- EDITADO', 'Voluptas non recusandae et neque sit nihil et sed.', '2019-04-18 00:26:58', '2019-04-18 06:51:31'),
(2, 'Quam distinctio occaecati dolores a saepe fuga occaecati.', 'Explicabo quia placeat aut nostrum.', '2019-04-18 00:26:58', '2019-04-18 00:26:58'),
(3, 'Autem qui tenetur rerum officia iure odio.', 'Quae ut molestias provident laudantium eligendi molestiae fugiat.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(4, 'Quo eaque alias tempora voluptates et officia.', 'Sit dolores ut quia nihil sit in.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(5, 'Sunt nobis beatae perferendis et molestiae temporibus rerum.', 'Distinctio similique dolores omnis iure et.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(6, 'Quia recusandae perspiciatis facilis animi natus rerum delectus.', 'Sunt expedita ad ut ipsum nobis inventore.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(7, 'Ipsa ut possimus nisi quasi quidem officiis et dolorum.', 'Possimus repellendus temporibus et blanditiis quo.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(8, 'Quia est odit mollitia vitae quaerat ullam et.', 'Magnam laudantium saepe voluptatum qui distinctio quibusdam.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(9, 'Enim nobis in similique id.', 'Architecto cumque facilis natus animi.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(10, 'Vitae magnam aut dolorem voluptatem enim.', 'Ducimus sed sequi beatae id et velit amet.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(11, 'Exercitationem sunt adipisci consequatur debitis.', 'Vel voluptatem quisquam natus similique.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(12, 'Eos dicta praesentium qui qui inventore.', 'Officia placeat non harum rerum.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(13, 'Repellendus at ab deserunt quo non.', 'Ex vel non hic dicta.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(14, 'Hic ut tenetur facilis.', 'Magni quos quisquam numquam qui.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(15, 'Quidem distinctio rem voluptatem omnis quisquam perferendis est.', 'Veritatis harum rerum inventore esse.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(16, 'Mollitia incidunt laudantium voluptatem iste vel reiciendis consequatur non.', 'Magnam velit id non.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(17, 'Temporibus quaerat sapiente voluptas non repellendus veniam labore.', 'Alias dolorem maiores voluptate.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(18, 'Dolor voluptas vero veniam reprehenderit.', 'Excepturi natus error cum voluptatem dolores qui.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(19, 'Non molestiae id nulla quisquam.', 'Ut sapiente sed quia laboriosam corporis perferendis nulla exercitationem.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(20, 'Omnis expedita sint doloribus possimus et consequatur.', 'Ea magnam provident dignissimos.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(21, 'Perspiciatis voluptas laudantium eos debitis quas praesentium.', 'Eveniet eligendi ad sit placeat quod iusto aut.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(22, 'Tenetur rem pariatur nobis omnis aperiam esse.', 'Rerum vitae ut eius quasi.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(23, 'Aliquid excepturi qui minima.', 'Qui perspiciatis vero et et praesentium.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(24, 'Molestias fugiat rem corporis adipisci vel magni.', 'Tempora eos impedit dignissimos voluptas dolore et.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(25, 'Qui voluptates assumenda illum tempore quia aut et.', 'Consectetur iste illum aliquam magni libero impedit neque.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(26, 'Dolore autem officia qui et sed voluptate illo.', 'Vel non voluptate velit omnis iusto fugiat illo.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(27, 'Sunt recusandae et voluptas et incidunt provident.', 'Tempore quia vero voluptatem repellat iusto molestiae.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(28, 'Mollitia mollitia voluptatem placeat.', 'Quo voluptates quis facilis omnis sed qui.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(29, 'Omnis sit id praesentium nostrum.', 'Nihil minima sint molestiae.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(30, 'Unde aut necessitatibus et sed neque ducimus cum.', 'Sunt ut voluptas aut ipsum qui non omnis.', '2019-04-18 00:26:59', '2019-04-18 00:26:59'),
(31, 'Odio qui dolore nihil.', 'Optio non at eum corrupti ipsa omnis consequatur.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(32, 'Aliquam expedita illo dolores consectetur.', 'Autem maxime nihil et necessitatibus.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(33, 'Non nisi qui odio commodi harum aliquid occaecati.', 'Cumque tempore nam molestiae sapiente illo.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(34, 'Voluptatem est labore sint aspernatur consequatur.', 'Sint soluta fugiat amet quia aut.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(35, 'Sit voluptatibus dolores rerum sed omnis doloremque commodi.', 'Unde et alias alias eos repudiandae ducimus.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(36, 'Minima aut vel sit quam consequuntur.', 'Laboriosam maiores earum eaque et dolorem consequatur labore quaerat.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(37, 'Eos qui tempora earum modi laborum odit repellat.', 'Est rerum beatae dolores quas facere incidunt.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(38, 'Sit excepturi dolorem laborum sint.', 'Laudantium amet aut vel odio rerum maxime voluptatibus nobis.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(39, 'Sunt pariatur sit distinctio ut asperiores qui.', 'Eum velit modi voluptatibus accusantium dolores aut id.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(40, 'Autem id ut est.', 'Atque laudantium id aliquid consequatur ut.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(41, 'Dolores at nulla illo est.', 'Cupiditate laudantium officia placeat.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(42, 'Reiciendis consequatur expedita soluta officia.', 'Voluptatem non ut fugit ut provident ut impedit.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(43, 'Saepe suscipit laudantium qui quae.', 'Aperiam est dolores unde.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(44, 'Ea dolor et sit expedita.', 'Architecto eum repellat quo omnis omnis.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(45, 'Cum enim eaque nostrum.', 'Reprehenderit iusto facilis perspiciatis illo et enim.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(46, 'Aperiam eum delectus est rerum et.', 'Rerum porro dignissimos et qui numquam sequi.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(47, 'Sunt dicta ipsa modi quaerat eos est alias.', 'Perspiciatis tempore non aliquam maiores nesciunt mollitia aspernatur.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(48, 'Sit non sint eligendi blanditiis sit aperiam sit.', 'Et cum adipisci magnam.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(49, 'Deleniti eos voluptatum suscipit omnis est rerum optio.', 'Repellat expedita omnis quia iusto quisquam.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(50, 'Velit et est ut ad impedit ullam.', 'Non eos consectetur facilis iste voluptatem aut eos itaque.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(51, 'Cumque sit nihil libero architecto modi nihil et.', 'Ratione rem qui voluptatem odit doloribus qui exercitationem.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(52, 'Ut qui rerum voluptas rem.', 'Recusandae laudantium asperiores ipsa beatae aut.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(53, 'Nulla ipsa et aut natus porro voluptatem doloremque.', 'Sed recusandae mollitia et et.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(54, 'Delectus ut enim velit nemo hic sapiente.', 'Ratione aliquam qui commodi assumenda rem corporis eaque.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(55, 'Velit soluta error beatae pariatur quo enim.', 'Quidem illum assumenda ut.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(56, 'Enim ducimus impedit maiores nostrum adipisci fugiat.', 'Magni eligendi nihil praesentium doloribus asperiores.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(57, 'Et vel tempore at nam quas.', 'Veritatis eum odio sint non velit.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(58, 'Velit ducimus aliquam eius facere enim voluptate saepe et.', 'Facilis ipsum nihil quasi minus.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(59, 'Magni eos eligendi laborum sapiente ipsa qui delectus.', 'Quibusdam suscipit eum modi dolorem consequuntur maiores.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(60, 'Suscipit voluptas et sapiente ea nostrum illum.', 'Molestias dolores occaecati ut voluptatem.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(61, 'Voluptates ex ut voluptas in.', 'Molestias autem nulla sit quod et provident maxime.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(62, 'Et alias quis quidem laborum commodi et eos.', 'Ea sint qui quibusdam ea consequatur rerum asperiores.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(63, 'Odit illum praesentium deserunt ea sint qui officia.', 'Et minus eos sed sint similique fuga qui.', '2019-04-18 00:27:00', '2019-04-18 00:27:00'),
(64, 'Provident qui ea aliquid qui molestias aut.', 'Eveniet odit eveniet itaque vero.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(65, 'Sit est quisquam in dolores voluptatum reprehenderit in.', 'Delectus autem error esse quia.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(66, 'Ut reiciendis in quisquam libero consectetur.', 'Culpa quasi qui et assumenda.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(67, 'Nihil animi laboriosam quod cupiditate.', 'Sit nam aut quia asperiores rem velit.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(68, 'Tempore eos et et autem quia voluptas.', 'Est rerum praesentium adipisci recusandae eos occaecati magni qui.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(69, 'Eaque sed aperiam impedit cupiditate quam.', 'Praesentium magnam voluptas non sed.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(70, 'Itaque ut a amet minus quasi voluptatem tenetur.', 'Sit voluptas aut voluptates dicta.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(71, 'Maxime rerum totam pariatur incidunt incidunt accusamus.', 'Est quia maxime nihil accusamus tempora dolorum.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(72, 'Nemo inventore est inventore dolorem voluptatem officiis.', 'Libero excepturi ratione est cum.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(73, 'Ea eos eligendi soluta facere et voluptas.', 'Quo qui cupiditate quisquam explicabo sit velit excepturi.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(74, 'Eos omnis et illo facilis.', 'Dolorem eum tempora assumenda aut non est aliquid.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(75, 'Aut debitis iste accusantium odio repudiandae.', 'Assumenda dolores tempore quia sequi quo qui.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(76, 'Expedita quod nostrum aut et minima.', 'Excepturi dolores dolorem deserunt.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(77, 'Est id eos incidunt qui.', 'Aut id ut aspernatur culpa.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(78, 'Voluptatum nulla sit quasi dignissimos in reiciendis.', 'Qui incidunt optio eum ut tenetur autem quod.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(79, 'Facere inventore in et et et unde.', 'Qui alias aut qui.', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(80, 'Quasi magni veniam cum et non qui quia.', 'Deserunt omnis animi et distinctio laboriosam.', '2019-04-18 00:27:01', '2019-04-18 00:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'admin', 'Role Administrador', '2019-04-18 00:27:02', '2019-04-18 00:27:02', 'all-access'),
(4, 'Supervisor', 'supervisor', NULL, '2019-04-18 10:46:05', '2019-04-18 10:46:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 21, '2019-04-18 05:50:18', '2019-04-18 05:50:18'),
(4, 4, 22, '2019-04-18 10:57:42', '2019-04-18 10:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adolfo Dibbert - EDITADO', 'immanuel.greenfelder@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kBg57Oo8RW', '2019-04-18 00:27:01', '2019-04-18 07:10:13'),
(3, 'Everett Schamberger', 'rollin77@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zKfwU9HhAb', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(4, 'Adrienne Homenick PhD', 'pratke@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZO8ULPq4pb', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(5, 'Ona Rolfson', 'kunze.darwin@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cvnVygxP91', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(6, 'Preston Pouros', 'kroob@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xmECl8EvhQ', '2019-04-18 00:27:01', '2019-04-18 00:27:01'),
(7, 'Olin Bahringer', 'steuber.rosemary@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6pJNyyyduZ', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(8, 'Dr. Billie Kiehn DDS', 'jones.lavon@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Hsk4GsPTAI', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(9, 'Ms. Carmela Hauck', 'darron.denesik@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Vj2RNzuQKh', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(10, 'Edmond D\'Amore', 'durgan.citlalli@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KY4Y4IuzuW', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(11, 'Miss Rosemarie Daugherty III', 'yheaney@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zvc08oX63Z', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(12, 'Miss Demetris Yost IV', 'godfrey04@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'e5lCBDXYLR', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(13, 'Mr. Chauncey Beatty DDS', 'mack.hilpert@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'enOF1mgLQ8', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(14, 'Harvey Schulist', 'bahringer.charley@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rsnV78Xkp9', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(15, 'Stella Herman', 'simonis.claire@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ODksTWWOrp', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(16, 'Nico Aufderhar', 'christine.mitchell@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'iq8OXot9KZ', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(17, 'Prof. Tremayne Bins', 'bradford52@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'E9eICFDFmy', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(18, 'Carlee Hettinger PhD', 'kling.kayli@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cnheMkY8cx', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(19, 'Clemens Rippin I', 'maryse.smith@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IaCj0eJvPg', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(20, 'Novella Kuphal', 'rkohler@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8BWGiufi3i', '2019-04-18 00:27:02', '2019-04-18 00:27:02'),
(21, 'Roberto Pinheiro', 'betopinheiro1005@yahoo.com.br', '$2y$10$wKvkF1SB8ns/rGZ7ekTitetbW0ddWSTvfkPrPiKmttT0LC0Fy/bpK', 'VZtUTGxBuwgSJB9C1UUicAjBEsXpwSubQUHlKEXSO6PQ7gT2jwQ3uQTlcEyT', '2019-04-18 04:28:35', '2019-04-18 04:28:35'),
(22, 'Italo Morales', 'italomorales@rimorsoft.com', '$2y$10$QBPahDyqZw/XrkZ9.9U.n.viX5jMh7RfHre37GA/m7s2XYD891/mu', 'RMF892XfwxBQV9pvn6mJIDQ77Y8GY5JnT8atJiq8WSvHMxyOuVfj6oQECtu6', '2019-04-18 10:53:41', '2019-04-18 10:53:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
