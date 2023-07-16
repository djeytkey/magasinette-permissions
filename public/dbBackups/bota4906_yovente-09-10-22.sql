-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 09 oct. 2022 à 12:47
-- Version du serveur :  10.3.36-MariaDB
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bota4906_yovente`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Account-1', 'Comptabilité 1', NULL, 0, 'Fond de caisse initial', 1, 1, '2018-12-18 02:58:02', '2022-01-06 15:27:31'),
(3, '21211', 'Sa', NULL, 0, NULL, 0, 0, '2018-12-18 02:58:56', '2022-01-03 16:36:31');

-- --------------------------------------------------------

--
-- Structure de la table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Ensemble', NULL, NULL, 0, '2022-05-11 07:18:34', '2022-08-21 22:37:26'),
(2, 'Abaya', NULL, NULL, 0, '2022-05-11 07:18:47', '2022-08-21 22:37:43'),
(3, 'Hijab', NULL, NULL, 1, '2022-08-23 21:12:05', '2022-08-23 21:12:05'),
(4, 'ABAYA', NULL, NULL, 1, '2022-09-10 07:14:08', '2022-09-10 07:14:08');

-- --------------------------------------------------------

--
-- Structure de la table `cat_tickets`
--

CREATE TABLE `cat_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cat_tickets`
--

INSERT INTO `cat_tickets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CAT1', '2022-08-12 11:16:07', '2022-08-12 11:16:08'),
(2, 'CAT2', '2022-08-12 11:16:15', '2022-08-12 11:16:16');

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AFOURAR - BENI-MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(2, 'AGADIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(3, 'AGHBAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(4, 'AGLOU', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(5, 'AGOURAY - MEKNES', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(6, 'AGZIRT BENI-MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(7, 'AHFIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(8, 'AIN ALLA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(9, 'AIN AOUDA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(10, 'AIN ATTIQ', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(11, 'AIN CHEGGAG', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(12, 'AIN CHKEF', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(13, 'AIN DFALI-OUAZZANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(14, 'AIN EL MEDIOUR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(15, 'AIN HAROUDA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(16, 'AIN JEMAA-MEKNES', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(17, 'AIN JIRI-MEKNES', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(18, 'AIN SEDDAQ', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(19, 'AIN TEKKI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(20, 'AIN ZARKA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(21, 'AIT AISSA OUBRAHIM', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(22, 'AIT AMIRA-AGADIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(23, 'AIT IAAZA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(24, 'AIT IHYA OMOUSSA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(25, 'AIT MELLOUL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(26, 'AIT OURIR-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(27, 'AJDIR-HOUCIMA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(28, 'AJDIR-TAZA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(29, 'AKKA-TATA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(30, 'AKLIM', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(31, 'AL HOCEIMA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(32, 'ALNIF', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(33, 'ANZA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(34, 'AOUFOUS', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(35, 'AOURIR-AGADIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(36, 'ARJAT-MOHAMMEDIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(37, 'ARREFOUD VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(38, 'ASILAH VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(39, 'ASSA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(40, 'ATTAOUIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(41, 'AZEMMOUR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(42, 'AZILAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(43, 'AZLA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(44, 'AZROU', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(45, 'BAB BARD', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(46, 'BAB TAZA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(47, 'BDOUZA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(48, 'BEJAAD', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(49, 'BELAAGID', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(50, 'BELFAA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(51, 'BELKSIRI VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(52, 'BEN AHMED-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(53, 'BEN GUERIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(54, 'BEN TAYEB-NADOR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(55, 'BENI ENSAR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(56, 'BENI MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(57, 'BENSLIMANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(58, 'BERKANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(59, 'BERRECHID VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(60, 'BHALIL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(61, 'BIOUGRA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(62, 'BIR JDID', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(63, 'BNI AYAT - BENI-MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(64, 'BNI BOUAYACH', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(65, 'BNI YAKHLEF', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(66, 'BOUANANE-TETOUN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(67, 'BOUARFA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(68, 'BOUDERBALA-MEKNES', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(69, 'BOUFKRANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(70, 'BOUIZAKARNE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(71, 'BOUJDOUR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(72, 'BOUJNIBA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(73, 'BOUKNADL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(74, 'BOULANOUARE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(75, 'BOULEMANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(76, 'BOUMALNE DADES', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(77, 'BOUMIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(78, 'BOUNAAMANE-TIZNIT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(79, 'BOUSKOURA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(80, 'BOUZNIKA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(81, 'BRADIA - BENI-MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(82, 'CABO NEGRO', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(83, 'CASABLANCA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(84, 'CHEFCHAOUEN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(85, 'CHELLALAT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(86, 'CHICHAOUA-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(87, 'CHOUITER', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(88, 'DAKHLA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(89, 'DAR BOUAZZA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(90, 'DAR OULD ZIDOUH', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(91, 'DAROUA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(92, 'DCHEIRA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(93, 'DEMNATE-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(94, 'DKHISSA-MEKNES', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(95, 'DLALHA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(96, 'DOUAR BOUMAIZ', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(97, 'DRARGA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(98, 'DRIOUCH-NADOR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(99, 'ECHEMMAIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(100, 'EL BOROUJ', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(101, 'EL GARA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(102, 'EL JADIDA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(103, 'EL KSIBA - BENI-MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(104, 'EL MAADER EL KABIR-TIZNIT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(105, 'EL MANSOURIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(106, 'EL OUATIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(107, 'ELHAJEB VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(108, 'ERRACHIDIA-02', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(109, 'ERRAHMA VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(110, 'ESSAOUIRA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(111, 'ESSMARA-SAHARA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(112, 'FAM EL HISN-TATA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(113, 'FES', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(114, 'FIGUIG', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(115, 'FNIDEQ', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(116, 'FOUM ZGUID', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(117, 'FQUIH BEN SALAH', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(118, 'GFIFAT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(119, 'GOUASSEM-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(120, 'GOULMIMA VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(121, 'GUELMIM', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(122, 'GUERCIF', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(123, 'GUISSER', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(124, 'HAD HRARA-SAFI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(125, 'HAD SWLME', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(126, 'HAD WLAD FRAJ', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(127, 'HARHOURA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(128, 'HOUARA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(129, 'IDI JABER-BENI-MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(130, 'IFRAN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(131, 'IGHRAM LAALAM-BENI MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(132, 'IMGON-TINGHIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(133, 'IMINTANOUTE-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(134, 'IMOUZAR KANDRE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(135, 'IMOUZZER MARMOUCHA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(136, 'IMZOUREN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(137, 'INZEGANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(138, 'ISSAFEN-TATA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(139, 'ISSAGUEN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(140, 'JAMAAT FDALA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(141, 'JAMAAT SHAIM', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(142, 'JERADA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(143, 'JORF EL MELHA-OUZZANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(144, 'JORF SEFAR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(145, 'KABILA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(146, 'KAMOUNI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(147, 'KARIAT ARKMAN‎-NADOR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(148, 'KARIAT BA MOHAMED', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(149, 'KASBA TADLA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(150, 'KASBAH EL TAHER', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(151, 'KELÂA DES SRAGHNA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(152, 'KELÂAT M GOUNA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(153, 'KELIAA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(154, 'KENITRA VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(155, 'KHEMIS SAHEL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(156, 'KHEMIS ZEMAMRA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(157, 'KHEMISSET VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(158, 'KHENICHET', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(159, 'KHENIFRA VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(160, 'KHOURIBGA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(161, 'KSAR EL KEBIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(162, 'KSAR SGHIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(163, 'LAAROUI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(164, 'LAAYOUNE-PORT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(165, 'LAAYOUNE-SAHARA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(166, 'LALLA FATNA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(167, 'LALLA MIMOUNA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(168, 'LAOUAMRA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(169, 'LARACHE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(170, 'LAYOUN CHERKIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(171, 'LHAJ KADOUR VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(172, 'LHAWZIA-JADIDA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(173, 'LMHAYA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(174, 'LOUIZIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(175, 'M DIQ', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(176, 'MAAZIZ', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(177, 'MARINA SMIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(178, 'MARRAKECH', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(179, 'MARTIL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(180, 'MASMOUDA - OUAZZANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(181, 'MAZAGAN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(182, 'MEDIONA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(183, 'MEHDIA VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(184, 'MEJJAT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(185, 'MEKNES', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(186, 'MHAMID EL GHIZLANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(187, 'MIDAR-DRIOUCH', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(188, 'MIDELT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(189, 'MIMOSA-MOHAMMEDIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(190, 'MISSOUR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(191, 'MOLY DRISSE ZARHOUNE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(192, 'MOUHAMMEDIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(193, 'MOULAY ABDELLAH', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(194, 'MOULAY BOUSSELHAM', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(195, 'MOULAY YAÂCOUB', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(196, 'MRIRTE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(197, 'MSAWAR RASO', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(198, 'MSEMRIR-TINGHIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(199, 'MZOUDA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(200, 'NADOR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(201, 'NOUACEUR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(202, 'OUAHAT SIDI BRAHIM', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(203, 'OUALMES VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(204, 'OUARZAZAT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(205, 'OUAZZANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(206, 'OUDAYA-MARRAKECH', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(207, 'OUED AMLIL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(208, 'OUED LAOU', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(209, 'OUED ZEM', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(210, 'OUJDA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(211, 'OULAD AYAD', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(212, 'OULAD BERHIL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(213, 'OULAD DAHOU', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(214, 'OULAD JERRAR-TIZNIT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(215, 'OULAD SAID', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(216, 'OULAD SAID-BENI MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(217, 'OULAD TEIMA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(218, 'OULAD ZMAM - BENI-MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(219, 'OULED BEN RAHMOUN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(220, 'OULED BOUTABET', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(221, 'OURIKA-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(222, 'OUTAT EL HAJ', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(223, 'PLAGE DAVID-BOUZNIKA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(224, 'RABAT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(225, 'RAS EL MA-FES', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(226, 'RICHE-02', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(227, 'RISSANI VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(228, 'ROMMANI VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(229, 'SAAIDIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(230, 'SAFI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(231, 'SALE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(232, 'SALE EL JADIDA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(233, 'SBAA AYOUNE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(234, 'SEBT EL GUERDANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(235, 'SEBT GZOULA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(236, 'SEFROU', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(237, 'SEGANGAN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(238, 'SELOUANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(239, 'SETTATE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(240, 'SID L MOKHTAR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(241, 'SID ZOUINE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(242, 'SIDI AISSA-BENI-MELLAL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(243, 'SIDI ALLAL EL BAHRAOUI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(244, 'SIDI ALLAL TAZI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(245, 'SIDI BENNOUR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(246, 'SIDI BOU OTHMANE-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(247, 'SIDI BOUZID', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(248, 'SIDI EL AIDI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(249, 'SIDI GHIAT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(250, 'SIDI HAJJAJ SBIT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(251, 'SIDI HARAZEM', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(252, 'SIDI IFNI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(253, 'SIDI KACEM', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(254, 'SIDI KAOUKI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(255, 'SIDI RAHL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(256, 'SIDI RAHLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(257, 'SIDI SLIMAN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(258, 'SIDI TAIBI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(259, 'SIDI YAHYA GHARB VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(260, 'SIDI-BIBI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(261, 'SKHIRAT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(262, 'SKHOUR EL RAHMNA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(263, 'SOUIHLA-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(264, 'SOUIRIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(265, 'SOUK LARBAA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(266, 'SOUK LARBAA VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(267, 'SOUK SEBT OULAD NEMMA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(268, 'TADDART-TAZA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(269, 'TAFETACHTE ESSAOUIRA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(270, 'TAFOUGHALT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(271, 'TAFRAOUTE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(272, 'TAGHAZOUT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(273, 'TAGMOUT-TATA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(274, 'TAGOUNITE‬-ZAGORA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(275, 'TAHANAOUT-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(276, 'TAHLA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(277, 'TAMANSOURT-MARRAKECH', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(278, 'TAMARIS', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(279, 'TAMEGROUTE-ZAGORA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(280, 'TAMESLUHT- VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(281, 'TAMESNA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(282, 'TAMRAGHT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(283, 'TAMRAGHT-AGADIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(284, 'TAN TAN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(285, 'TANGER', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(286, 'TANTAN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(287, 'TAOUNATE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(288, 'TAOURIRT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(289, 'TARFYA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(290, 'TARGUIST', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(291, 'TAROUDANT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(292, 'TASSOULTANT-VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(293, 'TATA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(294, 'TAWJTAT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(295, 'TAZA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(296, 'TAZNAKHT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(297, 'TEMARA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(298, 'TEMSIA-AGADIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(299, 'TEROUAL - OUAZZANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(300, 'TETOUAN', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(301, 'TIFLET VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(302, 'TIKIOUINE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(303, 'TIN MANSOUR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(304, 'TINEJDAD VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(305, 'TINGHIR VILLE', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(306, 'TISSINT-TATA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(307, 'TIT MELLIL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(308, 'TIZNIT', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(309, 'TIZTOTIN-NADOR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(310, 'TLAT BOUARIS', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(311, 'TNIN EL GHIATE-SAFI', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(312, 'TNINE CHTOUKA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(313, 'TNINE GHARBIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(314, 'TOHMO AGADIR', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(315, 'WALIDIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(316, 'YOUSSOFIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(317, 'YOUSSOUFIA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(318, 'ZAGORA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(319, 'ZAIDA', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(320, 'ZAOUIAT CHEIKH', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(321, 'ZAOUIT SIDI SMAIL', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(322, 'ZAYOU', '2022-05-09 00:29:12', '2022-05-09 00:29:12'),
(323, 'ZOUMI-OUAZZANE', '2022-05-09 00:29:12', '2022-05-09 00:29:12');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `ticket_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(5, 8, 30, 'ALIKOM SALAM MHM KIF JATAK APLICATION', '2022-09-11 16:41:39', '2022-09-11 16:41:39'),
(6, 9, 30, 'AFIN CV', '2022-09-11 16:45:06', '2022-09-11 16:45:06'),
(7, 8, 39, 'zwina', '2022-09-11 16:47:34', '2022-09-11 16:47:34'),
(8, 8, 30, 'dcc mrc', '2022-09-11 17:07:25', '2022-09-11 17:07:25');

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(2, 'Dirham', 'DHS', 1, '2020-11-01 01:29:12', '2022-01-02 15:06:53');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sold_by` int(11) DEFAULT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_close` tinyint(1) DEFAULT NULL,
  `returned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `deliveries`
--

INSERT INTO `deliveries` (`id`, `reference_no`, `sale_id`, `user_id`, `sold_by`, `delivered_by`, `note`, `is_close`, `returned`, `created_at`, `updated_at`) VALUES
(59, 'dr-210922-143152', 66, 30, 35, NULL, NULL, 1, 1, '2022-09-21 12:32:03', '2022-09-21 12:32:03');

-- --------------------------------------------------------

--
-- Structure de la table `delivery_statuses`
--

CREATE TABLE `delivery_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `delivery_statuses`
--

INSERT INTO `delivery_statuses` (`id`, `reference_no`, `status`, `status_date`, `created_at`, `updated_at`) VALUES
(170, 'dr-210922-143152', '4', '21/09/2022 14:31:52', '2022-09-21 12:32:03', '2022-09-21 12:32:03');

-- --------------------------------------------------------

--
-- Structure de la table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '90920326', 'عمال', 1, '2022-09-12 22:44:25', '2022-09-12 22:44:25'),
(2, '03204359', 'Transport', 1, '2022-09-12 22:45:04', '2022-09-12 22:45:04'),
(3, '09192503', 'Ads', 1, '2022-09-12 22:45:21', '2022-09-12 22:45:21'),
(4, '82142975', 'Embalage', 1, '2022-09-12 22:45:44', '2022-09-12 22:45:44');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `livraison` int(11) NOT NULL,
  `min_withdraw` int(11) NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `currency`, `livraison`, `min_withdraw`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'YoVente', '20220102040718.png', '2', 50, 100, 'own', 'd-m-Y', 'T@R!K', 'standard', 1, 'default.css', '2018-07-06 06:13:11', '2022-09-14 09:12:45', 'suffix');

-- --------------------------------------------------------

--
-- Structure de la table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-07 22:59:17', '2019-12-24 17:34:20');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_02_28_103340_create_money_transfers_table', 64),
(103, '2020_07_01_193151_add_image_to_categories_table', 65),
(105, '2020_09_26_130426_add_user_id_to_deliveries_table', 66),
(107, '2020_10_11_125457_create_cash_registers_table', 67),
(108, '2020_10_13_155019_add_cash_register_id_to_sales_table', 68),
(109, '2020_10_13_172624_add_cash_register_id_to_returns_table', 69),
(110, '2020_10_17_212338_add_cash_register_id_to_payments_table', 70),
(111, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 71),
(112, '2020_10_21_121632_add_developed_by_to_general_settings_table', 72),
(113, '2019_08_19_000000_create_failed_jobs_table', 73),
(114, '2020_10_30_135557_create_notifications_table', 73),
(115, '2020_11_01_044954_create_currencies_table', 74),
(116, '2020_11_01_140736_add_price_to_product_warehouse_table', 75),
(117, '2020_11_02_050633_add_is_diff_price_to_products_table', 76),
(118, '2020_11_09_055222_add_user_id_to_customers_table', 77),
(119, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 78),
(120, '2021_02_10_074859_add_variant_id_to_product_adjustments_table', 79),
(121, '2021_03_07_093606_create_product_batches_table', 80),
(122, '2021_03_07_093759_add_product_batch_id_to_product_warehouse_table', 80),
(123, '2021_03_07_093900_add_product_batch_id_to_product_purchases_table', 80),
(124, '2021_03_11_132603_add_product_batch_id_to_product_sales_table', 81),
(127, '2021_03_25_125421_add_is_batch_to_products_table', 82),
(128, '2021_05_19_120127_add_product_batch_id_to_product_returns_table', 82),
(130, '2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table', 83),
(131, '2021_05_23_124848_add_product_batch_id_to_product_transfer_table', 84),
(132, '2021_05_26_153106_add_product_batch_id_to_product_quotation_table', 85),
(134, '2022_01_03_205841_add_livraison_to_general_settings_table', 86),
(135, '2022_01_06_181753_add_livraison_to_sales_table', 87),
(136, '2022_01_06_182916_add_original_price_to_product_sales_table', 88),
(142, '2022_01_16_181335_add_packing_delivering_delivered_to_deliveries_table', 89),
(143, '2022_01_31_113821_add_fullname_to_users_table', 90),
(144, '2022_02_02_095123_add_bank_settings_to_users_table', 91),
(146, '2022_02_02_105659_add_created_by_to_customers_table', 92),
(148, '2022_02_03_093218_add_min_withdraw_to_general_settings_table', 93),
(149, '2022_02_03_101436_create_withdraws_table', 94),
(150, '2022_02_04_174247_rename_withdraws_table', 95),
(152, '2022_02_04_212528_add_is_paid_to_withdrawals_table', 96),
(153, '2022_02_09_202841_add_is_valide_to_sales_table', 97),
(154, '2022_05_09_220616_create_cities_table', 98),
(155, '2022_05_16_092535_add_customer_data_to_sales_table', 99),
(156, '2022_05_16_094339_remove_fields_to_sales_table', 100),
(157, '2022_06_17_095121_remove_fields_to_deliveries_table', 101),
(158, '2022_06_17_100938_create_delivery_statuses_table', 102),
(159, '2022_06_27_204034_add_status_date_to_delivery_statuses_table', 103),
(160, '2022_07_08_010413_remove_motif_to_delivery_statuses_table', 104),
(161, '2022_07_15_234743_add_is_close_to_deliveries_table', 105),
(162, '2022_07_29_102102_add_delivery_status_to_sales_table', 106),
(163, '2022_08_12_105217_create_tickets_table', 107),
(164, '2022_08_12_105647_create_comments_table', 108),
(165, '2022_08_12_105723_create_cat_tickets_table', 109),
(166, '2022_09_20_224609_add_discount_to_users_table', 110);

-- --------------------------------------------------------

--
-- Structure de la table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 01:00:09', '2018-06-03 01:00:09'),
(5, 'products-delete', 'web', '2018-06-03 22:54:22', '2018-06-03 22:54:22'),
(6, 'products-add', 'web', '2018-06-04 00:34:14', '2018-06-04 00:34:14'),
(7, 'products-index', 'web', '2018-06-04 03:34:27', '2018-06-04 03:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 08:03:19', '2018-06-04 08:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 08:12:25', '2018-06-04 08:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(12, 'sales-index', 'web', '2018-06-04 10:49:08', '2018-06-04 10:49:08'),
(13, 'sales-add', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 10:49:53', '2018-06-04 10:49:53'),
(16, 'quotes-index', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(17, 'quotes-add', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(18, 'quotes-edit', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(19, 'quotes-delete', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(20, 'transfers-index', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(21, 'transfers-add', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(22, 'transfers-edit', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(23, 'transfers-delete', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(24, 'returns-index', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(25, 'returns-add', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(26, 'returns-edit', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(27, 'returns-delete', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(28, 'customers-index', 'web', '2018-06-04 23:15:54', '2018-06-04 23:15:54'),
(29, 'customers-add', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(30, 'customers-edit', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(31, 'customers-delete', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(32, 'suppliers-index', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(33, 'suppliers-add', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(36, 'product-report', 'web', '2018-06-24 23:05:33', '2018-06-24 23:05:33'),
(37, 'purchase-report', 'web', '2018-06-24 23:24:56', '2018-06-24 23:24:56'),
(38, 'sale-report', 'web', '2018-06-24 23:33:13', '2018-06-24 23:33:13'),
(39, 'customer-report', 'web', '2018-06-24 23:36:51', '2018-06-24 23:36:51'),
(40, 'due-report', 'web', '2018-06-24 23:39:52', '2018-06-24 23:39:52'),
(41, 'users-index', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(42, 'users-add', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(43, 'users-edit', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(44, 'users-delete', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(45, 'profit-loss', 'web', '2018-07-14 21:50:05', '2018-07-14 21:50:05'),
(46, 'best-seller', 'web', '2018-07-14 22:01:38', '2018-07-14 22:01:38'),
(47, 'daily-sale', 'web', '2018-07-14 22:24:21', '2018-07-14 22:24:21'),
(48, 'monthly-sale', 'web', '2018-07-14 22:30:41', '2018-07-14 22:30:41'),
(49, 'daily-purchase', 'web', '2018-07-14 22:36:46', '2018-07-14 22:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-14 22:48:17', '2018-07-14 22:48:17'),
(51, 'payment-report', 'web', '2018-07-14 23:10:41', '2018-07-14 23:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-14 23:16:55', '2018-07-14 23:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-14 23:33:21', '2018-07-14 23:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 03:00:01', '2018-07-30 03:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 01:07:11', '2018-09-05 01:07:11'),
(59, 'general_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(60, 'mail_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(61, 'pos_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 10:30:23', '2019-01-02 10:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(67, 'account-index', 'web', '2019-01-02 22:06:13', '2019-01-02 22:06:13'),
(68, 'balance-sheet', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(69, 'account-statement', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(70, 'department', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(71, 'attendance', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(72, 'payroll', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(73, 'employees-index', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(74, 'employees-add', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(75, 'employees-edit', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(76, 'employees-delete', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(77, 'user-report', 'web', '2019-01-16 06:48:18', '2019-01-16 06:48:18'),
(78, 'stock_count', 'web', '2019-02-17 10:32:01', '2019-02-17 10:32:01'),
(79, 'adjustment', 'web', '2019-02-17 10:32:02', '2019-02-17 10:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(81, 'create_sms', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(83, 'empty_database', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(84, 'customer_group', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(85, 'unit', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(86, 'tax', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(87, 'gift_card', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(88, 'coupon', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(89, 'holiday', 'web', '2019-10-19 08:57:15', '2019-10-19 08:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 06:00:23', '2019-10-22 06:00:23'),
(91, 'warehouse', 'web', '2020-02-26 06:47:32', '2020-02-26 06:47:32'),
(92, 'brand', 'web', '2020-02-26 06:59:59', '2020-02-26 06:59:59'),
(93, 'billers-index', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(94, 'billers-add', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(95, 'billers-edit', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(96, 'billers-delete', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(97, 'money-transfer', 'web', '2020-03-02 05:41:48', '2020-03-02 05:41:48'),
(98, 'category', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16'),
(99, 'delivery', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16'),
(100, 'send_notification', 'web', '2020-10-31 06:21:31', '2020-10-31 06:21:31'),
(101, 'today_sale', 'web', '2020-10-31 06:57:04', '2020-10-31 06:57:04'),
(102, 'today_profit', 'web', '2020-10-31 06:57:04', '2020-10-31 06:57:04'),
(103, 'currency', 'web', '2020-11-09 00:23:11', '2020-11-09 00:23:11'),
(104, 'backup_database', 'web', '2020-11-15 00:16:55', '2020-11-15 00:16:55'),
(105, 'withdraw-add', 'web', '2022-02-03 09:10:47', '2022-02-03 09:10:49'),
(106, 'withdraw-edit', 'web', '2022-02-03 09:10:51', '2022-02-03 09:10:52'),
(107, 'withdraw-index', 'web', '2022-02-03 09:11:09', '2022-02-03 09:11:11'),
(108, 'withdraw-delete', 'web', '2022-02-03 09:11:26', '2022-02-03 09:11:27'),
(109, 'tickets-index', 'web', '2022-08-12 10:41:53', '2022-08-12 10:41:54');

-- --------------------------------------------------------

--
-- Structure de la table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 3, 1, 'Stripe_Publishable_key', 'Stripe_Secret_key', '2022-01-07 22:32:23', '2022-01-07 22:32:23');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `is_batch`, `is_diffPrice`, `featured`, `product_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(8, 'najem bleurose', '1', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, '1662114415198GVT4BlNHJFX81XQp49iU4hkIUR3mQx5w1CQDEz2F_lg.jpeg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '<p>slm prix bache mhsob 3likom 150 plus 50DH livraison&nbsp;</p>', 0, '2022-09-02 09:29:11', '2022-09-26 05:45:46'),
(9, 'NAJEM-MOV BLEU', '2', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662794533986inrm08CJNbixM0YppOPR8v2RF3q2bLwnkxPvmLLG_lg.jpeg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '', 0, '2022-09-10 06:24:21', '2022-09-26 05:46:53'),
(10, 'NAJEM-VERT BAJ', '3', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662794715625msvoPeJdIiVyB4lgr7LPQFMeb0Zm4FaHLDxHpqoX_lg.jpeg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '', 0, '2022-09-10 06:25:48', '2022-09-26 05:47:26'),
(11, 'NAJEM-MOTARD', '4', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662794803777QuQWWHTnLjbLfym6F5l3xNU0FWOsoBp8DESxAPPR_lg.jpeg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '', 0, '2022-09-10 06:27:20', '2022-09-26 05:46:32'),
(12, 'NAJEM-NOIRE BLEU', '5', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662794888808rDfmFhw72UqWcunvcpiLVaBOccXH63WdjyNjUotc_lg.jpeg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '', 0, '2022-09-10 06:29:04', '2022-09-26 05:47:03'),
(13, 'NAJEM-MOV', '6', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662794984145xf1AA2po3b6scOyNXfvm6Nim1Vs5eIwJDdJ0bjbb_lg.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 06:31:05', '2022-09-26 05:46:44'),
(14, 'NAJEM-MOV TURABI', '7', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662795813444WhatsApp Image 2022-09-10 at 09.37.29.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 06:44:02', '2022-09-26 04:13:29'),
(15, 'NAJEM-BLEUCIEL', '8', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662795918055WhatsApp Image 2022-09-10 at 09.37.29 (5).jpeg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '', 0, '2022-09-10 06:45:51', '2022-09-26 05:46:05'),
(16, 'NAJEM-NOIRE MARON', '9', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662796024144WhatsApp Image 2022-09-10 at 09.37.29 (4).jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 06:47:36', '2022-09-26 05:47:13'),
(17, 'NAJEM-KASBI NOIRE', '10', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662796125985WhatsApp Image 2022-09-10 at 09.37.29 (3).jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 06:49:09', '2022-09-26 05:46:23'),
(18, 'NAJEM-GRONA BAJ', '11', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662796242098WhatsApp Image 2022-09-10 at 09.37.29 (2).jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 06:51:07', '2022-09-26 05:46:13'),
(19, 'NAJEM- BAJ VERT', '12', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662796340399WhatsApp Image 2022-09-10 at 09.37.29 (1).jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 06:53:11', '2022-09-26 05:45:55'),
(20, 'ALMASS-BLUROI', 'A1', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '160', 53, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662797887989WhatsApp Image 2022-09-09 at 12.42.45.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 07:18:49', '2022-09-26 04:12:54'),
(21, 'ALMASS-GHOSE FONCé', 'A2', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '160', 56, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662798012859WhatsApp Image 2022-09-09 at 12.42.46 (1).jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 07:20:57', '2022-09-26 04:13:00'),
(22, 'ALMASS-ROSE CLAIRE', 'A3', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '160', 45, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662798631193WhatsApp Image 2022-09-09 at 12.42.46.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 07:30:49', '2022-09-26 04:13:15'),
(23, 'ALMASS-GRONA', 'A4', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '160', 22, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662798696658WhatsApp Image 2022-09-09 at 12.42.47 (1).jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 07:32:04', '2022-09-26 04:13:07'),
(24, 'ALMASS-VERT', 'A5', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '160', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1662798788289WhatsApp Image 2022-09-09 at 12.42.47.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 07:33:25', '2022-09-26 04:13:39'),
(25, 'ALMASS-BLUMARIN', 'A6', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '160', 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1662798856051WhatsApp Image 2022-09-09 at 12.42.48.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-10 07:34:51', '2022-09-26 04:12:47'),
(26, 'RIHANA-CIEL', 'R1', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '155', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662912585640WhatsApp Image 2022-09-11 at 17.59.57.jpeg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '', 0, '2022-09-11 15:10:09', '2022-09-26 05:48:02'),
(27, 'RIHANA-GRONA', 'R2', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '155', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662912668553WhatsApp Image 2022-09-11 at 17.59.58 (1).jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-11 15:11:26', '2022-09-26 05:48:12'),
(28, 'RIHANA-BLUROI', 'R3', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '155', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662912772426WhatsApp Image 2022-09-11 at 17.59.58 (2).jpeg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '', 0, '2022-09-11 15:13:05', '2022-09-26 05:47:55'),
(29, 'RIHANA-ROSE', 'R4', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '155', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662912935953WhatsApp Image 2022-09-11 at 17.59.58 (3).jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-11 15:15:51', '2022-09-26 05:48:21'),
(30, 'RIHANA-VERT', 'R5', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '155', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662913036962WhatsApp Image 2022-09-11 at 17.59.58 (4).jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-11 15:17:33', '2022-09-26 05:48:31'),
(31, 'RIHANA-BAJ', 'R6', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '155', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1662913099996WhatsApp Image 2022-09-11 at 17.59.58 (5).jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-11 15:18:39', '2022-09-26 05:47:36'),
(32, 'RIHANA-BLUMARIN', 'R7', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '155', 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, '1662913211554WhatsApp Image 2022-09-11 at 17.59.58.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-11 15:20:31', '2022-09-26 05:47:44'),
(33, 'SEDAF-GRONA BAJ', 'S1', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1663438080359a9dK37n2gdV2EQcT0ZC2N2myegzogefYHdcNZE0U_lg.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-17 17:10:19', '2022-09-26 05:48:57'),
(34, 'SEDAF-BLUCIEL', 'S2', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1663438379932GNleIbeFxxrB85jZa2WNsmKp8dcfdEQQvyeFcxRx_lg.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-17 17:14:41', '2022-09-26 05:48:40'),
(35, 'SEDAF-MOVE BAJ', 'S3', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1663438601552JDlmSNuWvJgUcGMQUJ7wz2YTZlpvwNjDZcPKcDJm_lg.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-17 17:18:40', '2022-09-26 05:49:07'),
(36, 'SEDAF-NOIR MARO', 'S4', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1663438791899BvdfozqP3agd9Mnb1079zvNWVVAA4NbAtqr5ROOJ_lg.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-17 17:21:24', '2022-09-26 05:49:13'),
(37, 'SEDAF-BLUROSE', 'S5', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1664131641058x7H3Xbxq0uRq9xmvxXbGELuW2iL4kCY2llozV6Cv_lg.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-25 17:48:06', '2022-09-26 05:48:51'),
(38, 'SEDAF-NOIRCEIL', 'S6', 'standard', 'C39', NULL, 3, 1, 1, 1, '112', '150', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1664131771598MqNwu96hYkyhKJgMGNZSQeoR2lnkSjdewaDPYi8f_lg.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-25 17:50:56', '2022-09-26 05:49:23'),
(39, 'Firdaws', 'F1', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '160', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1664168532050image000041664167176315.jpeg,1664168532064image000051664167176315.jpeg,1664168532073image000061664167176315.jpeg,1664168532083image000021664167176315.jpeg,1664168532095image000031664167176315.jpeg,1664168532105image000011664167176312.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-26 04:09:11', '2022-09-26 04:12:09'),
(40, 'ELMALIKA', '1', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '160', 4, 100, NULL, NULL, NULL, NULL, NULL, NULL, '1664263014012WhatsApp Image 2022-09-26 at 20.58.42.jpeg,1664263014017WhatsApp Image 2022-09-26 at 20.58.43.jpeg,1664263014018WhatsApp Image 2022-09-26 at 20.58.44 (1).jpeg,1664263014020WhatsApp Image 2022-09-26 at 20.58.44 (2).jpeg,1664263014021WhatsApp Image 2022-09-26 at 20.58.44.jpeg,1664263014023WhatsApp Image 2022-09-26 at 20.58.45 (1).jpeg,1664263014024WhatsApp Image 2022-09-26 at 20.58.45 (2).jpeg,1664263014025WhatsApp Image 2022-09-26 at 20.58.45.jpeg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '', 0, '2022-09-27 06:42:53', '2022-09-27 07:02:43'),
(41, 'ELMALIKA', '1', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '160', 0, NULL, NULL, NULL, '2022-09-27', NULL, NULL, NULL, '1664265812321WhatsApp Image 2022-09-26 at 20.58.42.jpeg,1664265812323WhatsApp Image 2022-09-26 at 20.58.43.jpeg,1664265812324WhatsApp Image 2022-09-26 at 20.58.44 (1).jpeg,1664265812326WhatsApp Image 2022-09-26 at 20.58.44 (2).jpeg,1664265812327WhatsApp Image 2022-09-26 at 20.58.44.jpeg,1664265812329WhatsApp Image 2022-09-26 at 20.58.45 (1).jpeg,1664265812331WhatsApp Image 2022-09-26 at 20.58.45 (2).jpeg,1664265812332WhatsApp Image 2022-09-26 at 20.58.45.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-09-27 07:04:59', '2022-09-27 07:06:04'),
(42, 'ELMALIKA', '1', 'standard', 'C39', NULL, 4, 1, 1, 1, '115', '160', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1664265998624WhatsApp Image 2022-09-26 at 20.58.42.jpeg,1664265998626WhatsApp Image 2022-09-26 at 20.58.43.jpeg,1664265998627WhatsApp Image 2022-09-26 at 20.58.44 (1).jpeg,1664265998629WhatsApp Image 2022-09-26 at 20.58.44 (2).jpeg,1664265998631WhatsApp Image 2022-09-26 at 20.58.44.jpeg,1664265998633WhatsApp Image 2022-09-26 at 20.58.45 (1).jpeg,1664265998634WhatsApp Image 2022-09-26 at 20.58.45 (2).jpeg,1664265998635WhatsApp Image 2022-09-26 at 20.58.45.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-09-27 07:07:15', '2022-09-27 07:07:15');

-- --------------------------------------------------------

--
-- Structure de la table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_batches`
--

CREATE TABLE `product_batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(130, 31, 23, NULL, 1, 10, 10, 1, 115, 0, 0, 0, 1150, '2022-09-21 12:30:01', '2022-09-21 12:30:01'),
(131, 32, 25, NULL, 4, 21, 21, 1, 115, 0, 0, 0, 2415, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(132, 32, 25, NULL, 3, 1, 1, 1, 115, 0, 0, 0, 115, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(133, 32, 25, NULL, 2, 1, 1, 1, 115, 0, 0, 0, 115, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(134, 32, 25, NULL, 1, 13, 13, 1, 115, 0, 0, 0, 1495, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(135, 32, 24, NULL, 4, 1, 1, 1, 115, 0, 0, 0, 115, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(136, 32, 24, NULL, 3, 1, 1, 1, 115, 0, 0, 0, 115, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(137, 32, 24, NULL, 2, 1, 1, 1, 115, 0, 0, 0, 115, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(138, 32, 24, NULL, 1, 11, 11, 1, 115, 0, 0, 0, 1265, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(139, 32, 23, NULL, 4, 4, 4, 1, 115, 0, 0, 0, 460, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(140, 32, 23, NULL, 3, 2, 2, 1, 115, 0, 0, 0, 230, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(141, 32, 23, NULL, 2, 1, 1, 1, 115, 0, 0, 0, 115, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(142, 32, 23, NULL, 1, 6, 6, 1, 115, 0, 0, 0, 690, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(143, 32, 22, NULL, 4, 14, 14, 1, 115, 0, 0, 0, 1610, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(144, 32, 22, NULL, 3, 11, 11, 1, 115, 0, 0, 0, 1265, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(145, 32, 22, NULL, 2, 12, 12, 1, 115, 0, 0, 0, 1380, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(146, 32, 22, NULL, 1, 8, 8, 1, 115, 0, 0, 0, 920, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(147, 32, 21, NULL, 4, 15, 15, 1, 115, 0, 0, 0, 1725, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(148, 32, 21, NULL, 3, 13, 13, 1, 115, 0, 0, 0, 1495, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(149, 32, 21, NULL, 2, 15, 15, 1, 115, 0, 0, 0, 1725, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(150, 32, 21, NULL, 1, 13, 13, 1, 115, 0, 0, 0, 1495, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(151, 32, 20, NULL, 4, 12, 12, 1, 115, 0, 0, 0, 1380, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(152, 32, 20, NULL, 3, 10, 10, 1, 115, 0, 0, 0, 1150, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(153, 32, 20, NULL, 2, 20, 20, 1, 115, 0, 0, 0, 2300, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(154, 32, 20, NULL, 1, 11, 11, 1, 115, 0, 0, 0, 1265, '2022-09-25 18:11:21', '2022-09-25 18:11:21'),
(155, 33, 25, NULL, 4, 21, 21, 1, 115, 0, 0, 0, 2415, '2022-09-25 18:15:15', '2022-09-25 18:15:15'),
(156, 34, 40, NULL, 32, 1, 1, 1, 115, 0, 0, 0, 115, '2022-09-27 06:50:30', '2022-09-27 06:50:30'),
(157, 34, 40, NULL, 31, 1, 1, 1, 115, 0, 0, 0, 115, '2022-09-27 06:50:30', '2022-09-27 06:50:30'),
(158, 34, 40, NULL, 30, 1, 1, 1, 115, 0, 0, 0, 115, '2022-09-27 06:50:30', '2022-09-27 06:50:30'),
(159, 34, 40, NULL, 29, 1, 1, 1, 115, 0, 0, 0, 115, '2022-09-27 06:50:30', '2022-09-27 06:50:30');

-- --------------------------------------------------------

--
-- Structure de la table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `original_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `original_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(87, 66, 23, NULL, 1, 1, 1, 260, 144, 0, 0, 0, 260, '2022-09-21 12:31:26', '2022-09-21 12:31:26');

-- --------------------------------------------------------

--
-- Structure de la table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `position`, `item_code`, `additional_price`, `qty`, `created_at`, `updated_at`) VALUES
(41, 8, 1, 1, 'M-1', NULL, 0, '2022-09-02 20:02:09', '2022-09-19 09:09:09'),
(42, 8, 2, 2, 'L-1', NULL, 0, '2022-09-02 20:02:09', '2022-09-20 23:20:30'),
(43, 8, 3, 3, 'XL-1', NULL, 0, '2022-09-02 20:02:09', '2022-09-12 21:05:06'),
(44, 8, 4, 4, 'XXL-1', NULL, 0, '2022-09-02 20:02:09', '2022-09-19 09:09:56'),
(45, 13, 1, 1, 'M-6', NULL, 0, '2022-09-10 06:31:05', '2022-09-12 08:51:24'),
(46, 13, 2, 2, 'L-6', NULL, 0, '2022-09-10 06:31:05', '2022-09-10 06:59:37'),
(47, 13, 3, 3, 'XL-6', NULL, 0, '2022-09-10 06:31:05', '2022-09-10 06:59:37'),
(48, 13, 4, 4, 'XXL-6', NULL, 0, '2022-09-10 06:31:05', '2022-09-11 16:49:57'),
(49, 12, 1, 1, 'M-5', NULL, 0, '2022-09-10 06:32:06', '2022-09-10 06:58:31'),
(50, 12, 2, 2, 'L-5', NULL, 0, '2022-09-10 06:32:06', '2022-09-10 06:58:31'),
(51, 12, 3, 3, 'XL-5', NULL, 0, '2022-09-10 06:32:06', '2022-09-10 06:58:31'),
(52, 12, 4, 4, 'XXL-5', NULL, 0, '2022-09-10 06:32:06', '2022-09-10 06:58:31'),
(53, 11, 1, 1, 'M-4', NULL, 0, '2022-09-10 06:32:49', '2022-09-10 06:32:49'),
(54, 11, 2, 2, 'L-4', NULL, 0, '2022-09-10 06:32:49', '2022-09-10 06:32:49'),
(55, 11, 3, 3, 'XL-4', NULL, 0, '2022-09-10 06:32:49', '2022-09-10 06:32:49'),
(56, 11, 4, 4, 'XXL-4', NULL, 0, '2022-09-10 06:32:50', '2022-09-10 06:32:50'),
(57, 9, 1, 1, 'M-2', NULL, 0, '2022-09-10 06:33:51', '2022-09-10 06:55:51'),
(58, 9, 2, 2, 'L-2', NULL, 0, '2022-09-10 06:33:51', '2022-09-10 06:55:51'),
(59, 9, 3, 3, 'XL-2', NULL, 0, '2022-09-10 06:33:51', '2022-09-10 06:55:51'),
(60, 9, 4, 4, 'XXL-2', NULL, 0, '2022-09-10 06:33:51', '2022-09-10 07:08:34'),
(61, 10, 1, 1, 'M-3', NULL, 0, '2022-09-10 06:35:40', '2022-09-10 06:56:43'),
(62, 10, 2, 2, 'L-3', NULL, 0, '2022-09-10 06:35:40', '2022-09-10 06:56:43'),
(63, 10, 3, 3, 'XL-3', NULL, 0, '2022-09-10 06:35:40', '2022-09-10 06:56:43'),
(64, 10, 4, 4, 'XXL-3', NULL, 0, '2022-09-10 06:35:40', '2022-09-12 22:30:07'),
(65, 14, 1, 1, 'M-7', NULL, 0, '2022-09-10 06:44:02', '2022-09-10 07:00:41'),
(66, 14, 2, 2, 'L-7', NULL, 0, '2022-09-10 06:44:02', '2022-09-10 07:00:41'),
(67, 14, 3, 3, 'XL-7', NULL, 0, '2022-09-10 06:44:02', '2022-09-10 07:00:41'),
(68, 14, 4, 4, 'XXL-7', NULL, 0, '2022-09-10 06:44:02', '2022-09-12 08:51:23'),
(69, 15, 1, 1, 'M-8', NULL, 0, '2022-09-10 06:45:51', '2022-09-10 07:01:43'),
(70, 15, 2, 2, 'L-8', NULL, 0, '2022-09-10 06:45:52', '2022-09-10 07:01:43'),
(71, 15, 3, 3, 'XL-8', NULL, 0, '2022-09-10 06:45:52', '2022-09-10 07:01:43'),
(72, 15, 4, 4, 'XXL-8', NULL, 0, '2022-09-10 06:45:52', '2022-09-10 07:01:43'),
(73, 16, 1, 1, 'M-9', NULL, 0, '2022-09-10 06:47:36', '2022-09-10 20:55:23'),
(74, 16, 2, 2, 'L-9', NULL, 0, '2022-09-10 06:47:36', '2022-09-10 07:02:37'),
(75, 16, 3, 3, 'XL-9', NULL, 0, '2022-09-10 06:47:37', '2022-09-10 07:02:37'),
(76, 16, 4, 4, 'XXL-9', NULL, 0, '2022-09-10 06:47:37', '2022-09-10 07:02:37'),
(77, 17, 1, 1, 'M-10', NULL, 0, '2022-09-10 06:49:09', '2022-09-19 08:59:21'),
(78, 17, 2, 2, 'L-10', NULL, 0, '2022-09-10 06:49:09', '2022-09-10 07:03:45'),
(79, 17, 3, 3, 'XL-10', NULL, 0, '2022-09-10 06:49:09', '2022-09-10 07:03:45'),
(80, 17, 4, 4, 'XXL-10', NULL, 0, '2022-09-10 06:49:09', '2022-09-10 07:03:45'),
(81, 18, 1, 1, 'M-11', NULL, 0, '2022-09-10 06:51:07', '2022-09-10 07:04:35'),
(82, 18, 2, 2, 'L-11', NULL, 0, '2022-09-10 06:51:07', '2022-09-10 07:04:35'),
(83, 18, 3, 3, 'XL-11', NULL, 0, '2022-09-10 06:51:07', '2022-09-10 07:04:35'),
(84, 18, 4, 4, 'XXL-11', NULL, 0, '2022-09-10 06:51:07', '2022-09-10 07:04:35'),
(85, 19, 1, 1, 'M-12', NULL, 0, '2022-09-10 06:53:11', '2022-09-10 07:05:39'),
(86, 19, 2, 2, 'L-12', NULL, 0, '2022-09-10 06:53:11', '2022-09-10 07:05:39'),
(87, 19, 3, 3, 'XL-12', NULL, 0, '2022-09-10 06:53:11', '2022-09-10 07:54:52'),
(88, 19, 4, 4, 'XXL-12', NULL, 0, '2022-09-10 06:53:11', '2022-09-12 08:06:22'),
(89, 20, 1, 1, 'M-A1', NULL, 11, '2022-09-10 07:18:49', '2022-09-25 18:11:21'),
(90, 20, 2, 2, 'L-A1', NULL, 20, '2022-09-10 07:18:49', '2022-09-25 18:11:21'),
(91, 20, 3, 3, 'XL-A1', NULL, 10, '2022-09-10 07:18:49', '2022-09-25 18:11:21'),
(92, 20, 4, 4, 'XXL-A1', NULL, 12, '2022-09-10 07:18:49', '2022-09-25 18:11:21'),
(93, 21, 1, 1, 'M-A2', NULL, 13, '2022-09-10 07:20:57', '2022-09-25 18:11:21'),
(94, 21, 2, 2, 'L-A2', NULL, 15, '2022-09-10 07:20:57', '2022-09-25 18:11:21'),
(95, 21, 3, 3, 'XL-A2', NULL, 13, '2022-09-10 07:20:58', '2022-09-25 18:11:21'),
(96, 21, 4, 4, 'XX-A2', NULL, 15, '2022-09-10 07:20:58', '2022-09-25 18:11:21'),
(97, 22, 1, 1, 'M-A3', NULL, 8, '2022-09-10 07:30:49', '2022-09-25 18:11:21'),
(98, 22, 2, 2, 'L-A3', NULL, 12, '2022-09-10 07:30:49', '2022-09-25 18:11:21'),
(99, 22, 3, 3, 'XL-A3', NULL, 11, '2022-09-10 07:30:49', '2022-09-25 18:11:21'),
(100, 22, 4, 4, 'XXL-A3', NULL, 14, '2022-09-10 07:30:49', '2022-09-25 18:11:21'),
(101, 23, 1, 1, 'M-A4', NULL, 15, '2022-09-10 07:32:04', '2022-09-25 18:11:20'),
(102, 23, 2, 2, 'L-A4', NULL, 1, '2022-09-10 07:32:04', '2022-09-25 18:11:20'),
(103, 23, 3, 3, 'XL-A4', NULL, 2, '2022-09-10 07:32:04', '2022-09-25 18:11:20'),
(104, 23, 4, 4, 'XXL-A4', NULL, 4, '2022-09-10 07:32:04', '2022-09-25 18:11:20'),
(105, 24, 1, 1, 'M-A5', NULL, 11, '2022-09-10 07:33:25', '2022-09-25 18:11:20'),
(106, 24, 2, 2, 'L-A5', NULL, 1, '2022-09-10 07:33:25', '2022-09-25 18:11:20'),
(107, 24, 3, 3, 'XL-A5', NULL, 1, '2022-09-10 07:33:25', '2022-09-25 18:11:20'),
(108, 24, 4, 4, 'XXL-A5', NULL, 1, '2022-09-10 07:33:25', '2022-09-25 18:11:20'),
(109, 25, 1, 1, 'M-A6', NULL, 13, '2022-09-10 07:34:51', '2022-09-25 18:11:20'),
(110, 25, 2, 2, 'L-A6', NULL, 1, '2022-09-10 07:34:51', '2022-09-25 18:11:20'),
(111, 25, 3, 3, 'XL-A6', NULL, 1, '2022-09-10 07:34:51', '2022-09-25 18:11:20'),
(112, 25, 4, 4, 'XXL-A6', NULL, 21, '2022-09-10 07:34:51', '2022-09-25 18:15:15'),
(113, 26, 1, 1, 'M-R1', NULL, 0, '2022-09-11 15:10:09', '2022-09-11 21:56:21'),
(114, 26, 2, 2, 'L-R1', NULL, 0, '2022-09-11 15:10:09', '2022-09-11 15:37:20'),
(115, 26, 3, 3, 'XL-R1', NULL, 0, '2022-09-11 15:10:09', '2022-09-11 15:37:20'),
(116, 26, 4, 4, 'XXL-R1', NULL, 0, '2022-09-11 15:10:09', '2022-09-11 15:37:20'),
(117, 27, 1, 1, 'M-R2', NULL, 0, '2022-09-11 15:11:26', '2022-09-11 15:32:39'),
(118, 27, 2, 2, 'L-R2', NULL, 0, '2022-09-11 15:11:26', '2022-09-12 06:43:25'),
(119, 27, 3, 3, 'XL-R2', NULL, 0, '2022-09-11 15:11:26', '2022-09-11 15:32:39'),
(120, 27, 4, 4, 'XXL-R2', NULL, 0, '2022-09-11 15:11:26', '2022-09-11 15:32:39'),
(121, 28, 1, 1, 'M-R3', NULL, 0, '2022-09-11 15:13:05', '2022-09-12 06:43:25'),
(122, 28, 2, 2, 'L-R3', NULL, 0, '2022-09-11 15:13:05', '2022-09-18 14:50:15'),
(123, 28, 3, 3, 'XL-R3', NULL, 0, '2022-09-11 15:13:05', '2022-09-11 15:36:36'),
(124, 28, 4, 4, 'XXL-R3', NULL, 0, '2022-09-11 15:13:05', '2022-09-11 15:36:36'),
(125, 29, 1, 1, 'M-R4', NULL, 0, '2022-09-11 15:15:51', '2022-09-11 15:32:39'),
(126, 29, 2, 2, 'L-R4', NULL, 0, '2022-09-11 15:15:51', '2022-09-11 15:32:39'),
(127, 29, 3, 3, 'XL-R4', NULL, 0, '2022-09-11 15:15:51', '2022-09-12 06:43:25'),
(128, 29, 4, 4, 'XXL-R4', NULL, 0, '2022-09-11 15:15:51', '2022-09-11 15:32:39'),
(129, 30, 1, 1, 'M-R5', NULL, 0, '2022-09-11 15:17:33', '2022-09-11 15:32:39'),
(130, 30, 2, 2, 'L-R5', NULL, 0, '2022-09-11 15:17:33', '2022-09-12 08:15:17'),
(131, 30, 3, 3, 'XL-R5', NULL, 0, '2022-09-11 15:17:33', '2022-09-11 15:32:39'),
(132, 30, 4, 4, 'XXL-R5', NULL, 0, '2022-09-11 15:17:33', '2022-09-11 15:32:38'),
(133, 31, 1, 1, 'M-R6', NULL, 0, '2022-09-11 15:18:39', '2022-09-11 15:32:38'),
(134, 31, 2, 2, 'L-R6', NULL, 0, '2022-09-11 15:18:39', '2022-09-11 15:32:38'),
(135, 31, 3, 3, 'XL-R6', NULL, 0, '2022-09-11 15:18:39', '2022-09-11 15:32:38'),
(136, 31, 4, 4, 'XXL-R6', NULL, 0, '2022-09-11 15:18:39', '2022-09-11 15:32:38'),
(137, 32, 1, 1, 'M-R7', NULL, 0, '2022-09-11 15:20:31', '2022-09-11 15:32:38'),
(138, 32, 2, 2, 'L-R7', NULL, 0, '2022-09-11 15:20:31', '2022-09-11 15:32:38'),
(139, 32, 3, 3, 'XL-R7', NULL, 0, '2022-09-11 15:20:31', '2022-09-11 15:32:38'),
(140, 32, 4, 4, 'XXL-R7', NULL, 0, '2022-09-11 15:20:31', '2022-09-11 15:32:38'),
(141, 33, 1, 1, 'M-S1', NULL, 0, '2022-09-17 17:10:19', '2022-09-17 17:10:19'),
(142, 33, 2, 2, 'L-S1', NULL, 0, '2022-09-17 17:10:19', '2022-09-17 17:10:19'),
(143, 33, 3, 3, 'XL-S1', NULL, 0, '2022-09-17 17:10:19', '2022-09-17 17:10:19'),
(144, 33, 4, 4, 'XXL-S1', NULL, 0, '2022-09-17 17:10:19', '2022-09-17 17:10:19'),
(145, 34, 1, 1, 'M-S2', NULL, 0, '2022-09-17 17:14:41', '2022-09-17 17:14:41'),
(146, 34, 2, 2, 'L-S2', NULL, 0, '2022-09-17 17:14:41', '2022-09-17 17:14:41'),
(147, 34, 3, 3, 'XL-S2', NULL, 0, '2022-09-17 17:14:41', '2022-09-17 17:14:41'),
(148, 34, 4, 4, 'XXL-S2', NULL, 0, '2022-09-17 17:14:41', '2022-09-17 17:14:41'),
(149, 35, 1, 1, 'M-S3', NULL, 0, '2022-09-17 17:18:40', '2022-09-17 17:18:40'),
(150, 35, 2, 2, 'L-S3', NULL, 0, '2022-09-17 17:18:40', '2022-09-17 17:18:40'),
(151, 35, 3, 3, 'XL-S3', NULL, 0, '2022-09-17 17:18:40', '2022-09-17 17:18:40'),
(152, 35, 4, 4, 'XXL-S3', NULL, 0, '2022-09-17 17:18:40', '2022-09-17 17:18:40'),
(153, 36, 1, 1, 'M-S4', NULL, 0, '2022-09-17 17:21:24', '2022-09-17 17:21:24'),
(154, 36, 2, 2, 'L-S4', NULL, 0, '2022-09-17 17:21:24', '2022-09-17 17:21:24'),
(155, 36, 3, 3, 'XL-S4', NULL, 0, '2022-09-17 17:21:24', '2022-09-17 17:21:24'),
(156, 36, 4, 4, 'XXL-S4', NULL, 0, '2022-09-17 17:21:24', '2022-09-17 17:21:24'),
(157, 37, 1, 1, 'M-S5', NULL, 0, '2022-09-25 17:48:06', '2022-09-25 17:48:06'),
(158, 37, 2, 2, 'L-S5', NULL, 0, '2022-09-25 17:48:06', '2022-09-25 17:48:06'),
(159, 37, 3, 3, 'XL-S5', NULL, 0, '2022-09-25 17:48:06', '2022-09-25 17:48:06'),
(160, 37, 4, 4, 'XXL-S5', NULL, 0, '2022-09-25 17:48:06', '2022-09-25 17:48:06'),
(161, 38, 1, 1, 'M-S6', NULL, 0, '2022-09-25 17:50:56', '2022-09-25 17:50:56'),
(162, 38, 2, 2, 'L-S6', NULL, 0, '2022-09-25 17:50:56', '2022-09-25 17:50:56'),
(163, 38, 3, 3, 'XL-S6', NULL, 0, '2022-09-25 17:50:56', '2022-09-25 17:50:56'),
(164, 38, 4, 4, 'XXL-S6', NULL, 0, '2022-09-25 17:50:56', '2022-09-25 17:50:56'),
(165, 39, 5, 1, 'Gris M-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(166, 39, 6, 2, 'Gris L-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(167, 39, 7, 3, 'Gris XL-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(168, 39, 8, 4, 'Gris XXL-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(169, 39, 9, 5, 'Move M-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(170, 39, 10, 6, 'Move L-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(171, 39, 11, 7, 'Move XL-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(172, 39, 12, 8, 'Move XXL-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(173, 39, 13, 9, 'Noir Blu M-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(174, 39, 14, 10, 'Noir Blu L-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(175, 39, 15, 11, 'Noir Blu XL-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(176, 39, 16, 12, 'Noir Blu XXL-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(177, 39, 17, 13, 'Baj m-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(178, 39, 18, 14, 'Baj L-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(179, 39, 19, 15, 'Baj XL-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(180, 39, 20, 16, 'Baj XXL-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(181, 39, 21, 17, 'Khasni M-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(182, 39, 22, 18, 'khasni L-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(183, 39, 23, 19, 'Khasni XL-M1', NULL, 0, '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(184, 39, 24, 20, 'Khasni XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(185, 39, 25, 21, 'Noir gris M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(186, 39, 26, 22, 'Noir gris L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(187, 39, 27, 23, 'Noir gris XL -M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(188, 39, 28, 24, 'Noir gris XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(189, 39, 5, 25, 'Gris M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(190, 39, 6, 26, 'Gris L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(191, 39, 7, 27, 'Gris XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(192, 39, 8, 28, 'Gris XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(193, 39, 9, 29, 'Move M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(194, 39, 10, 30, 'Move L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(195, 39, 11, 31, 'Move XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(196, 39, 12, 32, 'Move XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(197, 39, 13, 33, 'Noir Blu M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(198, 39, 14, 34, 'Noir Blu L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(199, 39, 15, 35, 'Noir Blu XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(200, 39, 16, 36, 'Noir Blu XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(201, 39, 17, 37, 'Baj m-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(202, 39, 18, 38, 'Baj L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(203, 39, 19, 39, 'Baj XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(204, 39, 20, 40, 'Baj XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(205, 39, 21, 41, 'Khasni M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(206, 39, 22, 42, 'khasni L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(207, 39, 23, 43, 'Khasni XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(208, 39, 24, 44, 'Khasni XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(209, 39, 25, 45, 'Noir gris M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(210, 39, 26, 46, 'Noir gris L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(211, 39, 27, 47, 'Noir gris XL -M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(212, 39, 28, 48, 'Noir gris XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(213, 39, 5, 49, 'Gris M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(214, 39, 6, 50, 'Gris L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(215, 39, 7, 51, 'Gris XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(216, 39, 8, 52, 'Gris XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(217, 39, 9, 53, 'Move M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(218, 39, 10, 54, 'Move L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(219, 39, 11, 55, 'Move XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(220, 39, 12, 56, 'Move XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(221, 39, 13, 57, 'Noir Blu M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(222, 39, 14, 58, 'Noir Blu L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(223, 39, 15, 59, 'Noir Blu XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(224, 39, 16, 60, 'Noir Blu XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(225, 39, 17, 61, 'Baj m-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(226, 39, 18, 62, 'Baj L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(227, 39, 19, 63, 'Baj XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(228, 39, 20, 64, 'Baj XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(229, 39, 21, 65, 'Khasni M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(230, 39, 22, 66, 'khasni L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(231, 39, 23, 67, 'Khasni XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(232, 39, 24, 68, 'Khasni XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(233, 39, 25, 69, 'Noir gris M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(234, 39, 26, 70, 'Noir gris L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(235, 39, 27, 71, 'Noir gris XL -M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(236, 39, 28, 72, 'Noir gris XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(237, 39, 5, 73, 'Gris M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(238, 39, 6, 74, 'Gris L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(239, 39, 7, 75, 'Gris XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(240, 39, 8, 76, 'Gris XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(241, 39, 9, 77, 'Move M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(242, 39, 10, 78, 'Move L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(243, 39, 11, 79, 'Move XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(244, 39, 12, 80, 'Move XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(245, 39, 13, 81, 'Noir Blu M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(246, 39, 14, 82, 'Noir Blu L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(247, 39, 15, 83, 'Noir Blu XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(248, 39, 16, 84, 'Noir Blu XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(249, 39, 17, 85, 'Baj m-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(250, 39, 18, 86, 'Baj L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(251, 39, 19, 87, 'Baj XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(252, 39, 20, 88, 'Baj XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(253, 39, 21, 89, 'Khasni M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(254, 39, 22, 90, 'khasni L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(255, 39, 23, 91, 'Khasni XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(256, 39, 24, 92, 'Khasni XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(257, 39, 25, 93, 'Noir gris M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(258, 39, 26, 94, 'Noir gris L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(259, 39, 27, 95, 'Noir gris XL -M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(260, 39, 28, 96, 'Noir gris XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(261, 39, 5, 97, 'Gris M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(262, 39, 6, 98, 'Gris L-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(263, 39, 7, 99, 'Gris XL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(264, 39, 8, 100, 'Gris XXL-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(265, 39, 9, 101, 'Move M-M1', NULL, 0, '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(266, 39, 10, 102, 'Move L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(267, 39, 11, 103, 'Move XL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(268, 39, 12, 104, 'Move XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(269, 39, 13, 105, 'Noir Blu M-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(270, 39, 14, 106, 'Noir Blu L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(271, 39, 15, 107, 'Noir Blu XL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(272, 39, 16, 108, 'Noir Blu XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(273, 39, 17, 109, 'Baj m-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(274, 39, 18, 110, 'Baj L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(275, 39, 19, 111, 'Baj XL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(276, 39, 20, 112, 'Baj XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(277, 39, 21, 113, 'Khasni M-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(278, 39, 22, 114, 'khasni L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(279, 39, 23, 115, 'Khasni XL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(280, 39, 24, 116, 'Khasni XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(281, 39, 25, 117, 'Noir gris M-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(282, 39, 26, 118, 'Noir gris L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(283, 39, 27, 119, 'Noir gris XL -M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(284, 39, 28, 120, 'Noir gris XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(285, 39, 5, 121, 'Gris M-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(286, 39, 6, 122, 'Gris L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(287, 39, 7, 123, 'Gris XL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(288, 39, 8, 124, 'Gris XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(289, 39, 9, 125, 'Move M-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(290, 39, 10, 126, 'Move L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(291, 39, 11, 127, 'Move XL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(292, 39, 12, 128, 'Move XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(293, 39, 13, 129, 'Noir Blu M-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(294, 39, 14, 130, 'Noir Blu L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(295, 39, 15, 131, 'Noir Blu XL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(296, 39, 16, 132, 'Noir Blu XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(297, 39, 17, 133, 'Baj m-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(298, 39, 18, 134, 'Baj L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(299, 39, 19, 135, 'Baj XL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(300, 39, 20, 136, 'Baj XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(301, 39, 21, 137, 'Khasni M-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(302, 39, 22, 138, 'khasni L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(303, 39, 23, 139, 'Khasni XL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(304, 39, 24, 140, 'Khasni XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(305, 39, 25, 141, 'Noir gris M-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(306, 39, 26, 142, 'Noir gris L-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(307, 39, 27, 143, 'Noir gris XL -M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(308, 39, 28, 144, 'Noir gris XXL-M1', NULL, 0, '2022-09-26 04:09:13', '2022-09-26 04:09:13'),
(339, 40, 59, 31, 'vert-XL-1', NULL, 0, '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(340, 40, 60, 32, 'vert-XXL-1', NULL, 0, '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(371, 40, 59, 63, 'vert-XL-1', NULL, 0, '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(372, 40, 60, 64, 'vert-XXL-1', NULL, 0, '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(403, 40, 59, 95, 'vert-XL-1', NULL, 0, '2022-09-27 06:42:54', '2022-09-27 06:42:54'),
(404, 40, 60, 96, 'vert-XXL-1', NULL, 0, '2022-09-27 06:42:54', '2022-09-27 06:42:54'),
(435, 40, 59, 127, 'vert-XL-1', NULL, 0, '2022-09-27 06:42:54', '2022-09-27 06:42:54'),
(436, 40, 60, 128, 'vert-XXL-1', NULL, 0, '2022-09-27 06:42:54', '2022-09-27 06:42:54'),
(467, 40, 59, 159, 'vert-XL-1', NULL, 0, '2022-09-27 06:42:54', '2022-09-27 06:42:54'),
(468, 40, 60, 160, 'vert-XXL-1', NULL, 0, '2022-09-27 06:42:54', '2022-09-27 06:42:54'),
(499, 40, 59, 31, 'vert-XL-1', NULL, 0, '2022-09-27 06:42:54', '2022-09-27 06:48:06'),
(500, 40, 60, 32, 'vert-XXL-1', NULL, 0, '2022-09-27 06:42:54', '2022-09-27 06:48:06'),
(531, 40, 59, 223, 'vert-XL-1', NULL, 0, '2022-09-27 06:42:55', '2022-09-27 06:42:55'),
(532, 40, 60, 224, 'vert-XXL-1', NULL, 0, '2022-09-27 06:42:55', '2022-09-27 06:42:55'),
(563, 40, 59, 1, 'vert-XL-1', NULL, 0, '2022-09-27 06:42:55', '2022-09-27 06:59:58'),
(564, 40, 60, 2, 'vert-XXL-1', NULL, 0, '2022-09-27 06:42:55', '2022-09-27 06:59:58'),
(565, 41, 57, 1, 'vert-M-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(566, 41, 58, 2, 'vert-L-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(567, 41, 59, 3, 'vert-XL-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(568, 41, 60, 4, 'vert-XXL-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(569, 41, 57, 5, 'vert-M-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(570, 41, 58, 6, 'vert-L-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(571, 41, 59, 7, 'vert-XL-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(572, 41, 60, 8, 'vert-XXL-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(573, 41, 57, 9, 'vert-M-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(574, 41, 58, 10, 'vert-L-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(575, 41, 59, 11, 'vert-XL-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(576, 41, 60, 12, 'vert-XXL-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(577, 41, 57, 13, 'vert-M-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(578, 41, 58, 14, 'vert-L-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(579, 41, 59, 15, 'vert-XL-1', NULL, 0, '2022-09-27 07:04:59', '2022-09-27 07:04:59'),
(580, 41, 60, 16, 'vert-XXL-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(581, 41, 57, 17, 'vert-M-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(582, 41, 58, 18, 'vert-L-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(583, 41, 59, 19, 'vert-XL-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(584, 41, 60, 20, 'vert-XXL-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(585, 41, 57, 21, 'vert-M-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(586, 41, 58, 22, 'vert-L-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(587, 41, 59, 23, 'vert-XL-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(588, 41, 60, 24, 'vert-XXL-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(589, 41, 57, 25, 'vert-M-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(590, 41, 58, 26, 'vert-L-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(591, 41, 59, 27, 'vert-XL-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(592, 41, 60, 28, 'vert-XXL-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(593, 41, 57, 29, 'vert-M-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(594, 41, 58, 30, 'vert-L-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(595, 41, 59, 31, 'vert-XL-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(596, 41, 60, 32, 'vert-XXL-1', NULL, 0, '2022-09-27 07:05:00', '2022-09-27 07:05:00'),
(597, 42, 1, 1, 'M-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(598, 42, 2, 2, 'L-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(599, 42, 3, 3, 'XL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(600, 42, 4, 4, 'XXL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(601, 42, 1, 5, 'M-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(602, 42, 2, 6, 'L-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(603, 42, 3, 7, 'XL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(604, 42, 4, 8, 'XXL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(605, 42, 1, 9, 'M-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(606, 42, 2, 10, 'L-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(607, 42, 3, 11, 'XL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(608, 42, 4, 12, 'XXL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(609, 42, 1, 13, 'M-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(610, 42, 2, 14, 'L-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(611, 42, 3, 15, 'XL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(612, 42, 4, 16, 'XXL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(613, 42, 1, 17, 'M-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(614, 42, 2, 18, 'L-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(615, 42, 3, 19, 'XL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(616, 42, 4, 20, 'XXL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(617, 42, 1, 21, 'M-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(618, 42, 2, 22, 'L-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(619, 42, 3, 23, 'XL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(620, 42, 4, 24, 'XXL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(621, 42, 1, 25, 'M-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(622, 42, 2, 26, 'L-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(623, 42, 3, 27, 'XL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(624, 42, 4, 28, 'XXL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(625, 42, 1, 29, 'M-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(626, 42, 2, 30, 'L-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(627, 42, 3, 31, 'XL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15'),
(628, 42, 4, 32, 'XXL-1', NULL, 0, '2022-09-27 07:07:15', '2022-09-27 07:07:15');

-- --------------------------------------------------------

--
-- Structure de la table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(30, 'pr-tarik-210922-100208', 1, NULL, NULL, 4, 50, 0, 0, 5750, 0, 0, NULL, NULL, 5750, 0, 1, 1, NULL, NULL, '2022-09-21 09:02:08', '2022-09-21 09:02:08'),
(31, 'pr-noure-210922-143000', 30, NULL, NULL, 1, 10, 0, 0, 1150, 0, 0, NULL, NULL, 1150, 0, 1, 1, NULL, NULL, '2022-09-21 12:30:00', '2022-09-21 12:30:00'),
(32, 'pr-noure-250922-201120', 30, NULL, NULL, 24, 217, 0, 0, 24955, 0, 0, NULL, NULL, 24955, 0, 1, 1, NULL, NULL, '2022-09-25 18:11:20', '2022-09-25 18:11:20'),
(33, 'pr-noure-250922-201515', 30, NULL, NULL, 1, 21, 0, 0, 2415, 0, 0, NULL, NULL, 2415, 0, 1, 1, NULL, NULL, '2022-09-25 18:15:15', '2022-09-25 18:15:15'),
(34, 'pr-noure-270922-085030', 30, NULL, NULL, 4, 4, 0, 0, 460, 0, 0, NULL, NULL, 460, 0, 1, 1, NULL, NULL, '2022-09-27 06:50:30', '2022-09-27 06:50:30');

-- --------------------------------------------------------

--
-- Structure de la table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Administrateur du système', 'web', 1, '2018-06-01 23:46:44', '2022-01-07 20:39:04'),
(4, 'Vendeur', 'Rôle Vendeur', 'web', 1, '2018-06-02 00:05:27', '2022-01-07 20:38:33'),
(5, 'Client', 'Rôle Client', 'web', 1, '2020-11-05 06:43:16', '2022-01-07 20:38:48'),
(6, 'Produit manager', NULL, 'web', 1, '2022-09-12 20:55:24', '2022-09-12 20:55:24');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 4),
(7, 6),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(12, 4),
(13, 1),
(13, 4),
(14, 1),
(14, 4),
(15, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(69, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(98, 1),
(99, 1),
(99, 4),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(105, 4),
(106, 1),
(107, 1),
(107, 4),
(108, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_tel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` int(11) NOT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `livraison` int(11) NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `is_valide` tinyint(1) DEFAULT NULL,
  `delivery_status` int(11) DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `customer_name`, `customer_tel`, `customer_city`, `customer_address`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `livraison`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `is_valide`, `delivery_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(66, 'nouh-210922-143053', 35, 'Noureddine', '0660397499', 113, 'Ain nekbi n9 b3 fes\r\nAin nekbi n9 b3 fes', 1, 1, 0, 0, 260, 50, 260, 0, 0, 10, NULL, NULL, NULL, 1, 2, 1, 4, NULL, NULL, NULL, NULL, '2022-09-21 12:31:26', '2022-09-21 12:32:03');

-- --------------------------------------------------------

--
-- Structure de la table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `category_id`, `ticket_id`, `title`, `priority`, `message`, `status`, `created_at`, `updated_at`) VALUES
(8, 39, 1, 'tck-mabougrine-110922-183848', 'livraison', 'medium', 'slm', '1', '2022-09-11 16:38:48', '2022-09-11 16:38:48'),
(9, 35, 2, 'tck-nouh-110922-184425', 'Hhhhh', 'high', 'Hhhgsaghj', '1', '2022-09-11 16:44:25', '2022-09-11 16:44:25');

-- --------------------------------------------------------

--
-- Structure de la table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pce', 'Pièce', NULL, '*', 1, 1, '2022-05-11 07:19:23', '2022-05-11 07:19:23');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rib` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `rib`, `bank_name`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `discount`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Tarik', 'tarik', 'boukjij', 'tarik.engineering@gmail.com', '3200009233890588399028340', 'AL BARID BANK', '$2y$10$HPt3Go.HX8PKm/9Tuh2h5uaW3yIVnf5qu9y.aWIv85AVZJbUU0slG', 'L07ehsi6hiIkbGLIKK6uD57vdnvXs5xLivOpSoFcnU4jiINrt86YG1NdA86B', '0689385061', 'T@R!K', 1, NULL, NULL, '5', 1, 0, '2018-06-02 03:24:15', '2022-09-21 09:33:42'),
(23, 'Vendeur', 'vendeur', 'vendeur', 'vendeur@yovente.com', '42084724572057208572457', 'ATTIJARI WAFA BANK', '$2y$10$ZpJbd7m8PzYsUguYOjJJzu9oE7YO/Z.9bB2HyVBR5PBew8XCoPBRW', NULL, '0633333333', NULL, 4, NULL, NULL, '0', 0, 1, '2022-01-07 21:35:45', '2022-08-23 20:45:32'),
(24, 'Salma', 'salma', 'boukjijma', 'salma@yovente.com', '', '', '$2y$10$0e2hSyrAl2X1W2XqAdnvUOVGLPK8f8xZmLhT8ItTYdqedqe2VcJbq', NULL, '0611111111', 'Salma Company', 5, NULL, NULL, '0', 0, 1, '2022-01-15 20:13:17', '2022-01-30 19:00:17'),
(25, 'rim', 'rim', 'boukjijm', 'rim@yovente.com', '', '', '$2y$10$u6iuPGz6DHP5EVI0BGWsjOcVYKAQ4jbHTYhrwd/x23RLlrru5qPTK', NULL, '0622222222', 'Rim Company', 5, NULL, NULL, '0', 0, 1, '2022-01-30 18:57:46', '2022-01-30 19:00:03'),
(26, 'Vendeur1', 'vendeur1', 'vendeur1', 'vendeur1@yovente.com', '', '', '$2y$10$Gk1VagRoo0AFv8xsZlOeT.4KEIu6um10ClY89DLokWCA1moANi3D2', NULL, '0688888888', NULL, 4, NULL, NULL, '0', 0, 1, '2022-01-30 21:55:39', '2022-04-05 17:54:45'),
(27, 'faty1', 'faty', 'boukjijf', 'faty1@yovente.com', '', '', '$2y$10$7vuIzRDHIpcCdYGEXwc/beOVE6R9/jdlI79Cj/1Hbf.x.Wy8cnJAO', NULL, '0612121212', NULL, 4, NULL, NULL, '0', 0, 1, '2022-01-31 11:19:52', '2022-04-05 17:54:45'),
(28, 'nejjar', 'fatima ezzahra', 'nejjar', 'nejjar@yovente.com', NULL, NULL, '$2y$10$1vFI/whJVJENEzQFeS/7DekOnRkUK/UuZzGUq0rEHGdIYnBsmm3fy', NULL, '0615914789', NULL, 4, NULL, NULL, '0', 0, 1, '2022-02-09 20:06:27', '2022-02-09 20:06:45'),
(29, 'nejjar', 'fatima ezzahra', 'nejjar', 'nejjar@yovente.com', NULL, NULL, '$2y$10$gN9XZ6W9/fF9I94FQcwVK.sG0tgtoX2F5kp8CA7JMyfFw.uRJUp0K', NULL, '0612345678', NULL, 1, NULL, NULL, '0', 0, 1, '2022-02-09 20:07:20', '2022-04-05 17:54:45'),
(30, 'noure', 'Bougteba', 'Noureddine', 'noure@yovente.com', NULL, NULL, '$2y$10$k1Lv9.BC3ekllPTg2/mmuO3g43RgXDkMu29hpFomgRudsaiuQEWc.', NULL, '0660397499', 'Yovente S.A.R.L', 1, NULL, NULL, '0', 1, 0, '2022-04-05 17:56:19', '2022-04-05 17:56:29'),
(31, 'Yasmin', 'Yasmin', 'Bougteba', 'yasmin@gmail.com', NULL, NULL, '$2y$10$FYRiFZlcbcx1GFZ88QLSt.PS3bMLAHlTo8wfhYNBMptJULWCCcqju', NULL, '0660397499', 'Nour1', 4, NULL, NULL, '0', 0, 1, '2022-04-05 23:48:27', '2022-08-23 20:45:15'),
(32, 'Yasmin', 'Yasmin', 'Bougteba', 'fes2868@gmail.com', NULL, NULL, '$2y$10$g3/2fV/XkfE/lGprrJsb4eFXHdyKfEGPo5Ivi6dJYwLm/POht2wpC', NULL, '0642564550', 'Yasmin', 4, NULL, NULL, '0', 0, 1, '2022-08-23 20:47:13', '2022-08-23 20:57:26'),
(33, 'Nourehijab', 'Yassmine', 'Bougteba', 'fes2868@gmail.com', NULL, NULL, '$2y$10$jKZQ7JuGr4fHfzIbitthQOPpem52R80UrZFNxmQXO.bkIL.UwO0ji', NULL, '0642564550', 'Noureddine', 4, NULL, NULL, '0', 1, 0, '2022-08-23 21:00:57', '2022-08-28 15:06:23'),
(34, 'Nour', 'Noureddine', 'Nour', 'noure.bgt@gmail.com', NULL, NULL, '$2y$10$cfeQFTHPyHZ/bRIOsiVcGOqFk7HPQl0/j4e5mTskIMYTOOyqJ/e6a', NULL, '0660397499', NULL, 4, NULL, NULL, '0', 1, 0, '2022-08-24 19:43:28', '2022-08-24 19:46:32'),
(35, 'Nouh', 'Nouh', 'Bgt', 'nouh@gmail.com', NULL, NULL, '$2y$10$HQbNEmmHU4CXe9Stb9XBheBIZeY9V0jlYul6mia2c20Ogif3ZNdZu', NULL, '0666666666', NULL, 4, NULL, NULL, '10', 1, 0, '2022-08-25 14:09:45', '2022-09-21 12:28:26'),
(36, 'Lina', 'Abderrahim', 'Bouabaid', '19892004.bo@gmail.com', NULL, NULL, '$2y$10$4X8iWbvyJAHfeuha.qnYSOPMQF3UfvIxbFUlwZzEm9oOLMi473yly', NULL, '0621036790', NULL, 4, NULL, NULL, '10', 1, 0, '2022-08-27 17:49:35', '2022-09-21 22:24:19'),
(37, 'Ghez', 'AMINE', 'EL GHEZAOUY', 'maeg1989@gmail.com', NULL, NULL, '$2y$10$MtR0zC09ggKImQUWj9PvVe.34s1Fgp6jpoQG51pbLWhQHonBwSooC', NULL, '0666194243', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-02 20:03:46', '2022-09-02 20:04:16'),
(38, 'IMRANE', 'IMRANE', 'BGT', 'IMRANE@GMAIL.COM', NULL, NULL, '$2y$10$sVqOzj/S5vGIj4OQw4LY3.bYBkMKspXS860PjVnMdrsffRpEiBIi6', NULL, '0660397499', NULL, 4, NULL, NULL, '0', 0, 0, '2022-09-10 08:01:55', '2022-09-10 08:01:55'),
(39, 'mabougrine', 'Majda', 'Bougrine', 'bougrinemajda00@gmail.com', NULL, NULL, '$2y$10$8JQFKihFUXftA3yYTKawrOC/POGqtZqGI6p5dkRgnDrC465X2L7Dq', NULL, '0707402655', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-10 15:10:32', '2022-09-10 15:11:03'),
(40, 'EZZAHRAE', 'FATIMAZAHRAE', 'DR', 'FATIMAZAHRADARRAA7@GMAIL.COM', NULL, NULL, '$2y$10$29n/0r1eM2eCtb.j9g00mOqnX2jUJjODtsEe85v.RiH3L0.BLJ4Eu', NULL, '0602240675', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-11 14:55:29', '2022-09-11 14:55:46'),
(41, 'YAMANI', 'KHADIJA', 'YAMANI', 'OMJANNAT1@GMAIL.COM', NULL, NULL, '$2y$10$3P96TLlrjXvk9eSiWfFZP.9PAr9LOmn7U.s1jQYhMHeXgLDDy2k0a', NULL, '0699288141', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-11 15:40:11', '2022-09-11 15:40:30'),
(42, 'HDR', 'HANAE', 'HADIRI', 'HANAE.HADIRI@GMAIL.COM', NULL, NULL, '$2y$10$HQfAdYAsE/YNIjHpGsyVme.t6Z4cekKgoF7aoUeRRUXJ5IE7XOnT2', NULL, '0608097071', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-11 15:49:19', '2022-09-11 15:49:40'),
(43, 'Yahya', 'Yahya', 'Nali', 'Yahya.nali1999@gmail.com', NULL, NULL, '$2y$10$dKLOW7M3bkn7zJAE/6yzIOIHYDO2OpoP90/fUE9RDsiieTt62bYGS', NULL, '0624085525', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-11 21:37:36', '2022-09-11 21:37:52'),
(44, 'Hamed', 'Zakariae', 'Hamed', 'anazakariae@gmail.com', NULL, NULL, '$2y$10$cZWaLo9fpYife4VC9t../.Dd/x6vVDxg0jpj.7oYk9m1cm.ge6OVS', NULL, '0660512626', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-12 07:19:08', '2022-09-12 07:19:45'),
(45, 'Tchioucha', 'Tarik', 'Tchioucha', 'tarik@gmail.com', NULL, NULL, '$2y$10$49mYunYrOUJd6tSQrVzEbuYDbfwKt0JB2Xuss.wknv9XYT/3dJ3q2', NULL, '0636838835', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-12 08:33:27', '2022-09-12 08:33:42'),
(46, 'Elgharibi', 'Lahcen', 'El Gharibi', 'gharibilahcen@gmail.com', NULL, NULL, '$2y$10$tH5Dt8VyN1HTTslEIiZD1e.idaSfoKwc74VW8htxFCzEZvUC2g/pO', NULL, '0608100523', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-12 08:44:44', '2022-09-12 08:45:04'),
(47, 'Arf', 'Mohsin', 'Arfaoui', 'arf@produit.com', NULL, NULL, '$2y$10$Mjx8slzcUhPVgS3x.N.tVOLLzEAh6k.0EuuBFZUKlRWvXzuaOrLF6', NULL, '0660397499', NULL, 6, NULL, NULL, '0', 0, 1, '2022-09-12 20:57:01', '2022-09-17 16:55:30'),
(48, 'Ezzetouni', 'Noureddine', 'Ezzetouni', 'noureddineezzetouni@gmail.com', NULL, NULL, '$2y$10$c6VGQUmbuiUBOExp7PNqyet4VSkcDbix7GdAbN34D4eBVjb0tacda', NULL, '0679752339', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-13 12:32:14', '2022-09-13 12:32:33'),
(49, 'Laamim', 'Khalid', 'Laamim', 'kalda880@gmail.com', NULL, NULL, '$2y$10$LwQy1VrS6ZichLRJ2ZDFQe9NNV0cT.S7DUu8doqFlOw58oYcnXLj6', NULL, '0602481516', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-14 08:02:46', '2022-09-14 08:03:02'),
(50, 'GHZAOUI', 'AYOUBE', 'EL GHZAOUI', 'GHZAOUI@GMAIL.COM', NULL, NULL, '$2y$10$ERLmfc/2Bz2jxa1tfrETEePYHyODCcZkrVEfm029oP5sL.mXcGZV6', NULL, '06445235324', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-14 12:58:28', '2022-09-14 12:58:47'),
(51, 'ARFAOUI', 'MOHSINE', 'EL ARFAOUI', 'ELARFAOUI.MOHSINE@GMAIL.COM', NULL, NULL, '$2y$10$.3bh4/RFTBn.Sza8xqQtz.iVco.KSMAib9z2SWHRJSCaFHsxljRpK', NULL, '0699727824', NULL, 6, NULL, NULL, '0', 1, 0, '2022-09-17 16:57:14', '2022-09-17 17:00:27'),
(52, 'Abbeid', 'Mohammed', 'Abbeid', 'neotvprobox@gmail.com', NULL, NULL, '$2y$10$K2il9uZuWvqkEkDywIdryujhONweDRXwVY5.mjFBx0erjU47IzpcO', NULL, '0648869447', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-19 08:51:07', '2022-09-19 08:53:32'),
(53, 'Agougil', 'Hassan', 'Agougil', 'hassan.agougil@gmail.com', NULL, NULL, '$2y$10$N.QU8uGNZ6vpQa06G/hqYui84Lto/vHHQfq3b4341tVUEj.3Jw8cC', NULL, '0627657519', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-19 09:04:20', '2022-09-19 09:04:41'),
(54, 'rachid', 'Rachid', 'Lahbil', 'test@test.com', NULL, NULL, '$2y$10$Fv3vgqeLymX9hd2UDbfI7eN1Tdq7siy6ujrRJl7jlGMCILZDs05Sm', NULL, '0689385061', NULL, 4, NULL, NULL, '10', 0, 1, '2022-09-20 22:49:35', '2022-09-20 23:04:43'),
(55, 'Abaya', 'طارق بوقجيج', 'بو قجيج', 'tarik.engineering11@gmail.com', NULL, NULL, '$2y$10$kMEllYr2bud2AqKTZ2jCxOogJMDQ8biIReJs0VyC7dIvjlAQtQg4.', NULL, '+212689385061', NULL, 4, NULL, NULL, '0', 0, 1, '2022-09-20 23:03:47', '2022-09-20 23:04:31'),
(56, 'NALI', 'ZAKARIAE', 'NALI', 'ZAKIMOVICH@GMAIL.COM', NULL, NULL, '$2y$10$TnR6oC44WVXCgqnO9fJC5O0dyz2JvbMpmrYVLS19lplnf0Ek34L4a', NULL, '0606073807', NULL, 4, NULL, NULL, '0', 1, 0, '2022-09-25 17:28:00', '2022-09-25 17:28:31');

-- --------------------------------------------------------

--
-- Structure de la table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'M', '2022-05-11 07:21:39', '2022-05-11 07:21:39'),
(2, 'L', '2022-05-11 07:21:39', '2022-05-11 07:21:39'),
(3, 'XL', '2022-05-11 07:21:39', '2022-08-26 15:02:24'),
(4, 'XXL', '2022-05-11 07:21:40', '2022-05-11 07:21:40'),
(5, 'Gris M', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(6, 'Gris L', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(7, 'Gris XL', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(8, 'Gris XXL', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(9, 'Move M', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(10, 'Move L', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(11, 'Move XL', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(12, 'Move XXL', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(13, 'Noir Blu M', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(14, 'Noir Blu L', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(15, 'Noir Blu XL', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(16, 'Noir Blu XXL', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(17, 'Baj m', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(18, 'Baj L', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(19, 'Baj XL', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(20, 'Baj XXL', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(21, 'Khasni M', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(22, 'khasni L', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(23, 'Khasni XL', '2022-09-26 04:09:11', '2022-09-26 04:09:11'),
(24, 'Khasni XXL', '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(25, 'Noir gris M', '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(26, 'Noir gris L', '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(27, 'Noir gris', '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(28, 'Noir gris XXL', '2022-09-26 04:09:12', '2022-09-26 04:09:12'),
(29, 'CIEL-M', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(30, 'CILEL-L', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(31, 'CIEL-XL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(32, 'CIEL-XXL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(33, 'move claire - M', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(34, 'move claire - L', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(35, 'move claire - XL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(36, 'move claire - XXL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(37, 'blumarin-m', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(38, 'blumarin-L', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(39, 'blumarin-XL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(40, 'blumarin-XXL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(41, 'rose fonce-m', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(42, 'rose fonce-L', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(43, 'rose fonce-XL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(44, 'rose fonce-XXL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(45, 'rose claire-m', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(46, 'rose claire-L', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(47, 'rose claire-XL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(48, 'rose claire-XXL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(49, 'grona-m', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(50, 'grona-L', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(51, 'grona-XL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(52, 'grona-XXL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(53, 'bleuroi-m', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(54, 'bleuroi-L', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(55, 'bleuroi-XL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(56, 'bleuroi-XXL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(57, 'vert-M', '2022-09-27 06:42:53', '2022-09-27 07:04:59'),
(58, 'vert-L', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(59, 'vert-XL', '2022-09-27 06:42:53', '2022-09-27 06:42:53'),
(60, 'vert-XXL', '2022-09-27 06:42:53', '2022-09-27 06:42:53');

-- --------------------------------------------------------

--
-- Structure de la table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Benslimane', '0600000000', NULL, 'Benslimane\r\nMaroc', 1, '2022-05-11 07:25:03', '2022-05-11 07:25:03'),
(2, 'Casablanca', '0611111111', NULL, 'Casablanca\r\nMarco', 1, '2022-05-11 07:30:25', '2022-05-11 07:30:25');

-- --------------------------------------------------------

--
-- Structure de la table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `withdraw_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_valide` tinyint(1) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cat_tickets`
--
ALTER TABLE `cat_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `delivery_statuses`
--
ALTER TABLE `delivery_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_batches`
--
ALTER TABLE `product_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_ticket_id_unique` (`ticket_id`);

--
-- Index pour la table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `cat_tickets`
--
ALTER TABLE `cat_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `delivery_statuses`
--
ALTER TABLE `delivery_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT pour la table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT pour la table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_batches`
--
ALTER TABLE `product_batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT pour la table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT pour la table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;

--
-- AUTO_INCREMENT pour la table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
