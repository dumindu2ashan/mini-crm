-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 15, 2023 at 07:38 AM
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
-- Database: `mini_crm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Johnathon Fay', 'arne13@hotmail.com', '1700031631.jpg', 'reprehenderit.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(2, 'Patrick Gibson', 'bmayert@kerluke.com', '1700031631.jpg', 'ratione.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(3, 'Jimmie Kuhn', 'aniyah.beier@hotmail.com', '1700031631.jpg', 'eos.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(4, 'Zane Purdy', 'krajcik.felton@gmail.com', '1700031631.jpg', 'quia.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(5, 'Salma Gleichner Sr.', 'marlin63@gmail.com', '1700031631.jpg', 'fugiat.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(6, 'Toby Conroy', 'alvera16@yahoo.com', '1700031631.jpg', 'omnis.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(7, 'Ike Walsh', 'osinski.giovanny@dubuque.com', '1700031631.jpg', 'corrupti.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(8, 'Eleanora Breitenberg', 'thompson.connie@gmail.com', '1700031631.jpg', 'et.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(9, 'Cade Howell', 'tharris@jerde.biz', '1700031631.jpg', 'qui.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(10, 'Prof. Rico Muller Sr.', 'jast.ramiro@gmail.com', '1700031631.jpg', 'culpa.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(11, 'Alaina Hills', 'qlang@yahoo.com', '1700031631.jpg', 'et.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(12, 'Miss Raina Deckow V', 'caleb.kling@gmail.com', '1700031631.jpg', 'qui.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(13, 'Mrs. Vivian Jakubowski', 'kuhic.francis@gmail.com', '1700031631.jpg', 'sit.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(14, 'Aditya Leuschke', 'cheaney@gmail.com', '1700031631.jpg', 'assumenda.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(15, 'Ramona Mohr IV', 'kihn.rosamond@hotmail.com', '1700031631.jpg', 'ut.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(16, 'Marion Yundt MD', 'deshaun34@kutch.com', '1700031631.jpg', 'et.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(17, 'Verlie Schmeler', 'huel.jana@yahoo.com', '1700031631.jpg', 'quia.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(18, 'Vella Lubowitz DDS', 'oadams@ledner.com', '1700031631.jpg', 'amet.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(19, 'Prof. Isabella Auer', 'turcotte.imelda@johnston.com', '1700031631.jpg', 'voluptas.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(20, 'Prof. Elnora Haley II', 'ted80@boyer.com', '1700031631.jpg', 'consectetur.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(21, 'Dr. Cindy Bergnaum', 'glenda18@gmail.com', '1700031631.jpg', 'dolorum.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(22, 'Manuela O\'Connell', 'walsh.jennifer@dietrich.com', '1700031631.jpg', 'veniam.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(23, 'Dr. Clark Lind MD', 'gwilkinson@mills.org', '1700031631.jpg', 'non.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(24, 'Vernice Schimmel', 'esmeralda.connelly@renner.org', '1700031631.jpg', 'rerum.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(25, 'Columbus Hirthe III', 'abelardo.windler@schamberger.com', '1700031631.jpg', 'dolorum.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(26, 'Karlie Wiza', 'cedrick.herman@hotmail.com', '1700031631.jpg', 'libero.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(27, 'Maye Jacobs', 'julien22@blanda.com', '1700031631.jpg', 'aut.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(28, 'Miss Donna Hahn', 'lueilwitz.clarissa@yahoo.com', '1700031631.jpg', 'voluptas.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(29, 'Lupe Paucek', 'cyrus.oberbrunner@crooks.com', '1700031631.jpg', 'possimus.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(30, 'Dr. Domenick Wuckert', 'stoltenberg.percy@yahoo.com', '1700031631.jpg', 'adipisci.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(31, 'Bridie McDermott DDS', 'purdy.nadia@botsford.com', '1700031631.jpg', 'sint.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(32, 'Zackery Dicki', 'kunze.larry@sanford.biz', '1700031631.jpg', 'autem.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(33, 'Spencer Crooks', 'ijones@hotmail.com', '1700031631.jpg', 'perspiciatis.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(34, 'Thea Moore', 'lruecker@tromp.info', '1700031631.jpg', 'et.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(35, 'Chasity Jakubowski', 'bartoletti.nathaniel@hotmail.com', '1700031631.jpg', 'mollitia.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(36, 'Iliana Block', 'damore.delmer@hotmail.com', '1700031631.jpg', 'assumenda.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(37, 'Monty Howell', 'drosenbaum@kub.com', '1700031631.jpg', 'omnis.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(38, 'Eino Conroy', 'valerie.stroman@waters.com', '1700031631.jpg', 'omnis.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(39, 'Dr. Ed Kuhlman PhD', 'darian.fahey@gmail.com', '1700031631.jpg', 'suscipit.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(40, 'Jaeden Windler', 'wilma87@pagac.com', '1700031631.jpg', 'tenetur.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(41, 'Sabina Lind', 'lynch.alvis@gmail.com', '1700031631.jpg', 'porro.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(42, 'Donavon Kunde', 'chaim88@hotmail.com', '1700031631.jpg', 'ea.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(43, 'Beverly Ziemann', 'lowe.danny@king.com', '1700031631.jpg', 'ut.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(44, 'Dr. Clay Wunsch I', 'lisandro.fisher@hotmail.com', '1700031631.jpg', 'sed.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(45, 'Ms. Shanie Legros III', 'dhaag@spencer.com', '1700031631.jpg', 'voluptates.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(46, 'Paolo VonRueden', 'hilbert.rosenbaum@yahoo.com', '1700031631.jpg', 'esse.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(47, 'Mr. Garfield Kautzer MD', 'langworth.kenyatta@ward.com', '1700031631.jpg', 'quos.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(48, 'Lia Weimann', 'ogleichner@gmail.com', '1700031631.jpg', 'exercitationem.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(49, 'Forrest Kihn', 'luz16@nicolas.com', '1700031631.jpg', 'voluptas.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL),
(50, 'Ms. Magali Ritchie', 'marlene01@bogan.com', '1700031631.jpg', 'voluptates.com', '2023-11-15 01:30:31', '2023-11-15 01:30:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_company_id_foreign` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `company_id`, `email`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ebba', 'Okuneva', 30, 'fanny.macejkovic@hoppe.com', '6022129572', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(2, 'Sadye', 'Schimmel', 6, 'quitzon.claude@bayer.com', '8302727828', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(3, 'Elmer', 'Farrell', 3, 'john.spinka@block.com', '2597383434', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(4, 'Jonathon', 'Balistreri', 39, 'brenden42@gmail.com', '1955922140', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(5, 'Judge', 'Schinner', 38, 'ylindgren@gerhold.net', '5008046241', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(6, 'Gino', 'Klein', 37, 'izboncak@hotmail.com', '9459202900', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(7, 'Elyse', 'Hartmann', 30, 'elian.wiegand@rolfson.com', '9953246910', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(8, 'Lulu', 'Schiller', 14, 'ryley.hilpert@wunsch.net', '2915563050', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(9, 'Fleta', 'Jacobson', 25, 'henderson74@yahoo.com', '5523589733', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(10, 'Abelardo', 'Denesik', 7, 'mayer.ronny@orn.com', '0011933663', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(11, 'Nya', 'Spencer', 30, 'kilback.torey@yahoo.com', '2896736210', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(12, 'Alba', 'Emard', 49, 'kulas.natalia@bauch.com', '8985729510', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(13, 'Heath', 'Moen', 24, 'zosinski@dibbert.com', '1958160996', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(14, 'Nicklaus', 'Schuster', 36, 'lklein@harris.com', '1326094520', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(15, 'Vivian', 'McLaughlin', 37, 'vwiza@kautzer.com', '9265226119', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(16, 'Leland', 'Smith', 42, 'eulah.eichmann@kuvalis.biz', '5557861113', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(17, 'Hollie', 'Abbott', 14, 'hmccullough@ziemann.org', '3791588633', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(18, 'Emory', 'Corwin', 47, 'denesik.laisha@frami.info', '8991290033', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(19, 'Tristian', 'Lindgren', 49, 'jsimonis@kuhn.com', '3524488866', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(20, 'Erwin', 'Wolf', 37, 'elittel@hotmail.com', '9564461226', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(21, 'Jacques', 'Gulgowski', 2, 'mia19@yahoo.com', '5653362830', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(22, 'Lucile', 'Cummerata', 28, 'ashly03@schroeder.com', '5662937759', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(23, 'Israel', 'Baumbach', 4, 'adrianna.veum@torp.com', '7400436412', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(24, 'Tressa', 'Mitchell', 12, 'ctromp@harvey.com', '8076893024', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(25, 'Jazlyn', 'Zemlak', 34, 'icronin@boyle.com', '2270790239', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(26, 'Zackary', 'Kulas', 20, 'irving.marquardt@hotmail.com', '9202685512', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(27, 'Rachael', 'Gaylord', 17, 'litzy.herman@hotmail.com', '7451350128', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(28, 'Alivia', 'Rogahn', 20, 'fadams@yahoo.com', '4825061781', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(29, 'Kennith', 'Thiel', 21, 'gislason.trenton@powlowski.biz', '3383662973', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(30, 'London', 'Franecki', 13, 'savanna51@ferry.info', '8376444155', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(31, 'Jalen', 'Wilkinson', 31, 'cody.schumm@hotmail.com', '6218401237', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(32, 'Juliana', 'Gleichner', 33, 'mark74@hoeger.biz', '0637551084', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(33, 'Damian', 'Jakubowski', 28, 'hickle.reese@gmail.com', '2951858099', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(34, 'Davion', 'Cormier', 22, 'yost.kurtis@stokes.info', '3741675156', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(35, 'Cleora', 'Howell', 44, 'jovanny.lynch@schowalter.com', '8384463995', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(36, 'Murphy', 'Boehm', 42, 'ruecker.trevor@hotmail.com', '6031289695', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(37, 'Jesse', 'Armstrong', 34, 'matilda.jones@altenwerth.info', '9656583103', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(38, 'Alessia', 'Dicki', 20, 'ischmitt@kessler.biz', '7507052577', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(39, 'Raphael', 'Johns', 20, 'alexander.fay@yahoo.com', '4752723466', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(40, 'Elta', 'McCullough', 34, 'kuhic.tanner@swaniawski.info', '6334702693', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(41, 'Gussie', 'Conn', 8, 'rdamore@roberts.biz', '1310290356', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(42, 'Theodore', 'Schuster', 25, 'jhodkiewicz@hotmail.com', '3305781611', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(43, 'Eulalia', 'Schumm', 37, 'tberge@kreiger.org', '3829396613', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(44, 'Andreane', 'Stark', 15, 'judge77@hotmail.com', '9879220327', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(45, 'Cristian', 'Will', 24, 'augusta.bergstrom@dach.com', '7820458535', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(46, 'Kaela', 'Maggio', 41, 'klocko.manley@torphy.info', '2415908661', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(47, 'Princess', 'Luettgen', 31, 'ooreilly@nienow.com', '5242064977', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(48, 'Earlene', 'O\'Connell', 37, 'daisha.crist@block.net', '4618258280', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(49, 'Gordon', 'Heaney', 43, 'schmidt.eulalia@schuppe.org', '9566859966', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL),
(50, 'Gregg', 'Haley', 19, 'rozella82@bernhard.com', '2841497848', '2023-11-15 01:30:32', '2023-11-15 01:30:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_13_163731_create_companies_table', 1),
(6, '2023_11_13_163850_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'admin@gmail.com', NULL, '$2y$10$nP.8Nm87Uu1eGUpYYOxW2OdrvFXmwwHVlFAbezUtoZDctb1yAIyZy', NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
