-- MySQL dump 10.13  Distrib 5.1.37, for debian-linux-gnu (x86_64)
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Culver ducks rock.','<p>They\'re pretty awesome, taste delicious can work well with almost anything and thaw quickly.</p>',7,'Item',NULL,'2010-01-20 00:20:19','2010-01-20 00:20:19');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featured_periods`
--

LOCK TABLES `featured_periods` WRITE;
/*!40000 ALTER TABLE `featured_periods` DISABLE KEYS */;
INSERT INTO `featured_periods` VALUES (3,19,'Item','2010-01-24 21:43:36','2010-02-25 21:43:36','2010-01-25 21:43:36','2010-01-25 21:43:36');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (6,'Happy Holidays','<p>While I patiently await my birthday and all the delicious treats that come along with the holiday season, I have decided to get&nbsp;a jump on the holiday cookies that I intend to make every year, but never get&nbsp;around to.</p>\r\n\r\n<p>I never know when to start… the beginning of December&nbsp;seems too soon, but if I wait and try to bake them anytime after that I find&nbsp;that we are all booked up with holiday parties, shopping, and recovery. </p><p>So this year I have made it my birthday&nbsp;resolution to bake, assemble and pack all my holiday treats by December 9<sup>th</sup>.</p>\r\n\r\n<p>I have been scouring cookbooks and the internet in hopes of finding a delicious combination of sweet and savory treats that will appeal to every&nbsp;recipient on my list. Here is the short list that I am considering:</p><ul><li>The NY Times Chocolate Chip cookies (while not particularly holiday-ish they&nbsp;are a favorite of my recipients and have to be included)<a href=\"http://www.nytimes.com/2008/07/09/dining/091crex.html?ref=dining\">http://www.nytimes.com/2008/07/09/dining/091crex.html?ref=dining</a>Chocolate sandwich cookies with 2 types of filling (peppermint and chocolate)</li><li>Cranberry Thumbprints (because I am a lover of cranberries and I want to share the love)</li><li>Rum Walnut cookies (this is inspired by my recent obsession with rum cake – we&nbsp;were given tiny Tortuga Rum Cakes at Chicago Gourmet this summer and now&nbsp;(almost) all I want to eat is rum cake…)Spiced nuts and homemade cheese crackers (because some people just&nbsp;don’t like sweets)</li><li>Sugar Cookies</li><li>Dog biscuits (in case you are a dog)</li></ul><p>Wish me luck!!!</p>',4,1,'2009-12-10 16:05:10','2010-01-14 22:25:47',NULL,NULL,NULL,NULL,'published'),(7,'Dinner Tonight','<p>Tonight was a night for making a dinner with things that were already on hand. &nbsp;I am happy to tell you that tonight that meant duck breasts! &nbsp;We put together a a simple salad of mixed greens with a mustard vinaigrette, we topped the salad with sliced duck breasts that we seared to create a crispy skin and then cooked to medium rare. &nbsp;Lastly, we added small rounds of breaded and warmed goat cheese. &nbsp;It was perfect. &nbsp;Both simple and delicious.</p>\r\n\r\n<p>On a side note I feel like I should share that we almost always have duck breasts on hand. &nbsp;We buy frozen Culver Duck &nbsp;<a href=\"http://www.culverduck.com/\">http://www.culverduck.com/</a>&nbsp;breasts at Whole Foods, where they also carry whole Culver ducks. &nbsp;I am a big fan of the Culver Duck all natural products. &nbsp;They are antibiotic free and are verified all natural by the USDA as well as Whole Foods and have two outside third-party verifications for Animal Wellness. &nbsp;Check out their website for more information about them as well as great tips on methods of preparation and recipes. &nbsp;Mmmmmm... now I want more duck!</p>',4,1,'2009-12-10 16:31:42','2010-01-20 17:39:32',NULL,NULL,NULL,NULL,'published'),(8,'Chow\'s Desktop wallpapers','<p>Chow.com has started a beautiful new series of food related <a href=\"http://www.chow.com/blog/2010/01/download-a-chow-wallpaper/\">desktop wallpapers</a>. Check out the first in the series:</p>\r\n\r\n<p><a href=\"http://www.chow.com/blog/2010/01/download-a-chow-wallpaper/\"><img src=\"http://www.chow.com/assets/2010/01/mushroom_290.jpg\" alt=\"wallpaprer\"></a></p>',1,1,'2010-01-13 20:50:39','2010-01-19 23:49:33','mushroom_1280x800.jpg','image/jpeg',540254,'2010-01-19 23:49:32','published'),(9,'Re-usable 6 Pack','<p><a href=\"http://www.stilsucht.de/01/2010/sixpack/\">This re-usable sixpack holder</a> looks like the perfect thing for bringing multiple beers to the next shin-dig.</p>\r\n\r\n<p>I wonder how well it holds up with large format beers in it?</p>',1,1,'2010-01-14 22:11:23','2010-01-14 22:11:32','sixpack-oooms-design-bottleholder-1.jpg','image/jpeg',110408,'2010-01-14 22:11:22','published'),(10,'Ommegang promises a new bear every other month.','<p>Ommegang\'s new brewing strategy is going to see them <a href=\"http://www.brewlikeamonk.com/?p=94\">introducing six new beers</a> this year.</p>\r\n\r\n<p>Styles include a Belgian-style pale ale, a trippel, a sour and a Scotch ale.</p>\r\n\r\n<p>Also worth noting that they\'ll be aging many of their high gravity series in oak casks for an extra bonus.&nbsp;</p>',1,1,'2010-01-18 18:02:07','2010-01-19 23:51:45','Screensaver_1.jpg','image/jpeg',338518,'2010-01-19 23:51:44','published'),(14,'Minhas Creek threatened over \"Boxer Lager\" ','<p>In picking a name like \"Boxing Lager\" I\'m sure the last thing&nbsp;<a href=\"http://www.damngoodbeer.biz/\" style=\"color: rgb(0, 51, 153); \">Minhas Creek Brewing</a>&nbsp;expected was controversy, But that\'s exactly what they got last December when the <a href=\"http://www.agco.on.ca/\">AGCO</a> sent them a letter about their dastardly choice of nouns.</p>\r\n\r\n<p>The complaint stems from Canada\'s law against the use of \"sports\" in&nbsp;advertising&nbsp;alcohol. Apparently using the term \"Boxer\" convinces us consumer that beer will give us super strength.</p>\r\n\r\n<p>Check out the <a href=\"http://beerblog.genx40.com/archive/2010/january/isitrequired\">Good Beer Blog</a>\'s post for some interesting breakdowns of this silly law.</p>\r\n\r\n<p>via (<a href=\"http://beerblog.genx40.com/archive/2010/january/isitrequired\">goodbeerblog</a>)</p>',1,1,'2010-01-19 21:05:02','2010-01-19 22:22:57','3558170744_a6a7ed007f.jpg','image/jpeg',79099,'2010-01-19 21:25:00','published'),(16,'xmarx hits the spot.','<p>A couple of things stood out about <a href=\"http://www.xmarxchicago.com/\">xmarx</a> dinner tonight. And forgive me if you\'re a regular but this was my first experience and quite lovely.</p>\r\n\r\n<p>One: Our hosts. From the moment the door was opened I felt at home and completely comfortable in a space I never visited.</p>\r\n\r\n<p>The small three person crew covered our every need and made everyone feel like a VIP.</p>\r\n\r\n<p>Two: The crowd. Kept to 18-20 the crowds are wonderfully friendly like minded people out on the town for a fun evening. I felt at home chatting with everyone who walked through the door, and the communal seating&nbsp;guarantees&nbsp;you\'ll make a few new friends as the night goes past.</p>\r\n\r\n<p>Three: The menu. Decidedly not pretentious the menu still managed to be fresh, seasonal and inviting to even the most&nbsp;distinguished&nbsp;pallet. The ingredients where picked and prepared that day, straight from local markets and as soon as I walked in and saw a chalkboard plastered with ingredients I knew I was in for a good time.</p>\r\n\r\n<p>The starter was a delightful (if not a little sweet)&nbsp;pizza&nbsp;margarita with fresh basil and tomato jam. Wonderful, crispy Sourdough-Crust accented all the flavours immensely. The kicker was a small dried red pepper you crushed over the top to balance the sweet and add a layer of spice to the mix. Unfortunately these peppers where delivered early and looked a lot like say a Craisin. This lead a couple of the more&nbsp;adventurous&nbsp;guests (myself included) to indulge a little early. All it took was a look around the room to spot the folks who made this mistake.</p>\r\n\r\n<p>As the fire subsided in my mouth we were served a speck and clam pizza. Still thin, but leavened just enough to make you crave more.</p>\r\n\r\n<p>I was blown away by the light fluffy Gnocchi with braised short rib and giardinara. The Gnocchi really shined through though. Lightly seared and fluffy as all get out. A fine&nbsp;entrée&nbsp;indeed.</p>\r\n\r\n<p>So next up was a sous-vide lamb in a bed of chickpeas, Fava bean and olive. Lamb was cooked perfectly and the beans where wonderful. I\'m not normally a big Lamb guy but if you can keep it medium rare... WOW.</p>\r\n\r\n<p>So I\'m writing this as I\'m relishing a bit (I just got home) &nbsp;but man was it a really good laid back time. I\'d recommend checking out the upcoming meals by joining <a href=\"https://app.expressemailmarketing.com/Survey.aspx?SFID=53950\">xmarx mailing list</a>. I can pretty much&nbsp;guarantee&nbsp;you\'ll have a great time.</p>',1,1,'2010-01-20 05:18:27','2010-01-20 15:39:49','screenshot_001.png','image/png',369117,'2010-01-20 15:39:38','published'),(17,'Carl Sagan\'s Apple Pie.','<p>Carl Sagan taught us the first step in creating apple pie from \"scratch\" was creating the universe.</p>\r\n\r\n<p><a href=\"http://www.seriouseats.com/2010/01/carl-sagans-apple-pie-recipe.html\">This recipe card</a> sums up Carl\'s philosophy nicely.</p>\r\n\r\n<p>via (<a href=\"http://www.seriouseats.com\">serious eats</a>)</p>',1,1,'2010-01-20 22:17:25','2010-01-20 23:19:50','20100119-carl-sagans-apple-pie-recipe.png','image/png',40451,'2010-01-20 22:17:24','published'),(18,'How Cooking Made Us Human','<p>This interesting <a href=\"http://www.kuow.washington.edu/program.php?id=19142\">talk by Richard Wrangham</a>&nbsp;author of&nbsp;<a href=\"http://www.amazon.com/gp/product/0465013627?ie=UTF8&amp;tag=pinmonkey&amp;linkCode=as2&amp;camp=1789&amp;creative=390957&amp;creativeASIN=0465013627\">Catching Fire: How Cooking Made Us Human</a><img src=\"http://www.assoc-amazon.com/e/ir?t=pinmonkey&amp;l=as2&amp;o=1&amp;a=0465013627\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\">&nbsp;details how humans became to be more social through the process of cooking their food.</p>\r\n\r\n<p>See raw food provides less calories than cooked food, so once us humans learned to harness fire we were left with more&nbsp;sustenance. With that came more energy for the hunts which meant more food which in turn ended up meaning more time to socialize.</p>\r\n\r\n<p>All right so I\'m poorly paraphrasing here and J<a href=\"http://blog.jonudell.net/2010/01/19/we-what-we-eat-what-they-eat/\">on Udell</a> does a much better job of summing this up so check out the links, they\'re worth the click.</p>\r\n\r\n<p>via(<a href=\"http://kottke.org\">kottke</a>) via(<a href=\"http://blog.jonudell.net/\">jonudell</a>)</p>',1,1,'2010-01-21 00:32:48','2010-01-21 01:37:44','Image15.gif','image/gif',269865,'2010-01-21 00:32:41','published'),(19,'Cheese 101','<p>I am a lover of cheese, but I <span style=\"text-decoration: line-through;\">am</span> was woefully uneducated on the subject, so I decided to do a little research to see where in Chicago I might be able to get a little better informed on the topic.&nbsp; What I found was<a href=\"http://www.pastoralartisan.com/\"> Pastoral Artisan Cheese, Bread &amp; Wine</a>.&nbsp; Pastoral has a variety of classes to choose from.&nbsp; We started with Cheese 101, an introductory course held at the Loop location, and at $40 per person I felt like I was getting more than my moneys worth.&nbsp;</p>\r\n\r\n<p>The class started at 6:30pm and lasted until about 8pm.&nbsp; We were greeted by a great staff and were offered a couple of wine options for our enjoyment (this class was not focused on any type of wine pairing). Once everyone had settled in we were taken through a sort of outline of cheese information covering things like the old world tradition / new world practice of cheese making, styles of cheese, the differences in goat / sheep / and cow\'s milk cheeses and what defines a farmstead, artisan, and specialty cheese.</p>\r\n\r\n<p>The lecture portion of the evening was fun and interactive, but the real party started when my cheese plate arrived!&nbsp; We were guided through a fresh Tomini with Herbs, Bucheron, Robiola Rochetta (made with cow/sheep and goat\'s milk!&nbsp; It was great), Brie de Meaux Rouzaire (a buttery, wildly mushroomy brie that may be my new favorite cheese), Mont St. Francis, Marieke Gouda, Queso de Mano, Comte St. Antoine (comte is a sister cheese to gruyere), Neal\'s Yard Montgomery Farm House Cheddar, L\'Amuse 2 Year Gouda (so outstanding! this cheese had notes of coffee and butterscotch... truly delicious.), Neal\'s Yard Stichelton, and Covadonga (a sweet, salty, creamy blue with a spicy finish).&nbsp; As we worked our way through each cheese we were encouraged to allow flavors to develop and to really consider how we would describe what we were tasting.</p>\r\n\r\n<p>The class concluded with a few minutes of questions and answers and then a little time to shop.&nbsp; As an added bonus, on the night of your class you get 15% off any puchases you make - and believe me, you are going to want to buy some things!</p>\r\n\r\n<p>Pastoral Artisan Cheese, Bread &amp; Wine has approximately 100 to 150 types of cheese at any given time with their highlight on artisan produced cheeses.&nbsp; The store set up is also worth mentioning, they really considered the customer\'s needs by laying out the cheese case and the wine selection to mirror eachother so choosing the right wine to go with your cheese is a cinch!</p>\r\n\r\n<p>All in all I feel like I learned a lot and truly enjoyed the process.&nbsp; I can promise you now, I will be continuing my cheese education at Pastoral!</p>\r\n\r\n<p>As a side note: Pastoral Artisan Cheese, Bread &amp; Wine has a great selection of gifts and monthly clubs so check out their site.</p>\r\n\r\n<p>If you can\'t make it to Pastoral any time soon check out these books to help expand your cheese horizons:</p>\r\n\r\n<p><a href=\"http://www.amazon.com/gp/product/0894807625?ie=UTF8&amp;tag=pinmonkey&amp;linkCode=as2&amp;camp=1789&amp;creative=390957&amp;creativeASIN=0894807625\">Cheese Primer</a><img src=\"http://www.assoc-amazon.com/e/ir?t=pinmonkey&amp;l=as2&amp;o=1&amp;a=0894807625\" alt=\"\" style=\"border: medium none  ! important; margin: 0px ! important;\" border=\"0\" height=\"1\" width=\"1\"></p>\r\n\r\n<p><a href=\"http://www.amazon.com/gp/product/1400050340?ie=UTF8&amp;tag=pinmonkey&amp;linkCode=as2&amp;camp=1789&amp;creative=390957&amp;creativeASIN=1400050340\">Cheese: A Connoisseur\'s Guide to the World\'s Best</a><img src=\"http://www.assoc-amazon.com/e/ir?t=pinmonkey&amp;l=as2&amp;o=1&amp;a=1400050340\" alt=\"\" style=\"border: medium none  ! important; margin: 0px ! important;\" border=\"0\" height=\"1\" width=\"1\"></p>\r\n\r\n<p><a href=\"http://www.amazon.com/gp/product/0060537043?ie=UTF8&amp;tag=pinmonkey&amp;linkCode=as2&amp;camp=1789&amp;creative=390957&amp;creativeASIN=0060537043\">The Cheese Lover\'s Companion: The Ultimate A-to-Z Cheese Guide with More Than 1,000 Listings for Cheeses and Cheese-Related Terms</a><img src=\"http://www.assoc-amazon.com/e/ir?t=pinmonkey&amp;l=as2&amp;o=1&amp;a=0060537043\" alt=\"\" style=\"border: medium none  ! important; margin: 0px ! important;\" border=\"0\" height=\"1\" width=\"1\"></p>',4,1,'2010-01-25 21:40:10','2010-01-25 23:09:56','cheeseandmilk.jpg','image/jpeg',28253,'2010-01-25 23:09:56','published'),(20,'M\'Lady Matilda: A Love Letter','<p>My Dearest,</p>\r\n\r\n<p>Shall I ever be able to adequately articulate my passion for you?&nbsp; I must try lest my heart explode from holding it in.&nbsp; I will let Aeros guide my pen, Aphrodite move my words and myself, the mere mortal, feel the pain of a passion unrequited.&nbsp; Please hear my words.&nbsp; I shall not bear it if they fall upon deaf ears.</p>\r\n\r\n<p>‘Twas love at first sight which I once ridiculed and now know to be true.&nbsp; The moment I first held you in my hands was a moment of magic the greatest wizards of all time will hope to harness.&nbsp; Your beauty is mercifully understated, classic, delicate and taciturn.&nbsp; Only four words you spoke to me; <a href=\"http://www.gooseisland.com/pages/matilda/25.php\">Matilda, Belgian Style Ale</a>.&nbsp; Fumbling with my wretched fingers I begged them to open you, to pry off your perfect, black bottle cap to gain access to your dark secrets inside.&nbsp; You graciously acquiesced, hissing with the effort.&nbsp; Your aroma; wild and spicy, complimenting your delicate butterscotch coloring.&nbsp; I breathed you in as though your essence was all that was keeping me alive.&nbsp; I knew it would not be enough, that I must drink you to understand your secrets.&nbsp; Through the grace of the gods was I able to bring you to my lips and taste what I suspected to be true.&nbsp; Beautiful balance, butterscotch, bananas, caramel, cinnamon, chestnuts, dried figs....would you have me go on forever?&nbsp; I’ll gladly spend eternity uncovering your clandestine notes. All you have to do is ask.</p>\r\n\r\n<p>Say the words, dearest and sweetest Matilda.&nbsp; Say the words.</p>\r\n\r\n<p>Yours forever,<br />\r\nWendy</p>',3,1,'2010-01-25 22:37:01','2010-01-25 23:02:12','3959267299_d671810ae8.jpg','image/jpeg',151536,'2010-01-25 22:59:00','published');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'author');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (10,10,8,NULL,NULL,'Item','tags','2010-01-13 20:50:40'),(11,11,8,NULL,NULL,'Item','tags','2010-01-13 20:50:40'),(12,12,9,NULL,NULL,'Item','tags','2010-01-14 22:11:23'),(13,13,9,NULL,NULL,'Item','tags','2010-01-14 22:11:23'),(14,14,9,NULL,NULL,'Item','tags','2010-01-14 22:11:23'),(15,15,9,NULL,NULL,'Item','tags','2010-01-14 22:11:23'),(16,16,6,NULL,NULL,'Item','tags','2010-01-14 22:23:47'),(17,17,6,NULL,NULL,'Item','tags','2010-01-14 22:23:47'),(18,18,6,NULL,NULL,'Item','tags','2010-01-14 22:23:47'),(19,19,6,NULL,NULL,'Item','tags','2010-01-14 22:23:47'),(20,20,8,NULL,NULL,'Item','tags','2010-01-18 17:39:45'),(21,15,10,NULL,NULL,'Item','tags','2010-01-18 18:02:08'),(22,12,10,NULL,NULL,'Item','tags','2010-01-18 18:02:08'),(23,21,10,NULL,NULL,'Item','tags','2010-01-18 18:02:08'),(24,22,10,NULL,NULL,'Item','tags','2010-01-18 18:02:08'),(25,23,10,NULL,NULL,'Item','tags','2010-01-18 18:02:08'),(26,24,10,NULL,NULL,'Item','tags','2010-01-18 18:02:08'),(42,12,14,NULL,NULL,'Item','tags','2010-01-19 21:05:02'),(43,37,14,NULL,NULL,'Item','tags','2010-01-19 21:05:02'),(44,38,14,NULL,NULL,'Item','tags','2010-01-19 21:05:02'),(45,39,14,NULL,NULL,'Item','tags','2010-01-19 21:05:02'),(46,40,14,NULL,NULL,'Item','tags','2010-01-19 21:05:02'),(47,15,14,NULL,NULL,'Item','tags','2010-01-19 21:33:02'),(48,41,16,NULL,NULL,'Item','tags','2010-01-20 05:18:28'),(49,42,16,NULL,NULL,'Item','tags','2010-01-20 05:18:28'),(50,43,16,NULL,NULL,'Item','tags','2010-01-20 05:18:28'),(51,19,16,NULL,NULL,'Item','tags','2010-01-20 05:18:28'),(52,44,16,NULL,NULL,'Item','tags','2010-01-20 05:18:28'),(53,45,16,NULL,NULL,'Item','tags','2010-01-20 05:18:28'),(54,46,16,NULL,NULL,'Item','tags','2010-01-20 13:15:30'),(55,47,7,NULL,NULL,'Item','tags','2010-01-20 17:39:32'),(56,19,7,NULL,NULL,'Item','tags','2010-01-20 17:39:32'),(57,48,7,NULL,NULL,'Item','tags','2010-01-20 17:39:32'),(58,49,9,NULL,NULL,'Item','tags','2010-01-20 17:43:51'),(59,50,17,NULL,NULL,'Item','tags','2010-01-20 22:17:26'),(60,51,17,NULL,NULL,'Item','tags','2010-01-20 22:17:26'),(61,19,17,NULL,NULL,'Item','tags','2010-01-20 22:17:26'),(62,52,17,NULL,NULL,'Item','tags','2010-01-20 22:17:26'),(63,19,18,NULL,NULL,'Item','tags','2010-01-21 00:32:56'),(64,53,18,NULL,NULL,'Item','tags','2010-01-21 00:32:56'),(65,54,18,NULL,NULL,'Item','tags','2010-01-21 00:32:56'),(66,55,18,NULL,NULL,'Item','tags','2010-01-21 00:32:56'),(67,56,18,NULL,NULL,'Item','tags','2010-01-21 00:32:56'),(68,57,18,NULL,NULL,'Item','tags','2010-01-21 01:37:21'),(69,19,19,NULL,NULL,'Item','tags','2010-01-25 21:43:18'),(70,49,19,NULL,NULL,'Item','tags','2010-01-25 21:43:18'),(71,46,19,NULL,NULL,'Item','tags','2010-01-25 21:43:18'),(72,58,19,NULL,NULL,'Item','tags','2010-01-25 21:43:18'),(73,59,19,NULL,NULL,'Item','tags','2010-01-25 21:43:18'),(74,12,20,NULL,NULL,'Item','tags','2010-01-25 22:37:02'),(75,15,20,NULL,NULL,'Item','tags','2010-01-25 22:37:02'),(76,49,20,NULL,NULL,'Item','tags','2010-01-25 22:37:02');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'welcome.'),(2,'hello'),(3,'fake. I\'m not real'),(4,'test'),(5,'hi'),(6,'welcome'),(7,'tag'),(8,'tag2'),(9,'cow.com'),(10,'mushroom'),(11,'wallpaper'),(12,'beer'),(13,'tools'),(14,'parties'),(15,'drink'),(16,'cookies'),(17,'christmas'),(18,'gifts'),(19,'eat'),(20,'chow.com'),(21,'sour'),(22,'trippel'),(23,'pale ale'),(24,'belgian'),(37,'law'),(38,'lager'),(39,'brewery'),(40,'goodbeerblog'),(41,'food'),(42,'local'),(43,'sustainable'),(44,'chicago'),(45,'dining'),(46,'events'),(47,'duck'),(48,'dine'),(49,'buy'),(50,'apple'),(51,'pie'),(52,'grow'),(53,'cooking'),(54,'raw'),(55,'history'),(56,'calories'),(57,'read'),(58,'cheese'),(59,'classes');
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

-- Dump completed on 2010-01-25 23:50:48
