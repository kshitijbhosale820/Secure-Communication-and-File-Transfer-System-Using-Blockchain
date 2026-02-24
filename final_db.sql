# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     secure_communication_db
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2023-02-07 15:11:40
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for secure_communication_db
CREATE DATABASE IF NOT EXISTS `secure_communication_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `secure_communication_db`;


# Dumping structure for table secure_communication_db.filerequest
CREATE TABLE IF NOT EXISTS `filerequest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `Filename` text NOT NULL,
  `Ownername` text NOT NULL,
  `U_Status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table secure_communication_db.filerequest: 1 rows
/*!40000 ALTER TABLE `filerequest` DISABLE KEYS */;
INSERT INTO `filerequest` (`id`, `username`, `Filename`, `Ownername`, `U_Status`) VALUES (1, 'om@gmail.com', 'accident.txt', 'jitu@gmail.com', 'File_Access');
/*!40000 ALTER TABLE `filerequest` ENABLE KEYS */;


# Dumping structure for table secure_communication_db.file_info
CREATE TABLE IF NOT EXISTS `file_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Username` text NOT NULL,
  `Filename` text NOT NULL,
  `P_Key` text NOT NULL,
  `emailid` text,
  `filedata` longtext,
  `keydata` longtext,
  `role` longtext,
  `status_o` longtext,
  `ContentType` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

# Dumping data for table secure_communication_db.file_info: 2 rows
/*!40000 ALTER TABLE `file_info` DISABLE KEYS */;
INSERT INTO `file_info` (`id`, `Username`, `Filename`, `P_Key`, `emailid`, `filedata`, `keydata`, `role`, `status_o`, `ContentType`) VALUES (1, 'jitu', 'accident.txt', 'TOFAL', 'jitu@gmail.com', 'qn0÷ýÒ´}i+àí#¾Ç©Ç‡‡ºÏ7lŒ²\r@}n.Äc=þGfæWmr¬lÔxóœr¦yå¿ö^ÚDÁ5—ê!­÷=­þo%O½Ü!ôþ” kŽJ\0”=;;ñêÝ6§&›ÎS²ê\\MŠöZ¸ãT\\¬á)¬÷®k”BÝ¢BÙtòyõìšÊ\nPlLÜb b	™R\'B|\\öÂGùÛˆ¸&;8›£”*—X', '¹îÎ*àŽýgŽ× T', 'IT_Dept', '0', 'text/plain'), (2, 'jitu', 'blockchain.txt', 'GQMYK', 'jitu@gmail.com', '’F4~Tä¨%{Ó©™´Q2Ì)m~ü\n³þcp¢e:¦)ãXxUžc(–¦ð¼²‰Âp­Ct´\'L{ÄýùûoÐÕ°îþ9x-LÎûðI4CuxÈ`ºžE‚ž¤OAS=vè~×ôš¥†b"+CÎ]ÚÖéÞvÏèw¹ÆWI8™Ìâ?\r,¸iÆÏé—/7\\ao± Á£¹Kü3¾3ƒ¤Ž‰ç·åIõ~n£tÿj>s£&ÚFÖM‡9fý¬v¯³éØehüt$áÈE6Ø;H”S´õD˜ÛÄ]RGìGHãAP-?y·Ûþ40Ó×ü£þ\\b}÷u|â¼àÕ}¶çU€é˜ÎÞ¯‰äZÆ;™7PFs#\röº»‘èç#ukªEÈ™x2Ÿ.LAÚ—¦éÑ|ÌbOúînªF\0#—Ç·%äMmìò‚ÆKMªþâTnž‡¸a–-Ï¹Ë/YØp£™¡$ƒmÜ}¾rFöÕÐæ\0¢¯gZðžöËÈÀ˜RéÜ]1†`d`]ùŽ¼«Ff«ZÍ¿tà õDñ–[«/`¤Å–M°S‹s@hÌ‘VÀïôÃ!;Éí¯\'5™óõ\n6ÄvãóôN©÷ºÑQö7?÷Á¡Ùç&7¿\'è€ÎO¦?ôW^q†›*õ«PVr«z§w˜D•L©£|<ÈèêªA;Y[\0–¸Lt†=þ÷ÚÓšmˆ(+Æ`H<2nuì\r‰SÇÐ¡Ün?F\ržGá.ä‹a0âÜlŒÛÎÂ+Ñ|ÌÓ$~dáH—ûúB#GI‚', 'ÿfY‹Ü’e¨˜T¬ýgo', 'IT_Dept', '0', 'text/plain');
/*!40000 ALTER TABLE `file_info` ENABLE KEYS */;


