-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.20-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for coba2
CREATE DATABASE IF NOT EXISTS `coba2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `coba2`;

-- Dumping structure for table coba2.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coba2.categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Web Programming', 'web-programming', '2021-10-06 01:48:06', '2021-10-06 01:48:06'),
	(2, 'Personal', 'personal', '2021-10-06 01:48:06', '2021-10-06 01:48:06');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table coba2.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coba2.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table coba2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coba2.migrations: ~6 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2021_10_06_005801_create_posts_table', 1),
	(6, '2021_10_06_031758_create_categories_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table coba2.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coba2.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table coba2.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coba2.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table coba2.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coba2.posts: ~4 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'Judul Pertama', 'judul-pertama', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse quidem voluptates pertama,', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse quidem voluptates sapiente, tenetur suscipit maiores facere, earum, eveniet omnis a consequatur eum totam numquam eligendi.</p><p> Ea, nisi ipsam, nostrum, nihil dolorum et iure repellendus reiciendis illum consequuntur iste laudantium perferendis odio in consectetur distinctio ut quam sapiente cum tempore.</p><p> Dolore, reprehenderit. Enim ipsam corporis fugit, non temporibus, laboriosam vel vero, minus quis sint pariatur nulla iste eum nam animi facilis voluptates placeat! Fugiat magnam, totam expedita tempore et perferendis veritatis asperiores molestiae nostrum quisquam incidunt rem hic ipsum, ut nihil. Unde cupiditate, nemo veniam aspernatur nobis enim animi iste sequi, velit nostrum aliquam, debitis doloremque suscipit. Non, nostrum quasi rerum esse sit voluptate corporis quibusdam ipsam nam sunt totam, cumque minus quia ipsum voluptatibus architecto quidem enim repellendus atque labore id adipisci sed eveniet optio. Earum inventore eius quo accusamus tenetur perspiciatis sint, in, quam consequatur veritatis recusandae, id hic.</p>', NULL, '2021-10-06 01:48:06', '2021-10-06 01:48:06'),
	(2, 1, 1, 'Judul Kedua', 'judul-kedua', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse quidem voluptates kedua,', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse quidem voluptates sapiente, tenetur suscipit maiores facere, earum, eveniet omnis a consequatur eum totam numquam eligendi.</p><p> Ea, nisi ipsam, nostrum, nihil dolorum et iure repellendus reiciendis illum consequuntur iste laudantium perferendis odio in consectetur distinctio ut quam sapiente cum tempore.</p><p> Dolore, reprehenderit. Enim ipsam corporis fugit, non temporibus, laboriosam vel vero, minus quis sint pariatur nulla iste eum nam animi facilis voluptates placeat! Fugiat magnam, totam expedita tempore et perferendis veritatis asperiores molestiae nostrum quisquam incidunt rem hic ipsum, ut nihil. Unde cupiditate, nemo veniam aspernatur nobis enim animi iste sequi, velit nostrum aliquam, debitis doloremque suscipit. Non, nostrum quasi rerum esse sit voluptate corporis quibusdam ipsam nam sunt totam, cumque minus quia ipsum voluptatibus architecto quidem enim repellendus atque labore id adipisci sed eveniet optio. Earum inventore eius quo accusamus tenetur perspiciatis sint, in, quam consequatur veritatis recusandae, id hic.</p>', NULL, '2021-10-06 01:48:06', '2021-10-06 01:48:06'),
	(3, 2, 2, 'Judul Ketiga', 'judul-ketiga', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse quidem voluptates ketiga,', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse quidem voluptates sapiente, tenetur suscipit maiores facere, earum, eveniet omnis a consequatur eum totam numquam eligendi.</p><p> Ea, nisi ipsam, nostrum, nihil dolorum et iure repellendus reiciendis illum consequuntur iste laudantium perferendis odio in consectetur distinctio ut quam sapiente cum tempore.</p><p> Dolore, reprehenderit. Enim ipsam corporis fugit, non temporibus, laboriosam vel vero, minus quis sint pariatur nulla iste eum nam animi facilis voluptates placeat! Fugiat magnam, totam expedita tempore et perferendis veritatis asperiores molestiae nostrum quisquam incidunt rem hic ipsum, ut nihil. Unde cupiditate, nemo veniam aspernatur nobis enim animi iste sequi, velit nostrum aliquam, debitis doloremque suscipit. Non, nostrum quasi rerum esse sit voluptate corporis quibusdam ipsam nam sunt totam, cumque minus quia ipsum voluptatibus architecto quidem enim repellendus atque labore id adipisci sed eveniet optio. Earum inventore eius quo accusamus tenetur perspiciatis sint, in, quam consequatur veritatis recusandae, id hic.</p>', NULL, '2021-10-06 01:48:06', '2021-10-06 01:48:06'),
	(4, 2, 2, 'Judul Keempat', 'judul-keempat', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse quidem voluptates keempat,', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse quidem voluptates sapiente, tenetur suscipit maiores facere, earum, eveniet omnis a consequatur eum totam numquam eligendi.</p><p> Ea, nisi ipsam, nostrum, nihil dolorum et iure repellendus reiciendis illum consequuntur iste laudantium perferendis odio in consectetur distinctio ut quam sapiente cum tempore.</p><p> Dolore, reprehenderit. Enim ipsam corporis fugit, non temporibus, laboriosam vel vero, minus quis sint pariatur nulla iste eum nam animi facilis voluptates placeat! Fugiat magnam, totam expedita tempore et perferendis veritatis asperiores molestiae nostrum quisquam incidunt rem hic ipsum, ut nihil. Unde cupiditate, nemo veniam aspernatur nobis enim animi iste sequi, velit nostrum aliquam, debitis doloremque suscipit. Non, nostrum quasi rerum esse sit voluptate corporis quibusdam ipsam nam sunt totam, cumque minus quia ipsum voluptatibus architecto quidem enim repellendus atque labore id adipisci sed eveniet optio. Earum inventore eius quo accusamus tenetur perspiciatis sint, in, quam consequatur veritatis recusandae, id hic.</p>', NULL, '2021-10-06 01:48:06', '2021-10-06 01:48:06');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table coba2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coba2.users: ~5 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Siti Sudiati', 'lestari.agus@example.org', '2021-10-06 01:48:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WddkfaYljO', '2021-10-06 01:48:06', '2021-10-06 01:48:06'),
	(2, 'Tami Suartini', 'sirait.gara@example.org', '2021-10-06 01:48:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SF2DzNuOiP', '2021-10-06 01:48:06', '2021-10-06 01:48:06'),
	(3, 'Ratna Lailasari', 'reksa31@example.com', '2021-10-06 01:48:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WCL0OgVQuw', '2021-10-06 01:48:06', '2021-10-06 01:48:06'),
	(4, 'Zaenab Keisha Puspita', 'kani.pradipta@example.net', '2021-10-06 01:48:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bF0IysrrU0', '2021-10-06 01:48:06', '2021-10-06 01:48:06'),
	(5, 'Tira Melani', 'jelita.nainggolan@example.org', '2021-10-06 01:48:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T1fsT4oL0p', '2021-10-06 01:48:06', '2021-10-06 01:48:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
