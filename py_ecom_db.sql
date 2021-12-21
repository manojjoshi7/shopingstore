-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2021 at 02:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `py_ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add customer', 7, 'add_customer'),
(26, 'Can change customer', 7, 'change_customer'),
(27, 'Can delete customer', 7, 'delete_customer'),
(28, 'Can view customer', 7, 'view_customer'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add order', 9, 'add_order'),
(34, 'Can change order', 9, 'change_order'),
(35, 'Can delete order', 9, 'delete_order'),
(36, 'Can view order', 9, 'view_order'),
(37, 'Can add employee', 10, 'add_employee'),
(38, 'Can change employee', 10, 'change_employee'),
(39, 'Can delete employee', 10, 'delete_employee'),
(40, 'Can view employee', 10, 'view_employee'),
(41, 'Can add product image', 11, 'add_productimage'),
(42, 'Can change product image', 11, 'change_productimage'),
(43, 'Can delete product image', 11, 'delete_productimage'),
(44, 'Can view product image', 11, 'view_productimage'),
(45, 'Can add multiple image', 12, 'add_multipleimage'),
(46, 'Can change multiple image', 12, 'change_multipleimage'),
(47, 'Can delete multiple image', 12, 'delete_multipleimage'),
(48, 'Can view multiple image', 12, 'view_multipleimage');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$260000$Mftcdc9pu6pXfACkyXq5cp$dScjkzy6AUjNVRgiq02xEpMC3so1Vn/3lzLY6bqj67M=', '2021-10-14 03:54:27.091354', 1, 'manoj', '', '', 'mjoshi@bamko.net', 1, 1, '2021-10-11 12:33:41.220190');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(3, '2021-10-21 10:45:09.084364', '24', 'media/wallpaperflare.com_wallpaper.jpg', 1, '[{\"added\": {}}]', 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'crudexample', 'employee'),
(12, 'multiple_upload', 'multipleimage'),
(6, 'sessions', 'session'),
(7, 'website', 'customer'),
(9, 'website', 'order'),
(8, 'website', 'product'),
(11, 'website', 'productimage');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-10-11 12:01:09.529023'),
(2, 'auth', '0001_initial', '2021-10-11 12:01:10.283110'),
(3, 'admin', '0001_initial', '2021-10-11 12:01:10.396841'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-10-11 12:01:10.408834'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-11 12:01:10.419829'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-10-11 12:01:10.497475'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-10-11 12:01:10.519461'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-10-11 12:01:10.541449'),
(9, 'auth', '0004_alter_user_username_opts', '2021-10-11 12:01:10.555998'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-10-11 12:01:10.613821'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-10-11 12:01:10.617820'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-11 12:01:10.628813'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-10-11 12:01:10.648801'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-11 12:01:10.673787'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-10-11 12:01:10.700865'),
(16, 'auth', '0011_update_proxy_permissions', '2021-10-11 12:01:10.712860'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-11 12:01:10.735847'),
(18, 'crudexample', '0001_initial', '2021-10-11 12:01:10.766828'),
(19, 'sessions', '0001_initial', '2021-10-11 12:01:10.809829'),
(20, 'website', '0001_initial', '2021-10-11 12:01:11.099889'),
(21, 'website', '0002_order_status', '2021-10-11 12:01:11.137857'),
(22, 'website', '0003_alter_product_image', '2021-10-11 12:01:11.146131'),
(23, 'crudexample', '0002_alter_employee_eid', '2021-10-13 11:57:33.997623'),
(24, 'crudexample', '0003_alter_employee_eid', '2021-10-18 11:56:55.143917'),
(25, 'website', '0004_productimage', '2021-10-18 11:56:55.250828'),
(26, 'website', '0005_delete_productimage', '2021-10-18 12:09:01.481522'),
(27, 'multiple_upload', '0001_initial', '2021-10-19 05:58:53.535619'),
(28, 'multiple_upload', '0002_alter_multipleimage_images', '2021-10-21 06:50:21.424022'),
(29, 'multiple_upload', '0003_alter_multipleimage_images', '2021-10-21 10:38:54.329712');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('al92nd1tcpkpicrw1uj1x29joy3su6ab', '.eJxVjMsOgjAQRf-la9NMKYXi0r3fQKbzENS0CYWV8d-VhIVu7znnvsyI2zqNW5VlnNmcjTen3y0hPSTvgO-Yb8VSyesyJ7sr9qDVXgvL83K4fwcT1ulbNz5E37kovulaoOCCAhOqJgUBh0yqlKAnliEOGmMMQfqGW-87Rgfm_QHl_jgz:1maaZY:DRki6VXB9WtOUzxjq2VYKJPjKKo7xAS4YZgrA1nbOTc', '2021-10-27 09:29:16.005737'),
('ojected19ey88x2xihtmhzzkofafms9x', '.eJxVjMsOgjAQRf-la9NMKYXi0r3fQKbzENS0CYWV8d-VhIVu7znnvsyI2zqNW5VlnNmcjTen3y0hPSTvgO-Yb8VSyesyJ7sr9qDVXgvL83K4fwcT1ulbNz5E37kovulaoOCCAhOqJgUBh0yqlKAnliEOGmMMQfqGW-87Rgfm_QHl_jgz:1marp5:9BL4KPNCAbyU2Oxb2juXdWD88HuOZNTJtAxQcNvMUDo', '2021-10-28 03:54:27.098350'),
('sosctv95nshsig2tryuacv9hsl7qqb67', '.eJxVjMsOgjAQRf-la9NMKYXi0r3fQKbzENS0CYWV8d-VhIVu7znnvsyI2zqNW5VlnNmcjTen3y0hPSTvgO-Yb8VSyesyJ7sr9qDVXgvL83K4fwcT1ulbNz5E37kovulaoOCCAhOqJgUBh0yqlKAnliEOGmMMQfqGW-87Rgfm_QHl_jgz:1mZuba:bzZpfqd26ymKIr8PaP0lI1yFo8F0U-mBZ2i6ehKCAIc', '2021-10-25 12:40:34.890713');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `ename` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `econtact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `eid`, `ename`, `email`, `econtact`) VALUES
(1, 'bam20239', 'manoj joshi', 'mjoshi@bmako.net', 'test'),
(2, 'test', 'etst', 'dd@we.com', 'dsdsd'),
(3, 'test', 'etst', 'dd@we.com', 'dsdsd'),
(4, 'test', 'fgty', 'dd@we.com', 'sdsdsd'),
(5, 'sdsd', 'sdsds', 'dd@we.com', 'sdsdsd'),
(6, 'demo123', 'demo', 'dd@we.com', 'sdsdsd'),
(17, 'wyewe', 'sdsd', 'sdsd@we.cvom', 'sdsd'),
(18, 'hjyuio', 'sdsdjkjsd', 'hgy@we.com', 'sdsdsd'),
(19, 'dfdf', 'dfdf', 'mjki@we.coms', 'sdsdsd'),
(20, 'sdsd', 'dfdf', 'dd@we.com', 'dfdfdf'),
(21, 'asas', 'sdsd', 'as@we.com', 'dsdsdsd'),
(22, 'sdsd', 'sdsd', 'sd@we.com', 'sdsdsd');

