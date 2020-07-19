-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2019 at 02:16 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ittest`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'HTML', '/img/html1.png', '2019-09-27 23:23:50', '2019-09-27 23:23:50'),
(2, 'CSS', '/img/css2.png', '2019-09-27 23:24:11', '2019-09-27 23:24:11'),
(3, 'Java Script', '/img/javascript1.png', '2019-09-27 23:24:30', '2019-09-27 23:24:30'),
(4, 'Mysql', '/img/mysql.png', '2019-09-27 23:24:46', '2019-09-27 23:24:46'),
(5, 'Bootstrap', '/img/bootstrap1.png', '2019-09-27 23:24:58', '2019-09-27 23:24:58'),
(6, 'PHP', '/img/php1.png', '2019-09-27 23:25:10', '2019-09-27 23:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `category_level`
--

CREATE TABLE `category_level` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_level`
--

INSERT INTO `category_level` (`id`, `level_id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'HTML Beginner', '2019-09-27 23:26:27', '2019-09-27 23:26:27'),
(2, 2, 1, 'HTML Intermediate', '2019-09-27 23:28:06', '2019-09-27 23:28:06'),
(3, 3, 1, 'HTML Advance', '2019-09-27 23:28:54', '2019-09-27 23:28:54'),
(4, 1, 2, 'CSS Beginner', '2019-09-27 23:29:29', '2019-09-27 23:29:29'),
(5, 2, 2, 'CSS Intermediate', '2019-09-27 23:29:49', '2019-09-27 23:29:49'),
(6, 3, 2, 'CSS Advance', '2019-09-27 23:30:11', '2019-09-27 23:30:11'),
(7, 1, 3, 'Java Script Beginner', '2019-09-27 23:30:34', '2019-09-27 23:30:34'),
(8, 2, 3, 'Java Script Intermediate', '2019-09-27 23:30:59', '2019-09-27 23:30:59'),
(9, 3, 3, 'Java Script Advance', '2019-09-27 23:31:19', '2019-09-27 23:31:19'),
(10, 1, 4, 'Mysql Beginner', '2019-09-27 23:31:50', '2019-09-27 23:31:50'),
(11, 2, 4, 'Mysql Intermediate', '2019-09-27 23:32:12', '2019-09-27 23:32:12'),
(12, 3, 4, 'Mysql Advance', '2019-09-27 23:32:29', '2019-09-27 23:32:29'),
(13, 1, 5, 'Bootstrap Beginner', '2019-09-27 23:32:53', '2019-09-27 23:32:53'),
(14, 2, 5, 'Bootstrap Intermediate', '2019-09-27 23:33:11', '2019-09-27 23:33:11'),
(15, 3, 5, 'Bootstrap Advance', '2019-09-27 23:34:07', '2019-09-27 23:34:07'),
(16, 1, 6, 'PHP Beginner', '2019-09-27 23:34:25', '2019-09-27 23:34:25'),
(17, 2, 6, 'PHP Intermediate', '2019-09-27 23:34:39', '2019-09-27 23:34:39'),
(18, 3, 6, 'PHP Advance', '2019-09-27 23:34:57', '2019-09-27 23:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Beginner', '2019-09-27 23:25:25', '2019-09-27 23:25:25'),
(2, 'Intermediate', '2019-09-27 23:25:56', '2019-09-27 23:25:56'),
(3, 'Advance', '2019-09-27 23:26:07', '2019-09-27 23:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_09_25_131719_create_levels_table', 2),
(15, '2019_09_25_141831_create_questions_table', 2),
(16, '2019_09_25_155503_create_categories_table', 2),
(17, '2019_09_27_092534_create_category_level_table', 2),
(19, '2019_09_30_041859_create_permission_tables', 3),
(20, '2019_10_02_055225_create_results_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 5),
(1, 'App\\User', 6),
(1, 'App\\User', 7),
(1, 'App\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'give instrations to ittest project', 'web', '2019-09-30 00:01:36', '2019-09-30 00:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categorylevel_id` bigint(20) UNSIGNED NOT NULL,
  `question_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rightanswer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `categorylevel_id`, `question_name`, `answer1`, `answer2`, `answer3`, `rightanswer`, `created_at`, `updated_at`) VALUES
(1, 1, 'Is it possible to link within the current page ?', 'Only in framesets', 'Yes', 'No', 'Yes', '2019-09-27 23:37:07', '2019-09-27 23:37:07'),
(2, 1, 'Which section is used for text and tags that are shown directly on your web page ?', 'Head', 'Metatags', ' Body', ' Body', '2019-09-27 23:37:59', '2019-09-27 23:37:59'),
(3, 1, ' What tag tells the browser where the page starts and stops ?', '< body >', '< head >', '< html >', '< html >', '2019-09-27 23:39:10', '2019-09-27 23:39:10'),
(4, 1, ' One should never combine the \"start\" and \"type\" option ?', 'True', 'False', 'Sometimes True, sometimes False', 'False', '2019-09-27 23:39:54', '2019-09-27 23:39:54'),
(5, 1, ' Adding a border to your image helps the visitor to recognize it as what ?', 'A Link', 'A really great picture', 'A frame', 'A Link', '2019-09-27 23:40:43', '2019-09-27 23:40:43'),
(6, 1, 'Which of the following is NOT a valid pair for browser safe colors ?', 'CC', 'AA', ' 00', 'AA', '2019-09-27 23:41:33', '2019-09-27 23:41:33'),
(7, 1, 'Imagelinks can show a text label if you add which property?', ' alternative', ' alt', 'str', ' alt', '2019-09-27 23:42:29', '2019-09-27 23:42:29'),
(8, 1, 'What tag adds a paragraph break after the text ?', '< P >', '< PARAGRAPH >', '< BR >', '< P >', '2019-09-27 23:43:20', '2019-09-27 23:43:20'),
(9, 1, ' What is the most important tool for adding colors to certain areas of the page rather than the entire background ?', 'Tables', 'Fonts', 'Images', 'Tables', '2019-09-27 23:44:02', '2019-09-27 23:44:02'),
(10, 1, 'The <i> tag makes text... ?', 'Inline', 'Italic', 'Bold', 'Italic', '2019-09-27 23:44:48', '2019-09-27 23:44:48'),
(11, 2, 'How do you make the text bold?', ' style:bold', 'font:b', 'font-weight:bold', 'font-weight:bold', '2019-09-27 23:50:40', '2019-09-27 23:50:40'),
(12, 2, 'What is cell padding?', ' Used to set space between cells', ' Used to separate cell walls from their contents.', 'Used to provide width to a cell', ' Used to separate cell walls from their contents.', '2019-09-27 23:52:12', '2019-09-27 23:52:12'),
(13, 2, 'To specify a font for your whole page add which tag ?', '< defaultfont >', ' < targetfont >', ' < basefont >', ' < basefont >', '2019-09-27 23:53:02', '2019-09-27 23:53:02'),
(14, 2, 'What attribute is used to specify number of rows?', 'Rownum', ' rn', 'Rowspan', 'Rowspan', '2019-09-27 23:54:25', '2019-09-27 23:54:25'),
(15, 2, 'To change the size of an image in HTML use what ?', 'pliers', 'height and width', 'bigger and smaller', 'height and width', '2019-09-27 23:58:27', '2019-09-27 23:58:27'),
(16, 2, 'What are meta tags used for?', 'To store information usually relevant to browsers and search engines.', ' To only store information about search engines', 'To store information about external links', 'To store information usually relevant to browsers and search engines.', '2019-09-28 00:00:15', '2019-09-28 00:00:15'),
(17, 2, ' How do you change the left margin of an element?', 'text-indent:', ' margin:', 'margin-left:', 'margin-left:', '2019-09-28 00:01:02', '2019-09-28 00:01:02'),
(18, 2, ' How do you make a list that lists its items with squares?', 'list-type: square', 'type: 2', ' list-style-type: square', ' list-style-type: square', '2019-09-28 00:01:58', '2019-09-28 00:01:58'),
(19, 2, 'For Frames in HTML, how do you specify the rest of the screen?', 'Using $', ' Using #', 'Using &', ' Using #', '2019-09-28 00:04:20', '2019-09-28 00:04:20'),
(20, 2, 'Each list item in an ordered or unordered list has which tag?', 'list tag', 'Is tag', 'li tag', 'li tag', '2019-09-28 00:06:27', '2019-09-28 00:06:27'),
(21, 3, 'How many glyphs does bootstrap include?', '369', '360', '260', '260', '2019-09-28 00:07:32', '2019-09-28 00:07:32'),
(22, 3, 'Which of the following allows an element to lock to an area on the page?', 'affix', 'alert', 'popover', 'affix', '2019-09-28 00:08:17', '2019-09-28 00:08:17'),
(23, 3, 'Which of the following occurs after fixed positioned is added to the element?', 'affix.bs.affix', 'affixed.bs.affix', 'affix-top.bs.affix', 'affixed.bs.affix', '2019-09-28 00:10:35', '2019-09-28 00:10:35'),
(24, 3, 'What indicates a closable alert box?', '.alert-danger', '.alert-dismissible', '.alert-link', '.alert-dismissible', '2019-09-28 00:11:49', '2019-09-28 00:11:49'),
(25, 3, 'Which of the following makes the button appear pressed?', '.btn-link', '.disabled', '.active', '.active', '2019-09-28 00:12:38', '2019-09-28 00:12:38'),
(26, 3, 'What changes button text to the original text?', '.button(“loading”)', '.button(“string”)', '.button(“reset”)', '.button(“reset”)', '2019-09-28 00:13:29', '2019-09-28 00:13:29'),
(27, 3, 'What adds slides to carousel?', '.carousel', '.carousel-inner', '.item', '.carousel-inner', '2019-09-28 00:14:18', '2019-09-28 00:14:18'),
(28, 3, 'The default value for an interval is __________', '5000', '4000', '1000', '5000', '2019-09-28 00:15:14', '2019-09-28 00:15:14'),
(29, 3, 'What activates the collapsible element with an option?', '.collapse(“options”)', '.collapse(“show”)', '.collapse(“”toggle)', '.collapse(“options”)', '2019-09-28 00:16:00', '2019-09-28 00:16:00'),
(30, 3, 'Which event occurs when collapsible element is fully shown?', 'show.bs.collapse', 'shown.bs.collapse', 'hidden.bs.collapse', 'shown.bs.collapse', '2019-09-28 00:16:43', '2019-09-28 00:16:43'),
(31, 4, 'Which of the following selector matches all elements of a type?', 'The Type Selector', 'The Universal Selector', 'The Descendant Selector', 'The Type Selector', '2019-09-28 00:18:14', '2019-09-28 00:18:14'),
(32, 4, 'Which of the following is a true about CSS style overriding?', 'Any rule defined in tags will override rules defined in any external style sheet file.', 'Any rule defined in external style sheet file takes lowest priority, and rules defined in this file will be applied only when above two rules are not applicable.', 'All of the above.', 'All of the above.', '2019-09-28 00:19:38', '2019-09-28 00:19:38'),
(33, 4, 'Which of the following defines a measurement in picas?', 'in', 'mm', 'pc', 'pc', '2019-09-28 00:20:38', '2019-09-28 00:20:38'),
(34, 4, 'Which of the following property is used to control the scrolling of an image in the background?', 'background-attachment', 'background', 'background-repeat', 'background-attachment', '2019-09-28 00:21:23', '2019-09-28 00:21:23'),
(35, 4, 'Which of the following property is used to underline, overline, and strikethrough text?', 'text-indent', 'text-align', 'text-decoration', 'text-decoration', '2019-09-28 00:22:14', '2019-09-28 00:22:14'),
(36, 4, 'Which of the following property is used to set the opacity of an image?', 'height', 'width', 'moz-opacity', 'moz-opacity', '2019-09-28 00:23:06', '2019-09-28 00:23:06'),
(37, 4, 'Which of the following property specifies whether a border should be solid, dashed line, double line, or one of the other possible values?', 'border-color', 'border-style', 'border-width', 'border-style', '2019-09-28 00:23:46', '2019-09-28 00:23:46'),
(38, 4, 'Which of the following property changes the style of right border?', ':border-top-style', ':border-left-style', ':border-right-style', ':border-right-style', '2019-09-28 00:25:04', '2019-09-28 00:25:04'),
(39, 4, 'Which of the following property specifies an image for the marker rather than a bullet point or number?', 'list-style-type', 'list-style-position', 'list-style-image', 'list-style-image', '2019-09-28 00:25:47', '2019-09-28 00:25:47'),
(40, 4, 'Which of the following value of cursor shows it as the \'I\' bar?', 'default', 'pointer', 'move', 'move', '2019-09-28 00:26:39', '2019-09-28 00:26:39'),
(41, 5, 'Which of the following CSS3 property is used to tell the browser what the sizing properties should be include?', 'box-sizing', 'box-model', 'box-design', 'box-sizing', '2019-09-28 00:27:37', '2019-09-28 00:27:37'),
(42, 5, 'Which of the following CSS3 property specifies where to navigate when using the arrow-down navigation key?', 'down', 'nav-down', 'arrow-down', 'arrow-down', '2019-09-28 00:28:23', '2019-09-28 00:28:23'),
(43, 5, 'Which of the following CSS3 property specifies the sequential navigation order for an element?', 'nav-index', 'nav', 'class', 'nav-index', '2019-09-28 00:29:08', '2019-09-28 00:29:08'),
(44, 5, 'Which of the following nav-left value sets it’s value to default value?', 'target-name', 'inital', 'id', 'inital', '2019-09-28 00:29:49', '2019-09-28 00:29:49'),
(45, 5, 'Which of the following CSS3 property adds space between an outline and the edge or border of an element?', 'offset', 'outline', 'outline-offset', 'outline', '2019-09-28 00:30:39', '2019-09-28 00:30:39'),
(46, 5, 'Which of the following outline-offset value sets the distance the outline is outset from the border edge?', 'length', 'distance', 'initial', 'length', '2019-09-28 00:31:47', '2019-09-28 00:31:47'),
(47, 5, 'Which of the following CSS3 property specifies whether or not an element is resizable by the user?', 'resize', 'length', 'inherit', 'length', '2019-09-28 00:32:39', '2019-09-28 00:32:39'),
(48, 5, 'Which of the following CSS3 property specifies where to navigate when using the arrow-up navigation key?', 'nav-upper', 'nav-top', 'nav-up', 'nav-up', '2019-09-28 00:33:28', '2019-09-28 00:33:28'),
(49, 5, 'Which of the following CSS3 property specifies where to navigate when using the arrow-right navigation key?', 'right', 'nav-right', 'nav-side', 'nav-side', '2019-09-28 00:34:06', '2019-09-28 00:34:06'),
(50, 5, 'Which of the following nav-right value is used to the inherits this property from its parent element?', 'auto', 'inherit', 'id', 'inherit', '2019-09-28 00:34:40', '2019-09-28 00:34:40'),
(51, 6, 'What does CSS stand for?', 'Computer Style Sheets ', 'Colorful Style Sheets', 'Cascading Style Sheets ', 'Cascading Style Sheets ', '2019-09-28 00:35:44', '2019-09-28 00:35:44'),
(52, 6, 'What does CSS stand for?', 'Computer Style Sheets ', 'Colorful Style Sheets', 'Cascading Style Sheets ', 'Cascading Style Sheets ', '2019-09-28 00:35:44', '2019-09-28 00:35:44'),
(53, 6, 'What is the correct HTML for referring to an external style sheet?', '<link rel=\"stylesheet\" type=\"text/css\" href=\"mystyle.css\"> ', '\"<stylesheet>\r\nmystyle.css\r\n</stylesheet>\"', '<style src=\"mystyle.css\">', '<link rel=\"stylesheet\" type=\"text/css\" href=\"mystyle.css\"> ', '2019-09-28 00:36:22', '2019-09-28 00:36:22'),
(54, 6, 'Where in an HTML document is the correct place to refer to an external style sheet?', 'At the end of the document', 'In the <head> section ', 'In the <body> section', 'In the <head> section ', '2019-09-28 00:37:05', '2019-09-28 00:37:05'),
(55, 6, 'Which CSS property is used to change the text color of an element?', 'fgcolor    ', 'color', 'text-color', 'color', '2019-09-28 00:38:58', '2019-09-28 00:38:58'),
(56, 6, 'How do you make each word in a text start with a capital letter?', 'text-style:capitalize ', 'You can\'t do that with CSS', 'text-transform:capitalize', 'text-transform:capitalize', '2019-09-28 00:39:52', '2019-09-28 00:39:52'),
(57, 6, 'Which property is used to change the font of an element?', 'font-weight ', 'font-style', 'font-family ', 'font-family ', '2019-09-28 00:40:31', '2019-09-28 00:40:31'),
(58, 6, 'How do you make the text bold?', 'style:bold; ', 'font-weight:bold; ', 'font:bold;', 'font-weight:bold; ', '2019-09-28 00:41:13', '2019-09-28 00:41:13'),
(59, 6, 'Which property is used to change the left margin of an element?', 'indent  ', 'padding-left', 'margin-left ', 'margin-left ', '2019-09-28 00:41:58', '2019-09-28 00:41:58'),
(60, 6, 'How do you make a list that lists its items with squares?', 'list-type: square;  ', 'list: square;', 'list-style-type: square;  ', 'list-style-type: square;  ', '2019-09-28 03:11:10', '2019-09-28 03:11:10'),
(61, 7, 'Which of the following functions of Number object would display output in exponential format?', ' toPrecision()', ' toFixed()', ' toExponential()', ' toExponential()', '2019-09-28 03:13:03', '2019-09-28 03:13:03'),
(62, 7, 'Which of the following function of String object returns the capitalized string while respecting the current locale?', 'toLocaleUpperCase()', ' toUpperCase()', 'substring()', 'toLocaleUpperCase()', '2019-09-28 03:13:51', '2019-09-28 03:13:51'),
(63, 7, 'Which of the following methods removes the last element from an array and returns that element?', ' get()', 'pop()', 'last()', 'pop()', '2019-09-28 03:14:31', '2019-09-28 03:14:31'),
(64, 7, 'What is the function of Array object that runs through each element of the array?', 'concat()', 'every()', 'forEach()', 'forEach()', '2019-09-28 03:15:10', '2019-09-28 03:15:10'),
(65, 7, 'Which of the following is the output of the below JavaScript code?\r\nfunction() {\r\n    if(true) {\r\n        var a = 5;\r\n    }\r\n    alert(a);\r\n}', '0', '5', 'null', '5', '2019-09-28 03:16:04', '2019-09-28 03:16:04'),
(66, 7, 'Which of the following statements is valid for the features of JavaScript?', ' JavaScript is a lightweight, interpreted programming language.', '  JavaScript is designed for creating network-centric applications.', 'All', 'All', '2019-09-28 03:17:00', '2019-09-28 03:17:00'),
(67, 7, 'Which of the following JavaScript code snippet would create an object?\r\nfunction() {\r\n    var a = 10;\r\n    if(a > 5) {\r\n        a = 7;\r\n    }\r\n    alert(a);\r\n}', 'var holder = new holder();', ' var holder = new Object();', '  var holder = new OBJECT()', ' var holder = new Object();', '2019-09-28 03:17:57', '2019-09-28 03:17:57'),
(68, 7, 'Select a String function that creates a string and display in a big font as if it were in a tag?', ' anchor()', ' big()', '  blink()', '  blink()', '2019-09-28 03:18:37', '2019-09-28 03:18:37'),
(69, 7, 'Which is the use of typeof operator in JavaScript?\r\nfunction() {\r\n    var a = 10;\r\n    if(a > 5) {\r\n        a = 7;\r\n    }\r\n    alert(a);\r\n}', 'The typeof is a unary operator. It should occur before the single operand, which can be of any type.', '  None', ' Both of the above', ' Both of the above', '2019-09-28 03:19:41', '2019-09-28 03:19:41'),
(70, 7, 'Which of the following functions of Number object would return a string version of the number that may change according to the browser’s locale settings?', ' toFixed()', ' toLocaleString()', 'toString()', ' toLocaleString()', '2019-09-28 03:20:31', '2019-09-28 03:20:31'),
(71, 8, 'JavaScript entities start with _______ and end with _________.', 'Semicolon, colon', 'Semicolon, Ampersand', ' Ampersand, colon', 'Semicolon, colon', '2019-09-28 03:39:41', '2019-09-28 03:39:41'),
(72, 8, ' The ______ Method acts as explicit iterator.', '.hover()', '.all()', '.toggle()', '.hover()', '2019-09-28 03:40:52', '2019-09-28 03:40:52'),
(73, 8, 'Which of the following best describes JavaScript?', 'a low-level programming language.', 'a scripting language pre-compiled in the browser.', ' a compiled scripting language.', ' a compiled scripting language.', '2019-09-28 03:41:36', '2019-09-28 03:41:36'),
(74, 8, 'Which of the following methods are array methods?', ' reverse()', 'join()', ' slice()', 'join()', '2019-09-28 03:42:23', '2019-09-28 03:42:23'),
(75, 8, ' The .each method is the more convenient form of _______ loop.', 'do while', 'for each', 'None of these', 'None of these', '2019-09-28 03:43:08', '2019-09-28 03:43:08'),
(76, 8, 'Choose the server-side JavaScript object?', ' FileUpLoad', 'Function', ' File', ' FileUpLoad', '2019-09-28 03:43:42', '2019-09-28 03:43:42'),
(77, 8, 'jquery has _______ method for inserting element before other element.', 'One', 'Two', 'Three', 'Two', '2019-09-28 03:44:40', '2019-09-28 03:44:40'),
(78, 8, ' ______method evaluates a string of JavaScript code in the context of the specified object.', 'Eval', 'ParseInt', ' ParseFloat', ' ParseFloat', '2019-09-28 03:45:19', '2019-09-28 03:45:19'),
(79, 8, '__ returns true if a variable is an array, if not false.', 'Array.isArray()', ' Array.of()', ' Array.from()', 'Array.isArray()', '2019-09-28 03:46:58', '2019-09-28 03:46:58'),
(80, 8, 'What does the <noscript> tag do?', 'Enclose text to be displayed by non-JavaScript browsers.', 'Prevents scripts on the page from executing.', 'Describes certain low-budget moves.', 'Prevents scripts on the page from executing.', '2019-09-28 03:48:46', '2019-09-28 03:48:46'),
(81, 9, 'How does JavaScript store dates in a date object?', 'The number of milliseconds since January 1st, 1970', 'The number of days since January 1st, 1900', 'The number of seconds since Netscape\'s public stock offering.', 'The number of days since January 1st, 1900', '2019-09-28 03:49:32', '2019-09-28 03:49:32'),
(82, 9, ' What is the output of this code typeof null', 'Number', 'String', 'Object', 'String', '2019-09-28 03:50:07', '2019-09-28 03:50:07'),
(83, 9, 'Ques 3 : <script type=\"text/javascript\">\r\nvar s = \"9123456 or 80000?\";\r\nvar pattern = /\\d{4}/;\r\nvar output = s.match(pattern);\r\ndocument.write(output);\r\n</script>', '91234', ' 9123', '80000', '91234', '2019-09-28 03:51:23', '2019-09-28 03:51:23'),
(84, 9, 'How do you fetch the first span on the page, which has the class \"green\"', '$(\'span, .green, :first\')', '$(\'first .green span\')', '$(\'span.green:first\')', '$(\'span.green:first\')', '2019-09-28 03:54:14', '2019-09-28 03:54:14'),
(85, 9, 'Which of the following jQuery method gets a set of elements containing the unique previous siblings of each of the matched set of elements?', 'siblings( selector )', 'prev( selector)', 'parents( selector )', 'siblings( selector )', '2019-09-28 03:55:03', '2019-09-28 03:55:03'),
(86, 9, 'In JavaScript, we can keep a reference to the context outside a function by assigning it to a variable: var self = this. In CoffeeScript, we use:', 'self = this printScope -> console.log self', 'printScope => console.log @', 'printScope => console.log this', 'printScope => console.log @', '2019-09-28 03:56:31', '2019-09-28 03:56:31'),
(87, 9, 'What does the function $(\".selector\") return?', 'An array.', 'A node list.', 'A new jQuery object.', 'An array.', '2019-09-28 03:57:48', '2019-09-28 03:57:48'),
(88, 9, '$(\'#masterList\').find(\'li\').width(500).addClass(\'selected\');\r\nThe phenomena occurring in the above code is called?', 'Chaining', 'Event bubbling', 'AJAX', 'Event bubbling', '2019-09-28 03:59:01', '2019-09-28 03:59:01'),
(89, 9, 'Load remote data using HTTP GET', '$.get\r\n(url,data,callback,\r\ntype)', '$.ajax(options)', '$.post\r\n(url,data,callback,\r\ntype)', '$.get\r\n(url,data,callback,\r\ntype)', '2019-09-28 03:59:41', '2019-09-28 03:59:41'),
(90, 9, '<script language=\"javascript\">\r\nfunction x()\r\n{\r\ndocument.write(2+5+\"8\");\r\n}\r\n</script>', '258', 'Error', '78', '258', '2019-09-28 04:00:18', '2019-09-28 04:00:18'),
(91, 10, 'Which Program Copies The Databases From One Server To Another?', 'Mysqlcopydb', 'Mysqldbcopy', 'Mysqlflushdb', 'Mysqldbcopy', '2019-09-29 20:49:12', '2019-09-29 20:49:12'),
(92, 10, 'How Much Character Are Allowed To Create Database Name?', '64', '40', '70', '64', '2019-09-29 20:51:06', '2019-09-29 20:51:06'),
(93, 10, 'To Use \'mysqldbcopy\' Which Privileges Are Required On The Source Server?', 'CREATE', 'INSERT', 'SELECT', 'SELECT', '2019-09-29 20:52:54', '2019-09-29 20:52:54'),
(94, 10, 'The Function \'fetchrow_hashref()\' Returns Reference To Hash Of Row Values Keyed By ______________', 'Row Name', 'Column Name', 'Table Name', 'Column Name', '2019-09-29 20:53:52', '2019-09-29 20:53:52'),
(95, 10, 'Which Function Returns Reference To Array Of Row Values?', 'Fetch()', 'Fetchrow_array()', 'Fetchrow_arrayref()', 'Fetchrow_arrayref()', '2019-09-29 20:55:58', '2019-09-29 20:55:58'),
(96, 10, 'Which Is The Log In Which Data Changes Received From A Replication Master Server Are Written?', 'Relay Log', 'General Query Log', 'Binary Log', 'Relay Log', '2019-09-29 20:56:45', '2019-09-29 20:56:45'),
(97, 10, 'Character Data Can Be Stored As', 'Either Fixed Or Variable Length String', 'Fixed Length String', 'Variable Length String', 'Either Fixed Or Variable Length String', '2019-09-29 20:57:33', '2019-09-29 20:57:33'),
(98, 10, 'Which Declaration Doesn\'t Use The Same Number Of Bytes And Consumption Of Bytes Depends On The Input Data?', 'Varchar', 'Char', 'Both Varchar And Char', 'Varchar', '2019-09-29 20:58:38', '2019-09-29 20:58:38'),
(99, 10, 'The Maximum Length Of The Char Columns Is', '65, 535 Bytes', '256 Bytes', '255 Bytes', '255 Bytes', '2019-09-29 21:00:11', '2019-09-29 21:00:11'),
(100, 10, 'The Maximum Length Of The Varchar Columns Is', 'Upto 65, 535 Bytes', 'Upto 256 Bytes', 'Upto 65, 567 Bytes', 'Upto 65, 535 Bytes', '2019-09-29 21:01:30', '2019-09-29 21:01:30'),
(101, 11, 'Commands Passed To The MySQL Daemon Are Written In', 'English', 'Swedish', 'The Structured Query Language', 'The Structured Query Language', '2019-09-29 21:04:31', '2019-09-29 21:04:31'),
(102, 11, 'Which Of These Commands Will Delete A Table Called XXX If You Have Appropriate Authority:', 'DROP TABLE XXX', 'DELETE XXX WHERE Confirm = \"YES\"', 'DROP XXX', 'DROP TABLE XXX', '2019-09-29 21:05:44', '2019-09-29 21:05:44'),
(103, 11, 'Which Of These Commands Will Delete A Table Called XXX If You Have Appropriate Authority:', 'DROP TABLE XXX', 'DELETE XXX WHERE Confirm = \"YES\"', 'DROP XXX', 'DROP TABLE XXX', '2019-09-29 21:05:45', '2019-09-29 21:05:45'),
(104, 11, 'MySQL Runs On Which Operating Systems?', 'Unix And Linux Only', 'Unix, Linux, Windows And Others', 'Linux And Mac OS-X Only', 'Unix, Linux, Windows And Others', '2019-09-29 21:06:51', '2019-09-29 21:06:51'),
(105, 11, 'Which Of The Following Is NOT Supported By MySQL', 'Temporary (Hash) Tables', 'Table Joining', 'Stored Procedures', 'Stored Procedures', '2019-09-29 21:07:55', '2019-09-29 21:07:55'),
(106, 11, 'One Of The Early Proponents Of Relational Database Who Laid Down Many Of The Principles We Use To This Day Was:', 'Xigang Koi', 'Edgar Codd', 'William Crawford', 'Edgar Codd', '2019-09-29 21:08:49', '2019-09-29 21:08:49'),
(107, 11, 'Which Of These Is A Valid Call To A Function (watch The Spaces Carefully!)', 'CONCAT( A , B )', 'CONCAT( \"A\" , \"B\" )', 'CONCAT ( \"A\" , \"B\" )', 'CONCAT( \"A\" , \"B\" )', '2019-09-29 21:10:40', '2019-09-29 21:10:40'),
(108, 11, 'If You Want To Undo A GRANT, You Should Use', 'REVOKE', 'UNDO', 'UNGRANT', 'REVOKE', '2019-09-29 21:11:33', '2019-09-29 21:11:33'),
(109, 11, 'How Many Distinct, Different Values Can You Hold In An Enum Field?', '255', '7', '65535', '65535', '2019-09-29 21:12:13', '2019-09-29 21:12:13'),
(110, 11, 'Which Of The Following Is NOT Available In MySQL:', 'FETCH', 'LIKE', 'JOIN', 'FETCH', '2019-09-29 21:13:16', '2019-09-29 21:13:16'),
(112, 12, 'How many of the following use NULL to indicate failure?\r\n\r\nmysql_init(), mysql_real_connect()', '0', '1', '2', '2', '2019-09-29 21:17:33', '2019-09-29 21:17:33'),
(113, 12, 'How many of the following does not return a value?\r\n\r\n	mysql_close(), mysql_init, mysql_real_connect', '0', '1', '2', '1', '2019-09-29 21:18:12', '2019-09-29 21:18:12'),
(114, 12, 'Which of these returns a string containing an error message?', 'mysql_error()', 'mysql_errno()', 'mysql_sqlstate()', 'mysql_error()', '2019-09-29 21:19:02', '2019-09-29 21:19:02'),
(115, 12, 'Which of the following returns a MySQL-specific numeric code?', 'mysql_error()', 'mysql_errno()', 'mysql_sqlstate()', 'mysql_errno()', '2019-09-29 21:19:43', '2019-09-29 21:19:43'),
(116, 12, 'Which of the following returns an SQLSTATE code?', 'mysql_error()', 'mysql_errno()', 'mysql_sqlstate()', 'mysql_sqlstate()', '2019-09-29 21:20:41', '2019-09-29 21:20:41'),
(117, 12, 'The argument to the function mysql_error() is _______________', 'integer', 'structure', 'pointer', 'pointer', '2019-09-29 21:21:33', '2019-09-29 21:21:33'),
(118, 12, 'What does mysql_real_connect() return if it fails?', 'float', 'structure', 'NULL', 'NULL', '2019-09-29 21:22:39', '2019-09-29 21:22:39'),
(119, 12, 'The –protocol value ‘TCP’ runs on which operating systems?', 'unix only', 'windows only', 'all', 'all', '2019-09-29 21:23:59', '2019-09-29 21:23:59'),
(120, 12, 'What type of join is needed when you wish to include rows that do not have matching values?', 'Equi-join', 'Natural join', 'Outer join', 'Outer join', '2019-09-29 21:27:07', '2019-09-29 21:27:07'),
(121, 12, 'Which of the following statements is true concerning routines and triggers?', 'Both consist of procedural code.', 'Both have to be called to operate.', 'Both have to be called to operate.', 'Both consist of procedural code.', '2019-09-29 21:28:32', '2019-09-29 21:28:32'),
(122, 15, 'Glyphicons Is Mainly Used For?', 'Slideshow', 'Graphic Images', 'Providing Different Icons', 'Providing Different Icons', '2019-09-29 21:32:06', '2019-09-29 21:32:06'),
(123, 15, 'Which Of The Following Is Correct About Bootstrap Jumbotron?', 'This Component Can Optionally Increase The Size Of Headings And Add A Lot Of Margin For Landing Page Content.', 'To Use The Jumbotron: Create A Container <div> With The Class Of .jumbotron.', 'Both A And B', 'Both A And B', '2019-09-29 21:33:09', '2019-09-29 21:33:09'),
(124, 15, 'Bootstrap Is Developed By', 'James Gosling', 'Mark Otto And Jacob Thornton', 'Mark Jukervich', 'Mark Otto And Jacob Thornton', '2019-09-29 21:33:58', '2019-09-29 21:33:58'),
(125, 15, 'Which Class Indicates A Dropdown Menu?', '.dropdown', '.select', '.dropdown-list', '.dropdown', '2019-09-29 21:35:03', '2019-09-29 21:35:03'),
(126, 15, 'A Standard Navigation Tab Is Created With:', '<ul Class=\"navigation-tabs\">', '<ul Class=\"nav Tabs\">', '<ul Class=\"navnav-tabs\">', '<ul Class=\"nav Tabs\">', '2019-09-29 21:38:09', '2019-09-29 21:38:09'),
(127, 15, 'Bootstrap\'s Grid System Allows Up To', '6 Columns Across The Page', '8 Columns Across The Page', '12 Columns Across The Page', '12 Columns Across The Page', '2019-09-29 21:39:14', '2019-09-29 21:39:14'),
(128, 15, 'Default Size Of H5 Bootstrap Heading', '14px', '16px', '18px', '14px', '2019-09-29 21:40:00', '2019-09-29 21:40:00'),
(129, 15, 'Medium Devices Are Defined As Having A Screen Width From', '992 Pixels To 1199 Pixels', '768 Pixels To 991 Pixels', '512 Pixels To 2048 Pixels', '992 Pixels To 1199 Pixels', '2019-09-29 21:40:52', '2019-09-29 21:40:52'),
(130, 15, 'Glyphicons Used For', 'Using Different Icons Like Badge', 'Using Slideshow', 'Using Animation', 'Using Different Icons Like Badge', '2019-09-29 21:41:39', '2019-09-29 21:41:39'),
(131, 15, 'Default Size Of H3 Bootstrap Heading', '18px', '24px', '26px', '24px', '2019-09-29 21:42:29', '2019-09-29 21:42:29'),
(132, 14, 'Which of the following is correct about Bootstrap Media Query?', 'Media queries have two parts, a device specification and then a size rule.', 'Media Queries in Bootstrap allow you to move, show and hide content based on the viewport size.', 'Both of the above.', 'Both of the above.', '2019-09-29 21:45:36', '2019-09-29 21:45:36'),
(133, 14, 'Which of the following class styles a table as a nice basic table with just some light padding and horizontal dividers?', '.table', '.table-striped', '.table-bordered', '.table', '2019-09-29 21:46:22', '2019-09-29 21:46:22'),
(134, 14, 'Which of the following bootstrap style of button deemphasize a button by making it look like a link while maintaining button behavior?', '.btn-warning', '.btn-danger', '.btn-link', '.btn-link', '2019-09-29 21:47:06', '2019-09-29 21:47:06'),
(135, 14, 'Which of the following bootstrap style can be applied to button group instead of resizing each button?', '.btn-group', '.btn-toolbar', '.btn-group-lg', '.btn-group-lg', '2019-09-29 21:47:47', '2019-09-29 21:47:47'),
(136, 14, 'Which of the following bootstrap style is used to add button to .navbar?', '.navbar-.btn', '..btn', '.form-.btn', '.navbar-.btn', '2019-09-29 21:48:52', '2019-09-29 21:48:52'),
(137, 14, 'Which of the following bootstrap style is to be used if you want the .navbar fixed to the top of the page?', '.navbar-top', '.navbar-fixed', '.navbar-fixed-top', '.navbar-fixed-top', '2019-09-29 21:49:41', '2019-09-29 21:49:41'),
(138, 14, 'Which of the following bootstrap styles can be used to create a striped progress bar?', '.progress-bar-success, .progress-bar-info, .progress-bar-warning, .progress-bar-danger', '.success, .info, .warning, .danger', '.progress-striped.', '.progress-striped.', '2019-09-29 21:50:17', '2019-09-29 21:50:17'),
(139, 14, 'Which of the following is correct about bootstrap wells?', 'You can change the size of well using the optional classes such as, well-lg or well-sm.', 'well-lg or well-sm classes are used in conjunction with .well class.', 'Both of the above.', 'Both of the above.', '2019-09-29 21:51:03', '2019-09-29 21:51:03'),
(140, 14, 'Which of the following is correct about dropdown Plugin?', 'You can toggle the dropdown plugin\'s hidden content via data attributes.', 'You can toggle the dropdown plugin\'s hidden content via javascript.', 'Both of the above.', 'Both of the above.', '2019-09-29 21:52:18', '2019-09-29 21:52:18'),
(141, 14, 'Which of the following is correct about data-placement Data attribute of Popover Plugin?', 'Applies a CSS fade transition to the popover.', 'Inserts HTML into the popover. If false, jQuery\'s text method will be used to insert content into the dom.', 'Specifies how to position the popover (i.e., top|bottom|left|right|auto).', 'Specifies how to position the popover (i.e., top|bottom|left|right|auto).', '2019-09-29 21:53:12', '2019-09-29 21:53:12'),
(142, 13, 'Bootstrap\'s grid system allows up to _____ columns across the page', '12', '13', '11', '12', '2019-09-29 22:44:17', '2019-09-29 22:44:17'),
(143, 13, 'How many Container class are there in Bootstrap?', '1', '2', '4', '2', '2019-09-29 22:45:31', '2019-09-29 22:45:31'),
(144, 13, 'The __________ class makes a table more compact by cutting cell padding in half.', '.table-striped', '.table-condensed', '.table-responsive', '.table-condensed', '2019-09-29 22:46:28', '2019-09-29 22:46:28'),
(145, 13, 'The Bootstrap grid system has four classes which defines screen size:', 'x, sm, md, lg', 'xs, sml, mid, lg', 'xs, sm, md, lg', 'x, sm, md, lg', '2019-09-29 22:48:02', '2019-09-29 22:48:02'),
(146, 13, 'Which class is used to add rounded corners to an image?', '.img-rounded', '.img-circle', 'Both of the above', '.img-rounded', '2019-09-29 22:49:32', '2019-09-29 22:49:32'),
(147, 13, 'The bootstrap class md means for', 'phones', 'tablets', 'desktops', 'desktops', '2019-09-29 22:52:31', '2019-09-29 22:52:31'),
(148, 13, 'Which of the following bootstrap style makes a set of buttons appear vertically stacked rather than horizontally?', '.btn-group', '.btn-toolbar', '.btn-group-lg', '.btn-group-lg', '2019-09-29 23:54:34', '2019-09-29 23:54:34'),
(149, 13, 'Which of the following bootstrap styles can be used to create a Animated progress bar?', '.progress-active', '.active', '.progress-striped', '.active', '2019-09-29 23:58:33', '2019-09-29 23:58:33'),
(150, 13, 'Which of the following is correct about data-title Data attribute of Tooltip Plugin?', 'Sets the default title value if the title attribute isn\'t present.', 'Defines how the tooltip is triggered.', 'Delays showing and hiding the tooltip in ms.', 'Sets the default title value if the title attribute isn\'t present.', '2019-09-30 00:01:57', '2019-09-30 00:01:57'),
(151, 13, 'Which of the following bootstrap style can be used to create a pager on a page?', '.pager', '.pagination', '.nav', '.pager', '2019-09-30 00:04:03', '2019-09-30 00:04:03'),
(152, 16, 'Trace the odd data type?', 'Floats', 'Integers', 'Doubles', 'Integers', '2019-09-30 00:05:26', '2019-09-30 00:05:26'),
(153, 16, 'Which datatypes are treated as arrays?', 'Booleans', 'Float', 'String', 'String', '2019-09-30 00:06:37', '2019-09-30 00:06:37'),
(154, 16, 'The left association operator % is used in PHP for?', 'percentage', 'modulus', 'division', 'modulus', '2019-09-30 00:07:35', '2019-09-30 00:07:35'),
(155, 16, 'What function used to print statement in PHP?', 'echo();', 'printf', '\" \"', 'echo();', '2019-09-30 00:12:07', '2019-09-30 00:12:07'),
(156, 16, 'All variables in PHP start with which symbol?', '!', '&', '$', '$', '2019-09-30 00:12:55', '2019-09-30 00:12:55'),
(157, 16, 'Is php can support multiple inheritance?', 'No', 'Yes', 'Both', 'No', '2019-09-30 00:13:29', '2019-09-30 00:13:29'),
(158, 16, 'Which of following are compound data type?', 'Array', 'Array &  Objects', 'Objects', 'Array &  Objects', '2019-09-30 00:15:10', '2019-09-30 00:15:10'),
(159, 16, 'Trace the function that does continue the script execution even if the file inclusion fails', 'include ()', 'require ()', 'None of the above', 'include ()', '2019-09-30 00:15:54', '2019-09-30 00:15:54'),
(160, 16, 'Identify the variable scope that is not supported by PHP ?', 'Local variables', 'Global variables', 'Hidden variables', 'Hidden variables', '2019-09-30 00:17:55', '2019-09-30 00:17:55'),
(161, 16, 'Which of the following are valid float values?', '4.5678', '4.0', 'All of above', 'All of above', '2019-09-30 00:18:40', '2019-09-30 00:18:40'),
(163, 17, 'In PHP, during error handling include() generates.......', 'a fatal error, and the script will stop', 'a warning, but the script will continue execution', 'None of the above', 'a warning, but the script will continue execution', '2019-09-30 00:26:31', '2019-09-30 00:26:31'),
(164, 17, 'In PHP, which of the following function is used to insert content of one php file into another php file before server executes it .', 'include[]', 'include()', '#include()', 'include()', '2019-09-30 00:28:05', '2019-09-30 00:28:05'),
(165, 17, 'PHP is', 'client side script language', 'server side script language', 'event-driven language', 'server side script language', '2019-09-30 00:28:49', '2019-09-30 00:28:49'),
(166, 17, 'Which extension is not a correct PHP file extension?', '.phpRobert', '.php3', '.phtml', '.phpRobert', '2019-09-30 00:29:47', '2019-09-30 00:29:47'),
(167, 17, 'What is the output of the following script? <?php $haystack = \'abcda\'; $needle = \'a\'; $pos = strpos($haystack, $needle); if (!$pos) { echo \"miss\"; } else { echo \"hit \" . $pos; } ?>', 'hit 4', 'hit 5', 'miss', 'miss', '2019-09-30 00:32:38', '2019-09-30 00:32:38'),
(168, 17, 'Which of the following statements best describes the @ operator when used in PHP code?', 'Error messages and warnings are not displayed, regardless of the error reporting setting.', 'Error messages and warnings are displayed, even if error reporting is disabled.', 'The system administrator will be notified if an error occurs.', 'Error messages and warnings are not displayed, regardless of the error reporting setting.', '2019-09-30 00:35:05', '2019-09-30 00:35:05'),
(169, 17, 'Consider the following PHP code: <?php $myArray = array(10, 20, 30, 40); ?> What is the simplest way to return the values 20 and 30 in a new array without modifying $myArray?', 'array_slice($myArray, 10, 20);', 'array_slice($myArray, 1, 2);', 'array_slice($myArray, 2, 1);', 'array_slice($myArray, 1, 2);', '2019-09-30 00:36:22', '2019-09-30 00:36:22'),
(170, 17, 'A value that has no defined value is expressed in PHP with the following keyword:', 'None', 'undef', 'null', 'null', '2019-09-30 00:37:04', '2019-09-30 00:37:04'),
(172, 17, 'What is the default execution time set in set_time_limit()?', '30 secs', '40 secs', '50 secs', '30 secs', '2019-09-30 00:38:58', '2019-09-30 00:38:58'),
(173, 17, 'Which of the following differences are valid between php4 and php5?', 'Both a and b.', 'Built-in native support for SQLite.', 'Support for inheritance.', 'Both a and b.', '2019-09-30 00:48:57', '2019-09-30 00:48:57'),
(174, 18, 'Which of the following is NOT a magic predefined constant?', '__FILE__', '__CLASS__', '__DATE__', '__DATE__', '2019-09-30 00:52:40', '2019-09-30 00:52:40'),
(175, 18, '-------- function in php returns a list of response headers send(or ready to send).', 'headers_list()', 'header()', 'header_send()', 'headers_list()', '2019-09-30 00:54:39', '2019-09-30 00:54:39'),
(176, 18, 'What will be printed\r\nif (null === false) {\r\n  echo \'true\';\r\n} else {\r\n  echo \'false\';\r\n}', 'true', 'false', 'there is a syntax error', 'false', '2019-09-30 00:55:55', '2019-09-30 00:55:55'),
(177, 18, 'What joomla in php?', 'An open source CMS.', 'Set of library enriched with functions.', 'Framework for designing dynamic pages.', 'An open source CMS.', '2019-09-30 00:56:58', '2019-09-30 00:56:58'),
(178, 18, 'How can I create php array in a html<form>?', '< input =\"MyArray[]\" />', '< input name= MyArray[]/>', '< input MyArray[] />', '< input name= MyArray[]/>', '2019-09-30 00:59:15', '2019-09-30 00:59:15'),
(179, 18, 'What will be displayed in a browser when the following PHP code is executed:\r\n<?php\r\n   for ($counter = 20; $counter < 10; $counter++){\r\n       echo \"Hello Rohan\";\r\n   }\r\n   echo \"Counter is: $counter\";\r\n?>', 'Hello Rohan Counter is: 22', 'Hello Rohan Hello Rohan Counter is: 22', 'Counter is: 20', 'Counter is: 20', '2019-09-30 01:00:26', '2019-09-30 01:00:26'),
(180, 18, 'What will be displayed in a browser when the following PHP code is executed:\r\n<?php\r\n   function changeValue(&$y) {\r\n       $y = $y + 5;\r\n   }\r\n   $myNumber = 8;\r\n   changeValue($myNumber);\r\n   echo $myNumber;\r\n?>', '12', '13', 'None of the above', 'None of the above', '2019-09-30 01:01:50', '2019-09-30 01:01:50'),
(181, 18, 'The difference between include() and require()', 'is include() produced a Fatal Error while require results in a Warning', 'both are same in every aspects', 'are different how they handle failure', 'are different how they handle failure', '2019-09-30 01:05:38', '2019-09-30 01:05:38'),
(182, 18, 'The function setcookie( ) is used to', 'Declare cookie variables', 'Store data in cookie variable', 'Enable or disable cookie support', 'Store data in cookie variable', '2019-09-30 01:07:04', '2019-09-30 01:07:04'),
(183, 18, 'To work with remote files in PHP you need to enable', 'allow_url_fopen', 'allow_remote_files', 'none of above', 'allow_url_fopen', '2019-09-30 01:08:24', '2019-09-30 01:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attemptedquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unattemptedquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalcorrectanswer` int(11) NOT NULL,
  `totalwronganswer` int(11) NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `performance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorylevel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `attemptedquestion`, `unattemptedquestion`, `totalcorrectanswer`, `totalwronganswer`, `result`, `performance`, `categorylevel_id`, `created_at`, `updated_at`) VALUES
(10, 2, '1', '9', 1, 0, 'Fail', 'Bad', 1, '2019-10-02 03:58:59', '2019-10-02 03:58:59'),
(19, 8, '10', '0', 9, 1, 'Pass', 'Better', 1, '2019-10-02 07:39:25', '2019-10-02 07:39:25'),
(26, 2, '10', '0', 2, 8, 'Fail', 'Bad', 2, '2019-10-03 00:03:26', '2019-10-03 00:03:26'),
(27, 2, '10', '0', 2, 8, 'Fail', 'Bad', 2, '2019-10-03 00:03:27', '2019-10-03 00:03:27'),
(28, 2, '10', '0', 2, 8, 'Fail', 'Bad', 2, '2019-10-03 00:03:28', '2019-10-03 00:03:28'),
(29, 2, '10', '0', 2, 8, 'Fail', 'Bad', 2, '2019-10-03 00:03:28', '2019-10-03 00:03:28'),
(30, 2, '10', '0', 6, 4, 'Pass', 'Good', 1, '2019-10-03 00:14:39', '2019-10-03 00:14:39'),
(31, 2, '10', '0', 6, 4, 'Pass', 'Good', 1, '2019-10-03 00:14:40', '2019-10-03 00:14:40'),
(32, 2, '1', '9', 1, 0, 'Fail', 'Bad', 1, '2019-10-03 00:19:14', '2019-10-03 00:19:14'),
(33, 2, '1', '9', 1, 0, 'Fail', 'Bad', 1, '2019-10-03 00:19:16', '2019-10-03 00:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2019-09-30 00:01:36', '2019-09-30 00:01:36'),
(2, 'user', 'web', '2019-09-30 00:01:36', '2019-09-30 00:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$XvlmraV1rLD0sXhaQlXcTeXfqJiRaOcr8hnzVIvdu3e7TvggSPT4S', NULL, '2019-09-30 00:35:15', '2019-09-30 00:35:15'),
(2, 'mgmg', 'mgmg@gmail.com', NULL, '$2y$10$Hak7qYknDvzzPo5F3./mc./kfYNxRHTWreopwDZ83Exx9w5ohSMgi', NULL, '2019-09-30 00:35:46', '2019-09-30 00:35:46'),
(8, 'Bo Bo', 'bogyi@gmail.com', NULL, '$2y$10$IsJORFTYbQOqmtLGqb0HW..0//b1LPAKnWqXXePH7STmzDByf01FC', NULL, '2019-10-02 07:38:12', '2019-10-02 07:38:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_level`
--
ALTER TABLE `category_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_level`
--
ALTER TABLE `category_level`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
