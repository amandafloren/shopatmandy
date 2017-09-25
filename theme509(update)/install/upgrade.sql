-- --------------------------------------------------------

--
-- Database: `opencart`
--

-- --------------------------------------------------------

SET sql_mode = '';
--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(12, 'Parallax-3', 1),
(11, 'Parralax-2', 1),
(10, 'Parralax-1', 1),
(14, 'banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(137, 14, 'index.php?route=product/product&amp;product_id=28', 'catalog/banner-3.jpg', 3),
(136, 14, 'index.php?route=product/product&amp;product_id=42', 'catalog/banner-2.jpg', 2),
(135, 14, 'index.php?route=product/product&amp;product_id=43', 'catalog/banner-1.jpg', 1),
(134, 12, '', 'catalog/parallax-3.jpg', 1),
(132, 10, '', 'catalog/parallax-1.jpg', 0),
(133, 11, '', 'catalog/parallax-2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(99, 1, 9, 'slide-1', ''),
(100, 1, 9, 'slide-2', ''),
(101, 1, 9, 'slide-3', ''),
(192, 3, 15, 'parallax-4', '&lt;h4&gt;New arrivals&lt;/h4&gt;\r\n&lt;h2&gt;Buy2&lt;/h2&gt;\r\n&lt;h1&gt;sexy&lt;/h1&gt;\r\n&lt;h3&gt;items&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=42&quot;&gt;Shop now!&lt;/a&gt;'),
(99, 2, 9, 'slide-1', ''),
(100, 2, 9, 'slide-2', ''),
(101, 2, 9, 'slide-3', ''),
(99, 3, 9, 'slide-1', ''),
(100, 3, 9, 'slide-2', ''),
(101, 3, 9, 'slide-3', ''),
(192, 2, 15, 'parallax-4', '&lt;h4&gt;New arrivals&lt;/h4&gt;\r\n&lt;h2&gt;Buy2&lt;/h2&gt;\r\n&lt;h1&gt;sexy&lt;/h1&gt;\r\n&lt;h3&gt;items&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=42&quot;&gt;Shop now!&lt;/a&gt;'),
(133, 3, 11, 'parallax-2', '&lt;h4&gt;10%-20% off&lt;/h4&gt;\r\n&lt;h2&gt;ideal&lt;/h2&gt;\r\n&lt;h1&gt;skin&lt;/h1&gt;\r\n&lt;h3&gt;nutrition face care&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=30&quot;&gt;Shop now!&lt;/a&gt;'),
(192, 1, 15, 'parallax-4', '&lt;h4&gt;New arrivals&lt;/h4&gt;\r\n&lt;h2&gt;Buy2&lt;/h2&gt;\r\n&lt;h1&gt;sexy&lt;/h1&gt;\r\n&lt;h3&gt;items&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=42&quot;&gt;Shop now!&lt;/a&gt;'),
(137, 3, 14, 'banner-3', '&lt;h2&gt;Perfume&lt;/h2&gt;\r\n&lt;h1&gt;Gift set&lt;/h1&gt;'),
(137, 2, 14, 'banner-3', '&lt;h2&gt;Perfume&lt;/h2&gt;\r\n&lt;h1&gt;Gift set&lt;/h1&gt;'),
(137, 1, 14, 'banner-3', '&lt;h2&gt;Perfume&lt;/h2&gt;\r\n&lt;h1&gt;Gift set&lt;/h1&gt;'),
(132, 3, 10, 'parallax-1', '&lt;h4&gt;Define&lt;/h4&gt;\r\n&lt;h2&gt;beautiful&lt;/h2&gt;\r\n&lt;h1&gt;LOOK &amp;amp;&lt;/h1&gt;\r\n&lt;h3&gt;sweet skin&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(136, 3, 14, 'banner-2', '&lt;h2&gt;Must&lt;/h2&gt;\r\n&lt;h1&gt;Have&lt;/h1&gt;'),
(136, 2, 14, 'banner-2', '&lt;h2&gt;Must&lt;/h2&gt;\r\n&lt;h1&gt;Have&lt;/h1&gt;'),
(136, 1, 14, 'banner-2', '&lt;h2&gt;Must&lt;/h2&gt;\r\n&lt;h1&gt;Have&lt;/h1&gt;'),
(135, 3, 14, 'banner-1', '&lt;h2&gt;Beauty&lt;/h2&gt;\r\n&lt;h1&gt;Products&lt;/h1&gt;'),
(135, 2, 14, 'banner-1', '&lt;h2&gt;Beauty&lt;/h2&gt;\r\n&lt;h1&gt;Products&lt;/h1&gt;'),
(135, 1, 14, 'banner-1', '&lt;h2&gt;Beauty&lt;/h2&gt;\r\n&lt;h1&gt;Products&lt;/h1&gt;'),
(134, 1, 12, 'parallax-3', '&lt;h4&gt;Choose from&lt;/h4&gt;\r\n&lt;h2&gt;a new&lt;/h2&gt;\r\n&lt;h1&gt;spring&lt;/h1&gt;\r\n&lt;h3&gt;collection&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=34&quot;&gt;Shop now!&lt;/a&gt;'),
(134, 2, 12, 'parallax-3', '&lt;h4&gt;Choose from&lt;/h4&gt;\r\n&lt;h2&gt;a new&lt;/h2&gt;\r\n&lt;h1&gt;spring&lt;/h1&gt;\r\n&lt;h3&gt;collection&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=34&quot;&gt;Shop now!&lt;/a&gt;'),
(134, 3, 12, 'parallax-3', '&lt;h4&gt;Choose from&lt;/h4&gt;\r\n&lt;h2&gt;a new&lt;/h2&gt;\r\n&lt;h1&gt;spring&lt;/h1&gt;\r\n&lt;h3&gt;collection&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=34&quot;&gt;Shop now!&lt;/a&gt;'),
(132, 2, 10, 'parallax-1', '&lt;h4&gt;Define&lt;/h4&gt;\r\n&lt;h2&gt;beautiful&lt;/h2&gt;\r\n&lt;h1&gt;LOOK &amp;amp;&lt;/h1&gt;\r\n&lt;h3&gt;sweet skin&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(132, 1, 10, 'parallax-1', '&lt;h4&gt;Define&lt;/h4&gt;\r\n&lt;h2&gt;beautiful&lt;/h2&gt;\r\n&lt;h1&gt;LOOK &amp;amp;&lt;/h1&gt;\r\n&lt;h3&gt;sweet skin&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(133, 2, 11, 'parallax-2', '&lt;h4&gt;10%-20% off&lt;/h4&gt;\r\n&lt;h2&gt;ideal&lt;/h2&gt;\r\n&lt;h1&gt;skin&lt;/h1&gt;\r\n&lt;h3&gt;nutrition face care&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=30&quot;&gt;Shop now!&lt;/a&gt;'),
(133, 1, 11, 'parallax-2', '&lt;h4&gt;10%-20% off&lt;/h4&gt;\r\n&lt;h2&gt;ideal&lt;/h2&gt;\r\n&lt;h1&gt;skin&lt;/h1&gt;\r\n&lt;h3&gt;nutrition face care&lt;/h3&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=30&quot;&gt;Shop now!&lt;/a&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=438 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(432, 'module', 'tm_fbbox'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(428, 'module', 'parallax'),
(429, 'module', 'html'),
(430, 'module', 'tm_category'),
(433, 'module', 'bestseller'),
(434, 'module', 'latest'),
(435, 'module', 'special'),
(436, 'module', 'affiliate'),
(437, 'module', 'information');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=267 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(262, 4, 'special.45', 'column_left', 2),
(259, 5, 'account', 'column_left', 2),
(230, 6, 'account', 'column_left', 1),
(215, 1, 'tm_fbbox.42', 'footer_top', 1),
(214, 1, 'parallax.36', 'content_top', 2),
(213, 1, 'parallax.34', 'header_top', 1),
(212, 1, 'banner.33', 'content_top', 1),
(211, 1, 'html.39', 'content_bottom', 1),
(210, 1, 'parallax.37', 'content_top', 4),
(209, 1, 'featured.28', 'content_top', 5),
(257, 13, 'special.45', 'column_left', 2),
(249, 3, 'account', 'column_left', 1),
(207, 1, 'html.40', 'content_bottom', 2),
(208, 1, 'html.35', 'content_top', 3),
(227, 10, 'affiliate', 'column_left', 1),
(251, 3, 'tm_fbbox.42', 'footer_top', 1),
(233, 7, 'tm_fbbox.42', 'footer_top', 1),
(232, 7, 'account', 'column_left', 1),
(250, 3, 'bestseller.43', 'column_left', 2),
(248, 3, 'special.45', 'column_left', 3),
(228, 10, 'account', 'column_left', 2),
(229, 10, 'tm_fbbox.42', 'footer_top', 1),
(231, 6, 'tm_fbbox.42', 'footer_top', 1),
(261, 4, 'account', 'column_left', 1),
(264, 8, 'account', 'column_left', 1),
(256, 13, 'bestseller.43', 'column_left', 1),
(254, 9, 'account', 'column_left', 1),
(252, 2, 'tm_fbbox.42', 'footer_top', 1),
(253, 11, 'tm_fbbox.42', 'footer_top', 1),
(255, 9, 'tm_fbbox.42', 'footer_top', 1),
(258, 13, 'tm_fbbox.42', 'footer_top', 1),
(260, 5, 'tm_fbbox.42', 'footer_top', 1),
(263, 4, 'tm_fbbox.42', 'footer_top', 1),
(265, 8, 'tm_fbbox.42', 'footer_top', 1),
(266, 12, 'tm_fbbox.42', 'footer_top', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(90, 6, 0, 'account/%'),
(89, 10, 0, 'affiliate/%'),
(98, 3, 0, 'product/category'),
(84, 1, 0, 'common/home'),
(99, 2, 0, 'product/product'),
(100, 11, 0, 'information/information'),
(91, 7, 0, 'checkout/%'),
(105, 8, 0, 'information/contact'),
(101, 9, 0, 'information/sitemap'),
(104, 4, 0, ''),
(103, 5, 0, 'product/manufacturer'),
(106, 12, 0, 'product/compare'),
(102, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(33, 'banners', 'banner', 'a:5:{s:4:"name";s:7:"banners";s:9:"banner_id";s:2:"14";s:5:"width";s:3:"370";s:6:"height";s:3:"370";s:6:"status";s:1:"1";}'),
(29, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(28, 'Featured - Home Page', 'featured', 'a:6:{s:4:"name";s:20:"Featured - Home Page";s:7:"product";a:8:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"30";i:3;s:2:"42";i:4;s:2:"33";i:5;s:2:"46";i:6;s:2:"32";i:7;s:2:"28";}s:5:"limit";s:1:"8";s:5:"width";s:3:"270";s:6:"height";s:3:"420";s:6:"status";s:1:"1";}'),
(27, 'Home Page', 'slideshow', 'a:5:{s:4:"name";s:21:"Slideshow - Home Page";s:9:"banner_id";s:1:"7";s:5:"width";s:4:"1140";s:6:"height";s:3:"380";s:6:"status";s:1:"1";}'),
(34, 'Parralax-1', 'parallax', 'a:5:{s:4:"name";s:10:"Parralax-1";s:11:"parallax_id";s:2:"10";s:5:"width";s:4:"2050";s:6:"height";s:3:"971";s:6:"status";s:1:"1";}'),
(35, 'Advertising-HomePage', 'html', 'a:3:{s:4:"name";s:20:"Advertising-HomePage";s:18:"module_description";a:3:{i:1;a:2:{s:5:"title";s:11:"advertising";s:11:"description";s:1619:"&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;opacity: 1; left: 0px;&quot;&gt;&lt;div&gt;&lt;h1&gt;Free Shipping&lt;/h1&gt;&lt;h2&gt;on orders over $99&lt;/h2&gt;&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.&lt;/p&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;opacity: 1; bottom: 0px;&quot;&gt;&lt;div&gt;&lt;h1&gt;Order return&lt;/h1&gt;&lt;h2&gt;Returns within 14 days&lt;/h2&gt;&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&lt;/p&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=40&quot;&gt;&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;opacity: 1; right: 0px;&quot;&gt;&lt;div&gt;&lt;h1&gt;COD&lt;/h1&gt;&lt;h2&gt;Cash on delivery&lt;/h2&gt;&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.&lt;/p&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=30&quot;&gt;&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;";}i:2;a:2:{s:5:"title";s:11:"advertising";s:11:"description";s:1651:"&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;opacity: 1; left: 0px;&quot;&gt;&lt;div&gt;&lt;h1&gt;Free Shipping&lt;/h1&gt;\r\n&lt;h2&gt;on orders over $99&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-sm-4&quot; style=&quot;opacity: 1; bottom: 0px;&quot;&gt;&lt;div&gt;&lt;h1&gt;Order return&lt;/h1&gt;\r\n&lt;h2&gt;Returns within 14 days&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=40&quot;&gt;&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-sm-4&quot; style=&quot;opacity: 1; right: 0px;&quot;&gt;&lt;div&gt;&lt;h1&gt;COD&lt;/h1&gt;\r\n&lt;h2&gt;Cash on delivery&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=30&quot;&gt;&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;";}i:3;a:2:{s:5:"title";s:11:"advertising";s:11:"description";s:1619:"&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;opacity: 1; left: 0px;&quot;&gt;&lt;div&gt;&lt;h1&gt;Free Shipping&lt;/h1&gt;&lt;h2&gt;on orders over $99&lt;/h2&gt;&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.&lt;/p&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;opacity: 1; bottom: 0px;&quot;&gt;&lt;div&gt;&lt;h1&gt;Order return&lt;/h1&gt;&lt;h2&gt;Returns within 14 days&lt;/h2&gt;&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&lt;/p&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=40&quot;&gt;&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;opacity: 1; right: 0px;&quot;&gt;&lt;div&gt;&lt;h1&gt;COD&lt;/h1&gt;&lt;h2&gt;Cash on delivery&lt;/h2&gt;&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.&lt;/p&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=30&quot;&gt;&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(36, 'Parralax-2', 'parallax', 'a:5:{s:4:"name";s:10:"Parralax-2";s:11:"parallax_id";s:2:"11";s:5:"width";s:4:"2050";s:6:"height";s:3:"971";s:6:"status";s:1:"1";}'),
(37, 'Parralax-3', 'parallax', 'a:5:{s:4:"name";s:10:"Parralax-3";s:11:"parallax_id";s:2:"12";s:5:"width";s:4:"2050";s:6:"height";s:3:"971";s:6:"status";s:1:"1";}'),
(38, 'Parallax-4', 'parallax', 'a:5:{s:4:"name";s:10:"Parallax-4";s:11:"parallax_id";s:2:"13";s:5:"width";s:4:"2050";s:6:"height";s:3:"971";s:6:"status";s:1:"1";}'),
(39, 'BgVideo-HomePage', 'html', 'a:3:{s:4:"name";s:16:"BgVideo-HomePage";s:18:"module_description";a:3:{i:1;a:2:{s:5:"title";s:11:"video_block";s:11:"description";s:280:"&lt;div class=&quot;container&quot;&gt;&lt;h4&gt;Get up to&lt;/h4&gt;\r\n\r\n&lt;h2&gt;50%&lt;/h2&gt;\r\n\r\n&lt;h1&gt;OFF&lt;/h1&gt;\r\n\r\n&lt;h3&gt;on new arrivals&lt;/h3&gt;\r\n\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=42&quot;&gt;Shop now!&lt;/a&gt;&lt;/div&gt;";}i:2;a:2:{s:5:"title";s:11:"video_block";s:11:"description";s:280:"&lt;div class=&quot;container&quot;&gt;&lt;h4&gt;Get up to&lt;/h4&gt;\r\n\r\n&lt;h2&gt;50%&lt;/h2&gt;\r\n\r\n&lt;h1&gt;OFF&lt;/h1&gt;\r\n\r\n&lt;h3&gt;on new arrivals&lt;/h3&gt;\r\n\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=42&quot;&gt;Shop now!&lt;/a&gt;&lt;/div&gt;";}i:3;a:2:{s:5:"title";s:11:"video_block";s:11:"description";s:280:"&lt;div class=&quot;container&quot;&gt;&lt;h4&gt;Get up to&lt;/h4&gt;\r\n\r\n&lt;h2&gt;50%&lt;/h2&gt;\r\n\r\n&lt;h1&gt;OFF&lt;/h1&gt;\r\n\r\n&lt;h3&gt;on new arrivals&lt;/h3&gt;\r\n\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=42&quot;&gt;Shop now!&lt;/a&gt;&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(40, 'Map', 'html', 'a:3:{s:4:"name";s:3:"Map";s:18:"module_description";a:3:{i:1;a:2:{s:5:"title";s:3:"map";s:11:"description";s:42:"&lt;div id=&quot;map&quot;&gt;&lt;/div&gt;";}i:2;a:2:{s:5:"title";s:3:"map";s:11:"description";s:42:"&lt;div id=&quot;map&quot;&gt;&lt;/div&gt;";}i:3;a:2:{s:5:"title";s:3:"map";s:11:"description";s:42:"&lt;div id=&quot;map&quot;&gt;&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(42, 'Facebook', 'tm_fbbox', 'a:11:{s:4:"name";s:8:"Facebook";s:5:"appId";s:16:"1494197684186276";s:8:"page_url";s:40:"https://www.facebook.com/TemplateMonster";s:12:"color_scheme";s:5:"light";s:10:"show_faces";s:1:"1";s:11:"show_stream";s:1:"0";s:11:"show_header";s:1:"0";s:11:"show_border";s:1:"0";s:5:"width";s:3:"370";s:6:"height";s:3:"190";s:6:"status";s:1:"1";}'),
(43, 'Bestsellers', 'bestseller', 'a:5:{s:4:"name";s:11:"Bestsellers";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"420";s:6:"status";s:1:"1";}'),
(44, 'Latest Products', 'latest', 'a:5:{s:4:"name";s:15:"Latest Products";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"420";s:6:"status";s:1:"1";}'),
(45, 'Specials', 'special', 'a:5:{s:4:"name";s:8:"Specials";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"420";s:6:"status";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1513 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(837, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(954, 0, 'affiliate', 'affiliate_status', '1', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(1504, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(1503, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(1502, 0, 'config', 'config_file_max_size', '300000', 0),
(1501, 0, 'config', 'config_seo_url', '0', 0),
(1500, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1495, 0, 'config', 'config_fraud_key', '', 0),
(1496, 0, 'config', 'config_fraud_score', '', 0),
(1497, 0, 'config', 'config_fraud_status_id', '7', 0),
(1498, 0, 'config', 'config_secure', '0', 0),
(1499, 0, 'config', 'config_shared', '0', 0),
(1494, 0, 'config', 'config_fraud_detection', '0', 0),
(1493, 0, 'config', 'config_mail_alert', '', 0),
(1492, 0, 'config', 'config_mail', 'a:7:{s:8:"protocol";s:4:"mail";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:0:"";s:13:"smtp_username";s:0:"";s:13:"smtp_password";s:0:"";s:9:"smtp_port";s:0:"";s:12:"smtp_timeout";s:0:"";}', 1),
(1491, 0, 'config', 'config_ftp_status', '0', 0),
(1490, 0, 'config', 'config_ftp_root', '', 0),
(1489, 0, 'config', 'config_ftp_password', '', 0),
(1488, 0, 'config', 'config_ftp_username', '', 0),
(1487, 0, 'config', 'config_ftp_port', '21', 0),
(1486, 0, 'config', 'config_ftp_hostname', '192.168.9.2', 0),
(1485, 0, 'config', 'config_image_location_height', '50', 0),
(1484, 0, 'config', 'config_image_location_width', '268', 0),
(1483, 0, 'config', 'config_image_cart_height', '73', 0),
(1482, 0, 'config', 'config_image_cart_width', '47', 0),
(1481, 0, 'config', 'config_image_wishlist_height', '73', 0),
(1480, 0, 'config', 'config_image_wishlist_width', '47', 0),
(1479, 0, 'config', 'config_image_compare_height', '140', 0),
(1477, 0, 'config', 'config_image_related_height', '420', 0),
(1478, 0, 'config', 'config_image_compare_width', '90', 0),
(1476, 0, 'config', 'config_image_related_width', '270', 0),
(1475, 0, 'config', 'config_image_additional_height', '136', 0),
(1474, 0, 'config', 'config_image_additional_width', '88', 0),
(1473, 0, 'config', 'config_image_product_height', '420', 0),
(1472, 0, 'config', 'config_image_product_width', '270', 0),
(1471, 0, 'config', 'config_image_popup_height', '1000', 0),
(1470, 0, 'config', 'config_image_popup_width', '643', 0),
(1469, 0, 'config', 'config_image_thumb_height', '1000', 0),
(1468, 0, 'config', 'config_image_thumb_width', '643', 0),
(1467, 0, 'config', 'config_image_category_height', '296', 0),
(1466, 0, 'config', 'config_image_category_width', '190', 0),
(1465, 0, 'config', 'config_icon', 'catalog/favicon.png', 0),
(1464, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(1463, 0, 'config', 'config_return_status_id', '2', 0),
(1462, 0, 'config', 'config_return_id', '0', 0),
(1461, 0, 'config', 'config_affiliate_mail', '0', 0),
(1460, 0, 'config', 'config_affiliate_id', '4', 0),
(1459, 0, 'config', 'config_affiliate_commission', '5', 0),
(1458, 0, 'config', 'config_affiliate_auto', '0', 0),
(1457, 0, 'config', 'config_affiliate_approval', '0', 0),
(1456, 0, 'config', 'config_stock_checkout', '0', 0),
(1454, 0, 'config', 'config_stock_display', '0', 0),
(839, 0, 'tm_category', 'tm_category_status', '1', 0),
(1455, 0, 'config', 'config_stock_warning', '0', 0),
(1453, 0, 'config', 'config_order_mail', '0', 0),
(1452, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(1451, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(1450, 0, 'config', 'config_order_status_id', '1', 0),
(1449, 0, 'config', 'config_checkout_id', '5', 0),
(1448, 0, 'config', 'config_checkout_guest', '1', 0),
(1447, 0, 'config', 'config_cart_weight', '1', 0),
(1446, 0, 'config', 'config_api_id', '3', 0),
(1445, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(1444, 0, 'config', 'config_account_mail', '0', 0),
(1443, 0, 'config', 'config_account_id', '3', 0),
(1441, 0, 'config', 'config_customer_price', '0', 0),
(1442, 0, 'config', 'config_login_attempts', '5', 0),
(1440, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(1439, 0, 'config', 'config_customer_group_id', '1', 0),
(1437, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1438, 0, 'config', 'config_customer_online', '0', 0),
(1435, 0, 'config', 'config_tax', '0', 0),
(1436, 0, 'config', 'config_tax_default', 'shipping', 0),
(1434, 0, 'config', 'config_voucher_max', '1000', 0),
(1433, 0, 'config', 'config_voucher_min', '1', 0),
(1431, 0, 'config', 'config_review_guest', '1', 0),
(1432, 0, 'config', 'config_review_mail', '0', 0),
(1429, 0, 'config', 'config_limit_admin', '20', 0),
(1430, 0, 'config', 'config_review_status', '1', 0),
(1420, 0, 'config', 'config_language', 'en', 0),
(1421, 0, 'config', 'config_admin_language', 'en', 0),
(1422, 0, 'config', 'config_currency', 'USD', 0),
(1423, 0, 'config', 'config_currency_auto', '1', 0),
(1424, 0, 'config', 'config_length_class_id', '1', 0),
(1425, 0, 'config', 'config_weight_class_id', '1', 0),
(1426, 0, 'config', 'config_product_count', '1', 0),
(1427, 0, 'config', 'config_product_limit', '6', 0),
(1428, 0, 'config', 'config_product_description_length', '100', 0),
(1419, 0, 'config', 'config_zone_id', '3563', 0),
(1418, 0, 'config', 'config_country_id', '222', 0),
(1415, 0, 'config', 'config_meta_keyword', '', 0),
(1416, 0, 'config', 'config_template', 'theme509', 0),
(1417, 0, 'config', 'config_layout_id', '4', 0),
(1407, 0, 'config', 'config_email', 'admin@admin.com', 0),
(1408, 0, 'config', 'config_telephone', '800-2345-6789;', 0),
(1409, 0, 'config', 'config_fax', '800-2345-6790', 0),
(1410, 0, 'config', 'config_image', '', 0),
(1411, 0, 'config', 'config_open', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0),
(1412, 0, 'config', 'config_comment', 'Aenean mattis efficitur metus eget ornare.', 0),
(1413, 0, 'config', 'config_meta_title', 'Perfume online store', 0),
(1414, 0, 'config', 'config_meta_description', 'Perfume online store', 0),
(1406, 0, 'config', 'config_geocode', '37.423021 122.083739', 0),
(1405, 0, 'config', 'config_address', 'Company Inc., 8901 Marmora Road, Glasgow, D04 89GR', 0),
(1404, 0, 'config', 'config_owner', 'Perfume online store', 0),
(1403, 0, 'config', 'config_name', 'Perfume online store', 0),
(1505, 0, 'config', 'config_maintenance', '0', 0),
(1506, 0, 'config', 'config_password', '1', 0),
(1507, 0, 'config', 'config_encryption', '475d62d20cb58c85f1e3138063d818bb', 0),
(1508, 0, 'config', 'config_compression', '0', 0),
(1509, 0, 'config', 'config_error_display', '1', 0),
(1510, 0, 'config', 'config_error_log', '1', 0),
(1511, 0, 'config', 'config_error_filename', 'error.log', 0),
(1512, 0, 'config', 'config_google_analytics', '', 0);

