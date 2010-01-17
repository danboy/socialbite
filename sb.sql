-- MySQL dump 10.13  Distrib 5.1.37, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: sb_production
-- ------------------------------------------------------
-- Server version	5.1.37-1ubuntu5

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `comment` text,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commentable_type` (`commentable_type`),
  KEY `index_comments_on_commentable_id` (`commentable_id`),
  KEY `index_comments_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featured_periods`
--

DROP TABLE IF EXISTS `featured_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featured_periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featurable_id` int(11) DEFAULT NULL,
  `featurable_type` varchar(255) DEFAULT NULL,
  `starts_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featured_periods`
--

LOCK TABLES `featured_periods` WRITE;
/*!40000 ALTER TABLE `featured_periods` DISABLE KEYS */;
INSERT INTO `featured_periods` VALUES (1,1,'Item','2009-11-16 06:38:15','2009-12-17 06:38:15','2009-11-17 06:38:15','2009-11-17 06:38:15'),(2,7,'Item','2010-01-12 20:51:33','2010-02-13 20:51:33','2010-01-13 20:51:33','2010-01-13 20:51:33');
/*!40000 ALTER TABLE `featured_periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `user_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `splash_file_name` varchar(255) DEFAULT NULL,
  `splash_content_type` varchar(255) DEFAULT NULL,
  `splash_file_size` int(11) DEFAULT NULL,
  `splash_updated_at` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Restarting after the server failed','<h2>Hello World</h2><p>how\'s it going world? time to start adding some real content. Authors, you\'ll need to register again and let me know when your done. I lost everything when my computer crashed.</p><p>hello checking out a second paragraph.</p>',NULL,1,'2009-11-17 06:37:21','2010-01-13 20:51:12','picture_2.png','image/png',222143,'2009-11-17 06:37:20','draft'),(4,'Testing out the editor again.','<p>Why won\'t paragraphs work?</p>\r\n\r\n<p>Ok. I really am having some issues with pragraphs.</p>',NULL,1,'2009-11-23 02:24:55','2009-11-23 02:24:55',NULL,NULL,NULL,NULL,'draft'),(5,'WTF?','<h2>This is a heading.</h2><br />\r\n<p>Ok, so it seems like paragraphs just don\'t work after headings? wierd.</p>\r\n\r\n<p>Hi.</p>',NULL,1,'2009-11-23 02:25:46','2009-11-23 02:27:22',NULL,NULL,NULL,NULL,'draft'),(6,'Happy Holidays','<p>While I patiently await my birthday and all the delicious treats that come along with the holiday season, I have decided to get&nbsp;a jump on the holiday cookies that I intend to make every year, but never get&nbsp;around to.</p>\r\n\r\n<p>I never know when to start… the beginning of December&nbsp;seems too soon, but if I wait and try to bake them anytime after that I find&nbsp;that we are all booked up with holiday parties, shopping, and recovery. </p><p>So this year I have made it my birthday&nbsp;resolution to bake, assemble and pack all my holiday treats by December 9<sup>th</sup>.</p>\r\n\r\n<p>I have been scouring cookbooks and the internet in hopes of finding a delicious combination of sweet and savory treats that will appeal to every&nbsp;recipient on my list. Here is the short list that I am considering:</p><ul><li>The NY Times Chocolate Chip cookies (while not particularly holiday-ish they&nbsp;are a favorite of my recipients and have to be included)<a href=\"http://www.nytimes.com/2008/07/09/dining/091crex.html?ref=dining\">http://www.nytimes.com/2008/07/09/dining/091crex.html?ref=dining</a>Chocolate sandwich cookies with 2 types of filling (peppermint and chocolate)</li><li>Cranberry Thumbprints (because I am a lover of cranberries and I want to share the love)</li><li>Rum Walnut cookies (this is inspired by my recent obsession with rum cake – we&nbsp;were given tiny Tortuga Rum Cakes at Chicago Gourmet this summer and now&nbsp;(almost) all I want to eat is rum cake…)Spiced nuts and homemade cheese crackers (because some people just&nbsp;don’t like sweets)</li><li>Sugar Cookies</li><li>Dog biscuits (in case you are a dog)</li></ul><p>Wish me luck!!!</p>',NULL,1,'2009-12-10 16:05:10','2010-01-14 22:25:47',NULL,NULL,NULL,NULL,'published'),(7,'Dinner Tonight','<p>Tonight was a night for making a dinner with things that were already on hand. &nbsp;I am happy to tell you that we had duck breasts on hand! &nbsp;We put together a a simple salad of mixed greens with a mustard vinaigrette, we topped the salad with sliced duck breasts that we seared to create a crispy skin and then cooked to medium rare. &nbsp;Lastly, we added small rounds of breaded and warmed goat cheese. &nbsp;It was perfect. &nbsp;Both simple and delicious.</p><p>On a side note I feel like I should share that we almost always have duck breasts on hand. &nbsp;We buy frozen Culver Duck &nbsp;<a href=\"http://www.culverduck.com/\">http://www.culverduck.com/</a>&nbsp;breasts at Whole Foods, where they also carry whole Culver ducks. &nbsp;I am a big fan of the Culver Duck all natural products. &nbsp;They are antibiotic free and are verified all natural by the USDA as well as Whole Foods and have two outside third-party verifications for Animal Wellness. &nbsp;Check out their website for more information about them as well as great tips on methods of preparation and recipes. &nbsp;Mmmmmm... now I want more duck!</p>',NULL,1,'2009-12-10 16:31:42','2010-01-14 22:17:58',NULL,NULL,NULL,NULL,'published'),(8,'Chow\'s Desktop wallpapers','<p>Chow.com has started a beautiful new series of food related <a href=\"http://www.chow.com/blog/2010/01/download-a-chow-wallpaper/\">desktop wallpapers</a>. Check out the first</p>\r\n\r\n<p><img src=\"http://www.chow.com/assets/2010/01/mushroom_290.jpg\" alt=\"wallpaprer\"></p>\r\n\r\n<p>Cool!</p>',NULL,1,'2010-01-13 20:50:39','2010-01-13 20:50:59',NULL,NULL,NULL,NULL,'published'),(9,'Re-usable 6 Pack','<p><a href=\"http://www.stilsucht.de/01/2010/sixpack/\">This re-usable sixpack holder</a> looks like the perfect thing for bringing multiple beers to the next shin-dig.</p>\r\n\r\n<p>I wonder how well it holds up with large format beers in it?</p>',NULL,1,'2010-01-14 22:11:23','2010-01-14 22:11:32','sixpack-oooms-design-bottleholder-1.jpg','image/jpeg',110408,'2010-01-14 22:11:22','published');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `page_type` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `default_page` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home',1,NULL,'2009-11-17 06:32:09','2009-11-17 06:32:09',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionaires`
