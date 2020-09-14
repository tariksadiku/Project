
DROP TABLE IF EXISTS `Message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Message` (
  `msg_id` int(10) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `hostel_id` int(10) DEFAULT NULL,
  `subject_h` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `msg_date` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `hostel_id` (`hostel_id`),
  CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `Hostel` (`Hostel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Message`
--

LOCK TABLES `Message` WRITE;
/*!40000 ALTER TABLE `Message` DISABLE KEYS */;
INSERT INTO `Message` VALUES (1,'B160497CS','3',1,'Ground Floor Request','sfdbfbdf','2018-10-27','09:14 PM'),(2,'3','B160497CS',1,'DVDSG','DDSCSDV','2018-10-27','09:15PM'),(3,'3','B160497CS',1,'wddwd','xssss','2018-10-28','09-16 PM'),(4,'B160498EE','1',3,'ROOM NEAR TOILET','I would like to change my room as it is near toilet','2018-10-27','10:06 PM'),(5,'1','B160498EE',3,'Room Near Toilet','cdsdgdfhdfh','2018-10-27','10:48 PM');
/*!40000 ALTER TABLE `Message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