-- --------------------------------------------------------

--
-- Table structure for table `multiple_upload_multipleimage`
--

CREATE TABLE `multiple_upload_multipleimage` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `multiple_upload_multipleimage`
--

INSERT INTO `multiple_upload_multipleimage` (`id`, `images`) VALUES
(1, 'media/39658.jpg'),
(2, 'media/39660.jpg'),
(3, 'media/39672.jpg'),
(4, 'media/39676.jpg'),
(5, 'media/39679.jpg'),
(6, 'media/155723.jpg'),
(7, 'media/404445.jpg'),
(8, 'media/404497.jpg'),
(9, 'media/404716.jpg'),
(10, 'media/eight.jpg'),
(11, 'media/five.jpg'),
(12, 'media/four.jpg'),
(13, 'media/one.jpg'),
(14, 'media/seven.jpg'),
(15, 'media/six.jpg'),
(16, 'media/three.jpg'),
(17, 'media/two.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `website_customer`
--

CREATE TABLE `website_customer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `website_order`
--

CREATE TABLE `website_order` (
  `id` bigint(20) NOT NULL,
  `date_orderded` datetime(6) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `website_product`
--

CREATE TABLE `website_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_product`
--

INSERT INTO `website_product` (`id`, `name`, `image`, `description`) VALUES
(1, 'Lorem Ipsum', 'static/productimg/one.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(2, 'Lorem Ipsum', 'static/productimg/two.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable'),
(3, 'Lorem Ipsum', 'static/productimg/three.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(4, 'Lorem Ipsum', 'static/productimg/four.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable'),
(5, 'Lorem Ipsum', 'static/productimg/five.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(6, 'Lorem Ipsum', 'static/productimg/six.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable'),
(7, 'Lorem Ipsum', 'static/productimg/seven.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(8, 'Lorem Ipsum', 'static/productimg/eight.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable'),
(9, 'testImage', 'static/productimg/two_uJxv6u1.jpg', 'asasas'),
(10, 'it\'s test', 'static/productimg/two_e0CQwyQ.jpg', 'sdsdsd'),
(11, 'sdsdsd', 'static/productimg/two_fcbehFn.jpg', 'sdsd'),
(12, 'sjdhsjd', 'static/productimg/two_ScPFzJt.jpg', 'sdsdsdfgfgfgfg'),
(13, 'sdsdsdsfdsfdf', 'static/productimg/two_WnILOVH.jpg', 'dfdfdfdfdfdf'),
(14, 'dfdfdf', 'static/productimg/two_zimILFu.jpg', 'dfdfdffghghgh'),
(15, 'dfgfghfhgfjhgfdhdfh', 'static/productimg/two_ndwVLSE.jpg', 'dsfdffghfhgfhgfjhgjhg'),
(16, 'sdsdsd', 'static/productimg/two_JHUAcb2.jpg', 'sdsdsdfgdgdfgdfgdfg'),
(17, 'ndshfksdjksdjksd', 'static/productimg/two_XTergz4.jpg', 'hkdjfkjdskfjewrkweq;rk;'),
(18, 'jdhfjdhjfhjdhfjeirueur', 'static/productimg/two_ZGx34LF.jpg', 'dfdffghfhgfhfgh'),
(19, 'dfkdjkfjkdjfkjdkfjkdjfkdjfk', 'static/productimg/two_RkjE7zN.jpg', 'dfdfgdgfg;lf;gl;fl;gl;flgmsds.d.s,.d,s,.sd,.s,.d'),
(20, 'dfdfdf', 'static/productimg/two_xLfb1sC.jpg', 'dfdfdfdfdfdfdf'),
(21, 'sdsdsdsd', 'static/productimg/two_yiAKIW1.jpg', 'sdsdsdsd'),
(22, 'dsfldlsflsjfjlsdjflsdfj', 'static/productimg/two_d72QFrg.jpg', 'sdfjdjkslfl;kf;ksd;fk;sdklf;kd;slkf;lk');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiple_upload_multipleimage`
--
ALTER TABLE `multiple_upload_multipleimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_customer`
--
ALTER TABLE `website_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `website_order`
--
ALTER TABLE `website_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_order_customer_id_e1325c64_fk_website_customer_id` (`customer_id`),
  ADD KEY `website_order_product_id_0f00c3bc_fk_website_product_id` (`product_id`);

--
-- Indexes for table `website_product`
--
ALTER TABLE `website_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `multiple_upload_multipleimage`
--
ALTER TABLE `multiple_upload_multipleimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `website_customer`
--
ALTER TABLE `website_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_order`
--
ALTER TABLE `website_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_product`
--
ALTER TABLE `website_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

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

--
-- Constraints for table `website_customer`
--
ALTER TABLE `website_customer`
  ADD CONSTRAINT `website_customer_user_id_0b988af0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `website_order`
--
ALTER TABLE `website_order`
  ADD CONSTRAINT `website_order_customer_id_e1325c64_fk_website_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `website_customer` (`id`),
  ADD CONSTRAINT `website_order_product_id_0f00c3bc_fk_website_product_id` FOREIGN KEY (`product_id`) REFERENCES `website_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