--

DROP TABLE IF EXISTS `questionaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor` text,
  `description` text,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionaires`
--

LOCK TABLES `questionaires` WRITE;
/*!40000 ALTER TABLE `questionaires` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id` (`role_id`),
  KEY `index_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(1,2),(1,3),(1,4);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20090718182826'),('20090720011034'),('20090731192916'),('20090731192929'),('20090731194849'),('20090731195552'),('20090731201108'),('20090731202242'),('20090731220601'),('20090910032540'),('20090914220647'),('20090928084048'),('20090928084534'),('20091002170452'),('20091021170927'),('20091021184029');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) DEFAULT NULL,
  `taggable_type` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (6,6,1,NULL,NULL,'Item','tags','2009-11-23 02:21:30'),(7,7,4,NULL,NULL,'Item','tags','2009-11-23 02:24:55'),(8,8,5,NULL,NULL,'Item','tags','2009-11-23 02:25:46'),(9,9,8,NULL,NULL,'Item','tags','2010-01-13 20:50:40'),(10,10,8,NULL,NULL,'Item','tags','2010-01-13 20:50:40'),(11,11,8,NULL,NULL,'Item','tags','2010-01-13 20:50:40'),(12,12,9,NULL,NULL,'Item','tags','2010-01-14 22:11:23'),(13,13,9,NULL,NULL,'Item','tags','2010-01-14 22:11:23'),(14,14,9,NULL,NULL,'Item','tags','2010-01-14 22:11:23'),(15,15,9,NULL,NULL,'Item','tags','2010-01-14 22:11:23'),(16,16,6,NULL,NULL,'Item','tags','2010-01-14 22:23:47'),(17,17,6,NULL,NULL,'Item','tags','2010-01-14 22:23:47'),(18,18,6,NULL,NULL,'Item','tags','2010-01-14 22:23:47'),(19,19,6,NULL,NULL,'Item','tags','2010-01-14 22:23:47');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'welcome.'),(2,'hello'),(3,'fake. I\'m not real'),(4,'test'),(5,'hi'),(6,'welcome'),(7,'tag'),(8,'tag2'),(9,'cow.com'),(10,'mushroom'),(11,'wallpaper'),(12,'beer'),(13,'tools'),(14,'parties'),(15,'drink'),(16,'cookies'),(17,'christmas'),(18,'gifts'),(19,'eat');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(40) DEFAULT NULL,
  `name` varchar(100) DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `crypted_password` varchar(40) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(40) DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT 'passive',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'danboy','','dan@socialbite.com','05e843e3bb340ecc9626b0234dce511f3d99e4d4','2de2146c1373cafd86c8f58c29ed798596e72c3a','2009-11-17 06:21:19','2009-11-17 06:27:05',NULL,NULL,'93f8d48611dea891a605c3b68f35d927e0ca5001','2009-11-17 06:25:29','active',NULL),(2,'eric','','dunlape@gmail.com','5e625cf8c20f991e3829f781cf4a68a961a77730','8a48f9ab536469050ebc186020c35275c519b668','2009-11-17 17:12:48','2009-11-17 17:15:43',NULL,NULL,NULL,'2009-11-17 17:15:43','active',NULL),(3,'wendyhart22','','wendyhart22@me.com','42f385ed40e25828a70590308a6ae7f8dacc7d48','d50db451a037aa63b57710831de4ebfd07c1cdff','2009-11-17 18:49:53','2009-11-17 18:52:23',NULL,NULL,NULL,'2009-11-17 18:52:23','active',NULL),(4,'kimchi','','kim@socialbite.com','2a94eddfc985a278d1f3bed426f7bc8b67f0e15c','3eff5da5f137138fbb398759e0abb1787e008baa','2009-11-18 04:15:38','2009-11-18 04:16:01',NULL,NULL,NULL,'2009-11-18 04:16:01','active',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wysihat_files`
--

DROP TABLE IF EXISTS `wysihat_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wysihat_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file_file_name` varchar(255) DEFAULT NULL,
  `file_content_type` varchar(255) DEFAULT NULL,
  `file_file_size` int(11) DEFAULT NULL,
  `file_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wysihat_files`
--

LOCK TABLES `wysihat_files` WRITE;
/*!40000 ALTER TABLE `wysihat_files` DISABLE KEYS */;
INSERT INTO `wysihat_files` VALUES (1,'2009-11-22 20:34:50','2009-11-22 20:34:50','Firefox_wallpaper.png','image/png',1253236,'2009-11-22 20:34:49');
/*!40000 ALTER TABLE `wysihat_files` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-01-17 16:13:37
