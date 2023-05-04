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
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKov2uw9bvmedktrvmk2qchv198` (`user_id`),
  CONSTRAINT `FKov2uw9bvmedktrvmk2qchv198` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES (1,'ROLE_USER	',1),(2,'ROLE_USER	',2),(3,'ROLE_USER',3),(4,'ROLE_USER',4),(5,'ROLE_USER',5),(6,'ROLE_USER',6),(7,'ROLE_USER',7),(8,'ROLE_USER',8);
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'Losing money to a scammer is painful and something we would like to help Mountain Project community members to avoid. Here are some tips to protect yourself:',1,7),(2,'Check account history - Vetting buyers/sellers is crucial. Accounts that are new or have limited activity on the site are frequently used in scams. Research photos in posts that may have been copied from elsewhere.',1,7),(3,'Avoid high-risk payment methods - Do not use PayPal \"gift\" payments, wire transfers, Western Union, etc. Use PayPal credit card payments, or other systems that protect you from fraud.',1,7),(4,'Report suspicious behavior - Flag posts in the forum from suspected scammers so we can investigate and quickly act on suspicious accounts. You can also report suspicious activity by contacting us directly.',1,7),(5,'You already know who they are.  Avoid them. . .',1,6),(6,'Oh no, I got scammed and I didn\'t even know it....',1,4),(7,'sketchy email sent from this account  dyami richard   https://www.mountainproject.com/user/201542938/dyami-richard',1,5),(8,'Does anyone have advice or recommendations on a prussic for skinny ropes? ',2,5),(9,'hmmmm I have heard that mammoth just released one thats designed for ropes around the 7.5-8.5 range',2,7),(10,'I have heard that too, John have you tried it out? ',2,6),(11,'I actually have, I thought it was a really good price and seemed to do the trick',2,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (6,NULL,'Approach via the White River Campground/Glacier Basin Trail.  Around 6700 ft, break right off the trail and ascend snow slopes to St. Elmo Pass (7400 ft).  From the pass, descend onto and cross the lower Winthrop Glacier to the broad slopes of Curtis Ridge.  Traverse around Curtis Ridge, aiming for the ramp onto the Carbon Glacier at about 7300 ft.  There are many good bivy sites in the vicinity of this access gully.\r\n\r\nFrom Curtis Ridge, drop onto the Carbon Glacier and ascend south towards the toe of the ridge.  After negotiating the cracks on the Carbon Glacier, start scouting your access onto the ridge (either side can be accessed around 8600-8800 ft). Climb 30-40 degree snow slopes and traverse scree and rocks up to Thumb Rock at 10,500 ft.  Several bivy sites exist in the saddle just above Thumb Rock; beware various objective hazards from both Thumb Rock itself and the rock bands above.\r\n\r\nFrom Thumb Rock, either go straight up a short ice pitch (70-80 degrees) in the center of a rock band, or traverse up and left around the cliff. From 11,000 to 12,000, stay on or near the crest of the ridge and climb increasingly steeper slopes and maybe a few icy sections up to 50 degrees. At 12k (Black Pyramid) go east (left) out onto the east face of the ridge on exposed snow/ice faces up to 60 degrees. Climb several pitches of 40-60 degree ice and negotiate steep glacier travel until gaining the Liberty Cap Glacier around 13,500 ft. Seasonal bridges and icy ledges provide passage up onto the glacier - be prepared to climb a few short (5-8 ft) vertical ice sections to surpass the bergschrund and other cracks. Once through, the slope angle decreases until the Liberty Cap summit is reached at 14,112 ft. Either head down from here or go across the broad plateau to a col (13,600 ft) and then on to Columbia Crest at 14,411 ft.\r\n\r\nMany parties descend the well-traveled Emmons-Winthrop route down to Camp Shurman.  If traversing directly from Liberty Cap to the Emmons, stay high (above 13,600 ft) to avoid some large crevasses on the upper Winthrop, and begind descending only after reaching the Emmons route bootpack.  Descend the Emmons to Camp Schurman at Steamboat Prow, then ascend the prow via its south side towards Camp Curtis and the upper Interglacier.  Descend the Interglacier to glacier basin, and then retrace your steps back to the trailhead.','Ome Daiber, Arnie Campbell and Jim Burrow - 1935','5.6','Mnt Rainier','Liberty Ridge','Standard Rack','Ice, Snow, Alpine'),(7,NULL,'Your first goal is to reach Wall Street, a giant ledge leading to the crest of the south ridge from the west at around 12,800\'. This ledge can be easily viewed from the Lower Saddle if you know where to look. Begin from the Lower Saddle as for the Owen Spalding, passing left of the smooth pinnacle known as \"The Needle\", then up the gully on the right, close to the Needle. If you are lucky you will find the tunnel above here known as \"The Eye of The Needle\", but it is not necessary to pass through this feature. Above here your route diverges from the Owen Spalding as you traverse right, crossing a broad and relatively easy couloir to the start of Wall Street. This couloir drops straight down from the Upper Saddle and has led to disaster for many tired climbers descending from the Upper Saddle, assuming it is the way down (it cliffs out). Take note of it. \r\n\r\nThe Wall Street ledge is huge and easy to walk along, until the very end where it suddenly becomes exposed and narrow. Rope up here, unless you feel like repeating Glenn Exum\'s famous leap. Actually, I\'ve never seen anyone leap to span this difficulty, as you can simply make a long step or hand traverse. Still, it is very exposed and only climbers in a great hurry will do this unroped. \r\n\r\nNext comes the Golden Stair pitch, which ascends directly up the ridge up a steep, knobby face. This pitch looks harder than it is, because it is very exposed and the protection is not abundant. Plenty of knobs make the climbing enjoyable. After this pitch the difficulty eases and if your party is experienced you may want to pack the rope for a while, or simulclimb. Follow a horizontal section near the ridge crest, then move left to gain access into a gully which slants up and right. This is called the Wind Tunnel. This leads, after a number of pitches, to the base of the Friction Pitch. \r\n\r\nWhen the Wind Tunnel gully begins to lean back to the left, this is the point where you exit it straight up to the base of the Friction Pitch, which is back on the crest. If you follow the gully too far, it turns into more of a ramp and eventually ends. This is easy to do as it is the path of least resistence. If you make this mistake, either backtrack to the Friction Pitch, or head straight up to the crest up a chimney, rejoining the route above the Friction Pitch. \r\n\r\nThe Friction Pitch is called by some the crux of the route, it is not well protected but the difficulties ease shortly. Above here scramble for 2 more pitches, following the line of least resistence. Look for a section above where you can cross back to the west side of the crest to avoid a slabby tower. \r\n\r\nAbove you is the \"V\" pitch, one of the most exposed on the route. Climb the obvious SW facing dihedral above, with excellent protection. I feel this section is the crux of the route. After this pitch the ridge levels out and is quite easy for a short section. The next difficulty encountered following the crest is called the Petzoldt lieback pitch. When I last did this pitch in September it was covered with ice and quite a challenge in rock shoes. Above here you can climb a small 10\' tower directly via a crack and in another 100\' the ridge becomes broad and nearly level. Here you can unrope and scramble to the east of the crest to the summit.','	Glenn Exum, solo, 1931','5.5','Grand Teton','Upper Exum','Standard Rack','Trad'),(8,NULL,'This route goes up the knife blade east ridge of Wolfs Head. To get on the ridge there are 2 different options. IMO the easiest way to gain the ridge is to scramble 4th and 5th class up the gully in between Pingora and Tiger Tower. Summit Tiger Tower, then do two, 40ft raps on to the east ridge of Wolfs Head (see picture on wolfs head page). The other way, is to scramble 3rd and 4th class up the south face then up to the ridge. \r\n\r\nOnce on the Ridge the climb goes at about 10 pitches but many of these can be combined or simul-climbed. The description below is what worked for us. \r\n\r\n1.) Start by moving west along the ridge aiming for a 30ft slab that\'s about 3ft wide with a 30 degree slope. Scamper across this beautifully exposed bridge (5.2), then run the rope out for 195ft until you find a belay. (mostly exposed 4th class) \r\n2.) From here its roughly 3 pitches of easy 3rd and 4th class climbing along the ridge. This can be easily simul-climbed and highly recommended. End at a ledge 10ft down to the south (left) of the ridge, just before the first tower. \r\n3.) This is the first of the tower pitches. Pass this tower to the south by making a exposed step around a boulder. After this look up and you will see a chimney in between the towers, go through this chimney (tight squeeze) to gain a ledge on the north side of the next tower. You can belay here, but I recommend to keep climbing to link this pitch with the \"piton pitch\". Follow 4 or 5 pitons for some delicate exposed face climbing (5.6). After the last piton go straight up and belay on the nice ledge. \r\n4.) The best pitch of the climb. From the belay move straight up the layback flake for 20ft. Once on top, go up a finger crack for 10 feet to gain a beautiful hand crack traverse 5.6(still on the north). After the traverse move up to the top of the knife blade ridge for some beautifully exposed climbing. At this point you should be eye level with the \"Darth Vader Tower\". Belay in an overhang on the south side of the ridge under the tower. \r\n5.) From the belay move out on to the south face to traverse a 4in crack. Going feet in the crack is easier but hard to protect. You will see a chimney down left, your aiming for this. Follow a slanting hand traverse using \"black nubbins\" to gain the chimney. Climb the chimney until you see a hole that you can dive through to bring you back to the north side of the ridge. Belay on a ledge on the north side of the ridge. \r\n6.) From here you can simul-climb to the summit staying mainly on the north side of the ridge. (mostly 4th and 5th class) \r\n\r\nDescent: There are many ways to descend, the goal is to rap to the west until you can hike south to the gully in between Wolfs Head and Overhanging tower. All the raps can be done with one 60m. \r\nAll stations contain at least 3 slings. If your rapping off something with less, you may be off route.\r\n1.) Find the slings on the West side of the summit, rap down 80ft to a ledge. \r\n2.) Walk 10ft to the west to find another group of slings in a boulder alcove. Rap 70ft to a ledge. \r\n3.) Walk to the south west along a climbers trail to locate the next set of slings on your right. Rap another 90ft to a ledge. \r\n4.) Carefully scramble down the trail to the next set of slings. Rap another 95ft to a ledge. \r\n5.) If my count is right, here you will walk along a trail for about 400yds to the south toward Overhanging tower. Do another 90ft rap to the saddle in between Wolfs head and Overhanging tower. \r\n6.) Follow the cairns for a while still heading south. Eventually this takes you to a station that will allow you to rap into the gully formed by the saddle. It looks like it should be a double rope rap, but one 60m will be fine. After rapping scramble up the gully to the east bringing you back into the cirque lake basin. \r\n\r\nThere are many options, and this may sound confusing, but the trails are well worn and marked with cairns, and all the stations were very easy to find.\r\n','	Bill Buckingham, Bill Plummer, 1959','5.6','Wind River Range','East Ridge','Standard Rack','Trad'),(9,NULL,'High Exposure, aka High E. The climbing itself is flawless, but when one considers that the FA was done by pioneers Hans Kraus and Fritz Wiessner in 1941, it\'s even more incredible! The name, of course, is completely appropriate for this must-do Gunks mega-classic.\r\n\r\nThe High E buttress is an obvious right-facing arete that is visible from the drive in from New Paltz. It is located about halfway along the base of the Trapps, right of the MF area and left of Bonnie\'s Roof. The High E access trail is about a 15 minute walk from the Uberfall.\r\n\r\nP1 (5.4, 180\'): Begin the climb in a chimney/stemming corner left of the arete. Climb up this corner, only until it is possible to traverse up and right across the face, then climb up the face to a fantastic, spacious triangular belay ledge (this is the GT ledge) right on the arete below a large roof. Belay from natural gear or sling the huge boulder on the ledge.\r\n\r\nThis pitch was originally split into two by belaying in the corner before heading out onto the face, but it can be easily combined into one with careful rope management.\r\n\r\nP2 (5.6, 100\'): This is the money pitch, and is just about as exciting as 5.6... or 5.7 or 5.8 for that matter... can be. Climb up from the ledge (it\'s easiest to begin at the left side) and traverse right to the obvious place to turn the corner and make \"The Move\" to pull the roof - the exposure is immediate and the rock is steep! Continue up the face past gear, jugs, and fixed pins, trending left back towards the arete, until you top out. Exhilarating!\r\n\r\nCommunication between the clifftop and the GT is notoriously difficult here, so plan accordingly.\r\n\r\nDescend the corner/gully to climber\'s right from three bolted rap stations with one rope.\r\n\r\nAlso consider the Directissima variation instead of doing the original first pitch. Done this way, the climb checks in at 5.9, but you get what you pay for -- a first pitch that rivals the second in terms of quality.','	Hans Kraus & Fritz Wiessner - 1941','5.6','Gunks','High Exposure','Standard Rack triples #1-3','Trad'),(10,NULL,'1) 5.9, 9 bolts. Start in a right facing corner, 40 feet to the Right of a large dead tree. 1st bolt is near head height. Thin face crux up high.\r\n\r\n2) 5.6, 8 bolts. Easy ramp to 15-foot block, mantle onto slab and continue to chains\r\n\r\n3) 5.8, 10 bolts. Steep face to ledges, ending at an exposed belay.\r\n\r\n4) 5.9, 11 bolts. Traverse left into intricate face moves followed by sustained face climbing.\r\n\r\n5) Low 5th Class, 5 bolts. \"When second arrives move belay 4 feet towards gully. Extend 3rd bolt with a runner to avoid rope drag. Continue past rappel anchor to base of pitch 6\"\r\n\r\n6) 5.8, 9 bolts. Tricky bulge leads to excellent arête climbing. Walk 40m south to base of wall to start next pitch\r\n\r\n7) 5.9, 8 bolts. Stemming corner leads to steep and wild face moves into a crack.\r\n\r\n8) 5.8, 16 bolts. Sustained enjoyable climbing leads to a large ledge. Follow Cairns for 50m South to start of the next pitch.\r\n\r\n9) 5.9, 15 bolts. \"Perfect pocket pitch\", Scramble up and to the right of flag tree for next pitch.\r\n\r\n10) 5.9, 10 bolts. Over-hanging jugs in broken flakes lead to an exposed belay.\r\n\r\n11) 5.7, 14 bolts. Diagonal face leads to a clean slab. Walk past trees to south 50 yards to start of pitch 12.\r\n\r\n12) 5.7, 9 bolts. Sustained moderate climbing through corners and overlaps.\r\n\r\n13) 5.8, 14 bolts. Continue climbing through corners and overlaps.\r\n\r\n14) 5.9, 9 bolts. Stay left on arête to short-face followed by traversing flake into a squeeze chimney.\r\n\r\n15) 5.4, 6 bolts. Follow bolts through easy slab trending left to a stance above a gully.\r\n\r\n16) 5.8, 7 bolts. Step across the abyss to exposed arête and jug ladder. Scramble 3rd class past lone pine tree to start of 17.\r\n\r\n17) 5.7, 10 bolts. Boulder start leads to step face trending right.\r\n\r\n18) 5.9, 10 bolts. 3 consecutive 5.9+ bouldery problems lead to the exposed finish.','	Bryan Burdo, Jerry Daniels','5.9','Mazama','Flyboys','Sport Rack','Sport'),(11,NULL,'The Casual Route is an incredible climb at high altitude on the most famous wall in Colorado. This is the easiest route on the Diamond, but that doesn\'t mean it\'s not world class. The route includes incredible climbing with awesome exposure and high alpine weather. Although I have heard the route described as both stiff and easy for the grade, I think that the published ratings are quite accurate.\r\n\r\nP1: Start in the middle of the wall at a less than vertical broken pillar. It is not hard to find. Pitch 1 is 5.4 up broken ground to the bottom of an obvious crack.\r\n\r\nP2: Follow the steeper crack at 5.9 to a hanging belay 2/3 of the way up.\r\n\r\nP3: A 100 foot 5.7 traverse with about three pieces of pro, two of which are fixed pins. This pitch is spectacular and has dangerous fall potential, although the climbing is easy.\r\n\r\nP4: Climb up a dirty 5.8 crack and chimney to a belay about half way up the route.\r\n\r\nP5: May be the best pitch of the climb. It leads up a steep 5.8 dihedral with a handcrack tucked in the corner. Belay halfway up the dihedral on a stance and continue up 5.8 to the Yellow Wall Bivy Ledge. The exposure hits you right here for the final, and crux, pitch.\r\n\r\nP6: Climb up a really thin 5.9 crack with fixed gear to a 5.8 squeeze chimney. Trying to squirm your way up the chimney at 14,000 feet is about as strenuous as it gets. From here pull out of the chimney and perform the crux move, a well protected reach over a bulge on thin holds, 5.10a, and you\'re on Table Ledge.\r\n\r\nP7: One last 5.7 traverse pitch leads to the exit onto Kiener\'s or the rap route.','Duncan Ferguson, Chris Reveley ','5.10','Rocky Mountain National Park','Casual Route','Double Rack to #3','Trad');
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
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$omc8Vv8NRzGNegAjl2yHGu7e7oDlUNUhywoQTbHjE4CGgaI.Ph8ye','caleb'),(2,'$2a$10$DALSw9K5Lmyx3MQLiyJd3O1m42Gr/BzRXs93RuqvY9YNUtHEHDsrW','user'),(3,'$2a$10$TcCCdpTivJb/QiccyeZzpuSxBVV1Zaud03fJsLz8Ff4Z0Ft7I83ee','person'),(4,'$2a$10$HgVcMG.hTLS1WfU04kJgquYXJV6t21p0.KRhfGj39XIVJb1rMqFh.','RockWarrior42'),(5,'$2a$10$t0nY7znZcekxszmSLC.aBeTGfN8PCtzGWNMoaOkCSRTBUIExvQFqK','TommyCaldwell'),(6,'$2a$10$vAfDGDA.vWCc2JqKmANBm.Hw8HIX7GBes1gNmt.9tCGutY.YBZc.e','AlexHonnold'),(7,'$2a$10$6/AmBmGUUHgSd8OFauptTuYe84mGMcsDz/DO6uCjv8.B0cQejzML2','JohnLong'),(8,'$2a$10$HnKRiIj9o2oPatw2.kCunu6I7RUUmzwkV43THDbeQymEPc2jQezge','PeteWhitaker');
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

-- Dump completed on 2023-05-04  3:42:51
