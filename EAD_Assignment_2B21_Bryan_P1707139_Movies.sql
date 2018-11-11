-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `GenreID` int(11) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  PRIMARY KEY (`GenreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Romance'),(2,'Action'),(3,'Sci-Fi'),(4,'Adventure'),(5,'Thriller');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `MovieID` int(11) NOT NULL AUTO_INCREMENT,
  `Movie Title` varchar(100) NOT NULL,
  `Actor List` mediumtext NOT NULL,
  `Release Date` date NOT NULL,
  `Synopsis` longtext NOT NULL,
  `Genre` varchar(45) NOT NULL,
  `Duration` varchar(45) NOT NULL,
  `Movie Time Slot` varchar(100) NOT NULL,
  PRIMARY KEY (`MovieID`),
  KEY `Genre_idx` (`Genre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Avengers: Infinity War','Robert Downey Jr, Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Benedict Cumberbatch, Don Cheadle, Tom Holland, Chadwick Boseman, Paul Bettany, Elizabeth Olsen  ','2018-04-26','Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.','Action, Adventure, Sci-Fi','150 mins','12:50'),(2,'Rampage','Dwayne Johnson, Naomie Harris, Malin Akerman, Jake Lacy, Joe Manganiello ','2018-04-12','Primatologist Davis Okoye (Johnson), a man who keeps people at a distance, shares an unshakable bond with George, the extraordinarily intelligent, silverback gorilla who has been in his care since birth. But a rogue genetic experiment gone awry mutates this gentle ape into a raging creature of enormous size. ','Action, Adventure ','107 mins ',''),(3,'Spider-Man: Homecoming',' Tom Holland, Michael Keaton, Jon Favreau, Zendaya, Donald Glover, Tyne Daly, Marisa Tomei, Robert Downey Jr','2017-07-06','Thrilled by his experience with the Avengers, young Peter Parker returns home to live with his Aunt May. Under the watchful eye of mentor Tony Stark, Parker starts to embrace his newfound identity as Spider-Man. He also tries to return to his normal daily routine -- distracted by thoughts of proving himself to be more than just a friendly neighborhood superhero. Peter must soon put his powers to the test when the evil Vulture emerges to threaten everything that he holds dear.','Fantasy, Adventure, Action','133 mins','12:45'),(4,'Thor: Ragnarok','Chris Hemsworth, Tom Hiddleston, Cate Blanchett, Idris Elba, Jeff Goldblum, Tessa Thompson, Karl Urban, Mark Ruffalo, Anthony Hopkins','2017-10-10','Imprisoned on the other side of the universe, the mighty Thor finds himself in a deadly gladiatorial contest that pits him against the Hulk, his former ally and fellow Avenger. Thor\'s quest for survival leads him in a race against time to prevent the all-powerful Hela from destroying his home world and the Asgardian civilization.','Comedy, Adventure, Action','130 mins','11:45'),(5,'Logan','Hugh Jackman, Patrick Stewart, Boyd Holbrook, Stephen Merchant, Richard E. Grant, Dafne Keen','2017-02-17','In the near future, a weary Logan cares for an ailing Professor X at a remote outpost on the Mexican border. His plan to hide from the outside world gets upended when he meets a young mutant who is very much like him. Logan must now protect the girl and battle the dark forces that want to capture her.','Adventure, Action, Thriller','144 mins','15:50'),(6,'Maze Runner: The Death Cure','\n    Dylan O\'Brien,\n    Kaya Scodelario,\n    Thomas Brodie-Sangster,\n    Nathalie Emmanuel,\n    Giancarlo Esposito,\n    Aidan Gillen,\n    Walton Goggins,\n    Ki Hong Lee,\n    Barry Pepper,\n    Will Poulter,\n    Patricia Clarkson','2018-01-26','Thomas leads some escaped Gladers on their final and most dangerous mission yet. To save their friends, they must break into the legendary Last City, a WCKD-controlled labyrinth that may turn out to be the deadliest maze of all. Anyone who makes it out alive will get answers to the questions that the Gladers have been asking since they arrived in the maze.','Adventure, Action, Thriller, Fantasy','143 mins','17:45');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `public_reviews`
--

DROP TABLE IF EXISTS `public_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `public_reviews` (
  `Name` varchar(255) DEFAULT NULL,
  `Reviews` varchar(255) NOT NULL,
  `Rating` int(11) NOT NULL,
  PRIMARY KEY (`Reviews`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_reviews`
--

LOCK TABLES `public_reviews` WRITE;
/*!40000 ALTER TABLE `public_reviews` DISABLE KEYS */;
INSERT INTO `public_reviews` VALUES ('John','1234',2),('jack','126',4),('bob','fdfsdf',1),('bob','HUEHUEHUE',5),('mary','too goood',5);
/*!40000 ALTER TABLE `public_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeslot`
--

DROP TABLE IF EXISTS `timeslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeslot` (
  `MovieTimeID` varchar(255) NOT NULL,
  `MovieID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(255) NOT NULL,
  `Day` varchar(45) NOT NULL,
  PRIMARY KEY (`MovieTimeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeslot`
--

LOCK TABLES `timeslot` WRITE;
/*!40000 ALTER TABLE `timeslot` DISABLE KEYS */;
INSERT INTO `timeslot` VALUES ('11:30|1',1,'2018-07-23','11:30','Monday'),('11:45|2',2,'2018-07-22','11:45','Sunday'),('12:45|1',1,'2018-07-22','12:45',''),('13:20|1',1,'2018-07-24','13:20','Tuesday'),('13:30|1',1,'2018-07-23','13:30','Monday'),('13:45|2',2,'2018-07-22','13:45','Sunday'),('14:20|1',1,'2018-07-24','14:20','Tuesday'),('14:30|1',1,'2018-07-22','14:30','Sunday'),('14:40|2',2,'2018-07-22','14:40','Sunday'),('14:45|1',1,'2018-07-23','14:45','Monday'),('14:50|2',2,'2018-07-22','14:50','Sunday'),('15:20|1',1,'2018-07-24','15:20','Tuesday'),('16:00|1',1,'2018-07-22','16:00','Sunday'),('16:20|1',1,'2018-07-24','16:20','Tuesday'),('16:20|2',2,'2018-07-24','16:20','Tuesday'),('17:15|1',1,'2018-07-22','17:15','Sunday'),('17:20|2',2,'2018-07-24','17:20','Tuesday'),('18:20|2',2,'2018-07-24','18:20','Tuesday'),('19:45|1',1,'2018-07-23','19:45','Monday'),('20:45|2',2,'2018-07-24','20:45','Tuesday');
/*!40000 ALTER TABLE `timeslot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-20 21:30:14
