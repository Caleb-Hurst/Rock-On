CREATE DATABASE  IF NOT EXISTS `rockon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rockon`;
-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: rockon
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel` (
  `channel_id` bigint NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES (1,'FOR SALE / FOR FREE / WANT TO BUY','Dirtbag climber exchange!'),(2,'Climbing Gear Discussion','Open discussions regarding climbing gear.'),(3,'Climbing Gear Reviews','Formal Climbing Gear Reviews'),(4,'Lost and Found','Missing something? Found something?');
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `channel_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiimr93ytmcuira5le0sldvvma` (`channel_id`),
  KEY `FKb3y6etti1cfougkdr0qiiemgv` (`user_id`),
  CONSTRAINT `FKb3y6etti1cfougkdr0qiiemgv` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKiimr93ytmcuira5le0sldvvma` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `route_id` bigint NOT NULL AUTO_INCREMENT,
  `completed` bit(1) DEFAULT NULL,
  `description` longtext,
  `first_ascent` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `protection` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (2,NULL,'Approach via the White River Campground/Glacier Basin Trail.  Around 6700 ft, break right off the trail and ascend snow slopes to St. Elmo Pass (7400 ft).  From the pass, descend onto and cross the lower Winthrop Glacier to the broad slopes of Curtis Ridge.  Traverse around Curtis Ridge, aiming for the ramp onto the Carbon Glacier at about 7300 ft.  There are many good bivy sites in the vicinity of this access gully.\r\n\r\nFrom Curtis Ridge, drop onto the Carbon Glacier and ascend south towards the toe of the ridge.  After negotiating the cracks on the Carbon Glacier, start scouting your access onto the ridge (either side can be accessed around 8600-8800 ft). Climb 30-40 degree snow slopes and traverse scree and rocks up to Thumb Rock at 10,500 ft.  Several bivy sites exist in the saddle just above Thumb Rock; beware various objective hazards from both Thumb Rock itself and the rock bands above.\r\n\r\nFrom Thumb Rock, either go straight up a short ice pitch (70-80 degrees) in the center of a rock band, or traverse up and left around the cliff. From 11,000 to 12,000, stay on or near the crest of the ridge and climb increasingly steeper slopes and maybe a few icy sections up to 50 degrees. At 12k (Black Pyramid) go east (left) out onto the east face of the ridge on exposed snow/ice faces up to 60 degrees. Climb several pitches of 40-60 degree ice and negotiate steep glacier travel until gaining the Liberty Cap Glacier around 13,500 ft. Seasonal bridges and icy ledges provide passage up onto the glacier - be prepared to climb a few short (5-8 ft) vertical ice sections to surpass the bergschrund and other cracks. Once through, the slope angle decreases until the Liberty Cap summit is reached at 14,112 ft. Either head down from here or go across the broad plateau to a col (13,600 ft) and then on to Columbia Crest at 14,411 ft.\r\n\r\nMany parties descend the well-traveled Emmons-Winthrop route down to Camp Shurman.  If traversing directly from Liberty Cap to the Emmons, stay high (above 13,600 ft) to avoid some large crevasses on the upper Winthrop, and begind descending only after reaching the Emmons route bootpack.  Descend the Emmons to Camp Schurman at Steamboat Prow, then ascend the prow via its south side towards Camp Curtis and the upper Interglacier.  Descend the Interglacier to glacier basin, and then retrace your steps back to the trailhead.','Glenn Exum, solo, 1931','5.5 ','Teton NP','Upper Exum','Standard rack','Trad, Alpine, 1700 ft'),(3,NULL,'This route goes up the knife blade east ridge of Wolfs Head. To get on the ridge there are 2 different options. IMO the easiest way to gain the ridge is to scramble 4th and 5th class up the gully in between Pingora and Tiger Tower. Summit Tiger Tower, then do two, 40ft raps on to the east ridge of Wolfs Head (see picture on wolfs head page). The other way, is to scramble 3rd and 4th class up the south face then up to the ridge. \r\n\r\nOnce on the Ridge the climb goes at about 10 pitches but many of these can be combined or simul-climbed. The description below is what worked for us. \r\n\r\n1.) Start by moving west along the ridge aiming for a 30ft slab that\'s about 3ft wide with a 30 degree slope. Scamper across this beautifully exposed bridge (5.2), then run the rope out for 195ft until you find a belay. (mostly exposed 4th class) \r\n2.) From here its roughly 3 pitches of easy 3rd and 4th class climbing along the ridge. This can be easily simul-climbed and highly recommended. End at a ledge 10ft down to the south (left) of the ridge, just before the first tower. \r\n3.) This is the first of the tower pitches. Pass this tower to the south by making a exposed step around a boulder. After this look up and you will see a chimney in between the towers, go through this chimney (tight squeeze) to gain a ledge on the north side of the next tower. You can belay here, but I recommend to keep climbing to link this pitch with the \"piton pitch\". Follow 4 or 5 pitons for some delicate exposed face climbing (5.6). After the last piton go straight up and belay on the nice ledge. \r\n4.) The best pitch of the climb. From the belay move straight up the layback flake for 20ft. Once on top, go up a finger crack for 10 feet to gain a beautiful hand crack traverse 5.6(still on the north). After the traverse move up to the top of the knife blade ridge for some beautifully exposed climbing. At this point you should be eye level with the \"Darth Vader Tower\". Belay in an overhang on the south side of the ridge under the tower. \r\n5.) From the belay move out on to the south face to traverse a 4in crack. Going feet in the crack is easier but hard to protect. You will see a chimney down left, your aiming for this. Follow a slanting hand traverse using \"black nubbins\" to gain the chimney. Climb the chimney until you see a hole that you can dive through to bring you back to the north side of the ridge. Belay on a ledge on the north side of the ridge. \r\n6.) From here you can simul-climb to the summit staying mainly on the north side of the ridge. (mostly 4th and 5th class) \r\n\r\nDescent: There are many ways to descend, the goal is to rap to the west until you can hike south to the gully in between Wolfs Head and Overhanging tower. All the raps can be done with one 60m. \r\nAll stations contain at least 3 slings. If your rapping off something with less, you may be off route.\r\n1.) Find the slings on the West side of the summit, rap down 80ft to a ledge. \r\n2.) Walk 10ft to the west to find another group of slings in a boulder alcove. Rap 70ft to a ledge. \r\n3.) Walk to the south west along a climbers trail to locate the next set of slings on your right. Rap another 90ft to a ledge. \r\n4.) Carefully scramble down the trail to the next set of slings. Rap another 95ft to a ledge. \r\n5.) If my count is right, here you will walk along a trail for about 400yds to the south toward Overhanging tower. Do another 90ft rap to the saddle in between Wolfs head and Overhanging tower. \r\n6.) Follow the cairns for a while still heading south. Eventually this takes you to a station that will allow you to rap into the gully formed by the saddle. It looks like it should be a double rope rap, but one 60m will be fine. After rapping scramble up the gully to the east bringing you back into the cirque lake basin. \r\n\r\nThere are many options, and this may sound confusing, but the trails are well worn and marked with cairns, and all the stations were very easy to find.','Bill Buckingham, Bill Plummer, 1959','5.6','Wind River Range','East Ridge','Standard Rack',' Trad Alpine'),(4,NULL,'High Exposure, aka High E. The climbing itself is flawless, but when one considers that the FA was done by pioneers Hans Kraus and Fritz Wiessner in 1941, it\'s even more incredible! The name, of course, is completely appropriate for this must-do Gunks mega-classic.\r\n\r\nThe High E buttress is an obvious right-facing arete that is visible from the drive in from New Paltz. It is located about halfway along the base of the Trapps, right of the MF area and left of Bonnie\'s Roof. The High E access trail is about a 15 minute walk from the Uberfall.\r\n\r\nP1 (5.4, 180\'): Begin the climb in a chimney/stemming corner left of the arete. Climb up this corner, only until it is possible to traverse up and right across the face, then climb up the face to a fantastic, spacious triangular belay ledge (this is the GT ledge) right on the arete below a large roof. Belay from natural gear or sling the huge boulder on the ledge.\r\n\r\nThis pitch was originally split into two by belaying in the corner before heading out onto the face, but it can be easily combined into one with careful rope management.\r\n\r\nP2 (5.6, 100\'): This is the money pitch, and is just about as exciting as 5.6... or 5.7 or 5.8 for that matter... can be. Climb up from the ledge (it\'s easiest to begin at the left side) and traverse right to the obvious place to turn the corner and make \"The Move\" to pull the roof - the exposure is immediate and the rock is steep! Continue up the face past gear, jugs, and fixed pins, trending left back towards the arete, until you top out. Exhilarating!\r\n\r\nCommunication between the clifftop and the GT is notoriously difficult here, so plan accordingly.\r\n\r\nDescend the corner/gully to climber\'s right from three bolted rap stations with one rope.\r\n\r\nAlso consider the Directissima variation instead of doing the original first pitch. Done this way, the climb checks in at 5.9, but you get what you pay for -- a first pitch that rivals the second in terms of quality.','	Hans Kraus & Fritz Wiessner - 1941','5.6','Gunks','High Exposure','Standard Rack','Trad'),(5,NULL,'You can really climb all over the Southeast Buttress. You get the most climbing if you start at it\'s lowest point, in the middle. Many people start up and to the right a little, which loses some vertical, and the first pitch over there isn\'t so good.\r\n\r\nHowever you start, after 3 pitches, steadily increasing from 5.3 to 5.6, you\'ll probably be funneled into a chimney. It can get crowded here, and a backpack can be a real pain. Climb around to the left and it\'s smooth sailing however.\r\n\r\nThere are so many options, passing people is generally easy if you\'re competent at the grade, and there are usually people all over the face.\r\n\r\nA spectacular climb not to be missed.\r\n\r\nSummit Notes: On crowded days, do not ascend the summit block via the western 4th class chute. Leave that route for folks to descend. Instead when the true summit is in sight, continue climbing up the SE face(~5.5 slab) then hop across to the summit as the party ahead of you descends via the chute.\r\n\r\nDescent: Stay high and left (climber\'s right) and follow the path of least resistance (3rd class, some exposure) to the base of the Eichhorn pinnacle. At that point you\'ll spot a climbers\' trail that takes you back up to the notch that links to the signed 2nd class descent.','	Wilts and Spencer Austin, 1943','5.6',' Tuolumne Meadows','Southeast Buttress ','Standard Rack','Trad, Alpine');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_gj2fy3dcix7ph7k8684gka40c` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Caleb','passwqord');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_channel`
--

DROP TABLE IF EXISTS `user_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_channel` (
  `user_id` bigint NOT NULL,
  `channel_id` bigint NOT NULL,
  KEY `FKjvn2jdaho89qhua2nxj8firph` (`channel_id`),
  KEY `FKny3pwhl261celxyxtyvenbms7` (`user_id`),
  CONSTRAINT `FKjvn2jdaho89qhua2nxj8firph` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`),
  CONSTRAINT `FKny3pwhl261celxyxtyvenbms7` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_channel`
--

LOCK TABLES `user_channel` WRITE;
/*!40000 ALTER TABLE `user_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_route`
--

DROP TABLE IF EXISTS `user_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_route` (
  `user_id` bigint NOT NULL,
  `route_id` bigint NOT NULL,
  KEY `FKb4iue46yjto7b5hcge3kak3iu` (`route_id`),
  KEY `FKo697kascom9v6nhdwvdcib3q4` (`user_id`),
  CONSTRAINT `FKb4iue46yjto7b5hcge3kak3iu` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  CONSTRAINT `FKo697kascom9v6nhdwvdcib3q4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_route`
--

LOCK TABLES `user_route` WRITE;
/*!40000 ALTER TABLE `user_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_route` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  2:11:03
