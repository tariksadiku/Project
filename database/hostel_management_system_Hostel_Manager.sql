

DROP TABLE IF EXISTS `Hostel_Manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hostel_Manager` (
  `Hostel_man_id` int(10) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Pwd` LONGTEXT NOT NULL,
  `Isadmin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Hostel_man_id`),
  UNIQUE (`Username`),
  KEY `Hostel_id` (`Hostel_id`),
  CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `Hostel` (`Hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hostel_Manager`
--

LOCK TABLES `Hostel_Manager` WRITE;
/*!40000 ALTER TABLE `Hostel_Manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hostel_Manager` ENABLE KEYS */;
UNLOCK TABLES;
