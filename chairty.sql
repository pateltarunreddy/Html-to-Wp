-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 02:06 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chairty`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-05-22 09:42:29', '2020-05-22 09:42:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_album`
--

CREATE TABLE `wp_ngg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `sortorder` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_gallery`
--

CREATE TABLE `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci,
  `title` mediumtext COLLATE utf8mb4_unicode_ci,
  `galdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_ngg_gallery`
--

INSERT INTO `wp_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'donating', 'donating', '/wp-content/gallery/donating/', 'donating', NULL, 0, 1, 1, 69);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_pictures`
--

CREATE TABLE `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `alttext` mediumtext COLLATE utf8mb4_unicode_ci,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext COLLATE utf8mb4_unicode_ci,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_ngg_pictures`
--

INSERT INTO `wp_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(1, 'chrysanthemum', 0, 1, 'Chrysanthemum.jpg', '', 'Chrysanthemum', '2008-03-14 13:59:26', 0, 0, 'eyJhcGVydHVyZSI6IiIsImNyZWRpdCI6IiIsImNhbWVyYSI6IiIsImNhcHRpb24iOiIiLCJjcmVhdGVkX3RpbWVzdGFtcCI6IjEyMDU1MDMxNjYiLCJmb2NhbF9sZW5ndGgiOiIiLCJpc28iOiIiLCJzaHV0dGVyX3NwZWVkIjoiIiwiZmxhc2giOiIiLCJ0aXRsZSI6IiIsImtleXdvcmRzIjoiIiwid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJzYXZlZCI6IjEiLCJiYWNrdXAiOnsiZmlsZW5hbWUiOiJDaHJ5c2FudGhlbXVtLmpwZyIsIndpZHRoIjoxMDI0LCJoZWlnaHQiOjc2OCwiZ2VuZXJhdGVkIjoiMC45NTc3ODIwMCAxNTkwNDcwMDA5In0sIm1kNSI6ImQ0YmI2OTBiZWI0Y2JmYzhiZDE5OTM4MTBhNTE1YWI2IiwiZnVsbCI6eyJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsIm1kNSI6ImQ0YmI2OTBiZWI0Y2JmYzhiZDE5OTM4MTBhNTE1YWI2In0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfQ2hyeXNhbnRoZW11bS5qcGciLCJnZW5lcmF0ZWQiOiIwLjE5MDkxMDAwIDE1OTA0NzAwMTIifSwibmdnMGR5bi0weDI1MHgxMDAtMDBmMHcwMTFjMDEwcjExMGYxMTByMDEwdDAxMCI6eyJ3aWR0aCI6MzMzLCJoZWlnaHQiOjI1MCwiZmlsZW5hbWUiOiJDaHJ5c2FudGhlbXVtLmpwZy1uZ2dpZDAxMS1uZ2cwZHluLTB4MjUweDEwMC0wMGYwdzAxMWMwMTByMTEwZjExMHIwMTB0MDEwLmpwZyIsImdlbmVyYXRlZCI6IjAuMTkwNjg1MDAgMTU5MDQ3MDA3OCJ9fQ==', 70, 1590470078),
(2, 'desert', 0, 1, 'Desert.jpg', '', 'Desert', '2008-03-14 13:59:26', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6MTIwNTUwMzE2NiwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsIndpZHRoIjoxMDI0LCJoZWlnaHQiOjc2OCwic2F2ZWQiOnRydWUsImJhY2t1cCI6eyJmaWxlbmFtZSI6IkRlc2VydC5qcGciLCJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsImdlbmVyYXRlZCI6IjAuMzIyMTQ2MDAgMTU5MDQ3MDAxNiJ9LCJtZDUiOiI4MWY2MDI4MzNmMjA2OTQxYzU0MTY2NTEzNDQ2ZWI5YSIsImZ1bGwiOnsid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJtZDUiOiI4MWY2MDI4MzNmMjA2OTQxYzU0MTY2NTEzNDQ2ZWI5YSJ9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX0Rlc2VydC5qcGciLCJnZW5lcmF0ZWQiOiIwLjI4MjI1ODAwIDE1OTA0NzAwMTgifX0=', 71, 1590470018),
(3, 'hydrangeas', 0, 1, 'Hydrangeas.jpg', '', 'Hydrangeas', '2008-03-24 16:41:53', 0, 0, 'eyJhcGVydHVyZSI6IiIsImNyZWRpdCI6IiIsImNhbWVyYSI6IiIsImNhcHRpb24iOiIiLCJjcmVhdGVkX3RpbWVzdGFtcCI6IjEyMDYzNzY5MTMiLCJmb2NhbF9sZW5ndGgiOiIiLCJpc28iOiIiLCJzaHV0dGVyX3NwZWVkIjoiIiwiZmxhc2giOiIiLCJ0aXRsZSI6IiIsImtleXdvcmRzIjoiIiwid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJzYXZlZCI6IjEiLCJiYWNrdXAiOnsiZmlsZW5hbWUiOiJIeWRyYW5nZWFzLmpwZyIsIndpZHRoIjoxMDI0LCJoZWlnaHQiOjc2OCwiZ2VuZXJhdGVkIjoiMC4xNjE1MzcwMCAxNTkwNDcwMDIzIn0sIm1kNSI6IjEwMjQwNmY3NmEwNDMyZDc5YzIzMWVjNmZmNmExNmRkIiwiZnVsbCI6eyJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsIm1kNSI6IjEwMjQwNmY3NmEwNDMyZDc5YzIzMWVjNmZmNmExNmRkIn0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfSHlkcmFuZ2Vhcy5qcGciLCJnZW5lcmF0ZWQiOiIwLjM0ODYwNTAwIDE1OTA0NzAwMjQifX0=', 72, 1590470024),
(4, 'jellyfish', 0, 1, 'Jellyfish.jpg', '', 'Jellyfish', '2008-02-11 11:32:24', 0, 0, 'eyJhcGVydHVyZSI6IiIsImNyZWRpdCI6IiIsImNhbWVyYSI6IiIsImNhcHRpb24iOiIiLCJjcmVhdGVkX3RpbWVzdGFtcCI6IjEyMDI3Mjk1NDQiLCJmb2NhbF9sZW5ndGgiOiIiLCJpc28iOiIiLCJzaHV0dGVyX3NwZWVkIjoiIiwiZmxhc2giOiIiLCJ0aXRsZSI6IiIsImtleXdvcmRzIjoiIiwid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJzYXZlZCI6IjEiLCJiYWNrdXAiOnsiZmlsZW5hbWUiOiJKZWxseWZpc2guanBnIiwid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJnZW5lcmF0ZWQiOiIwLjI4MTcxNjAwIDE1OTA0NzAwMjYifSwibWQ1IjoiMjBiYzAwN2ZjMzE1Y2ZjMmY2OWM1MzE2MjU0MTUzMmEiLCJmdWxsIjp7IndpZHRoIjoxMDI0LCJoZWlnaHQiOjc2OCwibWQ1IjoiMjBiYzAwN2ZjMzE1Y2ZjMmY2OWM1MzE2MjU0MTUzMmEifSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic19KZWxseWZpc2guanBnIiwiZ2VuZXJhdGVkIjoiMC4xOTA3NjgwMCAxNTkwNDcwMDI3In19', 73, 1590470027),
(5, 'koala', 0, 1, 'Koala.jpg', '', 'Koala', '2008-02-11 11:32:43', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6MTIwMjcyOTU2MywiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsIndpZHRoIjoxMDI0LCJoZWlnaHQiOjc2OCwic2F2ZWQiOnRydWUsImJhY2t1cCI6eyJmaWxlbmFtZSI6IktvYWxhLmpwZyIsIndpZHRoIjoxMDI0LCJoZWlnaHQiOjc2OCwiZ2VuZXJhdGVkIjoiMC43OTA5MTcwMCAxNTkwNDcwMDI5In0sIm1kNSI6IjBkOTcxNmI4N2IxNmE1OWNhMWU4NWQzZTRhNDI4OTQ0IiwiZnVsbCI6eyJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsIm1kNSI6IjBkOTcxNmI4N2IxNmE1OWNhMWU4NWQzZTRhNDI4OTQ0In0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfS29hbGEuanBnIiwiZ2VuZXJhdGVkIjoiMC40OTU5NTcwMCAxNTkwNDcwMDMwIn19', 74, 1590470030),
(6, 'lighthouse', 0, 1, 'Lighthouse.jpg', '', 'Lighthouse', '2008-02-11 11:32:51', 0, 0, 'eyJhcGVydHVyZSI6IiIsImNyZWRpdCI6IiIsImNhbWVyYSI6IiIsImNhcHRpb24iOiIiLCJjcmVhdGVkX3RpbWVzdGFtcCI6IjEyMDI3Mjk1NzEiLCJmb2NhbF9sZW5ndGgiOiIiLCJpc28iOiIiLCJzaHV0dGVyX3NwZWVkIjoiIiwiZmxhc2giOiIiLCJ0aXRsZSI6IiIsImtleXdvcmRzIjoiIiwid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJzYXZlZCI6IjEiLCJiYWNrdXAiOnsiZmlsZW5hbWUiOiJMaWdodGhvdXNlLmpwZyIsIndpZHRoIjoxMDI0LCJoZWlnaHQiOjc2OCwiZ2VuZXJhdGVkIjoiMC4xNDg0NTIwMCAxNTkwNDcwMDM5In0sIm1kNSI6ImMyN2UzMWY4ZmZjZGY4MmJhNDgzMjgwOGI2ZDFmYWVmIiwiZnVsbCI6eyJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsIm1kNSI6ImMyN2UzMWY4ZmZjZGY4MmJhNDgzMjgwOGI2ZDFmYWVmIn0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfTGlnaHRob3VzZS5qcGciLCJnZW5lcmF0ZWQiOiIwLjA3NDUwNTAwIDE1OTA0NzAwNDAifX0=', 75, 1590470040),
(7, 'penguins', 0, 1, 'Penguins.jpg', '', 'Penguins', '2008-02-18 05:07:31', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6MTIwMzMxMTI1MSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsIndpZHRoIjoxMDI0LCJoZWlnaHQiOjc2OCwic2F2ZWQiOnRydWUsImJhY2t1cCI6eyJmaWxlbmFtZSI6IlBlbmd1aW5zLmpwZyIsIndpZHRoIjoxMDI0LCJoZWlnaHQiOjc2OCwiZ2VuZXJhdGVkIjoiMC42NTA2NTIwMCAxNTkwNDcwMDQyIn0sIm1kNSI6IjVjNzgyZjBmNjhkNTY4ZDYxOWViNjk4MjY3NTBjMmI2IiwiZnVsbCI6eyJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsIm1kNSI6IjVjNzgyZjBmNjhkNTY4ZDYxOWViNjk4MjY3NTBjMmI2In0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfUGVuZ3VpbnMuanBnIiwiZ2VuZXJhdGVkIjoiMC44OTE3MjMwMCAxNTkwNDcwMDQzIn19', 76, 1590470043),
(8, 'tulips', 0, 1, 'Tulips.jpg', '', 'Tulips', '2008-02-07 11:33:11', 0, 0, 'eyJhcGVydHVyZSI6IiIsImNyZWRpdCI6IiIsImNhbWVyYSI6IiIsImNhcHRpb24iOiIiLCJjcmVhdGVkX3RpbWVzdGFtcCI6IjEyMDIzODM5OTEiLCJmb2NhbF9sZW5ndGgiOiIiLCJpc28iOiIiLCJzaHV0dGVyX3NwZWVkIjoiIiwiZmxhc2giOiIiLCJ0aXRsZSI6IiIsImtleXdvcmRzIjoiIiwid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJzYXZlZCI6IjEiLCJiYWNrdXAiOnsiZmlsZW5hbWUiOiJUdWxpcHMuanBnIiwid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJnZW5lcmF0ZWQiOiIwLjA5NTg0OTAwIDE1OTA0NzAwNDYifSwibWQ1IjoiNDlkNjNmMTA0YzI4NzZkNjlmNmRiMjhjYWVkNmQ2MDQiLCJmdWxsIjp7IndpZHRoIjoxMDI0LCJoZWlnaHQiOjc2OCwibWQ1IjoiNDlkNjNmMTA0YzI4NzZkNjlmNmRiMjhjYWVkNmQ2MDQifSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic19UdWxpcHMuanBnIiwiZ2VuZXJhdGVkIjoiMC4wMzY5NjAwMCAxNTkwNDcwMDQ4In19', 77, 1590470048);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/charity', 'yes'),
(2, 'home', 'http://localhost/charity', 'yes'),
(3, 'blogname', 'Chairty', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'patels886@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:185:{s:15:\"team-members/?$\";s:32:\"index.php?post_type=team-members\";s:45:\"team-members/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=team-members&feed=$matches[1]\";s:40:\"team-members/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=team-members&feed=$matches[1]\";s:32:\"team-members/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=team-members&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"slider/?$\";s:26:\"index.php?post_type=slider\";s:39:\"slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:34:\"slider/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:26:\"slider/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=slider&paged=$matches[1]\";s:14:\"testimonial/?$\";s:31:\"index.php?post_type=testimonial\";s:44:\"testimonial/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:39:\"testimonial/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:31:\"testimonial/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=testimonial&paged=$matches[1]\";s:7:\"news/?$\";s:24:\"index.php?post_type=news\";s:37:\"news/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:32:\"news/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:24:\"news/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=news&paged=$matches[1]\";s:10:\"product/?$\";s:27:\"index.php?post_type=product\";s:40:\"product/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:35:\"product/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:27:\"product/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"team-members/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"team-members/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"team-members/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"team-members/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"team-members/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"team-members/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"team-members/([^/]+)/embed/?$\";s:45:\"index.php?team-members=$matches[1]&embed=true\";s:33:\"team-members/([^/]+)/trackback/?$\";s:39:\"index.php?team-members=$matches[1]&tb=1\";s:53:\"team-members/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?team-members=$matches[1]&feed=$matches[2]\";s:48:\"team-members/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?team-members=$matches[1]&feed=$matches[2]\";s:41:\"team-members/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?team-members=$matches[1]&paged=$matches[2]\";s:48:\"team-members/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?team-members=$matches[1]&cpage=$matches[2]\";s:37:\"team-members/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?team-members=$matches[1]&page=$matches[2]\";s:29:\"team-members/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"team-members/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"team-members/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"team-members/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"team-members/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"team-members/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"slider/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"slider/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"slider/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"slider/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"slider/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"slider/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"slider/(.+?)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:25:\"slider/(.+?)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:45:\"slider/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:40:\"slider/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:33:\"slider/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:40:\"slider/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:29:\"slider/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:37:\"testimonial/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"testimonial/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"testimonial/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"testimonial/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"testimonial/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"testimonial/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"testimonial/(.+?)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:30:\"testimonial/(.+?)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:50:\"testimonial/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:45:\"testimonial/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:38:\"testimonial/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:45:\"testimonial/(.+?)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:34:\"testimonial/(.+?)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:30:\"news/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"news/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"news/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"news/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"news/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"news/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:19:\"news/(.+?)/embed/?$\";s:37:\"index.php?news=$matches[1]&embed=true\";s:23:\"news/(.+?)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:43:\"news/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:38:\"news/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:31:\"news/(.+?)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:38:\"news/(.+?)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:27:\"news/(.+?)(?:/([0-9]+))?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:33:\"product/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"product/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"product/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"product/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"product/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"product/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"product/(.+?)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:26:\"product/(.+?)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:46:\"product/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:41:\"product/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:34:\"product/(.+?)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:41:\"product/(.+?)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:30:\"product/(.+?)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:57:\"product-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product_category=$matches[1]&feed=$matches[2]\";s:52:\"product-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product_category=$matches[1]&feed=$matches[2]\";s:33:\"product-category/([^/]+)/embed/?$\";s:49:\"index.php?product_category=$matches[1]&embed=true\";s:45:\"product-category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?product_category=$matches[1]&paged=$matches[2]\";s:27:\"product-category/([^/]+)/?$\";s:38:\"index.php?product_category=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:43:\"contextual-nav-menu/contextual-nav-menu.php\";i:2;s:27:\"js_composer/js_composer.php\";i:3;s:25:\"option-tree/ot-loader.php\";i:4;s:29:\"nextgen-gallery/nggallery.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'chairty', 'yes'),
(41, 'stylesheet', 'chairty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:71:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:24:\"NextGEN Attach Interface\";b:1;s:22:\"NextGEN Change options\";b:1;s:20:\"NextGEN Change style\";b:1;s:18:\"NextGEN Edit album\";b:1;s:24:\"NextGEN Gallery overview\";b:1;s:22:\"NextGEN Manage gallery\";b:1;s:29:\"NextGEN Manage others gallery\";b:1;s:19:\"NextGEN Manage tags\";b:1;s:21:\"NextGEN Upload images\";b:1;s:19:\"NextGEN Use TinyMCE\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"edit_theme_options\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"footer_block\";a:1:{i:0;s:13:\"custom_html-2\";}s:17:\"home_image_blocks\";a:1:{i:0;s:10:\"nav_menu-3\";}s:20:\"home_services_blocks\";a:1:{i:0;s:13:\"custom_html-3\";}s:15:\"subscribe_block\";a:1:{i:0;s:13:\"custom_html-4\";}s:13:\"sidebar_block\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:2:{i:3;a:1:{s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:4:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:188:\"Charity vitae diam pulvinar, tempus dia aliquam tellus. Quisque mattis odio eu placerat luctus. Vivamus magna elit, ultrices non lacinia vel, tempor vitae tell Fusce sit amet sem sit amet.\";}i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:508:\"<div class=\"footer-section-body\">\r\n							<p><b>Address:</b> 3104 Doctors Drive, Los \r\n								Angeles, California, United States</p>\r\n\r\n							<div class=\"footer-contacts\">\r\n								<p>\r\n									<b>\r\n										<i class=\"fa fa-phone\"></i> Phone:\r\n									</b>\r\n\r\n									+1-310-341-3870\r\n								</p>\r\n								\r\n								<p>\r\n									<b>\r\n										<i class=\"fa fa-envelope-o\"></i> Email:\r\n									</b>\r\n\r\n									info@charityhope.com\r\n								</p>\r\n							</div><!-- /.footer-contacts -->\r\n						</div>\";}i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:167:\"<div align=\"center\"><a href=\"http://www.hit-counts.com\"><img src=\"http://www.hit-counts.com/counter.php?t=MTI2NTEwNg==\" border=\"0\" alt=\"Visitor Counter\"></a><br></div>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1591180247;a:1:{s:29:\"ngg_delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"ngg_custom\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1591180951;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591220551;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591263770;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591263774;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.3\";s:7:\"version\";s:5:\"5.3.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.6\";s:7:\"version\";s:5:\"5.2.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1591178641;s:15:\"version_checked\";s:5:\"5.1.5\";s:12:\"translations\";a:0:{}}', 'no'),
(118, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591178648;s:7:\"checked\";a:2:{s:9:\"bootstrap\";s:0:\"\";s:7:\"chairty\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(138, 'theme_mods_twentynineteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590140954;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(139, 'current_theme', 'Charity', 'yes'),
(140, 'theme_mods_chairty', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:2;}s:19:\"ot_set_google_fonts\";a:0:{}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(148, 'vc_version', '5.5.2', 'yes'),
(153, 'option_tree_settings', 'a:3:{s:8:\"sections\";a:6:{i:0;a:2:{s:5:\"title\";s:7:\"General\";s:2:\"id\";s:7:\"general\";}i:1;a:2:{s:5:\"title\";s:5:\"About\";s:2:\"id\";s:5:\"about\";}i:2;a:2:{s:5:\"title\";s:6:\"Slider\";s:2:\"id\";s:6:\"slider\";}i:3;a:2:{s:5:\"title\";s:10:\"Header Top\";s:2:\"id\";s:10:\"header_top\";}i:4;a:2:{s:5:\"title\";s:8:\"Whatwedo\";s:2:\"id\";s:8:\"whatwedo\";}i:5;a:2:{s:5:\"title\";s:7:\"Gallery\";s:2:\"id\";s:7:\"gallery\";}}s:8:\"settings\";a:9:{i:0;a:13:{s:5:\"label\";s:23:\"Sample Text Field Label\";s:2:\"id\";s:11:\"sample_text\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:38:\"Description for the sample text field.\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:1;a:13:{s:5:\"label\";s:9:\"homeabout\";s:2:\"id\";s:9:\"homeabout\";s:4:\"type\";s:8:\"textarea\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:5:\"about\";}i:2;a:13:{s:5:\"label\";s:10:\"homeslider\";s:2:\"id\";s:10:\"homeslider\";s:4:\"type\";s:6:\"slider\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:6:\"slider\";}i:3;a:13:{s:5:\"label\";s:11:\"Phonenumber\";s:2:\"id\";s:11:\"phonenumber\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:10:\"header_top\";}i:4;a:13:{s:5:\"label\";s:5:\"Email\";s:2:\"id\";s:5:\"email\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:10:\"header_top\";}i:5;a:13:{s:5:\"label\";s:4:\"Logo\";s:2:\"id\";s:4:\"logo\";s:4:\"type\";s:6:\"upload\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:10:\"header_top\";}i:6;a:13:{s:5:\"label\";s:10:\"websiteurl\";s:2:\"id\";s:10:\"websiteurl\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:10:\"header_top\";}i:7;a:13:{s:5:\"label\";s:4:\"wedo\";s:2:\"id\";s:4:\"wedo\";s:4:\"type\";s:9:\"list-item\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:8:\"whatwedo\";}i:8;a:13:{s:5:\"label\";s:13:\"galleryimages\";s:2:\"id\";s:13:\"galleryimages\";s:4:\"type\";s:7:\"gallery\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"gallery\";}}s:15:\"contextual_help\";a:1:{s:7:\"sidebar\";s:0:\"\";}}', 'yes'),
(154, 'option_tree', 'a:9:{s:11:\"sample_text\";s:0:\"\";s:9:\"homeabout\";s:472:\"<p><strong>Narrated Abdullah ibn Amr ibn al-‘As: A woman came to the Apostle of Allah (peace_be_upon_him) and she was accompanied by her daughter who wore two heavy gold bangles in her hands. He said to her: Do you pay zakat on them? She said: No. He then said: Are you pleased that Allah may put two bangles of fire on your hands? Thereupon she took them off and placed them before the Prophet (peace_be_upon_him) saying: They are for Allah and His Apostle</strong></p>\";s:10:\"homeslider\";a:2:{i:0;a:4:{s:5:\"title\";s:6:\"slide1\";s:5:\"image\";s:59:\"http://localhost/charity/wp-content/uploads/2020/05/img.jpg\";s:4:\"link\";s:0:\"\";s:11:\"description\";s:0:\"\";}i:1;a:4:{s:5:\"title\";s:6:\"slide2\";s:5:\"image\";s:60:\"http://localhost/charity/wp-content/uploads/2020/05/img3.jpg\";s:4:\"link\";s:0:\"\";s:11:\"description\";s:0:\"\";}}s:11:\"phonenumber\";s:10:\"8019199910\";s:5:\"email\";s:16:\"1963ar@gmail.com\";s:4:\"logo\";s:65:\"http://localhost/charity/wp-content/uploads/2020/05/eemanlogo.png\";s:10:\"websiteurl\";s:25:\"http://localhost/charity/\";s:4:\"wedo\";a:3:{i:0;a:4:{s:5:\"title\";s:6:\"VISION\";s:5:\"image\";s:0:\"\";s:4:\"link\";s:28:\"<i class=\"fa fa-search\"></i>\";s:11:\"description\";s:110:\"To see the social and economical balance in Muslim Community through the strong financial, healthy livelihood.\";}i:1;a:4:{s:5:\"title\";s:7:\"MISSION\";s:5:\"image\";s:0:\"\";s:4:\"link\";s:30:\"<i class=\"fa fa-bullseye\"></i>\";s:11:\"description\";s:135:\"To enable poor and weaker Muslim sections to have access to quality and healthy living through the financial, health and moral support.\";}i:2;a:4:{s:5:\"title\";s:9:\"OBJECTIVE\";s:5:\"image\";s:0:\"\";s:4:\"link\";s:37:\"<i class=\"fa fa-pencil-square-o\"></i>\";s:11:\"description\";s:177:\"Is to reach poor, weaker and economically backward people and facilitate them with the daily livelihood needs, financial support, Medical access etc, in their affordable manner.\";}}s:13:\"galleryimages\";s:23:\"39,40,41,42,43,44,45,46\";}', 'yes'),
(155, 'ot_media_post_ID', '21', 'yes'),
(161, 'widget_contextual_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'contextual_nav_menu_breadcrumb_show_on_home', '', 'yes'),
(163, 'contextual_nav_menu_breadcrumb_home_text', 'Home Page', 'yes'),
(164, 'contextual_nav_menu_breadcrumb_home_link_text', 'Home', 'yes'),
(165, 'contextual_nav_menu_breadcrumb_home_image', '', 'yes'),
(166, 'contextual_nav_menu_breadcrumb_menu_order_list', '', 'yes'),
(167, 'contextual_nav_menu_breadcrumb_error404_text', 'Not Found', 'yes'),
(168, 'contextual_nav_menu_breadcrumb_search_text', 'Search for terms', 'yes'),
(169, 'contextual_nav_menu_breadcrumb_tag_text', 'Tag', 'yes'),
(170, 'contextual_nav_menu_breadcrumb_author_text', 'Author', 'yes'),
(171, 'contextual_nav_menu_breadcrumb_menu_order_0', '', 'yes'),
(177, 'category_children', 'a:0:{}', 'yes'),
(210, 'ngg_run_freemius', '1', 'yes'),
(211, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:24:\"nextgen-gallery/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1590469869;s:11:\"plugin_path\";s:29:\"nextgen-gallery/nggallery.php\";}}s:7:\"abspath\";s:24:\"C:\\xampp\\htdocs\\charity/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:29:\"nextgen-gallery/nggallery.php\";s:8:\"sdk_path\";s:24:\"nextgen-gallery/freemius\";s:7:\"version\";s:5:\"2.3.0\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1590469869;}}', 'yes'),
(212, 'fs_debug_mode', '', 'yes'),
(213, 'fs_accounts', 'a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:266;a:3:{s:4:\"slug\";s:15:\"nextgen-gallery\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:29:\"nextgen-gallery/nggallery.php\";}}s:11:\"plugin_data\";a:1:{s:15:\"nextgen-gallery\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:29:\"nextgen-gallery/nggallery.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1590469869;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"3.3.5\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1590469869;s:7:\"version\";s:5:\"3.3.5\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1590469918;s:7:\"version\";s:5:\"3.3.5\";}}}s:13:\"file_slug_map\";a:1:{s:29:\"nextgen-gallery/nggallery.php\";s:15:\"nextgen-gallery\";}s:7:\"plugins\";a:1:{s:15:\"nextgen-gallery\";O:9:\"FS_Plugin\":22:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:15:\"NextGEN Gallery\";s:4:\"slug\";s:15:\"nextgen-gallery\";s:12:\"premium_slug\";s:23:\"nextgen-gallery-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:29:\"nextgen-gallery/nggallery.php\";s:7:\"version\";s:5:\"3.3.5\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:10:\"public_key\";s:32:\"pk_009356711cd548837f074e1ef60a4\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"266\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"058b7782d54c8f03360851401eecc690\";}', 'yes'),
(216, 'fs_api_cache', 'a:0:{}', 'yes'),
(217, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(220, 'widget_ngg-images', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(221, 'widget_ngg-mrssw', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(222, 'widget_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(223, 'ngg_transient_groups', 'a:7:{s:9:\"__counter\";i:7;s:16:\"WordPress-Router\";a:2:{s:2:\"id\";i:2;s:7:\"enabled\";b:1;}s:15:\"col_in_wp_posts\";a:2:{s:2:\"id\";i:3;s:7:\"enabled\";b:1;}s:21:\"col_in_wp_ngg_gallery\";a:2:{s:2:\"id\";i:4;s:7:\"enabled\";b:1;}s:22:\"col_in_wp_ngg_pictures\";a:2:{s:2:\"id\";i:5;s:7:\"enabled\";b:1;}s:27:\"displayed_gallery_rendering\";a:2:{s:2:\"id\";i:6;s:7:\"enabled\";b:1;}s:19:\"col_in_wp_ngg_album\";a:2:{s:2:\"id\";i:7;s:7:\"enabled\";b:1;}}', 'yes'),
(224, 'ngg_options', 'a:74:{s:11:\"gallerypath\";s:19:\"wp-content\\gallery\\\";s:11:\"wpmuCSSfile\";s:13:\"nggallery.css\";s:9:\"wpmuStyle\";b:0;s:9:\"wpmuRoles\";b:0;s:16:\"wpmuImportFolder\";b:0;s:13:\"wpmuZipUpload\";b:0;s:14:\"wpmuQuotaCheck\";b:0;s:17:\"datamapper_driver\";s:22:\"custom_post_datamapper\";s:20:\"maximum_entity_count\";i:500;s:17:\"router_param_slug\";s:9:\"nggallery\";s:22:\"router_param_separator\";s:2:\"--\";s:19:\"router_param_prefix\";s:0:\"\";s:9:\"deleteImg\";b:1;s:13:\"usePermalinks\";b:0;s:13:\"permalinkSlug\";s:9:\"nggallery\";s:14:\"graphicLibrary\";s:2:\"gd\";s:14:\"imageMagickDir\";s:15:\"/usr/local/bin/\";s:11:\"useMediaRSS\";b:0;s:18:\"galleries_in_feeds\";b:0;s:12:\"activateTags\";i:0;s:10:\"appendType\";s:4:\"tags\";s:9:\"maxImages\";i:7;s:14:\"relatedHeading\";s:24:\"<h3>Related Images:</h3>\";s:10:\"thumbwidth\";i:240;s:11:\"thumbheight\";i:160;s:8:\"thumbfix\";b:1;s:12:\"thumbquality\";i:100;s:8:\"imgWidth\";i:1800;s:9:\"imgHeight\";i:1200;s:10:\"imgQuality\";i:100;s:9:\"imgBackup\";b:1;s:13:\"imgAutoResize\";b:1;s:9:\"galImages\";s:2:\"24\";s:17:\"galPagedGalleries\";i:0;s:10:\"galColumns\";i:0;s:12:\"galShowSlide\";b:0;s:12:\"galTextSlide\";s:14:\"View Slideshow\";s:14:\"galTextGallery\";s:15:\"View Thumbnails\";s:12:\"galShowOrder\";s:7:\"gallery\";s:7:\"galSort\";s:9:\"sortorder\";s:10:\"galSortDir\";s:3:\"ASC\";s:10:\"galNoPages\";b:1;s:13:\"galImgBrowser\";i:0;s:12:\"galHiddenImg\";i:0;s:10:\"galAjaxNav\";i:1;s:11:\"thumbEffect\";s:14:\"simplelightbox\";s:9:\"thumbCode\";s:47:\"class=\"ngg-simplelightbox\" rel=\"%GALLERY_NAME%\"\";s:18:\"thumbEffectContext\";s:14:\"nextgen_images\";s:33:\"watermark_automatically_at_upload\";i:0;s:5:\"wmPos\";s:9:\"midCenter\";s:6:\"wmXpos\";i:15;s:6:\"wmYpos\";i:5;s:6:\"wmType\";s:4:\"text\";s:6:\"wmPath\";s:0:\"\";s:6:\"wmFont\";s:9:\"arial.ttf\";s:6:\"wmSize\";i:30;s:6:\"wmText\";s:7:\"Chairty\";s:7:\"wmColor\";s:6:\"ffffff\";s:8:\"wmOpaque\";s:2:\"33\";s:7:\"slideFX\";s:4:\"fade\";s:7:\"irWidth\";i:750;s:8:\"irHeight\";i:500;s:12:\"irRotatetime\";i:5;s:11:\"activateCSS\";i:1;s:7:\"CSSfile\";s:13:\"nggallery.css\";s:28:\"always_enable_frontend_logic\";b:0;s:27:\"use_alternate_random_method\";b:0;s:19:\"disable_fontawesome\";b:0;s:23:\"random_widget_cache_ttl\";i:30;s:22:\"dynamic_thumbnail_slug\";s:13:\"nextgen-image\";s:23:\"dynamic_stylesheet_slug\";s:12:\"nextgen-dcss\";s:11:\"installDate\";i:1590469917;s:13:\"gallery_count\";i:1;s:40:\"gallery_created_after_reviews_introduced\";b:1;}', 'yes'),
(226, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(227, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(228, 'ngg_db_version', '1.8.1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(231, 'pope_module_list', 'a:37:{i:0;s:19:\"photocrati-fs|3.1.8\";i:1;s:22:\"photocrati-i18n|3.2.10\";i:2;s:29:\"photocrati-validation|3.1.4.2\";i:3;s:25:\"photocrati-router|3.1.7.1\";i:4;s:34:\"photocrati-wordpress_routing|3.1.8\";i:5;s:25:\"photocrati-security|3.1.8\";i:6;s:33:\"photocrati-nextgen_settings|3.1.9\";i:7;s:20:\"photocrati-mvc|3.1.8\";i:8;s:21:\"photocrati-ajax|3.1.8\";i:9;s:28:\"photocrati-datamapper|3.1.19\";i:10;s:31:\"photocrati-nextgen-legacy|3.3.2\";i:11;s:32:\"photocrati-simple_html_dom|3.0.0\";i:12;s:29:\"photocrati-nextgen-data|3.3.2\";i:13;s:31:\"photocrati-nextgen_block|3.1.19\";i:14;s:36:\"photocrati-dynamic_thumbnails|3.2.13\";i:15;s:30:\"photocrati-nextgen_admin|3.3.2\";i:16;s:41:\"photocrati-nextgen_gallery_display|3.2.17\";i:17;s:36:\"photocrati-frame_communication|3.0.0\";i:18;s:32:\"photocrati-attach_to_post|3.2.21\";i:19;s:41:\"photocrati-nextgen_addgallery_page|3.2.17\";i:20;s:39:\"photocrati-nextgen_other_options|3.2.21\";i:21;s:37:\"photocrati-nextgen_pagination|3.0.0.2\";i:22;s:35:\"photocrati-dynamic_stylesheet|3.0.0\";i:23;s:37:\"photocrati-nextgen_pro_upgrade|3.2.23\";i:24;s:22:\"photocrati-cache|3.0.0\";i:25;s:26:\"photocrati-lightbox|3.1.19\";i:26;s:42:\"photocrati-nextgen_basic_templates|3.0.0.2\";i:27;s:38:\"photocrati-nextgen_basic_gallery|3.1.8\";i:28;s:43:\"photocrati-nextgen_basic_imagebrowser|3.3.2\";i:29;s:40:\"photocrati-nextgen_basic_singlepic|3.1.8\";i:30;s:39:\"photocrati-nextgen_basic_tagcloud|3.1.8\";i:31;s:36:\"photocrati-nextgen_basic_album|3.1.8\";i:32;s:23:\"photocrati-widget|3.1.6\";i:33;s:38:\"photocrati-third_party_compat|3.1.11.1\";i:34;s:32:\"photocrati-nextgen_xmlrpc|3.2.19\";i:35;s:22:\"photocrati-wpcli|3.0.0\";i:36;s:24:\"photocrati-imagify|3.1.8\";}', 'yes'),
(577, '_site_transient_timeout_browser_dd70097bb8ecd2de98c92d911571ff98', '1591350690', 'no'),
(578, '_site_transient_browser_dd70097bb8ecd2de98c92d911571ff98', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.61\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(579, '_site_transient_timeout_php_check_a5907c2ea4d6fbd7e531b3aa7734f0e4', '1591350691', 'no'),
(580, '_site_transient_php_check_a5907c2ea4d6fbd7e531b3aa7734f0e4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(688, '_transient_timeout_2___1343801766', '1591181403', 'no'),
(689, '_transient_2___1343801766', '[]', 'no'),
(691, '_site_transient_timeout_theme_roots', '1591180446', 'no'),
(692, '_site_transient_theme_roots', 'a:3:{s:9:\"bootstrap\";s:7:\"/themes\";s:7:\"chairty\";s:7:\"/themes\";s:3:\"img\";s:7:\"/themes\";}', 'no'),
(693, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1591178654;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.1.1\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:43:\"contextual-nav-menu/contextual-nav-menu.php\";s:5:\"1.2.1\";s:9:\"hello.php\";s:5:\"1.7.1\";s:29:\"nextgen-gallery/nggallery.php\";s:5:\"3.3.5\";s:25:\"option-tree/ot-loader.php\";s:5:\"2.7.3\";s:27:\"js_composer/js_composer.php\";s:5:\"5.5.2\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"js_composer/js_composer.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:11:\"js_composer\";s:11:\"new_version\";s:3:\"6.2\";s:3:\"url\";s:0:\"\";s:7:\"package\";b:1;s:4:\"name\";s:21:\"WPBakery Page Builder\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"contextual-nav-menu/contextual-nav-menu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/contextual-nav-menu\";s:4:\"slug\";s:19:\"contextual-nav-menu\";s:6:\"plugin\";s:43:\"contextual-nav-menu/contextual-nav-menu.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/contextual-nav-menu/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/contextual-nav-menu.1.2.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/contextual-nav-menu.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:29:\"nextgen-gallery/nggallery.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/nextgen-gallery\";s:4:\"slug\";s:15:\"nextgen-gallery\";s:6:\"plugin\";s:29:\"nextgen-gallery/nggallery.php\";s:11:\"new_version\";s:5:\"3.3.5\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/nextgen-gallery/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/nextgen-gallery.3.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/nextgen-gallery/assets/icon-256x256.png?rev=2083961\";s:2:\"1x\";s:68:\"https://ps.w.org/nextgen-gallery/assets/icon-128x128.png?rev=2083961\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/nextgen-gallery/assets/banner-1544x500.png?rev=2083961\";s:2:\"1x\";s:70:\"https://ps.w.org/nextgen-gallery/assets/banner-772x250.png?rev=2083961\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"option-tree/ot-loader.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/option-tree\";s:4:\"slug\";s:11:\"option-tree\";s:6:\"plugin\";s:25:\"option-tree/ot-loader.php\";s:11:\"new_version\";s:5:\"2.7.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/option-tree/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/option-tree.2.7.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/option-tree_363534.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/option-tree/assets/banner-772x250.png?rev=845297\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(694, '_transient_timeout_3___1395736393', '1591180453', 'no'),
(695, '_transient_3___1395736393', '[\"ID\",\"post_author\",\"post_date\",\"post_date_gmt\",\"post_content\",\"post_title\",\"post_excerpt\",\"post_status\",\"comment_status\",\"ping_status\",\"post_password\",\"post_name\",\"to_ping\",\"pinged\",\"post_modified\",\"post_modified_gmt\",\"post_content_filtered\",\"post_parent\",\"guid\",\"menu_order\",\"post_type\",\"post_mime_type\",\"comment_count\"]', 'no'),
(696, '_transient_timeout_4___1395736393', '1591180453', 'no'),
(697, '_transient_4___1395736393', '[\"gid\",\"name\",\"slug\",\"path\",\"title\",\"galdesc\",\"pageid\",\"previewpic\",\"author\",\"extras_post_id\"]', 'no'),
(698, '_transient_timeout_5___1395736393', '1591180453', 'no'),
(699, '_transient_5___1395736393', '[\"pid\",\"image_slug\",\"post_id\",\"galleryid\",\"filename\",\"description\",\"alttext\",\"imagedate\",\"exclude\",\"sortorder\",\"meta_data\",\"extras_post_id\",\"updated_at\"]', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(12, 6, '_menu_item_type', 'custom'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '6'),
(15, 6, '_menu_item_object', 'custom'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', '#'),
(66, 12, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(67, 12, '_edit_lock', '1590142509:1'),
(68, 13, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(69, 13, '_edit_last', '1'),
(70, 13, '_edit_lock', '1590143231:1'),
(71, 13, '_wp_page_template', 'default'),
(72, 13, '_wpb_vc_js_status', 'true'),
(73, 13, '_wp_trash_meta_status', 'publish'),
(74, 13, '_wp_trash_meta_time', '1590143373'),
(75, 13, '_wp_desired_post_slug', 'home'),
(76, 21, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(77, 22, '_wp_attached_file', '2020/05/slide1.jpg'),
(78, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:818;s:4:\"file\";s:18:\"2020/05/slide1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide1-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slide1-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 23, '_wp_attached_file', '2020/05/slide2.jpg'),
(80, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:818;s:4:\"file\";s:18:\"2020/05/slide2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide2-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slide2-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 24, '_wp_attached_file', '2020/05/img.jpg'),
(82, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:700;s:4:\"file\";s:15:\"2020/05/img.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"img-300x111.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"img-768x283.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"img-1024x377.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:377;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 25, '_wp_attached_file', '2020/05/img3.jpg'),
(84, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:700;s:4:\"file\";s:16:\"2020/05/img3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img3-300x111.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"img3-768x283.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"img3-1024x377.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:377;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 26, '_wp_attached_file', '2020/05/logo.png'),
(86, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:316;s:6:\"height\";i:95;s:4:\"file\";s:16:\"2020/05/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x95.png\";s:5:\"width\";i:150;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 2, '_edit_lock', '1590160634:1'),
(88, 27, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(89, 27, '_edit_last', '1'),
(90, 27, '_edit_lock', '1590160612:1'),
(91, 27, '_wp_page_template', 'default'),
(92, 27, '_wpb_vc_js_status', 'false'),
(93, 29, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(94, 29, '_menu_item_type', 'post_type'),
(95, 29, '_menu_item_menu_item_parent', '0'),
(96, 29, '_menu_item_object_id', '27'),
(97, 29, '_menu_item_object', 'page'),
(98, 29, '_menu_item_target', ''),
(99, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 29, '_menu_item_xfn', ''),
(101, 29, '_menu_item_url', ''),
(103, 6, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(108, 31, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(109, 32, '_wp_attached_file', '2020/05/test3.jpg'),
(110, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:17:\"2020/05/test3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"test3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"test3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 31, '_edit_last', '1'),
(112, 31, '_thumbnail_id', '32'),
(115, 31, '_edit_lock', '1590162984:1'),
(116, 1, '_edit_lock', '1590163912:1'),
(117, 34, '_wp_attached_file', '2020/05/test1.jpg'),
(118, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:17:\"2020/05/test1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"test1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"test1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 1, '_edit_last', '1'),
(120, 1, '_thumbnail_id', '32'),
(123, 1, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(124, 36, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(125, 36, '_edit_last', '1'),
(126, 36, '_edit_lock', '1590163351:1'),
(127, 37, '_wp_attached_file', '2020/05/test2.jpg'),
(128, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:17:\"2020/05/test2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"test2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"test2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 36, '_thumbnail_id', '37'),
(134, 39, '_wp_attached_file', '2020/05/gallery1.jpg'),
(135, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:20:\"2020/05/gallery1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery1-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 40, '_wp_attached_file', '2020/05/gallery2.jpg'),
(137, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:20:\"2020/05/gallery2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery2-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 41, '_wp_attached_file', '2020/05/gallery3.jpg'),
(139, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:20:\"2020/05/gallery3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery3-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 42, '_wp_attached_file', '2020/05/gallery4.jpg'),
(141, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:20:\"2020/05/gallery4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery4-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 43, '_wp_attached_file', '2020/05/gallery5.jpg'),
(143, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:20:\"2020/05/gallery5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery5-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 44, '_wp_attached_file', '2020/05/gallery6.jpg'),
(145, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:20:\"2020/05/gallery6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery6-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 45, '_wp_attached_file', '2020/05/gallery7.jpg'),
(147, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:20:\"2020/05/gallery7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery7-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 46, '_wp_attached_file', '2020/05/gallery8.jpg'),
(149, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:20:\"2020/05/gallery8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery8-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 47, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(151, 47, '_edit_last', '1'),
(152, 47, '_edit_lock', '1590165272:1'),
(153, 48, '_wp_attached_file', '2020/05/ourmoto.jpg'),
(154, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:174;s:4:\"file\";s:19:\"2020/05/ourmoto.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"ourmoto-150x87.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"ourmoto-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 47, '_wp_page_template', 'default'),
(156, 47, '_wpb_vc_js_status', 'false'),
(157, 50, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(158, 50, '_menu_item_type', 'post_type'),
(159, 50, '_menu_item_menu_item_parent', '0'),
(160, 50, '_menu_item_object_id', '47'),
(161, 50, '_menu_item_object', 'page'),
(162, 50, '_menu_item_target', ''),
(163, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(164, 50, '_menu_item_xfn', ''),
(165, 50, '_menu_item_url', ''),
(167, 54, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(168, 54, '_edit_last', '1'),
(169, 54, '_wp_page_template', 'default'),
(170, 54, '_wpb_vc_js_status', 'false'),
(171, 54, '_edit_lock', '1590165251:1'),
(172, 56, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(173, 56, '_menu_item_type', 'post_type'),
(174, 56, '_menu_item_menu_item_parent', '0'),
(175, 56, '_menu_item_object_id', '54'),
(176, 56, '_menu_item_object', 'page'),
(177, 56, '_menu_item_target', ''),
(178, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 56, '_menu_item_xfn', ''),
(180, 56, '_menu_item_url', ''),
(182, 57, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(183, 57, '_edit_last', '1'),
(184, 57, '_edit_lock', '1590165561:1'),
(185, 58, '_wp_attached_file', '2020/05/donate.jpg'),
(186, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:177;s:4:\"file\";s:18:\"2020/05/donate.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"donate-150x89.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:89;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"donate-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 59, '_wp_attached_file', '2020/05/donate1.jpg'),
(188, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:184;s:4:\"file\";s:19:\"2020/05/donate1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"donate1-150x92.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:92;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"donate1-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 57, '_wp_page_template', 'default'),
(190, 57, '_wpb_vc_js_status', 'false'),
(191, 61, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(192, 61, '_menu_item_type', 'post_type'),
(193, 61, '_menu_item_menu_item_parent', '0'),
(194, 61, '_menu_item_object_id', '57'),
(195, 61, '_menu_item_object', 'page'),
(196, 61, '_menu_item_target', ''),
(197, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(198, 61, '_menu_item_xfn', ''),
(199, 61, '_menu_item_url', ''),
(324, 69, '__defaults_set', '1'),
(325, 69, 'filter', 'raw'),
(326, 69, 'id_field', 'ID'),
(336, 71, '__defaults_set', '1'),
(337, 71, 'filter', 'raw'),
(338, 71, 'id_field', 'ID'),
(348, 72, '__defaults_set', '1'),
(349, 72, 'filter', 'raw'),
(350, 72, 'id_field', 'ID'),
(360, 73, '__defaults_set', '1'),
(361, 73, 'filter', 'raw'),
(362, 73, 'id_field', 'ID'),
(372, 74, '__defaults_set', '1'),
(373, 74, 'filter', 'raw'),
(374, 74, 'id_field', 'ID'),
(384, 75, '__defaults_set', '1'),
(385, 75, 'filter', 'raw'),
(386, 75, 'id_field', 'ID'),
(396, 76, '__defaults_set', '1'),
(397, 76, 'filter', 'raw'),
(398, 76, 'id_field', 'ID'),
(408, 77, '__defaults_set', '1'),
(409, 77, 'filter', 'raw'),
(410, 77, 'id_field', 'ID'),
(411, 70, '__defaults_set', '1'),
(412, 70, 'filter', 'raw'),
(413, 70, 'id_field', 'ID'),
(414, 78, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(415, 78, '_edit_last', '1'),
(416, 78, '_edit_lock', '1590471270:1'),
(417, 78, '_wp_page_template', 'default'),
(418, 78, '_wpb_vc_js_status', 'false'),
(557, 62, 'filter', 'raw'),
(558, 62, 'meta_id', '206'),
(559, 62, 'post_id', '62'),
(560, 62, 'meta_key', 'name'),
(561, 62, 'meta_value', 'photocrati-nextgen_basic_thumbnails'),
(562, 62, 'title', 'NextGEN Basic Thumbnails'),
(563, 62, 'module_id', 'photocrati-nextgen_basic_gallery'),
(564, 62, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#thumb_preview.jpg'),
(565, 62, 'default_source', 'galleries'),
(566, 62, 'view_order', '10000'),
(567, 62, 'name', 'photocrati-nextgen_basic_thumbnails'),
(568, 62, 'installed_at_version', '3.3.5'),
(569, 62, 'hidden_from_ui', ''),
(570, 62, 'hidden_from_igw', ''),
(571, 62, '__defaults_set', '1'),
(572, 62, 'entity_types', 'WyJpbWFnZSJd'),
(573, 62, 'aliases', 'WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0='),
(574, 62, 'id_field', 'ID'),
(575, 62, 'settings', 'eyJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIwIiwidGh1bWJuYWlsX3dpZHRoIjoiMjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjE2MCIsInRodW1ibmFpbF9jcm9wIjoiMCIsImltYWdlc19wZXJfcGFnZSI6IjI0IiwibnVtYmVyX29mX2NvbHVtbnMiOiIwIiwiYWpheF9wYWdpbmF0aW9uIjoiMSIsInNob3dfYWxsX2luX2xpZ2h0Ym94IjoiMCIsInVzZV9pbWFnZWJyb3dzZXJfZWZmZWN0IjoiMSIsInNob3dfc2xpZGVzaG93X2xpbmsiOiIwIiwic2xpZGVzaG93X2xpbmtfdGV4dCI6IlZpZXcgU2xpZGVzaG93IiwiZGlzcGxheV92aWV3IjoiZGVmYXVsdC12aWV3LnBocCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(577, 63, 'filter', 'raw'),
(578, 63, 'meta_id', '222'),
(579, 63, 'post_id', '63'),
(580, 63, 'meta_key', 'name'),
(581, 63, 'meta_value', 'photocrati-nextgen_basic_slideshow'),
(582, 63, 'title', 'NextGEN Basic Slideshow'),
(583, 63, 'module_id', 'photocrati-nextgen_basic_gallery'),
(584, 63, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#slideshow_preview.jpg'),
(585, 63, 'default_source', 'galleries'),
(586, 63, 'view_order', '10010'),
(587, 63, 'name', 'photocrati-nextgen_basic_slideshow'),
(588, 63, 'installed_at_version', '3.3.5'),
(589, 63, 'hidden_from_ui', ''),
(590, 63, 'hidden_from_igw', ''),
(591, 63, '__defaults_set', '1'),
(592, 63, 'entity_types', 'WyJpbWFnZSJd'),
(593, 63, 'aliases', 'WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJd'),
(594, 63, 'id_field', 'ID'),
(595, 63, 'settings', 'eyJnYWxsZXJ5X3dpZHRoIjoiNzUwIiwiZ2FsbGVyeV9oZWlnaHQiOiI1MDAiLCJhdXRvcGxheSI6IjEiLCJwYXVzZW9uaG92ZXIiOiIxIiwiYXJyb3dzIjoiMCIsInRyYW5zaXRpb25fc3R5bGUiOiJmYWRlIiwiaW50ZXJ2YWwiOiIzMDAwIiwidHJhbnNpdGlvbl9zcGVlZCI6IjMwMCIsInNob3dfdGh1bWJuYWlsX2xpbmsiOiIwIiwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IlZpZXcgVGh1bWJuYWlscyIsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0='),
(597, 64, 'filter', 'raw'),
(598, 64, 'meta_id', '237'),
(599, 64, 'post_id', '64'),
(600, 64, 'meta_key', 'name'),
(601, 64, 'meta_value', 'photocrati-nextgen_basic_imagebrowser'),
(602, 64, 'title', 'NextGEN Basic ImageBrowser'),
(603, 64, 'preview_image_relpath', 'photocrati-nextgen_basic_imagebrowser#preview.jpg'),
(604, 64, 'default_source', 'galleries'),
(605, 64, 'view_order', '10020'),
(606, 64, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(607, 64, 'installed_at_version', '3.3.5'),
(608, 64, 'hidden_from_ui', ''),
(609, 64, 'hidden_from_igw', ''),
(610, 64, '__defaults_set', '1'),
(611, 64, 'entity_types', 'WyJpbWFnZSJd'),
(612, 64, 'aliases', 'WyJiYXNpY19pbWFnZWJyb3dzZXIiLCJpbWFnZWJyb3dzZXIiLCJuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciJd'),
(613, 64, 'id_field', 'ID'),
(614, 64, 'settings', 'eyJhamF4X3BhZ2luYXRpb24iOiIxIiwiZGlzcGxheV92aWV3IjoiZGVmYXVsdC12aWV3LnBocCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(616, 65, 'filter', 'raw'),
(617, 65, 'meta_id', '254'),
(618, 65, 'post_id', '65'),
(619, 65, 'meta_key', 'name'),
(620, 65, 'meta_value', 'photocrati-nextgen_basic_singlepic'),
(621, 65, 'title', 'NextGEN Basic SinglePic'),
(622, 65, 'preview_image_relpath', 'photocrati-nextgen_basic_singlepic#preview.gif'),
(623, 65, 'default_source', 'galleries'),
(624, 65, 'view_order', '10060'),
(625, 65, 'hidden_from_ui', '1'),
(626, 65, 'hidden_from_igw', '1'),
(627, 65, 'name', 'photocrati-nextgen_basic_singlepic'),
(628, 65, 'installed_at_version', '3.3.5'),
(629, 65, '__defaults_set', '1'),
(630, 65, 'entity_types', 'WyJpbWFnZSJd'),
(631, 65, 'aliases', 'WyJiYXNpY19zaW5nbGVwaWMiLCJzaW5nbGVwaWMiLCJuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyJd'),
(632, 65, 'id_field', 'ID'),
(633, 65, 'settings', 'eyJ3aWR0aCI6IiIsImhlaWdodCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsImZsb2F0IjoiIiwicXVhbGl0eSI6IjEwMCIsImNyb3AiOiIwIiwiZGlzcGxheV93YXRlcm1hcmsiOiIwIiwiZGlzcGxheV9yZWZsZWN0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibW9kZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0='),
(635, 66, 'filter', 'raw'),
(636, 66, 'meta_id', '267'),
(637, 66, 'post_id', '66'),
(638, 66, 'meta_key', 'name'),
(639, 66, 'meta_value', 'photocrati-nextgen_basic_tagcloud'),
(640, 66, 'title', 'NextGEN Basic TagCloud'),
(641, 66, 'preview_image_relpath', 'photocrati-nextgen_basic_tagcloud#preview.gif'),
(642, 66, 'default_source', 'tags'),
(643, 66, 'view_order', '10100'),
(644, 66, 'name', 'photocrati-nextgen_basic_tagcloud'),
(645, 66, 'installed_at_version', '3.3.5'),
(646, 66, 'hidden_from_ui', ''),
(647, 66, 'hidden_from_igw', ''),
(648, 66, '__defaults_set', '1'),
(649, 66, 'entity_types', 'WyJpbWFnZSJd'),
(650, 66, 'aliases', 'WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJd'),
(651, 66, 'id_field', 'ID'),
(652, 66, 'settings', 'eyJudW1iZXIiOiI0NSIsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(654, 67, 'filter', 'raw'),
(655, 67, 'meta_id', '283'),
(656, 67, 'post_id', '67'),
(657, 67, 'meta_key', 'name'),
(658, 67, 'meta_value', 'photocrati-nextgen_basic_compact_album'),
(659, 67, 'title', 'NextGEN Basic Compact Album'),
(660, 67, 'module_id', 'photocrati-nextgen_basic_album'),
(661, 67, 'preview_image_relpath', 'photocrati-nextgen_basic_album#compact_preview.jpg'),
(662, 67, 'default_source', 'albums'),
(663, 67, 'view_order', '10200'),
(664, 67, 'name', 'photocrati-nextgen_basic_compact_album'),
(665, 67, 'installed_at_version', '3.3.5'),
(666, 67, 'hidden_from_ui', ''),
(667, 67, 'hidden_from_igw', ''),
(668, 67, '__defaults_set', '1'),
(669, 67, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(670, 67, 'aliases', 'WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0='),
(671, 67, 'id_field', 'ID'),
(672, 67, 'settings', 'eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJlbmFibGVfZGVzY3JpcHRpb25zIjoiMCIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjEiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0='),
(674, 68, 'filter', 'raw'),
(675, 68, 'meta_id', '299'),
(676, 68, 'post_id', '68'),
(677, 68, 'meta_key', 'name'),
(678, 68, 'meta_value', 'photocrati-nextgen_basic_extended_album'),
(679, 68, 'title', 'NextGEN Basic Extended Album'),
(680, 68, 'module_id', 'photocrati-nextgen_basic_album'),
(681, 68, 'preview_image_relpath', 'photocrati-nextgen_basic_album#extended_preview.jpg'),
(682, 68, 'default_source', 'albums'),
(683, 68, 'view_order', '10210'),
(684, 68, 'name', 'photocrati-nextgen_basic_extended_album'),
(685, 68, 'installed_at_version', '3.3.5'),
(686, 68, 'hidden_from_ui', ''),
(687, 68, 'hidden_from_igw', ''),
(688, 68, '__defaults_set', '1'),
(689, 68, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(690, 68, 'aliases', 'WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJd'),
(691, 68, 'id_field', 'ID'),
(692, 68, 'settings', 'eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJlbmFibGVfZGVzY3JpcHRpb25zIjoiMCIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjEiLCJ0aHVtYm5haWxfd2lkdGgiOiIzMDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMjAwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0='),
(693, 88, '_wp_attached_file', '2020/05/eemanlogo.png'),
(694, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:78;s:4:\"file\";s:21:\"2020/05/eemanlogo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"eemanlogo-150x39.png\";s:5:\"width\";i:150;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"eemanlogo-300x78.png\";s:5:\"width\";i:300;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(695, 89, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(696, 89, '_edit_last', '1'),
(697, 89, '_wp_page_template', 'contact.php'),
(698, 89, '_wpb_vc_js_status', 'false'),
(699, 89, '_edit_lock', '1590755561:1'),
(700, 91, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(701, 91, '_edit_last', '1'),
(702, 91, '_wp_page_template', 'contacts.php'),
(703, 91, '_wpb_vc_js_status', 'false'),
(704, 91, '_edit_lock', '1590729980:1'),
(705, 93, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-05-22 09:42:29', '2020-05-22 09:42:29', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-05-22 16:09:37', '2020-05-22 16:09:37', '', 0, 'http://localhost/charity/?p=1', 0, 'post', '', 1),
(2, 1, '2020-05-22 09:42:29', '2020-05-22 09:42:29', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/charity/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-05-22 09:42:29', '2020-05-22 09:42:29', '', 0, 'http://localhost/charity/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-05-22 09:42:29', '2020-05-22 09:42:29', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/charity.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-05-22 09:42:29', '2020-05-22 09:42:29', '', 0, 'http://localhost/charity/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-05-22 10:00:52', '2020-05-22 10:00:52', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-06-02 12:11:57', '2020-06-02 12:11:57', '', 0, 'http://localhost/charity/?p=6', 1, 'nav_menu_item', '', 0),
(12, 1, '2020-05-22 10:10:40', '0000-00-00 00:00:00', '<!-- wp:gallery -->\n<ul class=\"wp-block-gallery columns-0 is-cropped\"></ul>\n<!-- /wp:gallery -->', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-22 10:10:40', '2020-05-22 10:10:40', '', 0, 'http://localhost/charity/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-05-22 10:14:54', '2020-05-22 10:14:54', '[vc_row][vc_column][vc_custom_heading text=\"ABOUT CHARITY HOPE\" font_container=\"tag:h1|font_size:48|text_align:center|color:%23ec1d25\" google_fonts=\"font_family:Open%20Sans%3A300%2C300italic%2Cregular%2Citalic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic|font_style:700%20bold%20regular%3A700%3Anormal\"][vc_separator color=\"pink\" border_width=\"3\" el_width=\"30\"][vc_column_text]\r\n<h5 style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h5>\r\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: center;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_section][vc_row][vc_column][vc_icon icon_fontawesome=\"fa fa-heart\" color=\"juicy_pink\" background_style=\"boxed\" background_color=\"white\" size=\"lg\" css_animation=\"bounceIn\" el_class=\"grid-content-left\"][/vc_column][/vc_row][/vc_section]', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2020-05-22 10:29:33', '2020-05-22 10:29:33', '', 0, 'http://localhost/charity/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-05-22 10:14:54', '2020-05-22 10:14:54', '[vc_row][vc_column][vc_custom_heading text=\"ABOUT CHARITY HOPE\" font_container=\"tag:h1|font_size:48|text_align:center|color:%23dd2121|line_height:52\"][/vc_column][/vc_row]', '', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-22 10:14:54', '2020-05-22 10:14:54', '', 13, 'http://localhost/charity/2020/05/22/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-05-22 10:15:33', '2020-05-22 10:15:33', '[vc_row][vc_column][vc_custom_heading text=\"ABOUT CHARITY HOPE\" font_container=\"tag:h1|font_size:48|text_align:center|color:%23dd2121|line_height:52\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-22 10:15:33', '2020-05-22 10:15:33', '', 13, 'http://localhost/charity/2020/05/22/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-05-22 10:28:18', '2020-05-22 10:28:18', '[vc_row][vc_column][vc_custom_heading text=\"ABOUT CHARITY HOPE\" font_container=\"tag:h1|font_size:48|text_align:center|color:%23ec1d25\" google_fonts=\"font_family:Open%20Sans%3A300%2C300italic%2Cregular%2Citalic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic|font_style:700%20bold%20regular%3A700%3Anormal\"][vc_separator color=\"pink\" border_width=\"3\" el_width=\"30\"][vc_column_text]\n<h5 style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h5>\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p style=\"text-align: center;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.</p>\n[/vc_column_text][/vc_column][/vc_row][vc_section][vc_row][vc_column][vc_icon icon_fontawesome=\"fa fa-heart\" color=\"juicy_pink\" background_style=\"boxed\" background_color=\"white\" size=\"lg\" css_animation=\"bounceIn\" el_class=\"grid-content-left\"][/vc_column][/vc_row][/vc_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2020-05-22 10:28:18', '2020-05-22 10:28:18', '', 13, 'http://localhost/charity/2020/05/22/13-autosave-v1/', 0, 'revision', '', 0),
(17, 1, '2020-05-22 10:20:34', '2020-05-22 10:20:34', '[vc_row][vc_column][vc_custom_heading text=\"ABOUT CHARITY HOPE\" font_container=\"tag:h1|font_size:48|text_align:center|color:%23dd2121\"][vc_separator el_width=\"30\"][vc_column_text]\r\n<h5 style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h5>\r\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: center;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-22 10:20:34', '2020-05-22 10:20:34', '', 13, 'http://localhost/charity/2020/05/22/13-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-05-22 10:23:22', '2020-05-22 10:23:22', '[vc_row][vc_column][vc_custom_heading text=\"ABOUT CHARITY HOPE\" font_container=\"tag:h1|font_size:48|text_align:center|color:%23ec1d25\" google_fonts=\"font_family:Open%20Sans%3A300%2C300italic%2Cregular%2Citalic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic|font_style:700%20bold%20regular%3A700%3Anormal\"][vc_separator color=\"pink\" border_width=\"3\" el_width=\"30\"][vc_column_text]\r\n<h5 style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h5>\r\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: center;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-22 10:23:22', '2020-05-22 10:23:22', '', 13, 'http://localhost/charity/2020/05/22/13-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-05-22 10:26:52', '2020-05-22 10:26:52', '[vc_row][vc_column][vc_custom_heading text=\"ABOUT CHARITY HOPE\" font_container=\"tag:h1|font_size:48|text_align:center|color:%23ec1d25\" google_fonts=\"font_family:Open%20Sans%3A300%2C300italic%2Cregular%2Citalic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic|font_style:700%20bold%20regular%3A700%3Anormal\"][vc_separator color=\"pink\" border_width=\"3\" el_width=\"30\"][vc_column_text]\r\n<h5 style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h5>\r\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: center;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_section][vc_row][vc_column][vc_icon icon_fontawesome=\"fa fa-heart\" color=\"juicy_pink\" background_style=\"boxed\" background_color=\"white\" el_class=\"grid-content-left\"][/vc_column][/vc_row][/vc_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-22 10:26:52', '2020-05-22 10:26:52', '', 13, 'http://localhost/charity/2020/05/22/13-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-05-22 10:27:43', '2020-05-22 10:27:43', '[vc_row][vc_column][vc_custom_heading text=\"ABOUT CHARITY HOPE\" font_container=\"tag:h1|font_size:48|text_align:center|color:%23ec1d25\" google_fonts=\"font_family:Open%20Sans%3A300%2C300italic%2Cregular%2Citalic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic|font_style:700%20bold%20regular%3A700%3Anormal\"][vc_separator color=\"pink\" border_width=\"3\" el_width=\"30\"][vc_column_text]\r\n<h5 style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h5>\r\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: center;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_section][vc_row][vc_column][vc_icon icon_fontawesome=\"fa fa-heart\" color=\"juicy_pink\" background_style=\"boxed\" background_color=\"white\" size=\"lg\" css_animation=\"bounceIn\" el_class=\"grid-content-left\"][/vc_column][/vc_row][/vc_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-22 10:27:43', '2020-05-22 10:27:43', '', 13, 'http://localhost/charity/2020/05/22/13-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-05-22 10:30:16', '2020-05-22 10:30:16', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2020-05-22 10:30:16', '2020-05-22 10:30:16', '', 0, 'http://localhost/charity/?option-tree=media', 0, 'option-tree', '', 0),
(22, 1, '2020-05-22 10:58:02', '2020-05-22 10:58:02', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2020-05-22 10:58:02', '2020-05-22 10:58:02', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2020-05-22 10:58:33', '2020-05-22 10:58:33', '', 'slide2', '', 'inherit', 'open', 'closed', '', 'slide2', '', '', '2020-05-22 10:58:33', '2020-05-22 10:58:33', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/slide2.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2020-05-22 11:19:26', '2020-05-22 11:19:26', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2020-05-22 11:19:26', '2020-05-22 11:19:26', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/img.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-05-22 11:19:50', '2020-05-22 11:19:50', '', 'img3', '', 'inherit', 'open', 'closed', '', 'img3', '', '', '2020-05-22 11:19:50', '2020-05-22 11:19:50', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2020-05-22 12:08:08', '2020-05-22 12:08:08', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-05-22 12:08:08', '2020-05-22 12:08:08', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/logo.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2020-05-22 15:14:37', '2020-05-22 15:14:37', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-05-22 15:16:49', '2020-05-22 15:16:49', '', 0, 'http://localhost/charity/?page_id=27', 0, 'page', '', 0),
(28, 1, '2020-05-22 15:14:37', '2020-05-22 15:14:37', '<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\">\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n\r\nLorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget_text col-md-3\">\r\n<div class=\"widget_text single_item\">\r\n<div class=\"textwidget custom-html-widget\">\r\n<div class=\"single_item\">\r\n<div class=\"item_list\">\r\n<div class=\"welcome_icon\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-05-22 15:14:37', '2020-05-22 15:14:37', '', 27, 'http://localhost/charity/2020/05/22/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-05-22 15:15:16', '2020-05-22 15:15:16', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-06-02 12:11:57', '2020-06-02 12:11:57', '', 0, 'http://localhost/charity/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2020-05-22 15:16:49', '2020-05-22 15:16:49', 'This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:This is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-05-22 15:16:49', '2020-05-22 15:16:49', '', 27, 'http://localhost/charity/2020/05/22/27-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-05-22 15:44:22', '2020-05-22 15:44:22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'NEPAL EARTHQUAKE: CLEAN WATER INITIATIVE', '', 'publish', 'open', 'open', '', 'nepal-earthquake-clean-water-initiative', '', '', '2020-05-22 15:44:22', '2020-05-22 15:44:22', '', 0, 'http://localhost/charity/?p=31', 0, 'post', '', 0),
(32, 1, '2020-05-22 15:44:14', '2020-05-22 15:44:14', '', 'test3', '', 'inherit', 'open', 'closed', '', 'test3', '', '', '2020-05-22 15:44:14', '2020-05-22 15:44:14', '', 31, 'http://localhost/charity/wp-content/uploads/2020/05/test3.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(33, 1, '2020-05-22 15:44:22', '2020-05-22 15:44:22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'NEPAL EARTHQUAKE: CLEAN WATER INITIATIVE', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-05-22 15:44:22', '2020-05-22 15:44:22', '', 31, 'http://localhost/charity/2020/05/22/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-05-22 15:59:32', '2020-05-22 15:59:32', '', 'test1', '', 'inherit', 'open', 'closed', '', 'test1', '', '', '2020-05-22 15:59:32', '2020-05-22 15:59:32', '', 1, 'http://localhost/charity/wp-content/uploads/2020/05/test1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-05-22 15:59:37', '2020-05-22 15:59:37', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-22 15:59:37', '2020-05-22 15:59:37', '', 1, 'http://localhost/charity/2020/05/22/1-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-05-22 16:00:48', '2020-05-22 16:00:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2020-05-22 16:00:48', '2020-05-22 16:00:48', '', 0, 'http://localhost/charity/?p=36', 0, 'post', '', 0),
(37, 1, '2020-05-22 16:00:41', '2020-05-22 16:00:41', '', 'test2', '', 'inherit', 'open', 'closed', '', 'test2', '', '', '2020-05-22 16:00:41', '2020-05-22 16:00:41', '', 36, 'http://localhost/charity/wp-content/uploads/2020/05/test2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-05-22 16:00:48', '2020-05-22 16:00:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'test', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-05-22 16:00:48', '2020-05-22 16:00:48', '', 36, 'http://localhost/charity/2020/05/22/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-05-22 16:15:44', '2020-05-22 16:15:44', '', 'gallery1', '', 'inherit', 'open', 'closed', '', 'gallery1', '', '', '2020-05-22 16:15:44', '2020-05-22 16:15:44', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/gallery1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-05-22 16:15:46', '2020-05-22 16:15:46', '', 'gallery2', '', 'inherit', 'open', 'closed', '', 'gallery2', '', '', '2020-05-22 16:15:46', '2020-05-22 16:15:46', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/gallery2.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-05-22 16:15:47', '2020-05-22 16:15:47', '', 'gallery3', '', 'inherit', 'open', 'closed', '', 'gallery3', '', '', '2020-05-22 16:15:47', '2020-05-22 16:15:47', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/gallery3.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-05-22 16:15:48', '2020-05-22 16:15:48', '', 'gallery4', '', 'inherit', 'open', 'closed', '', 'gallery4', '', '', '2020-05-22 16:15:48', '2020-05-22 16:15:48', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/gallery4.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-05-22 16:15:49', '2020-05-22 16:15:49', '', 'gallery5', '', 'inherit', 'open', 'closed', '', 'gallery5', '', '', '2020-05-22 16:15:49', '2020-05-22 16:15:49', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/gallery5.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-05-22 16:15:50', '2020-05-22 16:15:50', '', 'gallery6', '', 'inherit', 'open', 'closed', '', 'gallery6', '', '', '2020-05-22 16:15:50', '2020-05-22 16:15:50', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/gallery6.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-05-22 16:15:51', '2020-05-22 16:15:51', '', 'gallery7', '', 'inherit', 'open', 'closed', '', 'gallery7', '', '', '2020-05-22 16:15:51', '2020-05-22 16:15:51', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/gallery7.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-05-22 16:15:52', '2020-05-22 16:15:52', '', 'gallery8', '', 'inherit', 'open', 'closed', '', 'gallery8', '', '', '2020-05-22 16:15:52', '2020-05-22 16:15:52', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/gallery8.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2020-05-22 16:28:50', '2020-05-22 16:28:50', '<p style=\"text-align: center;\"><strong><img class=\"wp-image-48 size-full aligncenter\" src=\"http://localhost/charity/wp-content/uploads/2020/05/ourmoto.jpg\" alt=\"\" width=\"300\" height=\"174\" /></strong></p>\r\n&nbsp;\r\n<p style=\"text-align: left;\"><strong>My dear Muslim brothers &amp; sisters, Assalamualaikum</strong></p>\r\nI have established “EEMAAN” foundation this year with the intention to help poor and needy Muslims.\r\nWe are based at Karimnagar, India. Our foundation provides food to the old and orphans, medical facilities to the poor sections, financial help for marriages of poor girls of the community.For the last (4) months I have been providing new clothes to the poor muslims on the occasion of Ramzan and provided ration for one month to (6) poor people. I have arranged utensils for brides for their marriages and given financial assistance to (8) madarsas.\r\n\r\nI want to provide support to the illiterate Muslims children to make them educated through Madarsas and also want to start “Sabahi Talim”. Similarly for this purpose, Imams will be given financial assistance of Rs.500/- to Rs.1000/-. I would like to launch a program to do minor repairs to mosques of the Rural area.\r\n\r\nI would like to initiate payment of Rs.200/- PM to 20 old age poor people and Muslim widows, who do not have means of living. Hence,\r\nI request all the Muslim brothers/sisters for your financial assistance as Charity and inshallah you will be rewarded immensely by Allah Subahnawatalah.\r\nI appeal all my brothers in Islam to strengthen my Organisation for the sake of Allah in order to implement all the above charitable activities for the poorer sections of the Muslims. May Allah protect our Imaan and give us peace and prosperity. You can give zakat or charity and earn the Rahmath of Allah.\r\n\r\n<strong>You can give zakat or charity and earn the Rahmath of Allah. If you want to render financial assistance you can send the amount by transfer to my</strong>\r\n<strong>SB A/c. No.403801502280 of ICICI Bank, Karimnagar IFSC Code.ICIC0000438. May Allah’s mercy be on all of us. Ameen.</strong>\r\n\r\n<strong>Jazakallahu Khairun.</strong>\r\n<strong>admin</strong>', 'Our Motto', '', 'publish', 'closed', 'closed', '', 'our-motto', '', '', '2020-05-22 16:34:30', '2020-05-22 16:34:30', '', 0, 'http://localhost/charity/?page_id=47', 0, 'page', '', 0),
(48, 1, '2020-05-22 16:28:29', '2020-05-22 16:28:29', '', 'ourmoto', '', 'inherit', 'open', 'closed', '', 'ourmoto', '', '', '2020-05-22 16:28:29', '2020-05-22 16:28:29', '', 47, 'http://localhost/charity/wp-content/uploads/2020/05/ourmoto.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-05-22 16:28:50', '2020-05-22 16:28:50', '<strong><img class=\"size-medium wp-image-48 aligncenter\" src=\"http://localhost/charity/wp-content/uploads/2020/05/ourmoto-300x174.jpg\" alt=\"\" width=\"300\" height=\"174\" />My dear Muslim brothers &amp; sisters, Assalamualaikum</strong>\r\n\r\nI have established “EEMAAN” foundation this year with the intention to help poor and needy Muslims.\r\nWe are based at Karimnagar, India. Our foundation provides food to the old and orphans, medical facilities to the poor sections, financial help for marriages of poor girls of the community.For the last (4) months I have been providing new clothes to the poor muslims on the occasion of Ramzan and provided ration for one month to (6) poor people. I have arranged utensils for brides for their marriages and given financial assistance to (8) madarsas.\r\n\r\nI want to provide support to the illiterate Muslims children to make them educated through Madarsas and also want to start “Sabahi Talim”. Similarly for this purpose, Imams will be given financial assistance of Rs.500/- to Rs.1000/-. I would like to launch a program to do minor repairs to mosques of the Rural area.\r\n\r\nI would like to initiate payment of Rs.200/- PM to 20 old age poor people and Muslim widows, who do not have means of living. Hence,\r\nI request all the Muslim brothers/sisters for your financial assistance as Charity and inshallah you will be rewarded immensely by Allah Subahnawatalah.\r\nI appeal all my brothers in Islam to strengthen my Organisation for the sake of Allah in order to implement all the above charitable activities for the poorer sections of the Muslims. May Allah protect our Imaan and give us peace and prosperity. You can give zakat or charity and earn the Rahmath of Allah.\r\n\r\n<strong>You can give zakat or charity and earn the Rahmath of Allah. If you want to render financial assistance you can send the amount by transfer to my</strong>\r\n<strong>SB A/c. No.403801502280 of ICICI Bank, Karimnagar IFSC Code.ICIC0000438. May Allah’s mercy be on all of us. Ameen.</strong>\r\n\r\n<strong>Jazakallahu Khairun.</strong>\r\n<strong>admin</strong>', 'Our Motto', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-22 16:28:50', '2020-05-22 16:28:50', '', 47, 'http://localhost/charity/2020/05/22/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-05-22 16:29:16', '2020-05-22 16:29:16', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-06-02 12:11:57', '2020-06-02 12:11:57', '', 0, 'http://localhost/charity/?p=50', 3, 'nav_menu_item', '', 0),
(51, 1, '2020-05-22 16:30:45', '2020-05-22 16:30:45', '<strong><img class=\"size-medium wp-image-48 aligncenter\" src=\"http://localhost/charity/wp-content/uploads/2020/05/ourmoto-300x174.jpg\" alt=\"\" width=\"300\" height=\"174\" /></strong>\r\n\r\n&nbsp;\r\n\r\n<strong>My dear Muslim brothers &amp; sisters, Assalamualaikum</strong>\r\n\r\nI have established “EEMAAN” foundation this year with the intention to help poor and needy Muslims.\r\nWe are based at Karimnagar, India. Our foundation provides food to the old and orphans, medical facilities to the poor sections, financial help for marriages of poor girls of the community.For the last (4) months I have been providing new clothes to the poor muslims on the occasion of Ramzan and provided ration for one month to (6) poor people. I have arranged utensils for brides for their marriages and given financial assistance to (8) madarsas.\r\n\r\nI want to provide support to the illiterate Muslims children to make them educated through Madarsas and also want to start “Sabahi Talim”. Similarly for this purpose, Imams will be given financial assistance of Rs.500/- to Rs.1000/-. I would like to launch a program to do minor repairs to mosques of the Rural area.\r\n\r\nI would like to initiate payment of Rs.200/- PM to 20 old age poor people and Muslim widows, who do not have means of living. Hence,\r\nI request all the Muslim brothers/sisters for your financial assistance as Charity and inshallah you will be rewarded immensely by Allah Subahnawatalah.\r\nI appeal all my brothers in Islam to strengthen my Organisation for the sake of Allah in order to implement all the above charitable activities for the poorer sections of the Muslims. May Allah protect our Imaan and give us peace and prosperity. You can give zakat or charity and earn the Rahmath of Allah.\r\n\r\n<strong>You can give zakat or charity and earn the Rahmath of Allah. If you want to render financial assistance you can send the amount by transfer to my</strong>\r\n<strong>SB A/c. No.403801502280 of ICICI Bank, Karimnagar IFSC Code.ICIC0000438. May Allah’s mercy be on all of us. Ameen.</strong>\r\n\r\n<strong>Jazakallahu Khairun.</strong>\r\n<strong>admin</strong>', 'Our Motto', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-22 16:30:45', '2020-05-22 16:30:45', '', 47, 'http://localhost/charity/2020/05/22/47-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-05-22 16:31:28', '2020-05-22 16:31:28', '<strong><img class=\"aligncenter wp-image-48 size-full\" src=\"http://localhost/charity/wp-content/uploads/2020/05/ourmoto.jpg\" alt=\"\" width=\"300\" height=\"174\" /></strong>\r\n\r\n&nbsp;\r\n\r\n<strong>My dear Muslim brothers &amp; sisters, Assalamualaikum</strong>\r\n\r\nI have established “EEMAAN” foundation this year with the intention to help poor and needy Muslims.\r\nWe are based at Karimnagar, India. Our foundation provides food to the old and orphans, medical facilities to the poor sections, financial help for marriages of poor girls of the community.For the last (4) months I have been providing new clothes to the poor muslims on the occasion of Ramzan and provided ration for one month to (6) poor people. I have arranged utensils for brides for their marriages and given financial assistance to (8) madarsas.\r\n\r\nI want to provide support to the illiterate Muslims children to make them educated through Madarsas and also want to start “Sabahi Talim”. Similarly for this purpose, Imams will be given financial assistance of Rs.500/- to Rs.1000/-. I would like to launch a program to do minor repairs to mosques of the Rural area.\r\n\r\nI would like to initiate payment of Rs.200/- PM to 20 old age poor people and Muslim widows, who do not have means of living. Hence,\r\nI request all the Muslim brothers/sisters for your financial assistance as Charity and inshallah you will be rewarded immensely by Allah Subahnawatalah.\r\nI appeal all my brothers in Islam to strengthen my Organisation for the sake of Allah in order to implement all the above charitable activities for the poorer sections of the Muslims. May Allah protect our Imaan and give us peace and prosperity. You can give zakat or charity and earn the Rahmath of Allah.\r\n\r\n<strong>You can give zakat or charity and earn the Rahmath of Allah. If you want to render financial assistance you can send the amount by transfer to my</strong>\r\n<strong>SB A/c. No.403801502280 of ICICI Bank, Karimnagar IFSC Code.ICIC0000438. May Allah’s mercy be on all of us. Ameen.</strong>\r\n\r\n<strong>Jazakallahu Khairun.</strong>\r\n<strong>admin</strong>', 'Our Motto', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-22 16:31:28', '2020-05-22 16:31:28', '', 47, 'http://localhost/charity/2020/05/22/47-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-05-22 16:34:30', '2020-05-22 16:34:30', '<p style=\"text-align: center;\"><strong><img class=\"wp-image-48 size-full aligncenter\" src=\"http://localhost/charity/wp-content/uploads/2020/05/ourmoto.jpg\" alt=\"\" width=\"300\" height=\"174\" /></strong></p>\r\n&nbsp;\r\n<p style=\"text-align: left;\"><strong>My dear Muslim brothers &amp; sisters, Assalamualaikum</strong></p>\r\nI have established “EEMAAN” foundation this year with the intention to help poor and needy Muslims.\r\nWe are based at Karimnagar, India. Our foundation provides food to the old and orphans, medical facilities to the poor sections, financial help for marriages of poor girls of the community.For the last (4) months I have been providing new clothes to the poor muslims on the occasion of Ramzan and provided ration for one month to (6) poor people. I have arranged utensils for brides for their marriages and given financial assistance to (8) madarsas.\r\n\r\nI want to provide support to the illiterate Muslims children to make them educated through Madarsas and also want to start “Sabahi Talim”. Similarly for this purpose, Imams will be given financial assistance of Rs.500/- to Rs.1000/-. I would like to launch a program to do minor repairs to mosques of the Rural area.\r\n\r\nI would like to initiate payment of Rs.200/- PM to 20 old age poor people and Muslim widows, who do not have means of living. Hence,\r\nI request all the Muslim brothers/sisters for your financial assistance as Charity and inshallah you will be rewarded immensely by Allah Subahnawatalah.\r\nI appeal all my brothers in Islam to strengthen my Organisation for the sake of Allah in order to implement all the above charitable activities for the poorer sections of the Muslims. May Allah protect our Imaan and give us peace and prosperity. You can give zakat or charity and earn the Rahmath of Allah.\r\n\r\n<strong>You can give zakat or charity and earn the Rahmath of Allah. If you want to render financial assistance you can send the amount by transfer to my</strong>\r\n<strong>SB A/c. No.403801502280 of ICICI Bank, Karimnagar IFSC Code.ICIC0000438. May Allah’s mercy be on all of us. Ameen.</strong>\r\n\r\n<strong>Jazakallahu Khairun.</strong>\r\n<strong>admin</strong>', 'Our Motto', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-05-22 16:34:30', '2020-05-22 16:34:30', '', 47, 'http://localhost/charity/2020/05/22/47-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-05-22 16:36:10', '2020-05-22 16:36:10', '<strong>Assalamualaikum Dear Brother &amp; Sistersin Islam,</strong>\r\nAlhamdulillah, with the blessings of Allah swt the Ration Distribution have started and we could able to reach the door steps of 75 Needy Families so far with a complete pack of INR 2000 per family. During our visit to these families, we found that some of them were not having anything to eat in the Saher, Alhamdulillah, with your contributions they could now able to do saher. Jazakallah Khair for your contributions. We request our brothers and sisters to come forward and help with their Zakat/Fitra/Charity to the needy people during these blessed days of Ramadan. There are numerous Verses of Holy Quran and Hadith on the blessings of feeding the Poor &amp; Needy, and in these days the rewards are 70 times more, Mashallah.We request you to help volunteering us in reaching more people who can contribute &amp; help us in this noble cause of feeding the poor and needy. Please find below the details of the Bank Accounts and Contacts in case you need any further information on this program.\r\n\r\n<strong>SB A/c. No.043801502280 of ICICI Bank, Karimnagar IFSC Code.ICIC0000438.</strong>', 'Achievements', '', 'publish', 'closed', 'closed', '', 'achievements', '', '', '2020-05-22 16:36:10', '2020-05-22 16:36:10', '', 0, 'http://localhost/charity/?page_id=54', 0, 'page', '', 0),
(55, 1, '2020-05-22 16:36:10', '2020-05-22 16:36:10', '<strong>Assalamualaikum Dear Brother &amp; Sistersin Islam,</strong>\r\nAlhamdulillah, with the blessings of Allah swt the Ration Distribution have started and we could able to reach the door steps of 75 Needy Families so far with a complete pack of INR 2000 per family. During our visit to these families, we found that some of them were not having anything to eat in the Saher, Alhamdulillah, with your contributions they could now able to do saher. Jazakallah Khair for your contributions. We request our brothers and sisters to come forward and help with their Zakat/Fitra/Charity to the needy people during these blessed days of Ramadan. There are numerous Verses of Holy Quran and Hadith on the blessings of feeding the Poor &amp; Needy, and in these days the rewards are 70 times more, Mashallah.We request you to help volunteering us in reaching more people who can contribute &amp; help us in this noble cause of feeding the poor and needy. Please find below the details of the Bank Accounts and Contacts in case you need any further information on this program.\r\n\r\n<strong>SB A/c. No.043801502280 of ICICI Bank, Karimnagar IFSC Code.ICIC0000438.</strong>', 'Achievements', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-05-22 16:36:10', '2020-05-22 16:36:10', '', 54, 'http://localhost/charity/2020/05/22/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-05-22 16:36:51', '2020-05-22 16:36:51', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2020-06-02 12:11:57', '2020-06-02 12:11:57', '', 0, 'http://localhost/charity/?p=56', 4, 'nav_menu_item', '', 0),
(57, 1, '2020-05-22 16:40:45', '2020-05-22 16:40:45', '<p style=\"text-align: center;\"><img class=\"alignnone size-medium wp-image-58\" src=\"http://localhost/charity/wp-content/uploads/2020/05/donate-300x177.jpg\" alt=\"\" width=\"300\" height=\"177\" /><img class=\"alignnone size-medium wp-image-59\" src=\"http://localhost/charity/wp-content/uploads/2020/05/donate1-300x184.jpg\" alt=\"\" width=\"300\" height=\"184\" /></p>\r\n&nbsp;\r\n<p style=\"text-align: center;\"><strong>Anisur Rasheed,</strong>\r\n<strong>SB A/c. No.043801502280</strong>\r\n<strong>ICICI Bank, Karimnagar</strong>\r\n<strong>IFSC Code.ICIC0000438.</strong></p>', 'Donate', '', 'publish', 'closed', 'closed', '', 'donate', '', '', '2020-05-22 16:40:45', '2020-05-22 16:40:45', '', 0, 'http://localhost/charity/?page_id=57', 0, 'page', '', 0),
(58, 1, '2020-05-22 16:39:14', '2020-05-22 16:39:14', '', 'donate', '', 'inherit', 'open', 'closed', '', 'donate', '', '', '2020-05-22 16:39:14', '2020-05-22 16:39:14', '', 57, 'http://localhost/charity/wp-content/uploads/2020/05/donate.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-05-22 16:39:30', '2020-05-22 16:39:30', '', 'donate1', '', 'inherit', 'open', 'closed', '', 'donate1', '', '', '2020-05-22 16:39:30', '2020-05-22 16:39:30', '', 57, 'http://localhost/charity/wp-content/uploads/2020/05/donate1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-05-22 16:40:45', '2020-05-22 16:40:45', '<p style=\"text-align: center;\"><img class=\"alignnone size-medium wp-image-58\" src=\"http://localhost/charity/wp-content/uploads/2020/05/donate-300x177.jpg\" alt=\"\" width=\"300\" height=\"177\" /><img class=\"alignnone size-medium wp-image-59\" src=\"http://localhost/charity/wp-content/uploads/2020/05/donate1-300x184.jpg\" alt=\"\" width=\"300\" height=\"184\" /></p>\r\n&nbsp;\r\n<p style=\"text-align: center;\"><strong>Anisur Rasheed,</strong>\r\n<strong>SB A/c. No.043801502280</strong>\r\n<strong>ICICI Bank, Karimnagar</strong>\r\n<strong>IFSC Code.ICIC0000438.</strong></p>', 'Donate', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2020-05-22 16:40:45', '2020-05-22 16:40:45', '', 57, 'http://localhost/charity/2020/05/22/57-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-05-22 16:42:12', '2020-05-22 16:42:12', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2020-06-02 12:11:57', '2020-06-02 12:11:57', '', 0, 'http://localhost/charity/?p=61', 5, 'nav_menu_item', '', 0),
(62, 1, '2020-05-26 05:11:18', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjA2IiwicG9zdF9pZCI6IjYyIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIFRodW1ibmFpbHMiLCJtb2R1bGVfaWQiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfZ2FsbGVyeSIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfZ2FsbGVyeSN0aHVtYl9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMDAsImFsaWFzZXMiOlsiYmFzaWNfdGh1bWJuYWlsIiwiYmFzaWNfdGh1bWJuYWlscyIsIm5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjMuMy41IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7Im92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIwIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjQiLCJudW1iZXJfb2ZfY29sdW1ucyI6IjAiLCJhamF4X3BhZ2luYXRpb24iOiIxIiwic2hvd19hbGxfaW5fbGlnaHRib3giOiIwIiwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOiIxIiwic2hvd19zbGlkZXNob3dfbGluayI6IjAiLCJzbGlkZXNob3dfbGlua190ZXh0IjoiVmlldyBTbGlkZXNob3ciLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Thumbnails', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 05:33:28', '2020-05-26 05:33:28', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjA2IiwicG9zdF9pZCI6IjYyIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIFRodW1ibmFpbHMiLCJtb2R1bGVfaWQiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfZ2FsbGVyeSIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfZ2FsbGVyeSN0aHVtYl9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMDAsImFsaWFzZXMiOlsiYmFzaWNfdGh1bWJuYWlsIiwiYmFzaWNfdGh1bWJuYWlscyIsIm5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjMuMy41IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7Im92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIwIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjQiLCJudW1iZXJfb2ZfY29sdW1ucyI6IjAiLCJhamF4X3BhZ2luYXRpb24iOiIxIiwic2hvd19hbGxfaW5fbGlnaHRib3giOiIwIiwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOiIxIiwic2hvd19zbGlkZXNob3dfbGluayI6IjAiLCJzbGlkZXNob3dfbGlua190ZXh0IjoiVmlldyBTbGlkZXNob3ciLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?post_type=display_type&#038;p=62', 0, 'display_type', '', 0),
(63, 1, '2020-05-26 05:11:19', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjIyIiwicG9zdF9pZCI6IjYzIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zbGlkZXNob3ciLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwibW9kdWxlX2lkIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkjc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4zLjUiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV93aWR0aCI6Ijc1MCIsImdhbGxlcnlfaGVpZ2h0IjoiNTAwIiwiYXV0b3BsYXkiOiIxIiwicGF1c2VvbmhvdmVyIjoiMSIsImFycm93cyI6IjAiLCJ0cmFuc2l0aW9uX3N0eWxlIjoiZmFkZSIsImludGVydmFsIjoiMzAwMCIsInRyYW5zaXRpb25fc3BlZWQiOiIzMDAiLCJzaG93X3RodW1ibmFpbF9saW5rIjoiMCIsInRodW1ibmFpbF9saW5rX3RleHQiOiJWaWV3IFRodW1ibmFpbHMiLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0IiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Slideshow', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 05:33:28', '2020-05-26 05:33:28', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjIyIiwicG9zdF9pZCI6IjYzIiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zbGlkZXNob3ciLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwibW9kdWxlX2lkIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkjc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4zLjUiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV93aWR0aCI6Ijc1MCIsImdhbGxlcnlfaGVpZ2h0IjoiNTAwIiwiYXV0b3BsYXkiOiIxIiwicGF1c2VvbmhvdmVyIjoiMSIsImFycm93cyI6IjAiLCJ0cmFuc2l0aW9uX3N0eWxlIjoiZmFkZSIsImludGVydmFsIjoiMzAwMCIsInRyYW5zaXRpb25fc3BlZWQiOiIzMDAiLCJzaG93X3RodW1ibmFpbF9saW5rIjoiMCIsInRodW1ibmFpbF9saW5rX3RleHQiOiJWaWV3IFRodW1ibmFpbHMiLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0IiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/charity/?post_type=display_type&#038;p=63', 0, 'display_type', '', 0),
(64, 1, '2020-05-26 05:11:19', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjM3IiwicG9zdF9pZCI6IjY0IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIjcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJhbGlhc2VzIjpbImJhc2ljX2ltYWdlYnJvd3NlciIsImltYWdlYnJvd3NlciIsIm5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjMuNSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJhamF4X3BhZ2luYXRpb24iOiIxIiwiZGlzcGxheV92aWV3IjoiZGVmYXVsdC12aWV3LnBocCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic ImageBrowser', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 05:33:28', '2020-05-26 05:33:28', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjM3IiwicG9zdF9pZCI6IjY0IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIjcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJhbGlhc2VzIjpbImJhc2ljX2ltYWdlYnJvd3NlciIsImltYWdlYnJvd3NlciIsIm5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjMuNSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJhamF4X3BhZ2luYXRpb24iOiIxIiwiZGlzcGxheV92aWV3IjoiZGVmYXVsdC12aWV3LnBocCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/charity/?post_type=display_type&#038;p=64', 0, 'display_type', '', 0),
(65, 1, '2020-05-26 05:11:19', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjU0IiwicG9zdF9pZCI6IjY1IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMjcHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDYwLCJoaWRkZW5fZnJvbV91aSI6dHJ1ZSwiaGlkZGVuX2Zyb21faWd3Ijp0cnVlLCJhbGlhc2VzIjpbImJhc2ljX3NpbmdsZXBpYyIsInNpbmdsZXBpYyIsIm5leHRnZW5fYmFzaWNfc2luZ2xlcGljIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjMuNSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ3aWR0aCI6IiIsImhlaWdodCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsImZsb2F0IjoiIiwicXVhbGl0eSI6IjEwMCIsImNyb3AiOiIwIiwiZGlzcGxheV93YXRlcm1hcmsiOiIwIiwiZGlzcGxheV9yZWZsZWN0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibW9kZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic SinglePic', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 05:33:28', '2020-05-26 05:33:28', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjU0IiwicG9zdF9pZCI6IjY1IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMjcHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDYwLCJoaWRkZW5fZnJvbV91aSI6dHJ1ZSwiaGlkZGVuX2Zyb21faWd3Ijp0cnVlLCJhbGlhc2VzIjpbImJhc2ljX3NpbmdsZXBpYyIsInNpbmdsZXBpYyIsIm5leHRnZW5fYmFzaWNfc2luZ2xlcGljIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjMuNSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ3aWR0aCI6IiIsImhlaWdodCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsImZsb2F0IjoiIiwicXVhbGl0eSI6IjEwMCIsImNyb3AiOiIwIiwiZGlzcGxheV93YXRlcm1hcmsiOiIwIiwiZGlzcGxheV9yZWZsZWN0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibW9kZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/charity/?post_type=display_type&#038;p=65', 0, 'display_type', '', 0),
(66, 1, '2020-05-26 05:11:20', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjY3IiwicG9zdF9pZCI6IjY2IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBUYWdDbG91ZCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGFnY2xvdWQjcHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwiYWxpYXNlcyI6WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjMuNSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJudW1iZXIiOiI0NSIsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic TagCloud', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 05:33:29', '2020-05-26 05:33:29', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjY3IiwicG9zdF9pZCI6IjY2IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBUYWdDbG91ZCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGFnY2xvdWQjcHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwiYWxpYXNlcyI6WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjMuNSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJudW1iZXIiOiI0NSIsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/charity/?post_type=display_type&#038;p=66', 0, 'display_type', '', 0),
(67, 1, '2020-05-26 05:11:20', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjgzIiwicG9zdF9pZCI6IjY3IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19jb21wYWN0X2FsYnVtIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIENvbXBhY3QgQWxidW0iLCJtb2R1bGVfaWQiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfYWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSNjb21wYWN0X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIwMCwiYWxpYXNlcyI6WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4zLjUiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcmllc19wZXJfcGFnZSI6IjAiLCJlbmFibGVfYnJlYWRjcnVtYnMiOiIxIiwiZGlzcGxheV92aWV3IjoiZGVmYXVsdC12aWV3LnBocCIsInRlbXBsYXRlIjoiIiwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6IjAiLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIxIiwidGh1bWJuYWlsX3dpZHRoIjoiMjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjE2MCIsInRodW1ibmFpbF9jcm9wIjoiMSIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwib3Blbl9nYWxsZXJ5X2luX2xpZ2h0Ym94IjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Compact Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 05:33:29', '2020-05-26 05:33:29', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjgzIiwicG9zdF9pZCI6IjY3IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19jb21wYWN0X2FsYnVtIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIENvbXBhY3QgQWxidW0iLCJtb2R1bGVfaWQiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfYWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSNjb21wYWN0X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIwMCwiYWxpYXNlcyI6WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4zLjUiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcmllc19wZXJfcGFnZSI6IjAiLCJlbmFibGVfYnJlYWRjcnVtYnMiOiIxIiwiZGlzcGxheV92aWV3IjoiZGVmYXVsdC12aWV3LnBocCIsInRlbXBsYXRlIjoiIiwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6IjAiLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIxIiwidGh1bWJuYWlsX3dpZHRoIjoiMjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjE2MCIsInRodW1ibmFpbF9jcm9wIjoiMSIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwib3Blbl9nYWxsZXJ5X2luX2xpZ2h0Ym94IjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/charity/?post_type=display_type&#038;p=67', 0, 'display_type', '', 0),
(68, 1, '2020-05-26 05:11:20', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjk5IiwicG9zdF9pZCI6IjY4IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBFeHRlbmRlZCBBbGJ1bSIsIm1vZHVsZV9pZCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2FsYnVtI2V4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwiYWxpYXNlcyI6WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjMuNSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJlbmFibGVfZGVzY3JpcHRpb25zIjoiMCIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjEiLCJ0aHVtYm5haWxfd2lkdGgiOiIzMDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMjAwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Extended Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-26 05:33:29', '2020-05-26 05:33:29', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjk5IiwicG9zdF9pZCI6IjY4IiwibWV0YV9rZXkiOiJuYW1lIiwibWV0YV92YWx1ZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBFeHRlbmRlZCBBbGJ1bSIsIm1vZHVsZV9pZCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2FsYnVtI2V4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwiYWxpYXNlcyI6WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjMuNSIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJlbmFibGVfZGVzY3JpcHRpb25zIjoiMCIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjEiLCJ0aHVtYm5haWxfd2lkdGgiOiIzMDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMjAwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?post_type=display_type&#038;p=68', 0, 'display_type', '', 0),
(69, 1, '2020-05-26 05:13:32', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2020-05-26 05:13:32', '2020-05-26 05:13:32', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?p=69', 0, 'ngg_gallery', '', 0),
(70, 1, '2020-05-26 05:14:38', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2020-05-26 05:14:38', '2020-05-26 05:14:38', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?p=70', 0, 'ngg_pictures', '', 0),
(71, 1, '2020-05-26 05:13:38', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2020-05-26 05:13:38', '2020-05-26 05:13:38', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?p=71', 0, 'ngg_pictures', '', 0),
(72, 1, '2020-05-26 05:13:44', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2020-05-26 05:13:44', '2020-05-26 05:13:44', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?p=72', 0, 'ngg_pictures', '', 0),
(73, 1, '2020-05-26 05:13:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2020-05-26 05:13:47', '2020-05-26 05:13:47', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?p=73', 0, 'ngg_pictures', '', 0),
(74, 1, '2020-05-26 05:13:50', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2020-05-26 05:13:50', '2020-05-26 05:13:50', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?p=74', 0, 'ngg_pictures', '', 0),
(75, 1, '2020-05-26 05:14:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2020-05-26 05:14:00', '2020-05-26 05:14:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?p=75', 0, 'ngg_pictures', '', 0),
(76, 1, '2020-05-26 05:14:03', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2020-05-26 05:14:03', '2020-05-26 05:14:03', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?p=76', 0, 'ngg_pictures', '', 0),
(77, 1, '2020-05-26 05:14:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2020-05-26 05:14:08', '2020-05-26 05:14:08', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/charity/?p=77', 0, 'ngg_pictures', '', 0),
(78, 1, '2020-05-26 05:15:32', '2020-05-26 05:15:32', '[ngg src=\"galleries\" display=\"basic_thumbnail\"]', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2020-05-26 05:34:24', '2020-05-26 05:34:24', '', 0, 'http://localhost/charity/?page_id=78', 0, 'page', '', 0),
(79, 1, '2020-05-26 05:15:32', '2020-05-26 05:15:32', '[ngg src=\"galleries\" ids=\"1\" display=\"basic_thumbnail\" thumbnail_crop=\"0\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-26 05:15:32', '2020-05-26 05:15:32', '', 78, 'http://localhost/charity/2020/05/26/78-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(80, 1, '2020-05-26 05:21:03', '2020-05-26 05:21:03', '[ngg src=\"galleries\" ids=\"1\" display=\"basic_thumbnail\" thumbnail_crop=\"0\" use_imagebrowser_effect=\"1\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-26 05:21:03', '2020-05-26 05:21:03', '', 78, 'http://localhost/charity/2020/05/26/78-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-05-26 05:22:18', '2020-05-26 05:22:18', '[ngg src=\"galleries\" ids=\"1\" display=\"basic_slideshow\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-26 05:22:18', '2020-05-26 05:22:18', '', 78, 'http://localhost/charity/2020/05/26/78-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-05-26 05:23:04', '2020-05-26 05:23:04', '[ngg src=\"galleries\" ids=\"1\" display=\"basic_thumbnail\" thumbnail_crop=\"0\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-26 05:23:04', '2020-05-26 05:23:04', '', 78, 'http://localhost/charity/2020/05/26/78-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-05-26 05:27:25', '2020-05-26 05:27:25', '[ngg src=\"galleries\" ids=\"1\" display=\"basic_thumbnail\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-26 05:27:25', '2020-05-26 05:27:25', '', 78, 'http://localhost/charity/2020/05/26/78-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-05-26 05:30:15', '2020-05-26 05:30:15', '\r\n<img class=\"ngg_displayed_gallery mceItem\" src=\"http://localhost:8088/foundation/nextgen-attach_to_post/preview/id--114\" alt=\"\" data-mce-placeholder=\"1\">', 'Gallery', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-26 05:30:15', '2020-05-26 05:30:15', '', 78, 'http://localhost/charity/2020/05/26/78-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-05-26 05:31:37', '2020-05-26 05:31:37', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2020-05-26 05:31:37', '2020-05-26 05:31:37', '', 78, 'http://localhost/charity/2020/05/26/78-autosave-v1/', 0, 'revision', '', 0),
(86, 1, '2020-05-26 05:32:13', '2020-05-26 05:32:13', '[ngg src=\"galleries\" ids=\"1\" display=\"basic_thumbnail\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-26 05:32:13', '2020-05-26 05:32:13', '', 78, 'http://localhost/charity/2020/05/26/78-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-05-26 05:34:24', '2020-05-26 05:34:24', '[ngg src=\"galleries\" display=\"basic_thumbnail\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-26 05:34:24', '2020-05-26 05:34:24', '', 78, 'http://localhost/charity/2020/05/26/78-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-05-26 15:31:33', '2020-05-26 15:31:33', '', 'eemanlogo', '', 'inherit', 'open', 'closed', '', 'eemanlogo', '', '', '2020-05-26 15:31:33', '2020-05-26 15:31:33', '', 21, 'http://localhost/charity/wp-content/uploads/2020/05/eemanlogo.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2020-05-28 03:53:07', '2020-05-28 03:53:07', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-05-28 03:53:07', '2020-05-28 03:53:07', '', 0, 'http://localhost/charity/?page_id=89', 0, 'page', '', 0),
(90, 1, '2020-05-28 03:53:07', '2020-05-28 03:53:07', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2020-05-28 03:53:07', '2020-05-28 03:53:07', '', 89, 'http://localhost/charity/2020/05/28/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-05-29 05:26:48', '2020-05-29 05:26:48', '', 'cnt', '', 'publish', 'closed', 'closed', '', 'cnt', '', '', '2020-05-29 05:26:48', '2020-05-29 05:26:48', '', 0, 'http://localhost/charity/?page_id=91', 0, 'page', '', 0),
(92, 1, '2020-05-29 05:26:48', '2020-05-29 05:26:48', '', 'cnt', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2020-05-29 05:26:48', '2020-05-29 05:26:48', '', 91, 'http://localhost/charity/2020/05/29/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-05-29 09:51:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-29 09:51:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/charity/?p=93', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'News', 'news', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(6, 2, 0),
(29, 2, 0),
(31, 3, 0),
(36, 3, 0),
(50, 2, 0),
(56, 2, 0),
(61, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,vc_pointers_backend_editor'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"4c19cfd82ddf09ebcf1ffde381be7df1c15549749c0515b689f5607d821923e1\";a:4:{s:10:\"expiration\";i:1591272616;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:103:\"Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1591099816;}s:64:\"a1d875ec1efa18903fd6c8bde53cb8c15c5d761ffe4cda5acfb74c4bd89903a4\";a:4:{s:10:\"expiration\";i:1591351451;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:103:\"Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1591178651;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '93'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:26:\"add-post-type-team-members\";i:1;s:20:\"add-post-type-slider\";i:2;s:25:\"add-post-type-testimonial\";i:3;s:18:\"add-post-type-news\";i:4;s:21:\"add-post-type-product\";i:5;s:12:\"add-post_tag\";i:6;s:20:\"add-product_category\";}'),
(20, 1, 'wp_user-settings', 'edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=791px&edit_element_vcUIPanelTop=74px&editor=tinymce&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1590471097'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:5:{i:0;s:19:\"wpb_visual_composer\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(24, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJNyFjMbDP5mXjQoiJlLV21nuVUWfP1', 'admin', 'patels886@gmail.com', '', '2020-05-22 09:42:28', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  MODIFY `gid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
