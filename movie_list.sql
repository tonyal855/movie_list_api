-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2020 at 04:13 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) DEFAULT NULL,
  `content_type` varchar(70) NOT NULL,
  `action_flag` varchar(70) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `action_time`, `content_type`, `action_flag`, `user_id`) VALUES
(1, '2020-10-19 15:41:44.846261', 'favourite_movie', 'get_popular_movie', 1),
(2, '2020-10-19 15:42:04.944771', 'favourite_movie', 'get_popular_movie', 1),
(3, '2020-10-18 15:43:16.462344', 'favourite_movie', 'get_top_rate_movie', NULL),
(4, '2020-10-18 16:04:53.552480', 'favourite_movie', 'get_popular_movie', 1),
(5, '2020-10-17 16:06:11.650678', 'favourite_movie', 'get_popular_movie', 1),
(6, '2020-10-16 16:06:45.057502', 'favourite_movie', 'get_popular_movie', 1),
(7, '2020-10-20 16:12:48.514707', 'favourite_movie', 'get_popular_movie', 1),
(8, '2020-10-20 16:14:33.511643', 'favourite_movie', 'get_popular_movie', 1),
(9, '2020-10-20 16:14:57.637312', 'favourite_movie', 'get_popular_movie', 1),
(10, '2020-10-20 16:16:08.668948', 'favourite_movie', 'get_popular_movie', 1),
(11, '2020-10-20 16:19:27.353909', 'favourite_movie', 'get_popular_movie', 1),
(12, '2020-10-20 16:21:03.161568', 'favourite_movie', 'get_popular_movie', 1),
(13, '2020-10-20 16:21:20.455711', 'favourite_movie', 'get_popular_movie', 1),
(14, '2020-10-20 16:24:03.862400', 'favourite_movie', 'get_top_rate_movie', NULL),
(15, '2020-10-20 16:24:05.640782', 'favourite_movie', 'get_popular_movie', NULL),
(16, '2020-10-20 16:24:06.217217', 'favourite_movie', 'get_top_rate_movie', NULL),
(17, '2020-10-20 16:24:06.662182', 'favourite_movie', 'get_popular_movie', NULL),
(18, '2020-10-20 16:24:07.079461', 'favourite_movie', 'get_top_rate_movie', NULL),
(19, '2020-10-20 16:26:22.548238', 'favourite_movie', 'get_top_rate_movie', 1),
(20, '2020-10-20 16:26:24.384186', 'favourite_movie', 'get_detail', 1),
(21, '2020-10-20 16:26:25.967237', 'favourite_movie', 'add_fav_movie', 1),
(22, '2020-10-20 16:26:26.385381', 'favourite_movie', 'get_popular_movie', 1),
(23, '2020-10-20 16:26:33.837520', 'favourite_movie', 'get_favourite_movie', 1),
(24, '2020-10-20 16:26:37.466971', 'favourite_movie', 'update_note', 1),
(25, '2020-10-20 16:26:37.478954', 'favourite_movie', 'get_favourite_movie', 1),
(26, '2020-10-20 16:27:58.179082', 'favourite_movie', 'get_popular_movie', 1),
(27, '2020-10-20 16:28:39.284825', 'favourite_movie', 'get_popular_movie', 2),
(28, '2020-10-20 16:28:41.364753', 'favourite_movie', 'get_popular_movie', NULL),
(29, '2020-10-20 16:28:57.840081', 'favourite_movie', 'get_popular_movie', 3),
(30, '2020-10-20 16:29:01.735586', 'favourite_movie', 'get_popular_movie', NULL),
(31, '2020-10-20 16:29:15.723712', 'favourite_movie', 'get_popular_movie', 4),
(32, '2020-10-20 16:31:24.306307', 'favourite_movie', 'get_detail', 1),
(33, '2020-10-20 16:31:25.556989', 'favourite_movie', 'add_fav_movie', 1),
(34, '2020-10-20 16:31:25.666527', 'favourite_movie', 'get_popular_movie', 1),
(35, '2020-10-20 16:31:27.443702', 'favourite_movie', 'get_detail', 1),
(36, '2020-10-20 16:31:28.460884', 'favourite_movie', 'add_fav_movie', 1),
(37, '2020-10-20 16:31:28.561936', 'favourite_movie', 'get_popular_movie', 1),
(38, '2020-10-20 16:31:33.409863', 'favourite_movie', 'get_detail', 4),
(39, '2020-10-20 16:31:34.757736', 'favourite_movie', 'get_popular_movie', 4),
(40, '2020-10-20 16:32:58.620731', 'favourite_movie', 'get_detail', 4),
(41, '2020-10-20 16:33:00.168312', 'favourite_movie', 'get_popular_movie', 4),
(42, '2020-10-20 16:33:02.719506', 'favourite_movie', 'get_favourite_movie', 4),
(43, '2020-10-20 16:36:01.918959', 'favourite_movie', 'get_detail', 4),
(44, '2020-10-20 16:36:03.666204', 'favourite_movie', 'add_fav_movie', 4),
(45, '2020-10-20 16:36:03.756622', 'favourite_movie', 'get_popular_movie', 4),
(46, '2020-10-20 16:36:08.224494', 'favourite_movie', 'get_favourite_movie', 4),
(47, '2020-10-20 16:36:14.354513', 'favourite_movie', 'get_favourite_movie', 4),
(48, '2020-10-20 16:36:15.284442', 'favourite_movie', 'get_popular_movie', 4),
(49, '2020-10-20 16:36:16.019739', 'favourite_movie', 'get_detail', 4),
(50, '2020-10-20 16:36:17.397786', 'favourite_movie', 'add_fav_movie', 4),
(51, '2020-10-20 16:36:17.486964', 'favourite_movie', 'get_popular_movie', 4),
(52, '2020-10-20 16:36:21.910193', 'favourite_movie', 'get_favourite_movie', 1),
(53, '2020-10-20 16:36:27.416219', 'favourite_movie', 'get_detail', 4),
(54, '2020-10-20 16:36:29.438036', 'favourite_movie', 'get_popular_movie', 4),
(55, '2020-10-20 16:36:30.771342', 'favourite_movie', 'get_favourite_movie', 4),
(56, '2020-10-20 16:36:41.820250', 'favourite_movie', 'get_popular_movie', 4),
(57, '2020-10-20 16:36:46.438145', 'favourite_movie', 'get_top_rate_movie', 4),
(58, '2020-10-20 16:36:51.380202', 'favourite_movie', 'get_detail', 4),
(59, '2020-10-20 16:36:52.722112', 'favourite_movie', 'add_fav_movie', 4),
(60, '2020-10-20 16:36:52.805533', 'favourite_movie', 'get_popular_movie', 4),
(61, '2020-10-20 16:36:57.418717', 'favourite_movie', 'get_favourite_movie', 4),
(62, '2020-10-20 16:36:59.963586', 'favourite_movie', 'get_favourite_movie', 1),
(63, '2020-10-20 16:43:03.256110', 'favourite_movie', 'get_popular_movie', 1),
(64, '2020-10-20 16:43:05.496854', 'favourite_movie', 'get_favourite_movie', 1),
(65, '2020-10-20 16:47:09.954089', 'favourite_movie', 'get_favourite_movie', 1),
(66, '2020-10-20 16:47:11.186720', 'favourite_movie', 'get_popular_movie', 1),
(67, '2020-10-20 16:47:11.686196', 'favourite_movie', 'get_popular_movie', 1),
(68, '2020-10-20 16:47:12.014643', 'favourite_movie', 'get_top_rate_movie', 1),
(69, '2020-10-20 16:47:12.271968', 'favourite_movie', 'get_favourite_movie', 1),
(70, '2020-10-20 16:47:14.580803', 'favourite_movie', 'get_popular_movie', 1),
(71, '2020-10-20 16:47:16.872238', 'favourite_movie', 'get_popular_movie', 1),
(72, '2020-10-20 17:04:34.202949', 'favourite_movie', 'get_popular_movie', 1),
(73, '2020-10-20 17:04:37.652506', 'favourite_movie', 'get_detail', 1),
(74, '2020-10-20 17:04:39.306872', 'favourite_movie', 'add_fav_movie', 1),
(75, '2020-10-20 17:04:39.524285', 'favourite_movie', 'get_popular_movie', 1),
(76, '2020-10-20 17:04:40.844687', 'favourite_movie', 'get_favourite_movie', 1),
(77, '2020-10-20 17:04:46.310921', 'favourite_movie', 'update_note', 1),
(78, '2020-10-20 17:04:46.328904', 'favourite_movie', 'get_favourite_movie', 1),
(79, '2020-10-20 17:04:48.905798', 'favourite_movie', 'delete_fav_movie', 1),
(80, '2020-10-20 17:04:48.920934', 'favourite_movie', 'get_favourite_movie', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add fav movie', 7, 'add_favmovie'),
(26, 'Can change fav movie', 7, 'change_favmovie'),
(27, 'Can delete fav movie', 7, 'delete_favmovie'),
(28, 'Can view fav movie', 7, 'view_favmovie'),
(29, 'Can add activity log', 8, 'add_activitylog'),
(30, 'Can change activity log', 8, 'change_activitylog'),
(31, 'Can delete activity log', 8, 'delete_activitylog'),
(32, 'Can view activity log', 8, 'view_activitylog');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$mhNPA9j370vn$lFdHZP4tRTgsHGxVw1o4OCpXNklNi9ANGFX3FShPySo=', '2020-10-20 15:38:58.707181', 1, 'usr24', '', '', '', 0, 1, '2020-10-20 15:38:58.221146'),
(2, 'pbkdf2_sha256$216000$B4r9ce3g20n9$rDZgSNInKalAGJIIAb2e2cgjaVuCUePzXeWYw1iY+b8=', '2020-10-20 16:28:39.182506', 0, 'usr23', '', '', '', 0, 1, '2020-09-20 16:28:38.694837'),
(3, 'pbkdf2_sha256$216000$KIiMKSUkrcek$GD7dESfwMaZ/bgDOBUxA/ul1PzNrj9zAALL4p6fpsng=', '2020-10-20 16:28:57.751278', 0, 'bambang', '', '', '', 0, 1, '2020-08-20 16:28:57.271661'),
(4, 'pbkdf2_sha256$216000$lkSHIKH555ad$TPy5sWxIjTZ2HL9/gmkUPWcEc9XX0JERbJKW3VbINCE=', '2020-10-20 16:29:15.633339', 0, 'toni', '', '', '', 0, 1, '2020-07-20 16:29:15.160959');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'movie', 'activitylog'),
(7, 'movie', 'favmovie'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-10-20 15:37:17.914404'),
(2, 'auth', '0001_initial', '2020-10-20 15:37:18.069487'),
(3, 'admin', '0001_initial', '2020-10-20 15:37:18.541420'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-10-20 15:37:18.690654'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-20 15:37:18.698693'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-10-20 15:37:18.776294'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-10-20 15:37:18.838542'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-10-20 15:37:18.857540'),
(9, 'auth', '0004_alter_user_username_opts', '2020-10-20 15:37:18.866954'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-10-20 15:37:18.925776'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-10-20 15:37:18.929793'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-10-20 15:37:18.938776'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-10-20 15:37:18.955843'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-10-20 15:37:18.973735'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-10-20 15:37:19.009613'),
(16, 'auth', '0011_update_proxy_permissions', '2020-10-20 15:37:19.020647'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-10-20 15:37:19.040618'),
(18, 'movie', '0001_initial', '2020-10-20 15:37:19.115790'),
(19, 'sessions', '0001_initial', '2020-10-20 15:37:19.211114'),
(20, 'movie', '0002_auto_20201020_2243', '2020-10-20 15:43:06.473928'),
(21, 'movie', '0003_auto_20201020_2245', '2020-10-20 15:45:20.462380'),
(22, 'movie', '0004_auto_20201020_2304', '2020-10-20 16:04:39.591670');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('b2mmvai12pgx5snm42u4huamk2g5po35', '.eJxVjMsOwiAQRf-FtSE8Kh1cuu83kIFhpGogKe3K-O_apAvd3nPOfYmA21rC1vMSZhIXMYjT7xYxPXLdAd2x3ppMra7LHOWuyIN2OTXKz-vh_h0U7OVbg7WjB2s0KCZtzkYp9gkG47MiYMjkjWMciCKgHaOL6DhaYs86K0fi_QHFVjgX:1kUuVf:fVdSIh0jQncboCpHmzG3iJ2mFpp5aN2YMRGb6aUukO0', '2020-11-03 16:29:15.635304'),
('v25nni6pdzw4r5fclbn4tb8h8uf2bewc', '.eJxVjDkOwjAQRe_iGlneJmBK-pwhmsWDAyiWslSIu6NIKaD9773_NgNuax22pczDKOZqvDn9boT8LNMO5IHTvVlu0zqPZHfFHnSxfZPyuh3u30HFpe51CZi9xAzEKQRBcMwCyiqOnU_FZ5WSKGuE7kwuAwK4hKrxQtiR-XwBCuc44w:1kUtj0:856xqwmFGtym9Gk1WusPw5XfThn031DwjyVDRkT-wAQ', '2020-11-03 15:38:58.715217');

-- --------------------------------------------------------

--
-- Table structure for table `fav_movie`
--

CREATE TABLE `fav_movie` (
  `id` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `orginal_title` varchar(50) DEFAULT NULL,
  `overview` longtext NOT NULL,
  `tagline` varchar(100) DEFAULT NULL,
  `vote_average` double NOT NULL,
  `release_date` date DEFAULT NULL,
  `genres` varchar(35) NOT NULL,
  `original_language` varchar(10) DEFAULT NULL,
  `poster_path` varchar(100) DEFAULT NULL,
  `homepage` varchar(100) DEFAULT NULL,
  `popularity` double DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fav_movie`
--

INSERT INTO `fav_movie` (`id`, `id_movie`, `title`, `orginal_title`, `overview`, `tagline`, `vote_average`, `release_date`, `genres`, `original_language`, `poster_path`, `homepage`, `popularity`, `note`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 724089, 'Gabriel\'s Inferno Part II', NULL, 'Professor Gabriel Emerson finally learns the truth about Julia Mitchell\'s identity, but his realization comes a moment too late. Julia is done waiting for the well-respected Dante specialist to remember her and wants nothing more to do with him. Can Gabriel win back her heart before she finds love in another\'s arms?', NULL, 8.9, '2020-07-31', 'Romance', 'en', '/pci1ArYW7oJ2eyTo2NMYEKHHiCP.jpg', 'https://watch.passionflix.com/watch/f299fa17-5a2b-4fee-b53a-a4651747431b', 12.798, 'this one of my favorite movie !!!', 1, '2020-10-20 16:26:25.965256', '2020-10-20 16:26:37.461429'),
(2, 741067, 'Welcome to Sudden Death', NULL, 'Jesse Freeman is a former special forces officer and explosives expert now working a regular job as a security guard in a state-of-the-art basketball arena. Trouble erupts when a tech-savvy cadre of terrorists kidnap the team\'s owner and Jesse\'s daughter during opening night. Facing a ticking clock and impossible odds, it\'s up to Jesse to not only save them but also a full house of fans in this highly charged action thriller.', NULL, 6.6, '2020-09-29', 'Action,Drama,Thriller', 'en', '/elZ6JCzSEvFOq4gNjNeZsnRFsvj.jpg', 'https://xmovies8.app/', 2058.684, 'this one of my favorite movie', 1, '2020-10-19 16:31:25.554975', '2020-10-20 16:31:25.554975'),
(3, 337401, 'Mulan', NULL, 'When the Emperor of China issues a decree that one man per family must serve in the Imperial Chinese Army to defend the country from Huns, Hua Mulan, the eldest daughter of an honored warrior, steps in to take the place of her ailing father. She is spirited, determined and quick on her feet. Disguised as a man by the name of Hua Jun, she is tested every step of the way and must harness her innermost strength and embrace her true potential.', NULL, 7.3, '2020-09-04', 'Action,Adventure,Drama,Fantasy', 'en', '/aKx1ARwG55zZ0GpRvU2WrGrCG9o.jpg', 'https://movies.disney.com/mulan-2020d', 1168.889, 'this one of my favorite movie', 1, '2020-10-19 16:31:28.458915', '2020-10-20 16:31:28.458915'),
(4, 337401, 'Mulan', NULL, 'When the Emperor of China issues a decree that one man per family must serve in the Imperial Chinese Army to defend the country from Huns, Hua Mulan, the eldest daughter of an honored warrior, steps in to take the place of her ailing father. She is spirited, determined and quick on her feet. Disguised as a man by the name of Hua Jun, she is tested every step of the way and must harness her innermost strength and embrace her true potential.', NULL, 7.3, '2020-09-04', 'Action,Adventure,Drama,Fantasy', 'en', '/aKx1ARwG55zZ0GpRvU2WrGrCG9o.jpg', 'https://movies.disney.com/mulan-2020d', 1168.889, 'this one of my favorite movie', 4, '2020-10-19 16:36:03.663244', '2020-10-20 16:36:03.663244'),
(5, 741067, 'Welcome to Sudden Death', NULL, 'Jesse Freeman is a former special forces officer and explosives expert now working a regular job as a security guard in a state-of-the-art basketball arena. Trouble erupts when a tech-savvy cadre of terrorists kidnap the team\'s owner and Jesse\'s daughter during opening night. Facing a ticking clock and impossible odds, it\'s up to Jesse to not only save them but also a full house of fans in this highly charged action thriller.', NULL, 6.6, '2020-09-29', 'Action,Drama,Thriller', 'en', '/elZ6JCzSEvFOq4gNjNeZsnRFsvj.jpg', 'https://xmovies8.app/', 2058.684, 'this one of my favorite movie', 4, '2020-10-18 16:36:17.389976', '2020-10-20 16:36:17.389976'),
(6, 724089, 'Gabriel\'s Inferno Part II', NULL, 'Professor Gabriel Emerson finally learns the truth about Julia Mitchell\'s identity, but his realization comes a moment too late. Julia is done waiting for the well-respected Dante specialist to remember her and wants nothing more to do with him. Can Gabriel win back her heart before she finds love in another\'s arms?', NULL, 8.9, '2020-07-31', 'Romance', 'en', '/pci1ArYW7oJ2eyTo2NMYEKHHiCP.jpg', 'https://watch.passionflix.com/watch/f299fa17-5a2b-4fee-b53a-a4651747431b', 12.798, 'this one of my favorite movie', 4, '2020-10-17 16:36:52.720106', '2020-10-20 16:36:52.720106');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_user_id_f1e09264_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `fav_movie`
--
ALTER TABLE `fav_movie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fav_movie`
--
ALTER TABLE `fav_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD CONSTRAINT `activity_log_user_id_f1e09264_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
