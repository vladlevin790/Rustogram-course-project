-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2024 at 10:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Rustogram`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chat between furrygames288 and vladlevin790', '2024-04-23 07:46:55', '2024-04-23 07:46:55'),
(2, 'Chat between furrygames288 and vladlevin790', '2024-04-23 07:48:08', '2024-04-23 07:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `hashtags`
--

CREATE TABLE `hashtags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `looked_stories`
--

CREATE TABLE `looked_stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `story_id` bigint(20) UNSIGNED NOT NULL,
  `is_looked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `chat_id`, `owner_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(4, 2, 2, 1, 'm,jhgnvbghjkl', '2024-04-23 07:48:24', '2024-04-23 07:48:24'),
(6, 2, 1, 2, 'Это русский на английском?', '2024-04-26 16:26:41', '2024-04-26 16:26:41'),
(7, 2, 1, 2, 'Are you from англия?', '2024-04-27 05:28:40', '2024-04-27 05:28:40'),
(8, 2, 2, 1, 'sure', '2024-04-27 05:33:44', '2024-04-27 05:33:44'),
(9, 2, 2, 1, 'hahha', '2024-04-27 05:33:47', '2024-04-27 05:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(172, '0000_00_00_000000_create_websockets_statistics_entries_table', 2),
(971, '2014_10_12_000000_create_users_table', 3),
(972, '2014_10_12_100000_create_password_reset_tokens_table', 3),
(973, '2014_10_12_100000_create_password_resets_table', 3),
(974, '2019_08_19_000000_create_failed_jobs_table', 3),
(975, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(976, '2024_01_15_184422_create_posts_table', 3),
(977, '2024_01_15_184658_create_posts_comments_table', 3),
(978, '2024_01_15_184809_create_posts_likes_table', 3),
(979, '2024_01_15_184917_create_chat_table', 3),
(980, '2024_01_15_185012_create_messages_table', 3),
(981, '2024_01_15_185112_create_user_chats_table', 3),
(982, '2024_01_15_185153_create_hashtags_table', 3),
(983, '2024_02_03_183329_more_posts', 3),
(984, '2024_02_04_115659_create_reels_table', 3),
(985, '2024_02_04_120035_create_reels_likes_table', 3),
(986, '2024_02_04_120425_create_reels_comments_table', 3),
(987, '2024_02_04_120913_create_stories_table', 3),
(988, '2024_02_04_121243_create_looked_stories_table', 3),
(989, '2024_02_04_121521_create_subscriptions_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `more_posts`
--

CREATE TABLE `more_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'main', '67ded752f4d097815b0ecc5f8eb78817256d3d67ad0ad60e26b711f9dabbc5c4', '[\"*\"]', '2024-04-23 07:48:40', NULL, '2024-04-23 07:46:03', '2024-04-23 07:48:40'),
(10, 'App\\Models\\User', 2, 'main', '30055dd4fbfd5d503b6d79218fbf726ac67bf3d18275662000a46960149daa7d', '[\"*\"]', '2024-04-27 05:34:01', NULL, '2024-04-27 05:33:12', '2024-04-27 05:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `image_path`, `video_path`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://localhost:8000/storage/images/1gyJ57uSJ65iljcaO9TlOqYuAnM14sSfa7AzXPmd.jpg', NULL, 'lkjhgfghjkl', '2024-04-23 07:48:40', '2024-04-23 07:48:40'),
(26, 2, 'http://localhost:8000/storage/images/mgJoydofanS46U7pSAIe8oPAxmWPgoR3Pythwrwq.jpg', NULL, 'hello world!!!', '2024-04-27 05:33:25', '2024-04-27 05:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `posts_comments`
--

CREATE TABLE `posts_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_comments`
--

INSERT INTO `posts_comments` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'hello', '2024-04-27 05:28:23', '2024-04-27 05:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `posts_likes`
--

CREATE TABLE `posts_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_likes`
--

INSERT INTO `posts_likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-04-23 07:49:17', '2024-04-23 07:49:17'),
(2, 1, 1, '2024-04-27 05:28:18', '2024-04-27 05:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `reels`
--

CREATE TABLE `reels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reels`
--

INSERT INTO `reels` (`id`, `video_path`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost:8000/storage/videos/r2XXHZfIsEVD3wXt1JPPe5yT2FCfUijz8ooGnY7j.mp4', 'hello', 1, '2024-04-26 16:25:42', '2024-04-26 16:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `reels_comments`
--

CREATE TABLE `reels_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reels_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reels_comments`
--

INSERT INTO `reels_comments` (`id`, `user_id`, `reels_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'hello', '2024-04-27 05:29:50', '2024-04-27 05:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `reels_likes`
--

CREATE TABLE `reels_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reels_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reels_likes`
--

INSERT INTO `reels_likes` (`id`, `user_id`, `reels_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-04-27 05:29:42', '2024-04-27 05:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `user_id`, `image_path`, `video_path`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://localhost:8000/storage/images/AQ9UIBvJjciONR9dIRM7ekORmlLBLOERpNdKLuLN.jpg', 'null', 'hello', '2024-04-27 05:28:11', '2024-04-27 05:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `owner_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-04-23 07:48:51', '2024-04-23 07:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) NOT NULL DEFAULT '',
  `is_online` tinyint(1) NOT NULL DEFAULT 0,
  `last_online` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `bio`, `birthday`, `gender`, `is_online`, `last_online`, `is_admin`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vladlevin790', 'vladlevin790@gmail.com', '$2y$10$u9UfYkSydTnXMJ5vXmLucefsX/uAqSawuPUQoXoVwlYdpagO7gPlS', 'http://localhost:8000/storage/images/avatars/kNhZiwiynkStUsaH273ogN5xhvYl78IjhecHgEsn.jpg', 'sdfdsf', '2004-03-16 21:00:00', 'male', 0, '2024-04-27 05:32:52', 1, NULL, NULL, '2024-04-23 07:46:03', '2024-04-27 05:33:09'),
(2, 'furrygames288', 'furrygames288@gmail.com', '$2y$10$1sW0YB9hblYzElxhVA8AlOxuQ4Xm2H9EhwAEydLni45xUUN9zR/eS', 'http://localhost:8000/storage/images/avatars/Yu35Ox9rlyGb1Wf7HZrvt8boNXbhkB1lbqMCAm8N.jpg', 'dfsdsf', '2004-03-16 21:00:00', 'male', 1, '2024-04-27 05:33:12', 0, NULL, NULL, '2024-04-23 07:46:38', '2024-04-27 05:33:12'),
(3, 'Cleo VonRueden V', 'dayne67@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Kendall Shanahan', NULL, '', 0, NULL, 0, '2024-04-26 14:07:07', 'hfSkx6zXKw', '2024-04-26 14:07:07', '2024-04-26 14:07:07'),
(4, 'Ms. Birdie White', 'champlin.glenna@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Dr. Fredrick Kozey', NULL, '', 0, NULL, 0, '2024-04-26 14:07:39', '0qdYkL0BiK', '2024-04-26 14:07:39', '2024-04-26 14:07:39'),
(5, 'Omer Pacocha', 'rkemmer@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Chaya Terry', NULL, '', 0, NULL, 0, '2024-04-26 14:08:28', 'X1H8uCZX1S', '2024-04-26 14:08:28', '2024-04-26 14:08:28'),
(6, 'Mr. Reynold O\'Kon', 'ygrady@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Ms. Una Weimann V', NULL, '', 0, NULL, 0, NULL, 'BlAL2j3pLk', '2024-04-26 14:09:01', '2024-04-26 14:09:01'),
(7, 'Prof. Ernesto Medhurst', 'vonrueden.trinity@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Arnoldo Jacobson', NULL, '', 0, NULL, 0, NULL, 'LDXNmTPJsp', '2024-04-26 14:09:20', '2024-04-26 14:09:20'),
(8, 'Mrs. Tiffany Kling II', 'holden.upton@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Prof. Leopoldo Effertz', NULL, '', 0, NULL, 0, NULL, 'DvQzVhfTYz', '2024-04-26 14:10:11', '2024-04-26 14:10:11'),
(9, 'Bobbie Paucek', 'zula.gutmann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Miss Meggie Cole DDS', NULL, '', 0, NULL, 0, NULL, 'iOoi0quiIx', '2024-04-26 14:10:22', '2024-04-26 14:10:22'),
(10, 'Edythe Jones', 'zabbott@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Prof. Zoey Ankunding DDS', NULL, '', 0, NULL, 0, NULL, 'dR9tgId4lA', '2024-04-26 14:13:15', '2024-04-26 14:13:15'),
(11, 'Berta Turner', 'joshuah.schimmel@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Sarina Hermiston', NULL, '', 0, NULL, 0, NULL, '04nHd8mMHy', '2024-04-26 14:13:31', '2024-04-26 14:13:31'),
(12, 'Cleo Runolfsdottir IV', 'bayer.frederik@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Bo Pagac', NULL, '', 0, NULL, 0, NULL, 'zmEibfT972', '2024-04-26 14:18:36', '2024-04-26 14:18:36'),
(13, 'Sophia Hegmann V', 'obie.breitenberg@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Antonia Ruecker', NULL, '', 0, NULL, 0, NULL, 'd8faddozCM', '2024-04-26 14:20:24', '2024-04-26 14:20:24'),
(14, 'Miller Gulgowski MD', 'alexander.reilly@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Trent Daugherty', NULL, '', 0, NULL, 0, NULL, 'zMNAvGVM10', '2024-04-26 14:21:17', '2024-04-26 14:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `users_chats`
--

CREATE TABLE `users_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_chats`
--

INSERT INTO `users_chats` (`id`, `chat_id`, `owner_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 2, 2, 1, '2024-04-23 07:48:08', '2024-04-23 07:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hashtags_user_id_foreign` (`user_id`),
  ADD KEY `hashtags_post_id_foreign` (`post_id`);

--
-- Indexes for table `looked_stories`
--
ALTER TABLE `looked_stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `looked_stories_user_id_foreign` (`user_id`),
  ADD KEY `looked_stories_story_id_foreign` (`story_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_chat_id_foreign` (`chat_id`),
  ADD KEY `messages_owner_id_foreign` (`owner_id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `more_posts`
--
ALTER TABLE `more_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `more_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `posts_comments`
--
ALTER TABLE `posts_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_comments_user_id_foreign` (`user_id`),
  ADD KEY `posts_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `posts_likes`
--
ALTER TABLE `posts_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_likes_user_id_foreign` (`user_id`),
  ADD KEY `posts_likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `reels`
--
ALTER TABLE `reels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reels_user_id_foreign` (`user_id`);

--
-- Indexes for table `reels_comments`
--
ALTER TABLE `reels_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reels_comments_user_id_foreign` (`user_id`),
  ADD KEY `reels_comments_reels_id_foreign` (`reels_id`);

--
-- Indexes for table `reels_likes`
--
ALTER TABLE `reels_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reels_likes_user_id_foreign` (`user_id`),
  ADD KEY `reels_likes_reels_id_foreign` (`reels_id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stories_user_id_foreign` (`user_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `subscriptions_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_chats`
--
ALTER TABLE `users_chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_chats_chat_id_foreign` (`chat_id`),
  ADD KEY `users_chats_owner_id_foreign` (`owner_id`),
  ADD KEY `users_chats_user_id_foreign` (`user_id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `looked_stories`
--
ALTER TABLE `looked_stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=990;

--
-- AUTO_INCREMENT for table `more_posts`
--
ALTER TABLE `more_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts_comments`
--
ALTER TABLE `posts_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts_likes`
--
ALTER TABLE `posts_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reels`
--
ALTER TABLE `reels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reels_comments`
--
ALTER TABLE `reels_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reels_likes`
--
ALTER TABLE `reels_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_chats`
--
ALTER TABLE `users_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hashtags`
--
ALTER TABLE `hashtags`
  ADD CONSTRAINT `hashtags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `hashtags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `looked_stories`
--
ALTER TABLE `looked_stories`
  ADD CONSTRAINT `looked_stories_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`),
  ADD CONSTRAINT `looked_stories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_chat_id_foreign` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`id`),
  ADD CONSTRAINT `messages_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `more_posts`
--
ALTER TABLE `more_posts`
  ADD CONSTRAINT `more_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts_comments`
--
ALTER TABLE `posts_comments`
  ADD CONSTRAINT `posts_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `posts_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts_likes`
--
ALTER TABLE `posts_likes`
  ADD CONSTRAINT `posts_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `posts_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reels`
--
ALTER TABLE `reels`
  ADD CONSTRAINT `reels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reels_comments`
--
ALTER TABLE `reels_comments`
  ADD CONSTRAINT `reels_comments_reels_id_foreign` FOREIGN KEY (`reels_id`) REFERENCES `reels` (`id`),
  ADD CONSTRAINT `reels_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reels_likes`
--
ALTER TABLE `reels_likes`
  ADD CONSTRAINT `reels_likes_reels_id_foreign` FOREIGN KEY (`reels_id`) REFERENCES `reels` (`id`),
  ADD CONSTRAINT `reels_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `stories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_chats`
--
ALTER TABLE `users_chats`
  ADD CONSTRAINT `users_chats_chat_id_foreign` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`id`),
  ADD CONSTRAINT `users_chats_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_chats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
