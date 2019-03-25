-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24.03.2019 klo 22:29
-- Palvelimen versio: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webstore`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `auth_permission`
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
(25, 'Can add products', 7, 'add_products'),
(26, 'Can change products', 7, 'change_products'),
(27, 'Can delete products', 7, 'delete_products'),
(28, 'Can view products', 7, 'view_products'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category');

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$qKbRM39u2WyB$8UxtBN5I/F2N6MaqtbbrEHtkp+9AaZdbxfHszojZTMo=', '2019-03-16 11:43:47.153163', 1, 'annika', '', '', 'annika.niittyla@gmail.com', 1, 1, '2019-03-15 08:50:51.921712');

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-03-15 14:50:56.516692', '1', 'Products object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2019-03-15 14:56:58.379779', '2', 'Products object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2019-03-15 14:59:17.756772', '1', '\"Fancy Cat\" Cat Food', 2, '[{\"changed\": {\"fields\": [\"product_code\"]}}]', 7, 1),
(4, '2019-03-15 18:55:54.373859', '1', 'Cats', 1, '[{\"added\": {}}]', 8, 1),
(5, '2019-03-15 18:56:48.021105', '2', 'Dogs', 1, '[{\"added\": {}}]', 8, 1),
(6, '2019-03-15 19:07:30.494288', '1', '\"Fancy Cat\" Cat Food', 1, '[{\"added\": {}}]', 7, 1),
(7, '2019-03-15 19:09:27.716398', '2', 'Red Thin Dog Collar', 1, '[{\"added\": {}}]', 7, 1),
(8, '2019-03-16 11:45:57.909726', '3', 'Cat Climbing Tree', 1, '[{\"added\": {}}]', 7, 1),
(9, '2019-03-16 15:49:13.752898', '1', '\"Fancy Cat\" Cat Food', 2, '[{\"changed\": {\"fields\": [\"product_image\"]}}]', 7, 1),
(10, '2019-03-16 15:50:43.859465', '2', 'Red Thin Dog Collar', 2, '[{\"changed\": {\"fields\": [\"product_image\"]}}]', 7, 1),
(11, '2019-03-16 16:07:55.613766', '3', 'Cat Climbing Tree', 2, '[{\"changed\": {\"fields\": [\"product_description\", \"product_image\", \"product_price\"]}}]', 7, 1),
(12, '2019-03-16 16:09:22.792056', '3', 'Cat Scratching Tower', 2, '[{\"changed\": {\"fields\": [\"product_name\", \"product_slug\"]}}]', 7, 1),
(13, '2019-03-16 16:12:30.696916', '2', 'Red Thin Dog Collar', 2, '[{\"changed\": {\"fields\": [\"product_image\"]}}]', 7, 1),
(14, '2019-03-16 16:16:46.730460', '1', '\"Fancy Cat\" Cat Food', 2, '[{\"changed\": {\"fields\": [\"product_image\"]}}]', 7, 1),
(15, '2019-03-16 17:49:11.995081', '1', 'Cats', 2, '[{\"changed\": {\"fields\": [\"category_slug\", \"category_logo\"]}}]', 8, 1),
(16, '2019-03-16 17:51:44.112925', '2', 'Dogs', 2, '[{\"changed\": {\"fields\": [\"category_slug\", \"category_logo\"]}}]', 8, 1),
(17, '2019-03-24 19:26:22.231483', '4', 'Bird Bath', 1, '[{\"added\": {}}]', 7, 1),
(18, '2019-03-24 19:28:12.661772', '5', 'Pet Brush', 1, '[{\"added\": {}}]', 7, 1),
(19, '2019-03-24 19:28:26.111069', '5', 'Pet Brush', 2, '[]', 7, 1),
(20, '2019-03-24 19:30:03.582764', '6', 'Toilet Box', 1, '[{\"added\": {}}]', 7, 1),
(21, '2019-03-24 19:33:11.526522', '7', 'Big pig ear', 1, '[{\"added\": {}}]', 7, 1),
(22, '2019-03-24 19:36:32.194118', '8', 'Cage dust', 1, '[{\"added\": {}}]', 7, 1),
(23, '2019-03-24 19:38:08.538781', '9', 'Chewing toy', 1, '[{\"added\": {}}]', 7, 1),
(24, '2019-03-24 19:39:51.312197', '10', 'Scratching Tree', 1, '[{\"added\": {}}]', 7, 1),
(25, '2019-03-24 19:41:10.133714', '11', 'Large bird cage', 1, '[{\"added\": {}}]', 7, 1),
(26, '2019-03-24 19:42:18.781508', '12', 'Squirrel cage', 1, '[{\"added\": {}}]', 7, 1),
(27, '2019-03-24 19:47:13.326974', '12', 'Squirrel cage', 2, '[{\"changed\": {\"fields\": [\"product_description\"]}}]', 7, 1),
(28, '2019-03-24 19:47:32.907412', '10', 'Scratching Tree', 2, '[{\"changed\": {\"fields\": [\"product_description\"]}}]', 7, 1),
(29, '2019-03-24 19:47:43.368566', '11', 'Large bird cage', 2, '[]', 7, 1),
(30, '2019-03-24 19:54:29.100117', '4', 'Bird Bath', 2, '[{\"changed\": {\"fields\": [\"product_description\", \"product_image\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Rakenne taululle `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'products', 'category'),
(7, 'products', 'products'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Rakenne taululle `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-03-13 15:32:11.447584'),
(2, 'auth', '0001_initial', '2019-03-13 15:32:26.981523'),
(3, 'admin', '0001_initial', '2019-03-13 15:32:30.091517'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-13 15:32:30.191367'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-03-13 15:32:30.292073'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-03-13 15:32:32.330793'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-03-13 15:32:33.746863'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-03-13 15:32:35.109690'),
(9, 'auth', '0004_alter_user_username_opts', '2019-03-13 15:32:35.191800'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-03-13 15:32:36.000783'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-03-13 15:32:36.075021'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-03-13 15:32:36.176594'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-03-13 15:32:37.882735'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-03-13 15:32:39.185024'),
(15, 'sessions', '0001_initial', '2019-03-13 15:32:40.820757'),
(16, 'products', '0001_initial', '2019-03-15 14:09:34.075139'),
(17, 'products', '0002_auto_20190315_1931', '2019-03-15 17:33:04.014600'),
(18, 'products', '0003_auto_20190315_2029', '2019-03-15 18:32:15.545157'),
(19, 'products', '0004_auto_20190315_2035', '2019-03-15 18:35:34.630351'),
(20, 'products', '0005_auto_20190315_2038', '2019-03-15 18:38:37.215560'),
(21, 'products', '0006_auto_20190316_1328', '2019-03-16 11:28:31.229166'),
(22, 'products', '0007_auto_20190316_1744', '2019-03-16 15:45:08.579167');

-- --------------------------------------------------------

--
-- Rakenne taululle `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('553z3wkigc1swtg7qv38bs0dfb5svwty', 'YzIwNGU2NzhiNGM0M2Y0MmVkMDhmNDQzMTFiMjM2MzhiOGUwZGJjNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDEzM2U2YWY4NzIzZDJkYTM3MjEzZjgzY2RlNGJhMjk5MzliODM0In0=', '2019-03-29 14:22:29.681892'),
('bc4f2cr8dw13bgi89ntb5ynilscntzab', 'YzIwNGU2NzhiNGM0M2Y0MmVkMDhmNDQzMTFiMjM2MzhiOGUwZGJjNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDEzM2U2YWY4NzIzZDJkYTM3MjEzZjgzY2RlNGJhMjk5MzliODM0In0=', '2019-03-30 11:43:47.447001');

-- --------------------------------------------------------

--
-- Rakenne taululle `products_category`
--

CREATE TABLE `products_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `category_logo` varchar(100) NOT NULL,
  `category_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `products_category`
--

INSERT INTO `products_category` (`id`, `category_name`, `category_logo`, `category_slug`) VALUES
(1, 'Cats', 'pic_folder/category_cat_credits_tYT7fCG.jpg', 'cats_catagory'),
(2, 'Dogs', 'pic_folder/category_dog_credits_gepGBXu.jpg', 'dogs'),
(3, 'Birds', 'pic_folder/Budgerigars_credits.jpg', 'birds'),
(4, 'Rodents', 'pic_folder/guinea_pig_credits_PCaU9zQ.jpg', 'rodents');

-- --------------------------------------------------------

--
-- Rakenne taululle `products_products`
--

CREATE TABLE `products_products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_code` int(11) NOT NULL,
  `product_description` longtext NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_available` tinyint(1) NOT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_slug` varchar(200) DEFAULT NULL,
  `product_stock` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `products_products`
--

INSERT INTO `products_products` (`id`, `product_name`, `product_code`, `product_description`, `product_image`, `product_available`, `product_price`, `product_slug`, `product_stock`, `category_id`) VALUES
(1, '\"Fancy Cat\" Cat Food', 1503190001, 'Fancy Cat food is your cat\'s favorite.', 'pic_folder/fancycatfood_vpEG1e1.jpg', 1, '9.90', 'fancycatfood', 10, 1),
(2, 'Red Thin Dog Collar', 1503190002, 'This collar is suitable for small dogs.', 'pic_folder/reddogcollar.jpg', 1, '7.90', 'reddogcollar', 15, 2),
(3, 'Cat Scratching Tower', 1603190001, 'Height: 2.1 meters.', 'pic_folder/catscratchingtower.jpg', 1, '45.00', 'catscratchingtower', 5, 1),
(4, 'Bird Bath', 2103190001, 'This item is suitable for small birds eg. canaries or budgerigars to have a bath in their cage.', 'pic_folder/Bird_bath.jpeg', 1, '9.90', 'birdbath', 15, 3),
(5, 'Pet Brush', 2103190002, 'All cats and small dogs will fall in love with this spiky brush.', 'pic_folder/Brush.jpeg', 1, '4.40', 'petbrush', 10, 2),
(6, 'Toilet Box', 2103190003, 'The toilet box is for cats staying long days alone. It will help you to keep your home clean!', 'pic_folder/Cat_toilet.jpeg', 1, '25.00', 'toiletbox', 5, 1),
(7, 'Big pig ear', 2103190004, 'What a yummy piece for your dog! After having the Big Pig Ear, your dog will forget to gnaw your furniture.\r\n\r\nThe package include 3 pieces.', 'pic_folder/Korva.jpeg', 1, '7.70', 'bigpigear', 5, 2),
(8, 'Cage dust', 2103190005, 'Soft and ecological wooden dust for the bottom of a cage. After use, the dust can be burned in a fireplace.\r\n\r\nSold in packages of 1 kg.', 'pic_folder/Pet_dust.jpeg', 1, '4.90', 'cagecutter', 10, 4),
(9, 'Chewing toy', 2103190006, 'Every dog\'s favorite toy!', 'pic_folder/Puruluu.jpeg', 1, '16.90', 'chewingtoy', 7, 2),
(10, 'Scratching Tree', 2103190007, 'Scratching tree for cats including a hiding place.', 'pic_folder/Scratching_tower2.jpeg', 1, '35.00', 'scratchingtree', 13, 1),
(11, 'Large bird cage', 2103190008, 'The cage is suitable for parrots.', 'pic_folder/No_image_credits.png', 0, '60.00', 'largebirdcage', 0, 3),
(12, 'Squirrel cage', 2103190009, 'For hamsters and gerbils.', 'pic_folder/No_image_credits_e0YecuD.png', 0, '32.50', 'squirrelcage', 0, 4);

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
-- Indexes for table `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_slug` (`category_slug`);

--
-- Indexes for table `products_products`
--
ALTER TABLE `products_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_products_product_name_5545f3a4` (`product_name`),
  ADD KEY `products_products_id_product_slug_b27b51aa_idx` (`id`,`product_slug`),
  ADD KEY `products_products_product_slug_dd6d89b8` (`product_slug`),
  ADD KEY `products_products_category_id_0cfaa6ce_fk_products_category_id` (`category_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
-- AUTO_INCREMENT for table `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_products`
--
ALTER TABLE `products_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Rajoitteet taululle `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Rajoitteet taululle `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Rajoitteet taululle `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Rajoitteet taululle `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Rajoitteet taululle `products_products`
--
ALTER TABLE `products_products`
  ADD CONSTRAINT `products_products_category_id_0cfaa6ce_fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