# Dumping structure for table secure_communication_db.tblaa
CREATE TABLE IF NOT EXISTS `tblaa` (
  `A_id` int(10) NOT NULL AUTO_INCREMENT,
  `A_Name` text,
  `A_Email_ID` text,
  `A_Password` text,
  `A_Gender` text,
  `A_Mobile` text,
  `A_Role` text,
  `A_BirthDate` text,
  PRIMARY KEY (`A_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table secure_communication_db.tblaa: 1 rows
/*!40000 ALTER TABLE `tblaa` DISABLE KEYS */;
INSERT INTO `tblaa` (`A_id`, `A_Name`, `A_Email_ID`, `A_Password`, `A_Gender`, `A_Mobile`, `A_Role`, `A_BirthDate`) VALUES (1, 'admin', 'admin@gmail.com', 'Ad@123', 'Male', '9874563210', 'Admin', '1990-05-04');
/*!40000 ALTER TABLE `tblaa` ENABLE KEYS */;


# Dumping structure for table secure_communication_db.tblcommunication_message
CREATE TABLE IF NOT EXISTS `tblcommunication_message` (
  `M_Id` int(10) NOT NULL AUTO_INCREMENT,
  `from_name` text,
  `message_data` longtext,
  `to_name` text,
  `p_key` text,
  PRIMARY KEY (`M_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table secure_communication_db.tblcommunication_message: 1 rows
/*!40000 ALTER TABLE `tblcommunication_message` DISABLE KEYS */;
INSERT INTO `tblcommunication_message` (`M_Id`, `from_name`, `message_data`, `to_name`, `p_key`) VALUES (2, 'jitu@gmail.com', '‘ˆVK!56™ŠÔ+ÅW', 'om@gmail.com', '††ÀS	§˜ÜßSìJ÷€');
/*!40000 ALTER TABLE `tblcommunication_message` ENABLE KEYS */;


# Dumping structure for table secure_communication_db.tblowner
CREATE TABLE IF NOT EXISTS `tblowner` (
  `O_id` int(10) NOT NULL AUTO_INCREMENT,
  `O_Name` text,
  `O_Email_ID` text,
  `O_Password` text,
  `O_Gender` text,
  `O_Mobile` text,
  `O_Role` text,
  `Birth_Date` text,
  `O_Status` text,
  `O_Number` text,
  PRIMARY KEY (`O_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table secure_communication_db.tblowner: 1 rows
/*!40000 ALTER TABLE `tblowner` DISABLE KEYS */;
INSERT INTO `tblowner` (`O_id`, `O_Name`, `O_Email_ID`, `O_Password`, `O_Gender`, `O_Mobile`, `O_Role`, `Birth_Date`, `O_Status`, `O_Number`) VALUES (1, 'jitu', 'jitu@gmail.com', 'Jp@123', 'Male', '9874563210', 'IT_Dept', '1990-01-31', 'Pending', '0');
/*!40000 ALTER TABLE `tblowner` ENABLE KEYS */;


# Dumping structure for table secure_communication_db.tbluser
CREATE TABLE IF NOT EXISTS `tbluser` (
  `U_id` int(10) NOT NULL AUTO_INCREMENT,
  `U_Name` text,
  `U_Email_ID` text,
  `U_Password` text,
  `U_Gender` text,
  `U_Role` text,
  `U_Mobile` text,
  `Account_Balances` text,
  `Birth_Date` text,
  `U_Status` text,
  PRIMARY KEY (`U_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table secure_communication_db.tbluser: 1 rows
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` (`U_id`, `U_Name`, `U_Email_ID`, `U_Password`, `U_Gender`, `U_Role`, `U_Mobile`, `Account_Balances`, `Birth_Date`, `U_Status`) VALUES (1, 'om', 'om@gmail.com', 'Om@123', 'Male', 'IT_Dept', '9874563210', '1000', '1990-03-28', 'Accept');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
