-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: antenasnueva
-- ------------------------------------------------------
-- Server version	10.1.25-MariaDB

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
-- Table structure for table `mobile_network_stats_v2`
--

DROP TABLE IF EXISTS `mobile_network_stats_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile_network_stats_v2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` bigint(20) NOT NULL,
  `sensorid` bigint(20) NOT NULL,
  `networkid` int(11) NOT NULL,
  `networkshort` text NOT NULL,
  `cellid` text NOT NULL,
  `networktype` int(11) NOT NULL,
  `rscp` int(11) NOT NULL,
  `ecio` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `time` (`time`),
  KEY `sensorid` (`sensorid`)
) ENGINE=MyISAM AUTO_INCREMENT=452566 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sensor_stats`
--

DROP TABLE IF EXISTS `sensor_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` bigint(20) NOT NULL,
  `sensor_id` int(11) NOT NULL,
  `system_load` float NOT NULL,
  `system_load_max` float NOT NULL,
  `mem_load` float NOT NULL,
  `mem_load_max` float NOT NULL,
  `process_load` float NOT NULL,
  `process_load_max` float NOT NULL,
  `mem_process_load` bigint(20) NOT NULL,
  `mem_process_load_max` bigint(20) NOT NULL,
  `disk_read` bigint(20) NOT NULL,
  `disk_write` bigint(20) NOT NULL,
  `disk_total` bigint(20) NOT NULL,
  `net_RX` bigint(20) NOT NULL,
  `net_TX` bigint(20) NOT NULL,
  `net_total` bigint(20) NOT NULL,
  `buffer_length` bigint(20) NOT NULL,
  `buffer_length_max` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `sensor_id` (`sensor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2477113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sensor_stats_v2`
--

DROP TABLE IF EXISTS `sensor_stats_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_stats_v2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` bigint(20) NOT NULL,
  `sensor_id` int(11) NOT NULL,
  `system_load` float NOT NULL,
  `system_load_max` float NOT NULL,
  `mem_load` float NOT NULL,
  `mem_load_max` float NOT NULL,
  `process_load` float NOT NULL,
  `process_load_max` float NOT NULL,
  `mem_process_load` bigint(20) NOT NULL,
  `mem_process_load_max` bigint(20) NOT NULL,
  `disk_read` bigint(20) NOT NULL,
  `disk_write` bigint(20) NOT NULL,
  `disk_total` bigint(20) NOT NULL,
  `net_RX` bigint(20) NOT NULL,
  `net_TX` bigint(20) NOT NULL,
  `net_total` bigint(20) NOT NULL,
  `buffer_length` bigint(20) NOT NULL,
  `buffer_length_max` bigint(20) NOT NULL,
  `packet_received` int(11) NOT NULL,
  `packet_dropped` int(11) NOT NULL,
  `packet_dropped_interface` int(11) NOT NULL,
  `discard_invalid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `sensor_id` (`sensor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12995573 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sensordata`
--

DROP TABLE IF EXISTS `sensordata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensordata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sensorid` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `address` char(18) NOT NULL,
  `mean` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `nr_packets` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sensordata1`
--

DROP TABLE IF EXISTS `sensordata1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensordata1` (
  `id` bigint(24) NOT NULL AUTO_INCREMENT,
  `sensorid` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `address` char(41) NOT NULL,
  `mean` float NOT NULL,
  `max` float NOT NULL,
  `nr_packets` int(11) NOT NULL,
  `oui` char(6) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `time` (`time`),
  KEY `sensorid` (`sensorid`)
) ENGINE=MyISAM AUTO_INCREMENT=278207963 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11  9:52:21
