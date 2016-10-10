# WordPress MySQL database migration
#
# Generated: Monday 10. October 2016 23:11 UTC
# Hostname: localhost
# Database: `ohlala`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-10-07 15:25:25', '2016-10-07 15:25:25', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ohlala', 'yes'),
(2, 'home', 'http://localhost/ohlala', 'yes'),
(3, 'blogname', 'Ohlala Web', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez@ingenioart.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:258:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"slider-home/?$";s:31:"index.php?post_type=slider-home";s:44:"slider-home/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:39:"slider-home/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:31:"slider-home/page/([0-9]{1,})/?$";s:49:"index.php?post_type=slider-home&paged=$matches[1]";s:17:"theme-services/?$";s:34:"index.php?post_type=theme-services";s:47:"theme-services/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-services&feed=$matches[1]";s:42:"theme-services/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-services&feed=$matches[1]";s:34:"theme-services/page/([0-9]{1,})/?$";s:52:"index.php?post_type=theme-services&paged=$matches[1]";s:17:"theme-products/?$";s:34:"index.php?post_type=theme-products";s:47:"theme-products/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-products&feed=$matches[1]";s:42:"theme-products/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-products&feed=$matches[1]";s:34:"theme-products/page/([0-9]{1,})/?$";s:52:"index.php?post_type=theme-products&paged=$matches[1]";s:15:"theme-images/?$";s:32:"index.php?post_type=theme-images";s:45:"theme-images/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-images&feed=$matches[1]";s:40:"theme-images/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-images&feed=$matches[1]";s:32:"theme-images/page/([0-9]{1,})/?$";s:50:"index.php?post_type=theme-images&paged=$matches[1]";s:15:"theme-videos/?$";s:32:"index.php?post_type=theme-videos";s:45:"theme-videos/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-videos&feed=$matches[1]";s:40:"theme-videos/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-videos&feed=$matches[1]";s:32:"theme-videos/page/([0-9]{1,})/?$";s:50:"index.php?post_type=theme-videos&paged=$matches[1]";s:19:"theme-promotions/?$";s:36:"index.php?post_type=theme-promotions";s:49:"theme-promotions/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=theme-promotions&feed=$matches[1]";s:44:"theme-promotions/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=theme-promotions&feed=$matches[1]";s:36:"theme-promotions/page/([0-9]{1,})/?$";s:54:"index.php?post_type=theme-promotions&paged=$matches[1]";s:18:"theme-catalogos/?$";s:35:"index.php?post_type=theme-catalogos";s:48:"theme-catalogos/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=theme-catalogos&feed=$matches[1]";s:43:"theme-catalogos/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=theme-catalogos&feed=$matches[1]";s:35:"theme-catalogos/page/([0-9]{1,})/?$";s:53:"index.php?post_type=theme-catalogos&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:56:"images-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?images_category=$matches[1]&feed=$matches[2]";s:51:"images-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?images_category=$matches[1]&feed=$matches[2]";s:32:"images-category/([^/]+)/embed/?$";s:48:"index.php?images_category=$matches[1]&embed=true";s:44:"images-category/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?images_category=$matches[1]&paged=$matches[2]";s:26:"images-category/([^/]+)/?$";s:37:"index.php?images_category=$matches[1]";s:39:"slider-home/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"slider-home/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"slider-home/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"slider-home/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"slider-home/([^/]+)/embed/?$";s:44:"index.php?slider-home=$matches[1]&embed=true";s:32:"slider-home/([^/]+)/trackback/?$";s:38:"index.php?slider-home=$matches[1]&tb=1";s:52:"slider-home/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:47:"slider-home/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:40:"slider-home/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&paged=$matches[2]";s:47:"slider-home/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&cpage=$matches[2]";s:36:"slider-home/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?slider-home=$matches[1]&page=$matches[2]";s:28:"slider-home/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"slider-home/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"slider-home/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"slider-home/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"theme-services/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"theme-services/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"theme-services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"theme-services/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"theme-services/([^/]+)/embed/?$";s:47:"index.php?theme-services=$matches[1]&embed=true";s:35:"theme-services/([^/]+)/trackback/?$";s:41:"index.php?theme-services=$matches[1]&tb=1";s:55:"theme-services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-services=$matches[1]&feed=$matches[2]";s:50:"theme-services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-services=$matches[1]&feed=$matches[2]";s:43:"theme-services/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?theme-services=$matches[1]&paged=$matches[2]";s:50:"theme-services/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?theme-services=$matches[1]&cpage=$matches[2]";s:39:"theme-services/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?theme-services=$matches[1]&page=$matches[2]";s:31:"theme-services/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"theme-services/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"theme-services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"theme-services/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"theme-products/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"theme-products/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"theme-products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"theme-products/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"theme-products/([^/]+)/embed/?$";s:47:"index.php?theme-products=$matches[1]&embed=true";s:35:"theme-products/([^/]+)/trackback/?$";s:41:"index.php?theme-products=$matches[1]&tb=1";s:55:"theme-products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-products=$matches[1]&feed=$matches[2]";s:50:"theme-products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-products=$matches[1]&feed=$matches[2]";s:43:"theme-products/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?theme-products=$matches[1]&paged=$matches[2]";s:50:"theme-products/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?theme-products=$matches[1]&cpage=$matches[2]";s:39:"theme-products/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?theme-products=$matches[1]&page=$matches[2]";s:31:"theme-products/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"theme-products/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"theme-products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"theme-products/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"theme-images/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"theme-images/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"theme-images/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-images/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-images/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"theme-images/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"theme-images/([^/]+)/embed/?$";s:45:"index.php?theme-images=$matches[1]&embed=true";s:33:"theme-images/([^/]+)/trackback/?$";s:39:"index.php?theme-images=$matches[1]&tb=1";s:53:"theme-images/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-images=$matches[1]&feed=$matches[2]";s:48:"theme-images/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-images=$matches[1]&feed=$matches[2]";s:41:"theme-images/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?theme-images=$matches[1]&paged=$matches[2]";s:48:"theme-images/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?theme-images=$matches[1]&cpage=$matches[2]";s:37:"theme-images/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?theme-images=$matches[1]&page=$matches[2]";s:29:"theme-images/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"theme-images/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"theme-images/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-images/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-images/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"theme-images/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"theme-videos/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"theme-videos/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"theme-videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"theme-videos/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"theme-videos/([^/]+)/embed/?$";s:45:"index.php?theme-videos=$matches[1]&embed=true";s:33:"theme-videos/([^/]+)/trackback/?$";s:39:"index.php?theme-videos=$matches[1]&tb=1";s:53:"theme-videos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-videos=$matches[1]&feed=$matches[2]";s:48:"theme-videos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-videos=$matches[1]&feed=$matches[2]";s:41:"theme-videos/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?theme-videos=$matches[1]&paged=$matches[2]";s:48:"theme-videos/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?theme-videos=$matches[1]&cpage=$matches[2]";s:37:"theme-videos/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?theme-videos=$matches[1]&page=$matches[2]";s:29:"theme-videos/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"theme-videos/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"theme-videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"theme-videos/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"theme-promotions/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"theme-promotions/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"theme-promotions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"theme-promotions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"theme-promotions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"theme-promotions/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"theme-promotions/([^/]+)/embed/?$";s:49:"index.php?theme-promotions=$matches[1]&embed=true";s:37:"theme-promotions/([^/]+)/trackback/?$";s:43:"index.php?theme-promotions=$matches[1]&tb=1";s:57:"theme-promotions/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?theme-promotions=$matches[1]&feed=$matches[2]";s:52:"theme-promotions/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?theme-promotions=$matches[1]&feed=$matches[2]";s:45:"theme-promotions/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?theme-promotions=$matches[1]&paged=$matches[2]";s:52:"theme-promotions/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?theme-promotions=$matches[1]&cpage=$matches[2]";s:41:"theme-promotions/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?theme-promotions=$matches[1]&page=$matches[2]";s:33:"theme-promotions/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"theme-promotions/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"theme-promotions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"theme-promotions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"theme-promotions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"theme-promotions/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"theme-catalogos/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"theme-catalogos/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"theme-catalogos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"theme-catalogos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"theme-catalogos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"theme-catalogos/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"theme-catalogos/([^/]+)/embed/?$";s:48:"index.php?theme-catalogos=$matches[1]&embed=true";s:36:"theme-catalogos/([^/]+)/trackback/?$";s:42:"index.php?theme-catalogos=$matches[1]&tb=1";s:56:"theme-catalogos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?theme-catalogos=$matches[1]&feed=$matches[2]";s:51:"theme-catalogos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?theme-catalogos=$matches[1]&feed=$matches[2]";s:44:"theme-catalogos/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?theme-catalogos=$matches[1]&paged=$matches[2]";s:51:"theme-catalogos/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?theme-catalogos=$matches[1]&cpage=$matches[2]";s:40:"theme-catalogos/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?theme-catalogos=$matches[1]&page=$matches[2]";s:32:"theme-catalogos/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"theme-catalogos/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"theme-catalogos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"theme-catalogos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"theme-catalogos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"theme-catalogos/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:"duplicate-post/duplicate-post.php";i:1;s:37:"error-log-viewer/error-log-viewer.php";i:2;s:31:"live-admin-customzier/index.php";i:3;s:35:"wp-media-folder/wp-media-folder.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ohlalatheme', 'yes'),
(41, 'stylesheet', 'ohlalatheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
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
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1476156327;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476157988;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476199538;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1476199760;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(118, 'can_compress_scripts', '1', 'no'),
(135, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1475854139;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(136, 'current_theme', 'Ohlala Theme', 'yes'),
(137, 'theme_mods_ohlalatheme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:9:"left-menu";i:2;s:10:"right-menu";i:3;}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(140, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(142, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:5:"1.9.0";}}}', 'yes'),
(143, 'wpmf_use_taxonomy', '1', 'yes'),
(144, 'rrrlgvwr_options', 'a:10:{s:21:"plugin_option_version";s:5:"1.0.4";s:21:"php_error_log_visible";i:0;s:11:"lines_count";i:10;s:16:"confirm_filesize";i:0;s:14:"error_log_path";s:0:"";s:17:"count_visible_log";i:0;s:14:"frequency_send";i:1;s:8:"hour_day";i:3600;s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;}', 'yes'),
(146, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(147, 'wpmf_padding_masonry', '5', 'yes'),
(148, 'wpmf_padding_portfolio', '10', 'yes'),
(149, 'wpmf_usegellery', '1', 'yes'),
(150, 'wpmf_useorder', '1', 'yes'),
(151, 'wpmf_folder_option1', '0', 'yes'),
(152, 'wpmf_option_override', '0', 'yes'),
(153, 'wpmf_active_media', '0', 'yes'),
(154, 'wpmf_folder_option2', '1', 'yes'),
(155, 'wpmf_option_searchall', '0', 'yes'),
(156, 'wpmf_usegellery_lightbox', '1', 'yes'),
(157, 'wpmf_media_rename', '0', 'yes'),
(158, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(159, 'wpmf_rename_number', '0', 'yes'),
(160, 'wpmf_option_media_remove', '0', 'yes'),
(161, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(162, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(163, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(164, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(165, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(166, 'wpmf_option_singlefile', '0', 'yes'),
(167, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1476141020;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.2";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.2";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(170, 'duplicate_post_copyexcerpt', '1', 'yes'),
(171, 'duplicate_post_copyattachments', '0', 'yes'),
(172, 'duplicate_post_copychildren', '0', 'yes'),
(173, 'duplicate_post_copystatus', '0', 'yes'),
(174, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(175, 'duplicate_post_show_row', '1', 'yes'),
(176, 'duplicate_post_show_adminbar', '1', 'yes'),
(177, 'duplicate_post_show_submitbox', '1', 'yes'),
(178, 'duplicate_post_version', '2.6', 'yes'),
(179, '_wpmf_import_notice_flag', 'no', 'yes'),
(184, 'theme_settings', 'a:18:{s:20:"theme_social_fb_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:25:"theme_social_twitter_text";s:25:"https://www.facebook.com/";s:25:"theme_social_youtube_text";s:25:"https://www.facebook.com/";s:27:"theme_social_instagram_text";s:0:"";s:26:"theme_social_linkedin_text";s:0:"";s:23:"theme_social_gplus_text";s:0:"";s:27:"theme_social_pinterest_text";s:0:"";s:18:"theme_phone_text_1";s:7:"4525456";s:18:"theme_phone_text_2";s:0:"";s:16:"theme_cel_text_1";s:0:"";s:16:"theme_cel_text_2";s:0:"";s:16:"theme_email_text";s:15:"info@ohlala.com";s:18:"theme_address_text";s:37:"555 Somewhere st.\nSan Diego, CA 99111";s:19:"theme_atention_text";s:23:"8 am a 8pm | Mar. - Dom";s:23:"theme_download_catalogo";s:62:"http://localhost/ohlala/wp-content/uploads/2016/10/sample1.pdf";s:17:"theme_footer_text";s:221:"Base out of San Diego , CA , Contempo is a small web\ndesign studio headed up by designer Ingenio Art\nspecialize in beautifully simple & usable web design,\nPremium wordpress Themes, Site Templates , Stocj\nArt & Freebies !.";s:17:"theme_mision_text";s:446:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.";s:17:"theme_vision_text";s:446:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.";}', 'yes'),
(197, 'wpmf-category_children', 'a:0:{}', 'yes'),
(198, 'category_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1475854157'),
(4, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1475854086:1'),
(7, 5, '_wp_page_template', 'default'),
(8, 5, 'mb_featured_banner', ''),
(9, 5, 'mb_image_gallery', ''),
(10, 7, '_edit_last', '1'),
(11, 7, '_wp_page_template', 'page-nosotros.php'),
(12, 7, 'mb_featured_banner', ''),
(13, 7, 'mb_image_gallery', ''),
(14, 7, '_edit_lock', '1475870665:1'),
(15, 9, '_edit_last', '1'),
(16, 9, '_wp_page_template', 'page-services.php'),
(17, 9, 'mb_featured_banner', ''),
(18, 9, 'mb_image_gallery', ''),
(19, 9, '_edit_lock', '1475871375:1'),
(20, 11, '_edit_last', '1'),
(21, 11, '_wp_page_template', 'page-productos.php'),
(22, 11, 'mb_featured_banner', ''),
(23, 11, 'mb_image_gallery', ''),
(24, 11, '_edit_lock', '1475871962:1'),
(25, 14, '_edit_last', '1'),
(26, 14, '_edit_lock', '1475873781:1'),
(27, 14, '_wp_page_template', 'page-catalogo.php'),
(28, 14, 'mb_featured_banner', ''),
(29, 14, 'mb_image_gallery', ''),
(30, 17, '_edit_last', '1'),
(31, 17, '_wp_page_template', 'page-images.php'),
(32, 17, 'mb_featured_banner', ''),
(33, 17, 'mb_image_gallery', ''),
(34, 17, '_edit_lock', '1475873934:1'),
(35, 19, '_edit_last', '1'),
(36, 19, '_wp_page_template', 'default'),
(37, 19, 'mb_featured_banner', ''),
(38, 19, 'mb_image_gallery', ''),
(39, 19, '_edit_lock', '1475854548:1'),
(40, 21, '_edit_last', '1'),
(41, 21, '_wp_page_template', 'default'),
(42, 21, 'mb_featured_banner', ''),
(43, 21, 'mb_image_gallery', ''),
(44, 21, '_edit_lock', '1475854965:1'),
(45, 23, '_menu_item_type', 'post_type'),
(46, 23, '_menu_item_menu_item_parent', '0'),
(47, 23, '_menu_item_object_id', '11'),
(48, 23, '_menu_item_object', 'page'),
(49, 23, '_menu_item_target', ''),
(50, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 23, '_menu_item_xfn', ''),
(52, 23, '_menu_item_url', ''),
(54, 24, '_menu_item_type', 'post_type'),
(55, 24, '_menu_item_menu_item_parent', '0'),
(56, 24, '_menu_item_object_id', '9'),
(57, 24, '_menu_item_object', 'page'),
(58, 24, '_menu_item_target', ''),
(59, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 24, '_menu_item_xfn', ''),
(61, 24, '_menu_item_url', ''),
(63, 25, '_menu_item_type', 'post_type'),
(64, 25, '_menu_item_menu_item_parent', '0'),
(65, 25, '_menu_item_object_id', '7'),
(66, 25, '_menu_item_object', 'page'),
(67, 25, '_menu_item_target', ''),
(68, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 25, '_menu_item_xfn', ''),
(70, 25, '_menu_item_url', ''),
(72, 26, '_menu_item_type', 'post_type'),
(73, 26, '_menu_item_menu_item_parent', '0'),
(74, 26, '_menu_item_object_id', '5'),
(75, 26, '_menu_item_object', 'page'),
(76, 26, '_menu_item_target', ''),
(77, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 26, '_menu_item_xfn', ''),
(79, 26, '_menu_item_url', ''),
(81, 27, '_menu_item_type', 'post_type'),
(82, 27, '_menu_item_menu_item_parent', '0'),
(83, 27, '_menu_item_object_id', '21'),
(84, 27, '_menu_item_object', 'page'),
(85, 27, '_menu_item_target', ''),
(86, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 27, '_menu_item_xfn', ''),
(88, 27, '_menu_item_url', ''),
(90, 28, '_menu_item_type', 'post_type'),
(91, 28, '_menu_item_menu_item_parent', '0'),
(92, 28, '_menu_item_object_id', '19'),
(93, 28, '_menu_item_object', 'page'),
(94, 28, '_menu_item_target', ''),
(95, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 28, '_menu_item_xfn', ''),
(97, 28, '_menu_item_url', ''),
(99, 29, '_menu_item_type', 'post_type'),
(100, 29, '_menu_item_menu_item_parent', '0'),
(101, 29, '_menu_item_object_id', '17'),
(102, 29, '_menu_item_object', 'page'),
(103, 29, '_menu_item_target', ''),
(104, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 29, '_menu_item_xfn', ''),
(106, 29, '_menu_item_url', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(108, 30, '_menu_item_type', 'post_type'),
(109, 30, '_menu_item_menu_item_parent', '0'),
(110, 30, '_menu_item_object_id', '14'),
(111, 30, '_menu_item_object', 'page'),
(112, 30, '_menu_item_target', ''),
(113, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 30, '_menu_item_xfn', ''),
(115, 30, '_menu_item_url', ''),
(117, 31, '_edit_last', '1'),
(118, 31, '_edit_lock', '1475859537:1'),
(119, 32, '_wp_attached_file', '2016/10/slider-home.jpg'),
(120, 32, 'wpmf_size', '162499'),
(121, 32, 'wpmf_filetype', 'jpg'),
(122, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:586;s:4:"file";s:23:"2016/10/slider-home.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"slider-home-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"slider-home-300x92.jpg";s:5:"width";i:300;s:6:"height";i:92;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"slider-home-768x234.jpg";s:5:"width";i:768;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"slider-home-1024x313.jpg";s:5:"width";i:1024;s:6:"height";i:313;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"slider-home-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:23:"slider-home-784x239.jpg";s:5:"width";i:784;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 31, '_thumbnail_id', '32'),
(124, 31, 'mb_image_gallery', ''),
(125, 31, 'mb_rev_slider_select', 'boxslide'),
(126, 33, '_edit_last', '1'),
(127, 33, '_edit_lock', '1475859551:1'),
(128, 33, '_thumbnail_id', '32'),
(129, 33, 'mb_image_gallery', ''),
(130, 33, 'mb_rev_slider_select', 'boxslide'),
(131, 33, '_dp_original', '31'),
(132, 34, '_edit_last', '1'),
(133, 34, '_edit_lock', '1475860630:1'),
(134, 35, '_wp_attached_file', '2016/10/producto-sample.png'),
(135, 35, 'wpmf_size', '137608'),
(136, 35, 'wpmf_filetype', 'png'),
(137, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:312;s:4:"file";s:27:"2016/10/producto-sample.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"producto-sample-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"producto-sample-288x300.png";s:5:"width";i:288;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"producto-sample-210x210.png";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(138, 34, '_thumbnail_id', '35'),
(139, 34, 'mb_image_gallery', ''),
(140, 34, 'product_price', 'a:2:{s:6:"normal";s:4:"$200";s:5:"offer";s:4:"$100";}'),
(141, 34, 'product_qualify', '0'),
(142, 36, '_edit_last', '1'),
(143, 36, '_edit_lock', '1475860788:1'),
(144, 36, '_thumbnail_id', '35'),
(145, 36, 'mb_image_gallery', ''),
(146, 36, 'product_price', 'a:2:{s:6:"normal";s:4:"$200";s:5:"offer";s:4:"$100";}'),
(147, 36, 'product_qualify', '0'),
(148, 36, '_dp_original', '34'),
(149, 37, '_edit_last', '1'),
(150, 37, '_edit_lock', '1475860798:1'),
(151, 37, '_thumbnail_id', '35'),
(152, 37, 'mb_image_gallery', ''),
(153, 37, 'product_price', 'a:2:{s:6:"normal";s:4:"$200";s:5:"offer";s:4:"$100";}'),
(154, 37, 'product_qualify', '0'),
(156, 37, '_dp_original', '36'),
(157, 38, '_edit_last', '1'),
(158, 38, '_edit_lock', '1475862035:1'),
(159, 38, '_thumbnail_id', '35'),
(160, 38, 'mb_image_gallery', ''),
(161, 38, 'product_price', 'a:2:{s:6:"normal";s:4:"$200";s:5:"offer";s:4:"$100";}'),
(162, 38, 'product_qualify', '0'),
(164, 38, '_dp_original', '37'),
(165, 38, 'product_code', 'CNP - 016'),
(166, 39, '_wp_attached_file', '2016/10/sample1.pdf'),
(167, 39, 'wpmf_size', '10575'),
(168, 39, 'wpmf_filetype', 'pdf'),
(169, 1, '_edit_lock', '1475863656:1'),
(170, 41, '_wp_attached_file', '2016/10/blog_sample.jpg'),
(171, 41, 'wpmf_size', '65377'),
(172, 41, 'wpmf_filetype', 'jpg'),
(173, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:23:"2016/10/blog_sample.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"blog_sample-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"blog_sample-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"blog_sample-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:23:"blog_sample-467x350.jpg";s:5:"width";i:467;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(174, 1, '_edit_last', '1'),
(175, 1, '_thumbnail_id', '41'),
(178, 1, 'mb_image_gallery', ''),
(179, 43, '_edit_lock', '1475863833:1'),
(180, 43, '_edit_last', '1'),
(181, 43, '_thumbnail_id', '41'),
(182, 43, 'mb_image_gallery', ''),
(183, 43, '_dp_original', '1'),
(186, 45, '_edit_lock', '1475863844:1'),
(187, 45, '_edit_last', '1'),
(188, 45, '_thumbnail_id', '41'),
(189, 45, 'mb_image_gallery', ''),
(191, 45, '_dp_original', '43'),
(194, 53, '_edit_last', '1'),
(195, 53, '_edit_lock', '1475871809:1'),
(196, 54, '_wp_attached_file', '2016/10/sample-services.png'),
(197, 54, 'wpmf_size', '540934'),
(198, 54, 'wpmf_filetype', 'png'),
(199, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:820;s:6:"height";i:620;s:4:"file";s:27:"2016/10/sample-services.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"sample-services-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"sample-services-300x227.png";s:5:"width";i:300;s:6:"height";i:227;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:27:"sample-services-768x581.png";s:5:"width";i:768;s:6:"height";i:581;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"sample-services-210x210.png";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}s:17:"custom-blog-image";a:4:{s:4:"file";s:27:"sample-services-463x350.png";s:5:"width";i:463;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 53, '_thumbnail_id', '54'),
(201, 53, 'mb_image_gallery', ''),
(202, 55, '_edit_last', '1'),
(203, 55, '_edit_lock', '1475871627:1'),
(204, 55, '_thumbnail_id', '54'),
(205, 55, 'mb_image_gallery', ''),
(206, 55, '_dp_original', '53'),
(207, 56, '_edit_last', '1'),
(208, 56, '_edit_lock', '1475871617:1'),
(209, 56, '_thumbnail_id', '54'),
(210, 56, 'mb_image_gallery', ''),
(212, 56, '_dp_original', '55'),
(213, 57, '_edit_last', '1'),
(214, 57, '_edit_lock', '1475872810:1'),
(215, 58, '_wp_attached_file', '2016/10/sample-catalogo.jpg'),
(216, 58, 'wpmf_size', '48760'),
(217, 58, 'wpmf_filetype', 'jpg'),
(218, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1100;s:6:"height";i:199;s:4:"file";s:27:"2016/10/sample-catalogo.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"sample-catalogo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"sample-catalogo-300x54.jpg";s:5:"width";i:300;s:6:"height";i:54;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"sample-catalogo-768x139.jpg";s:5:"width";i:768;s:6:"height";i:139;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"sample-catalogo-1024x185.jpg";s:5:"width";i:1024;s:6:"height";i:185;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"sample-catalogo-210x199.jpg";s:5:"width";i:210;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:27:"sample-catalogo-784x142.jpg";s:5:"width";i:784;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(219, 57, '_thumbnail_id', '58'),
(220, 57, 'mb_image_gallery', ''),
(221, 57, 'mb_catalogo_download', 'http://localhost/ohlala/wp-content/uploads/2016/10/sample1.pdf'),
(222, 59, '_edit_last', '1'),
(223, 59, '_edit_lock', '1475872964:1'),
(224, 59, '_thumbnail_id', '58'),
(225, 59, 'mb_image_gallery', ''),
(226, 59, 'mb_catalogo_download', 'http://localhost/ohlala/wp-content/uploads/2016/10/sample1.pdf'),
(227, 59, '_dp_original', '57'),
(228, 60, '_edit_last', '1'),
(229, 60, '_edit_lock', '1475873630:1'),
(230, 60, '_thumbnail_id', '58'),
(231, 60, 'mb_image_gallery', ''),
(232, 60, 'mb_catalogo_download', 'http://localhost/ohlala/wp-content/uploads/2016/10/sample1.pdf'),
(234, 60, '_dp_original', '59') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-10-07 15:25:25', '2016-10-07 15:25:25', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nuevo Post Navideño', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2016-10-07 18:09:51', '2016-10-07 18:09:51', '', 0, 'http://localhost/ohlala/?p=1', 0, 'post', '', 1),
(2, 1, '2016-10-07 15:25:25', '2016-10-07 15:25:25', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/ohlala/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2016-10-07 15:29:17', '2016-10-07 15:29:17', '', 0, 'http://localhost/ohlala/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-10-07 15:25:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-07 15:25:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/ohlala/?p=3', 0, 'post', '', 0),
(4, 1, '2016-10-07 15:29:17', '2016-10-07 15:29:17', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/ohlala/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-10-07 15:29:17', '2016-10-07 15:29:17', '', 2, 'http://localhost/ohlala/2016/10/07/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-10-07 15:30:26', '2016-10-07 15:30:26', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-10-07 15:30:26', '2016-10-07 15:30:26', '', 0, 'http://localhost/ohlala/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-10-07 15:30:26', '2016-10-07 15:30:26', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-10-07 15:30:26', '2016-10-07 15:30:26', '', 5, 'http://localhost/ohlala/2016/10/07/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-10-07 15:31:18', '2016-10-07 15:31:18', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Nosotros', 'es momento de que cumplas los deseos y regalos de navidad', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2016-10-07 19:48:04', '2016-10-07 19:48:04', '', 0, 'http://localhost/ohlala/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-10-07 15:31:18', '2016-10-07 15:31:18', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-10-07 15:31:18', '2016-10-07 15:31:18', '', 7, 'http://localhost/ohlala/2016/10/07/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-10-07 15:33:05', '2016-10-07 15:33:05', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit ', 'Servicios', 'Canastas Navideñas', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2016-10-07 20:14:01', '2016-10-07 20:14:01', '', 0, 'http://localhost/ohlala/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-10-07 15:33:05', '2016-10-07 15:33:05', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-07 15:33:05', '2016-10-07 15:33:05', '', 9, 'http://localhost/ohlala/2016/10/07/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-10-07 15:33:17', '2016-10-07 15:33:17', '', 'Productos', '', 'publish', 'closed', 'closed', '', 'producto', '', '', '2016-10-07 20:26:02', '2016-10-07 20:26:02', '', 0, 'http://localhost/ohlala/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-10-07 15:33:17', '2016-10-07 15:33:17', '', 'Producto', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-10-07 15:33:17', '2016-10-07 15:33:17', '', 11, 'http://localhost/ohlala/2016/10/07/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-10-07 15:33:46', '2016-10-07 15:33:46', '', 'Productos', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-10-07 15:33:46', '2016-10-07 15:33:46', '', 11, 'http://localhost/ohlala/2016/10/07/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-10-07 15:34:06', '2016-10-07 15:34:06', 'les presentamos nuestros catálogos de todas las líneas', 'Catálogo', '', 'publish', 'closed', 'closed', '', 'catalogo', '', '', '2016-10-07 20:57:02', '2016-10-07 20:57:02', '', 0, 'http://localhost/ohlala/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-10-07 15:34:06', '2016-10-07 15:34:06', '', 'Catálogo', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-10-07 15:34:06', '2016-10-07 15:34:06', '', 14, 'http://localhost/ohlala/2016/10/07/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-10-07 15:34:10', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-07 15:34:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/ohlala/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-10-07 15:34:24', '2016-10-07 15:34:24', '', 'Galería', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2016-10-07 20:58:53', '2016-10-07 20:58:53', '', 0, 'http://localhost/ohlala/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-10-07 15:34:24', '2016-10-07 15:34:24', '', 'Galería', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-10-07 15:34:24', '2016-10-07 15:34:24', '', 17, 'http://localhost/ohlala/2016/10/07/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-10-07 15:38:09', '2016-10-07 15:38:09', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-10-07 15:38:09', '2016-10-07 15:38:09', '', 0, 'http://localhost/ohlala/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-10-07 15:38:09', '2016-10-07 15:38:09', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-10-07 15:38:09', '2016-10-07 15:38:09', '', 19, 'http://localhost/ohlala/2016/10/07/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-10-07 15:38:18', '2016-10-07 15:38:18', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2016-10-07 15:38:18', '2016-10-07 15:38:18', '', 0, 'http://localhost/ohlala/?page_id=21', 0, 'page', '', 0),
(22, 1, '2016-10-07 15:38:18', '2016-10-07 15:38:18', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-10-07 15:38:18', '2016-10-07 15:38:18', '', 21, 'http://localhost/ohlala/2016/10/07/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-10-07 15:49:13', '2016-10-07 15:49:13', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-10-07 15:51:34', '2016-10-07 15:51:34', '', 0, 'http://localhost/ohlala/?p=23', 4, 'nav_menu_item', '', 0),
(24, 1, '2016-10-07 15:49:13', '2016-10-07 15:49:13', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-10-07 15:51:34', '2016-10-07 15:51:34', '', 0, 'http://localhost/ohlala/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2016-10-07 15:49:13', '2016-10-07 15:49:13', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-10-07 15:51:34', '2016-10-07 15:51:34', '', 0, 'http://localhost/ohlala/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2016-10-07 15:49:14', '2016-10-07 15:49:14', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-10-07 15:51:34', '2016-10-07 15:51:34', '', 0, 'http://localhost/ohlala/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2016-10-07 15:51:00', '2016-10-07 15:51:00', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-10-07 15:51:00', '2016-10-07 15:51:00', '', 0, 'http://localhost/ohlala/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2016-10-07 15:51:00', '2016-10-07 15:51:00', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2016-10-07 15:51:00', '2016-10-07 15:51:00', '', 0, 'http://localhost/ohlala/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2016-10-07 15:51:00', '2016-10-07 15:51:00', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-10-07 15:51:00', '2016-10-07 15:51:00', '', 0, 'http://localhost/ohlala/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2016-10-07 15:51:00', '2016-10-07 15:51:00', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2016-10-07 15:51:00', '2016-10-07 15:51:00', '', 0, 'http://localhost/ohlala/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2016-10-07 16:58:55', '2016-10-07 16:58:55', 'Para colaboradores , socios , clientes ,\r\n\r\namigos  o familiares, en las próximas fiestas.', 'Regalos Corporativos', '', 'publish', 'closed', 'closed', '', 'regalos-corporativos', '', '', '2016-10-07 16:58:55', '2016-10-07 16:58:55', '', 0, 'http://localhost/ohlala/?post_type=slider-home&#038;p=31', 0, 'slider-home', '', 0),
(32, 1, '2016-10-07 16:58:47', '2016-10-07 16:58:47', '', 'slider-home', '', 'inherit', 'open', 'closed', '', 'slider-home', '', '', '2016-10-07 16:58:47', '2016-10-07 16:58:47', '', 31, 'http://localhost/ohlala/wp-content/uploads/2016/10/slider-home.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-10-07 16:59:04', '2016-10-07 16:59:04', 'Para colaboradores , socios , clientes ,\r\n\r\namigos  o familiares, en las próximas fiestas.', 'Regalos Corporativos', '', 'publish', 'closed', 'closed', '', 'regalos-corporativos-2', '', '', '2016-10-07 16:59:11', '2016-10-07 16:59:11', '', 0, 'http://localhost/ohlala/?post_type=slider-home&#038;p=33', 0, 'slider-home', '', 0),
(34, 1, '2016-10-07 17:19:28', '2016-10-07 17:19:28', '', 'Producto Paneton', '', 'publish', 'closed', 'closed', '', 'producto-paneton', '', '', '2016-10-07 17:19:28', '2016-10-07 17:19:28', '', 0, 'http://localhost/ohlala/?post_type=theme-products&#038;p=34', 0, 'theme-products', '', 0),
(35, 1, '2016-10-07 17:19:18', '2016-10-07 17:19:18', '', 'producto-sample', '', 'inherit', 'open', 'closed', '', 'producto-sample', '', '', '2016-10-07 17:19:18', '2016-10-07 17:19:18', '', 34, 'http://localhost/ohlala/wp-content/uploads/2016/10/producto-sample.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2016-10-07 17:19:40', '2016-10-07 17:19:40', '', 'Producto Paneton', '', 'publish', 'closed', 'closed', '', 'producto-paneton-2', '', '', '2016-10-07 17:19:48', '2016-10-07 17:19:48', '', 0, 'http://localhost/ohlala/?post_type=theme-products&#038;p=36', 0, 'theme-products', '', 0),
(37, 1, '2016-10-07 17:19:51', '2016-10-07 17:19:51', '', 'Producto Paneton', '', 'publish', 'closed', 'closed', '', 'producto-paneton-3', '', '', '2016-10-07 17:19:58', '2016-10-07 17:19:58', '', 0, 'http://localhost/ohlala/?post_type=theme-products&#038;p=37', 0, 'theme-products', '', 0),
(38, 1, '2016-10-07 17:20:00', '2016-10-07 17:20:00', '', 'Producto Paneton', '', 'publish', 'closed', 'closed', '', 'producto-paneton-4', '', '', '2016-10-07 17:29:06', '2016-10-07 17:29:06', '', 0, 'http://localhost/ohlala/?post_type=theme-products&#038;p=38', 0, 'theme-products', '', 0),
(39, 1, '2016-10-07 17:52:33', '2016-10-07 17:52:33', '', 'sample1', '', 'inherit', 'open', 'closed', '', 'sample1', '', '', '2016-10-07 17:52:33', '2016-10-07 17:52:33', '', 0, 'http://localhost/ohlala/wp-content/uploads/2016/10/sample1.pdf', 0, 'attachment', 'application/pdf', 0),
(40, 1, '2016-10-07 18:09:37', '2016-10-07 18:09:37', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nuevo Post Navideño', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2016-10-07 18:09:37', '2016-10-07 18:09:37', '', 1, 'http://localhost/ohlala/2016/10/07/1-autosave-v1/', 0, 'revision', '', 0),
(41, 1, '2016-10-07 18:09:43', '2016-10-07 18:09:43', '', 'blog_sample', '', 'inherit', 'open', 'closed', '', 'blog_sample', '', '', '2016-10-07 18:09:43', '2016-10-07 18:09:43', '', 1, 'http://localhost/ohlala/wp-content/uploads/2016/10/blog_sample.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-10-07 18:09:51', '2016-10-07 18:09:51', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nuevo Post Navideño', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-10-07 18:09:51', '2016-10-07 18:09:51', '', 1, 'http://localhost/ohlala/2016/10/07/1-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-10-07 18:10:22', '2016-10-07 18:10:22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nuevo Post Navideño', '', 'publish', 'open', 'open', '', 'nuevo-post-navideno', '', '', '2016-10-07 18:10:33', '2016-10-07 18:10:33', '', 0, 'http://localhost/ohlala/?p=43', 0, 'post', '', 0),
(44, 1, '2016-10-07 18:10:33', '2016-10-07 18:10:33', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nuevo Post Navideño', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2016-10-07 18:10:33', '2016-10-07 18:10:33', '', 43, 'http://localhost/ohlala/2016/10/07/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2016-10-07 18:10:37', '2016-10-07 18:10:37', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nuevo Post Navideño', '', 'publish', 'open', 'open', '', 'nuevo-post-navideno-2', '', '', '2016-10-07 18:10:43', '2016-10-07 18:10:43', '', 0, 'http://localhost/ohlala/?p=45', 0, 'post', '', 0),
(46, 1, '2016-10-07 18:10:43', '2016-10-07 18:10:43', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nuevo Post Navideño', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2016-10-07 18:10:43', '2016-10-07 18:10:43', '', 45, 'http://localhost/ohlala/2016/10/07/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2016-10-07 19:24:02', '2016-10-07 19:24:02', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-10-07 19:24:02', '2016-10-07 19:24:02', '', 7, 'http://localhost/ohlala/2016/10/07/7-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-10-07 19:24:22', '2016-10-07 19:24:22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-10-07 19:24:22', '2016-10-07 19:24:22', '', 7, 'http://localhost/ohlala/2016/10/07/7-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-10-07 19:25:19', '2016-10-07 19:25:19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Nosotros', 'es momento de que cumplas los deseos y regalos de navidad', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-10-07 19:25:19', '2016-10-07 19:25:19', '', 7, 'http://localhost/ohlala/2016/10/07/7-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2016-10-07 20:12:51', '2016-10-07 20:12:51', '', 'Servicios', 'Canastas Navideñas', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2016-10-07 20:12:51', '2016-10-07 20:12:51', '', 9, 'http://localhost/ohlala/2016/10/07/9-autosave-v1/', 0, 'revision', '', 0),
(51, 1, '2016-10-07 20:13:05', '2016-10-07 20:13:05', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Servicios', 'Canastas Navideñas', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-07 20:13:05', '2016-10-07 20:13:05', '', 9, 'http://localhost/ohlala/2016/10/07/9-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-10-07 20:14:01', '2016-10-07 20:14:01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit ', 'Servicios', 'Canastas Navideñas', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-07 20:14:01', '2016-10-07 20:14:01', '', 9, 'http://localhost/ohlala/2016/10/07/9-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2016-10-07 20:21:24', '2016-10-07 20:21:24', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore ', 'Merchandising Corporativo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation', 'publish', 'closed', 'closed', '', 'merchandising-corporativo', '', '', '2016-10-07 20:22:58', '2016-10-07 20:22:58', '', 0, 'http://localhost/ohlala/?post_type=theme-services&#038;p=53', 0, 'theme-services', '', 0),
(54, 1, '2016-10-07 20:21:14', '2016-10-07 20:21:14', '', 'sample-services', '', 'inherit', 'open', 'closed', '', 'sample-services', '', '', '2016-10-07 20:21:14', '2016-10-07 20:21:14', '', 53, 'http://localhost/ohlala/wp-content/uploads/2016/10/sample-services.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2016-10-07 20:21:30', '2016-10-07 20:21:30', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore ', 'Merchandising Corporativo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation', 'publish', 'closed', 'closed', '', 'merchandising-corporativo-3', '', '', '2016-10-07 20:22:48', '2016-10-07 20:22:48', '', 0, 'http://localhost/ohlala/?post_type=theme-services&#038;p=55', 0, 'theme-services', '', 0),
(56, 1, '2016-10-07 20:21:35', '2016-10-07 20:21:35', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore ', 'Merchandising Corporativo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation', 'publish', 'closed', 'closed', '', 'merchandising-corporativo-2', '', '', '2016-10-07 20:22:39', '2016-10-07 20:22:39', '', 0, 'http://localhost/ohlala/?post_type=theme-services&#038;p=56', 0, 'theme-services', '', 0),
(57, 1, '2016-10-07 20:36:56', '2016-10-07 20:36:56', '', 'Línea Ecológica', '', 'publish', 'closed', 'closed', '', 'linea-ecologica', '', '', '2016-10-07 20:41:28', '2016-10-07 20:41:28', '', 0, 'http://localhost/ohlala/?post_type=theme-catalogos&#038;p=57', 0, 'theme-catalogos', '', 0),
(58, 1, '2016-10-07 20:36:48', '2016-10-07 20:36:48', '', 'sample-catalogo', '', 'inherit', 'open', 'closed', '', 'sample-catalogo', '', '', '2016-10-07 20:36:48', '2016-10-07 20:36:48', '', 57, 'http://localhost/ohlala/wp-content/uploads/2016/10/sample-catalogo.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-10-07 20:42:38', '2016-10-07 20:42:38', '', 'Línea Ecológica', '', 'publish', 'closed', 'closed', '', 'linea-ecologica-2', '', '', '2016-10-07 20:42:44', '2016-10-07 20:42:44', '', 0, 'http://localhost/ohlala/?post_type=theme-catalogos&#038;p=59', 0, 'theme-catalogos', '', 0),
(60, 1, '2016-10-07 20:42:48', '2016-10-07 20:42:48', '', 'Línea Ecológica', '', 'publish', 'closed', 'closed', '', 'linea-ecologica-3', '', '', '2016-10-07 20:42:54', '2016-10-07 20:42:54', '', 0, 'http://localhost/ohlala/?post_type=theme-catalogos&#038;p=60', 0, 'theme-catalogos', '', 0),
(61, 1, '2016-10-07 20:56:35', '2016-10-07 20:56:35', 'les presentamos nuestros catálogos de todas las líneas', 'Catálogo', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-10-07 20:56:35', '2016-10-07 20:56:35', '', 14, 'http://localhost/ohlala/2016/10/07/14-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(32, 4, 0),
(35, 5, 0),
(39, 6, 0),
(41, 7, 0),
(43, 1, 0),
(45, 1, 0),
(54, 8, 0),
(58, 6, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'wpmf-category', '', 0, 0),
(5, 5, 'wpmf-category', '', 0, 0),
(6, 6, 'wpmf-category', '', 0, 0),
(7, 7, 'wpmf-category', '', 0, 1),
(8, 8, 'wpmf-category', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menú Izquierda', 'menu-izquierda', 0),
(3, 'Menu Derecha', 'menu-derecha', 0),
(4, 'SLIDERHOME', 'sliderhome', 1),
(5, 'PRODUCTOS', 'productos', 1),
(6, 'CATALOGOS', 'catalogos', 1),
(7, 'POST', 'post', 1),
(8, 'SERVICIOS', 'servicios', 1) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'ohlala'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"08c60bba194265c7123d82e2485c5d5e15ae7b0b6cbf18f8d6cca3a0b2adf3f0";a:4:{s:10:"expiration";i:1476313819;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476141019;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:10:{i:0;s:25:"add-post-type-slider-home";i:1;s:28:"add-post-type-theme-services";i:2;s:28:"add-post-type-theme-products";i:3;s:26:"add-post-type-theme-images";i:4;s:26:"add-post-type-theme-videos";i:5;s:30:"add-post-type-theme-promotions";i:6;s:25:"add-post-type-theme-staff";i:7;s:12:"add-post_tag";i:8;s:15:"add-post_format";i:9;s:19:"add-images_category";}'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(19, 1, 'wp_user-settings-time', '1475871181'),
(20, 1, 'closedpostboxes_page', 'a:0:{}'),
(21, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BeOmew6174CxO0VQmoM8zCz5L6cfZC.', 'admin', 'jgomez@ingenioart.com', '', '2016-10-07 15:25:25', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

