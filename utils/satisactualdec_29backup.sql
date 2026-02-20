-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: satisactual_1
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Blacklisted Token',6,'add_blacklistedtoken'),(22,'Can change Blacklisted Token',6,'change_blacklistedtoken'),(23,'Can delete Blacklisted Token',6,'delete_blacklistedtoken'),(24,'Can view Blacklisted Token',6,'view_blacklistedtoken'),(25,'Can add Outstanding Token',7,'add_outstandingtoken'),(26,'Can change Outstanding Token',7,'change_outstandingtoken'),(27,'Can delete Outstanding Token',7,'delete_outstandingtoken'),(28,'Can view Outstanding Token',7,'view_outstandingtoken'),(29,'Can add User Role Disclosure',8,'add_secuserroledisclosures'),(30,'Can change User Role Disclosure',8,'change_secuserroledisclosures'),(31,'Can delete User Role Disclosure',8,'delete_secuserroledisclosures'),(32,'Can view User Role Disclosure',8,'view_secuserroledisclosures'),(33,'Can add sec user role menus',9,'add_secuserrolemenus'),(34,'Can change sec user role menus',9,'change_secuserrolemenus'),(35,'Can delete sec user role menus',9,'delete_secuserrolemenus'),(36,'Can view sec user role menus',9,'view_secuserrolemenus'),(37,'Can add User Role',10,'add_secuserroles'),(38,'Can change User Role',10,'change_secuserroles'),(39,'Can delete User Role',10,'delete_secuserroles'),(40,'Can view User Role',10,'view_secuserroles'),(41,'Can add User Role Mapping',11,'add_secuserxroles'),(42,'Can change User Role Mapping',11,'change_secuserxroles'),(43,'Can delete User Role Mapping',11,'delete_secuserxroles'),(44,'Can view User Role Mapping',11,'view_secuserxroles'),(45,'Can add mst addr types',12,'add_mstaddrtypes'),(46,'Can change mst addr types',12,'change_mstaddrtypes'),(47,'Can delete mst addr types',12,'delete_mstaddrtypes'),(48,'Can view mst addr types',12,'view_mstaddrtypes'),(49,'Can add mst audit checklist',13,'add_mstauditchecklist'),(50,'Can change mst audit checklist',13,'change_mstauditchecklist'),(51,'Can delete mst audit checklist',13,'delete_mstauditchecklist'),(52,'Can view mst audit checklist',13,'view_mstauditchecklist'),(53,'Can add mst audit types',14,'add_mstaudittypes'),(54,'Can change mst audit types',14,'change_mstaudittypes'),(55,'Can delete mst audit types',14,'delete_mstaudittypes'),(56,'Can view mst audit types',14,'view_mstaudittypes'),(57,'Can add mst city classes',15,'add_mstcityclasses'),(58,'Can change mst city classes',15,'change_mstcityclasses'),(59,'Can delete mst city classes',15,'delete_mstcityclasses'),(60,'Can view mst city classes',15,'view_mstcityclasses'),(61,'Can add mst country codes',16,'add_mstcountrycodes'),(62,'Can change mst country codes',16,'change_mstcountrycodes'),(63,'Can delete mst country codes',16,'delete_mstcountrycodes'),(64,'Can view mst country codes',16,'view_mstcountrycodes'),(65,'Can add mst credit officer levels',17,'add_mstcreditofficerlevels'),(66,'Can change mst credit officer levels',17,'change_mstcreditofficerlevels'),(67,'Can delete mst credit officer levels',17,'delete_mstcreditofficerlevels'),(68,'Can view mst credit officer levels',17,'view_mstcreditofficerlevels'),(69,'Can add mst currency',18,'add_mstcurrency'),(70,'Can change mst currency',18,'change_mstcurrency'),(71,'Can delete mst currency',18,'delete_mstcurrency'),(72,'Can view mst currency',18,'view_mstcurrency'),(73,'Can add mst departments',19,'add_mstdepartments'),(74,'Can change mst departments',19,'change_mstdepartments'),(75,'Can delete mst departments',19,'delete_mstdepartments'),(76,'Can view mst departments',19,'view_mstdepartments'),(77,'Can add mst department support team',20,'add_mstdepartmentsupportteam'),(78,'Can change mst department support team',20,'change_mstdepartmentsupportteam'),(79,'Can delete mst department support team',20,'delete_mstdepartmentsupportteam'),(80,'Can view mst department support team',20,'view_mstdepartmentsupportteam'),(81,'Can add mst disability codes',21,'add_mstdisabilitycodes'),(82,'Can change mst disability codes',21,'change_mstdisabilitycodes'),(83,'Can delete mst disability codes',21,'delete_mstdisabilitycodes'),(84,'Can view mst disability codes',21,'view_mstdisabilitycodes'),(85,'Can add mst disclosure lang',22,'add_mstdisclosurelang'),(86,'Can change mst disclosure lang',22,'change_mstdisclosurelang'),(87,'Can delete mst disclosure lang',22,'delete_mstdisclosurelang'),(88,'Can view mst disclosure lang',22,'view_mstdisclosurelang'),(89,'Can add mst disclosures',23,'add_mstdisclosures'),(90,'Can change mst disclosures',23,'change_mstdisclosures'),(91,'Can delete mst disclosures',23,'delete_mstdisclosures'),(92,'Can view mst disclosures',23,'view_mstdisclosures'),(93,'Can add mst district codes',24,'add_mstdistrictcodes'),(94,'Can change mst district codes',24,'change_mstdistrictcodes'),(95,'Can delete mst district codes',24,'delete_mstdistrictcodes'),(96,'Can view mst district codes',24,'view_mstdistrictcodes'),(97,'Can add Language',25,'add_mstlanguages'),(98,'Can change Language',25,'change_mstlanguages'),(99,'Can delete Language',25,'delete_mstlanguages'),(100,'Can view Language',25,'view_mstlanguages'),(101,'Can add Major City',26,'add_mstmajorcity'),(102,'Can change Major City',26,'change_mstmajorcity'),(103,'Can delete Major City',26,'delete_mstmajorcity'),(104,'Can view Major City',26,'view_mstmajorcity'),(105,'Can add State Code',27,'add_mststatecodes'),(106,'Can change State Code',27,'change_mststatecodes'),(107,'Can delete State Code',27,'delete_mststatecodes'),(108,'Can view State Code',27,'view_mststatecodes'),(109,'Can add User Designation',28,'add_mstuserdesignation'),(110,'Can change User Designation',28,'change_mstuserdesignation'),(111,'Can delete User Designation',28,'delete_mstuserdesignation'),(112,'Can view User Designation',28,'view_mstuserdesignation'),(113,'Can add sec menu options',29,'add_secmenuoptions'),(114,'Can change sec menu options',29,'change_secmenuoptions'),(115,'Can delete sec menu options',29,'delete_secmenuoptions'),(116,'Can view sec menu options',29,'view_secmenuoptions'),(117,'Can add mst campaign team role',30,'add_mstcampaignteamrole'),(118,'Can change mst campaign team role',30,'change_mstcampaignteamrole'),(119,'Can delete mst campaign team role',30,'delete_mstcampaignteamrole'),(120,'Can view mst campaign team role',30,'view_mstcampaignteamrole'),(121,'Can add mst campaign types',31,'add_mstcampaigntypes'),(122,'Can change mst campaign types',31,'change_mstcampaigntypes'),(123,'Can delete mst campaign types',31,'delete_mstcampaigntypes'),(124,'Can view mst campaign types',31,'view_mstcampaigntypes'),(125,'Can add Third Party Type',32,'add_mstthirdpartytypes'),(126,'Can change Third Party Type',32,'change_mstthirdpartytypes'),(127,'Can delete Third Party Type',32,'delete_mstthirdpartytypes'),(128,'Can view Third Party Type',32,'view_mstthirdpartytypes'),(129,'Can add mst third parties',33,'add_mstthirdparties'),(130,'Can change mst third parties',33,'change_mstthirdparties'),(131,'Can delete mst third parties',33,'delete_mstthirdparties'),(132,'Can view mst third parties',33,'view_mstthirdparties'),(133,'Can add Campaign',34,'add_cmpcampaigns'),(134,'Can change Campaign',34,'change_cmpcampaigns'),(135,'Can delete Campaign',34,'delete_cmpcampaigns'),(136,'Can view Campaign',34,'view_cmpcampaigns'),(137,'Can add mst contact channel',35,'add_mstcontactchannel'),(138,'Can change mst contact channel',35,'change_mstcontactchannel'),(139,'Can delete mst contact channel',35,'delete_mstcontactchannel'),(140,'Can view mst contact channel',35,'view_mstcontactchannel'),(141,'Can add mst contact outcome',36,'add_mstcontactoutcome'),(142,'Can change mst contact outcome',36,'change_mstcontactoutcome'),(143,'Can delete mst contact outcome',36,'delete_mstcontactoutcome'),(144,'Can view mst contact outcome',36,'view_mstcontactoutcome'),(145,'Can add sec user master',37,'add_secusermaster'),(146,'Can change sec user master',37,'change_secusermaster'),(147,'Can delete sec user master',37,'delete_secusermaster'),(148,'Can view sec user master',37,'view_secusermaster'),(149,'Can add sec user preferences',38,'add_secuserpreferences'),(150,'Can change sec user preferences',38,'change_secuserpreferences'),(151,'Can delete sec user preferences',38,'delete_secuserpreferences'),(152,'Can view sec user preferences',38,'view_secuserpreferences'),(153,'Can add User Access Log',39,'add_secuseraccesslog'),(154,'Can change User Access Log',39,'change_secuseraccesslog'),(155,'Can delete User Access Log',39,'delete_secuseraccesslog'),(156,'Can view User Access Log',39,'view_secuseraccesslog'),(157,'Can add User Password History',40,'add_secuserpswdhist'),(158,'Can change User Password History',40,'change_secuserpswdhist'),(159,'Can delete User Password History',40,'delete_secuserpswdhist'),(160,'Can view User Password History',40,'view_secuserpswdhist'),(161,'Can add Question Class',41,'add_mstquestionclass'),(162,'Can change Question Class',41,'change_mstquestionclass'),(163,'Can delete Question Class',41,'delete_mstquestionclass'),(164,'Can view Question Class',41,'view_mstquestionclass'),(165,'Can add mst question type',42,'add_mstquestiontype'),(166,'Can change mst question type',42,'change_mstquestiontype'),(167,'Can delete mst question type',42,'delete_mstquestiontype'),(168,'Can view mst question type',42,'view_mstquestiontype'),(169,'Can add Product Code',43,'add_mstprodcodes'),(170,'Can change Product Code',43,'change_mstprodcodes'),(171,'Can delete Product Code',43,'delete_mstprodcodes'),(172,'Can view Product Code',43,'view_mstprodcodes'),(173,'Can add Product Disclosure',44,'add_mstproddisclosures'),(174,'Can change Product Disclosure',44,'change_mstproddisclosures'),(175,'Can delete Product Disclosure',44,'delete_mstproddisclosures'),(176,'Can view Product Disclosure',44,'view_mstproddisclosures'),(177,'Can add Product Document',45,'add_mstproddocs'),(178,'Can change Product Document',45,'change_mstproddocs'),(179,'Can delete Product Document',45,'delete_mstproddocs'),(180,'Can view Product Document',45,'view_mstproddocs'),(181,'Can add Promo Code',46,'add_mstpromocodes'),(182,'Can change Promo Code',46,'change_mstpromocodes'),(183,'Can delete Promo Code',46,'delete_mstpromocodes'),(184,'Can view Promo Code',46,'view_mstpromocodes'),(185,'Can add PIN Code',47,'add_mstpincodes'),(186,'Can change PIN Code',47,'change_mstpincodes'),(187,'Can delete PIN Code',47,'delete_mstpincodes'),(188,'Can view PIN Code',47,'view_mstpincodes');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmp_campaigns`
--

DROP TABLE IF EXISTS `cmp_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_campaigns` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `txt_campaign_name` varchar(96) DEFAULT NULL,
  `txt_campaign_short_code` varchar(48) DEFAULT NULL,
  `txt_campaign_title` varchar(96) DEFAULT NULL,
  `txt_campaign_subtitle` varchar(96) DEFAULT NULL,
  `txt_campaign_desc` longtext DEFAULT NULL,
  `enu_campaign_status` varchar(1) NOT NULL,
  `flg_model_campaign` varchar(1) NOT NULL,
  `flg_targeted_list` varchar(1) DEFAULT NULL,
  `dat_start` date DEFAULT NULL,
  `dat_end` date DEFAULT NULL,
  `txt_camp_mgr_id` varchar(48) DEFAULT NULL,
  `id_commissioned_by_thirdparty` bigint(20) DEFAULT NULL,
  `bin_logo_to_display` varchar(255) DEFAULT NULL,
  `txt_invoice_sent_to_id` varchar(48) DEFAULT NULL,
  `flg_voice_recording_consent` varchar(1) NOT NULL,
  `flg_video_recording_consent` varchar(1) NOT NULL,
  `flg_nonconsent_terminate` varchar(1) NOT NULL,
  `flg_anonymize_names` varchar(1) NOT NULL,
  `flg_anonymous_response_check` varchar(1) NOT NULL,
  `flg_allow_clarif_contact_check` varchar(1) NOT NULL,
  `flg_allow_secure_print` varchar(1) NOT NULL,
  `flg_proof_before_submit` varchar(1) NOT NULL,
  `flg_invite_bids` varchar(1) NOT NULL,
  `num_tot_response_reqd` int(11) DEFAULT NULL,
  `num_attempts_per_item` smallint(6) NOT NULL,
  `num_hours_between_attempts` smallint(6) NOT NULL,
  `num_archival_months` smallint(6) NOT NULL,
  `num_est_target_population` int(11) DEFAULT NULL,
  `num_confidence_level` double NOT NULL,
  `num_margin_of_error` double NOT NULL,
  `num_z_score_calc` double DEFAULT NULL,
  `num_sample_size` int(11) DEFAULT NULL,
  `num_est_contact_pct` smallint(6) DEFAULT NULL,
  `num_est_response_pct` double DEFAULT NULL,
  `num_est_apply_pct` double DEFAULT NULL,
  `num_est_purchase_pct` smallint(6) DEFAULT NULL,
  `amt_est_rev_per_purchase` double DEFAULT NULL,
  `dat_created` date DEFAULT NULL,
  `txt_qa_review_proc_name` varchar(96) DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_campaign_type_id` bigint(20) DEFAULT NULL,
  `cod_department_id` bigint(20) DEFAULT NULL,
  `cod_language_id` bigint(20) DEFAULT NULL,
  `cod_product_id` varchar(4) DEFAULT NULL,
  `cod_promo_id` bigint(20) DEFAULT NULL,
  `txt_created_by_id_id` int(11) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cmp_campaigns_cod_campaign_type_id_c6762700_fk_mst_campa` (`cod_campaign_type_id`),
  KEY `cmp_campaigns_cod_department_id_0cf3a8e5_fk_mst_departments_id` (`cod_department_id`),
  KEY `cmp_campaigns_cod_language_id_3595d551_fk_mst_languages_id` (`cod_language_id`),
  KEY `cmp_campaigns_cod_product_id_cb34f915_fk_mst_prod_` (`cod_product_id`),
  KEY `cmp_campaigns_cod_promo_id_52300579_fk_mst_promo_codes_id` (`cod_promo_id`),
  KEY `cmp_campaigns_txt_created_by_id_id_efafbd4f_fk_sec_user_` (`txt_created_by_id_id`),
  KEY `cmp_campaigns_txt_last_checker_id__4c8bd3a4_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `cmp_campaigns_txt_last_maker_id_id_7d4419ae_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `cmp_campaigns_cod_campaign_type_id_c6762700_fk_mst_campa` FOREIGN KEY (`cod_campaign_type_id`) REFERENCES `mst_campaign_types` (`id`),
  CONSTRAINT `cmp_campaigns_cod_department_id_0cf3a8e5_fk_mst_departments_id` FOREIGN KEY (`cod_department_id`) REFERENCES `mst_departments` (`id`),
  CONSTRAINT `cmp_campaigns_cod_language_id_3595d551_fk_mst_languages_id` FOREIGN KEY (`cod_language_id`) REFERENCES `mst_languages` (`id`),
  CONSTRAINT `cmp_campaigns_cod_product_id_cb34f915_fk_mst_prod_` FOREIGN KEY (`cod_product_id`) REFERENCES `mst_prod_codes` (`cod_product`),
  CONSTRAINT `cmp_campaigns_cod_promo_id_52300579_fk_mst_promo_codes_id` FOREIGN KEY (`cod_promo_id`) REFERENCES `mst_promo_codes` (`id`),
  CONSTRAINT `cmp_campaigns_txt_created_by_id_id_efafbd4f_fk_sec_user_` FOREIGN KEY (`txt_created_by_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `cmp_campaigns_txt_last_checker_id__4c8bd3a4_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `cmp_campaigns_txt_last_maker_id_id_7d4419ae_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmp_campaigns`
--

LOCK TABLES `cmp_campaigns` WRITE;
/*!40000 ALTER TABLE `cmp_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmp_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_sec_user_master_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_sec_user_master_id` FOREIGN KEY (`user_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(34,'campaign','cmpcampaigns'),(30,'campaign','mstcampaignteamrole'),(31,'campaign','mstcampaigntypes'),(33,'campaign','mstthirdparties'),(32,'campaign','mstthirdpartytypes'),(35,'contact','mstcontactchannel'),(36,'contact','mstcontactoutcome'),(4,'contenttypes','contenttype'),(12,'masters','mstaddrtypes'),(13,'masters','mstauditchecklist'),(14,'masters','mstaudittypes'),(15,'masters','mstcityclasses'),(16,'masters','mstcountrycodes'),(17,'masters','mstcreditofficerlevels'),(18,'masters','mstcurrency'),(19,'masters','mstdepartments'),(20,'masters','mstdepartmentsupportteam'),(21,'masters','mstdisabilitycodes'),(22,'masters','mstdisclosurelang'),(23,'masters','mstdisclosures'),(24,'masters','mstdistrictcodes'),(25,'masters','mstlanguages'),(26,'masters','mstmajorcity'),(47,'masters','mstpincodes'),(27,'masters','mststatecodes'),(28,'masters','mstuserdesignation'),(29,'masters','secmenuoptions'),(43,'product','mstprodcodes'),(44,'product','mstproddisclosures'),(45,'product','mstproddocs'),(46,'product','mstpromocodes'),(41,'questionnaries','mstquestionclass'),(42,'questionnaries','mstquestiontype'),(8,'roles','secuserroledisclosures'),(9,'roles','secuserrolemenus'),(10,'roles','secuserroles'),(11,'roles','secuserxroles'),(5,'sessions','session'),(6,'token_blacklist','blacklistedtoken'),(7,'token_blacklist','outstandingtoken'),(39,'user','secuseraccesslog'),(37,'user','secusermaster'),(38,'user','secuserpreferences'),(40,'user','secuserpswdhist');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'masters','0001_initial','2025-12-26 15:13:30.669855'),(2,'contenttypes','0001_initial','2025-12-26 15:13:30.716269'),(3,'contenttypes','0002_remove_content_type_name','2025-12-26 15:13:30.789713'),(4,'auth','0001_initial','2025-12-26 15:13:31.088661'),(5,'auth','0002_alter_permission_name_max_length','2025-12-26 15:13:31.155455'),(6,'auth','0003_alter_user_email_max_length','2025-12-26 15:13:31.164073'),(7,'auth','0004_alter_user_username_opts','2025-12-26 15:13:31.172043'),(8,'auth','0005_alter_user_last_login_null','2025-12-26 15:13:31.180003'),(9,'auth','0006_require_contenttypes_0002','2025-12-26 15:13:31.184349'),(10,'auth','0007_alter_validators_add_error_messages','2025-12-26 15:13:31.192160'),(11,'auth','0008_alter_user_username_max_length','2025-12-26 15:13:31.199970'),(12,'auth','0009_alter_user_last_name_max_length','2025-12-26 15:13:31.207730'),(13,'auth','0010_alter_group_name_max_length','2025-12-26 15:13:31.222972'),(14,'auth','0011_update_proxy_permissions','2025-12-26 15:13:31.241574'),(15,'auth','0012_alter_user_first_name_max_length','2025-12-26 15:13:31.251412'),(16,'user','0001_initial','2025-12-26 15:13:32.794527'),(17,'admin','0001_initial','2025-12-26 15:13:32.949867'),(18,'admin','0002_logentry_remove_auto_add','2025-12-26 15:13:32.965389'),(19,'admin','0003_logentry_add_action_flag_choices','2025-12-26 15:13:32.980483'),(20,'masters','0002_initial','2025-12-26 15:13:38.222564'),(21,'masters','0003_delete_mstcollateraltypes','2025-12-26 15:13:38.243905'),(22,'product','0001_initial','2025-12-26 15:13:38.593569'),(23,'product','0002_alter_mstprodcodes_unique_together_and_more','2025-12-26 15:13:39.045769'),(24,'product','0003_mstproddocs','2025-12-26 15:13:39.496029'),(25,'product','0004_mstpromocodes','2025-12-26 15:13:39.759976'),(26,'campaign','0001_initial','2025-12-26 15:13:39.801770'),(27,'campaign','0002_initial','2025-12-26 15:13:40.297429'),(28,'campaign','0003_mstthirdpartytypes_mstthirdparties','2025-12-26 15:13:40.923541'),(29,'campaign','0004_cmpcampaigns','2025-12-26 15:13:41.622063'),(30,'contact','0001_initial','2025-12-26 15:13:41.705421'),(31,'contact','0002_initial','2025-12-26 15:13:42.835127'),(32,'contact','0003_alter_mstcontracttypes_unique_together_and_more','2025-12-26 15:13:43.211402'),(33,'questionnaries','0001_initial','2025-12-26 15:13:43.326256'),(34,'questionnaries','0002_initial','2025-12-26 15:13:43.855241'),(35,'roles','0001_initial','2025-12-26 15:13:44.006879'),(36,'roles','0002_initial','2025-12-26 15:13:45.540469'),(37,'sessions','0001_initial','2025-12-26 15:13:45.582943'),(38,'token_blacklist','0001_initial','2025-12-26 15:13:45.831867'),(39,'token_blacklist','0002_outstandingtoken_jti_hex','2025-12-26 15:13:45.884354'),(40,'token_blacklist','0003_auto_20171017_2007','2025-12-26 15:13:45.933271'),(41,'token_blacklist','0004_auto_20171017_2013','2025-12-26 15:13:46.040932'),(42,'token_blacklist','0005_remove_outstandingtoken_jti','2025-12-26 15:13:46.223679'),(43,'token_blacklist','0006_auto_20171017_2113','2025-12-26 15:13:46.281258'),(44,'token_blacklist','0007_auto_20171017_2214','2025-12-26 15:13:46.547453'),(45,'token_blacklist','0008_migrate_to_bigautofield','2025-12-26 15:13:46.879447'),(46,'token_blacklist','0010_fix_migrate_to_bigautofield','2025-12-26 15:13:46.932616'),(47,'token_blacklist','0011_linearizes_history','2025-12-26 15:13:46.937642'),(48,'token_blacklist','0012_alter_outstandingtoken_user','2025-12-26 15:13:46.983873'),(49,'token_blacklist','0013_alter_blacklistedtoken_options_and_more','2025-12-26 15:13:47.035041'),(50,'masters','0004_mstpincodes','2025-12-27 12:45:18.264145');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_addr_types`
--

DROP TABLE IF EXISTS `mst_addr_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_addr_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_addr_type` varchar(4) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `txt_addr_type_desc` varchar(48) DEFAULT NULL,
  `flg_accept_as_primary` varchar(1) DEFAULT NULL,
  `flg_accept_for_individual` varchar(1) NOT NULL,
  `flg_accept_for_organization` varchar(1) NOT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_addr_types_cod_addr_type_cod_rec_status_3ca0d0ea_uniq` (`cod_addr_type`,`cod_rec_status`),
  KEY `mst_addr_types_txt_last_checker_id__f1f78b61_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_addr_types_txt_last_maker_id_id_93d42be5_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_addr_types_txt_last_checker_id__f1f78b61_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_addr_types_txt_last_maker_id_id_93d42be5_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_addr_types`
--

LOCK TABLES `mst_addr_types` WRITE;
/*!40000 ALTER TABLE `mst_addr_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_addr_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_audit_checklist`
--

DROP TABLE IF EXISTS `mst_audit_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_audit_checklist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_audit_item` varchar(4) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `txt_item_desc` varchar(96) DEFAULT NULL,
  `num_display_sequence` smallint(6) NOT NULL,
  `flg_group_loan_check` varchar(1) DEFAULT NULL,
  `flg_commercial_loan_check` varchar(1) DEFAULT NULL,
  `flg_secured_loan_check` varchar(1) DEFAULT NULL,
  `flg_guarantor_required_check` varchar(1) DEFAULT NULL,
  `flg_fixed_rate_check` varchar(1) DEFAULT NULL,
  `flg_multi_disburse_check` varchar(1) DEFAULT NULL,
  `flg_debt_consolidation_check` varchar(1) DEFAULT NULL,
  `flg_rate_discount_check` varchar(1) DEFAULT NULL,
  `flg_early_payoff_allowed_check` varchar(1) DEFAULT NULL,
  `flg_interest_subvention_check` varchar(1) DEFAULT NULL,
  `flg_priority_sector_check` varchar(1) DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_audit_checklist_cod_audit_item_cod_rec_status_963beed1_uniq` (`cod_audit_item`,`cod_rec_status`),
  KEY `mst_audit_checklist_txt_last_checker_id__07fd1c07_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_audit_checklist_txt_last_maker_id_id_680e0eda_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_audit_checklist_txt_last_checker_id__07fd1c07_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_audit_checklist_txt_last_maker_id_id_680e0eda_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_audit_checklist`
--

LOCK TABLES `mst_audit_checklist` WRITE;
/*!40000 ALTER TABLE `mst_audit_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_audit_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_audit_types`
--

DROP TABLE IF EXISTS `mst_audit_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_audit_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_audit_type` varchar(4) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `txt_audit_type_desc` varchar(48) DEFAULT NULL,
  `enu_audit_periodicity` varchar(1) NOT NULL,
  `num_days_audit` smallint(6) NOT NULL,
  `num_days_audit_findings` smallint(6) NOT NULL,
  `num_days_audit_response` smallint(6) NOT NULL,
  `num_days_audit_review` smallint(6) NOT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_audit_types_cod_audit_type_cod_rec_status_6f108c8d_uniq` (`cod_audit_type`,`cod_rec_status`),
  KEY `mst_audit_types_txt_last_checker_id__48788e8e_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_audit_types_txt_last_maker_id_id_1ee6b09d_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_audit_types_txt_last_checker_id__48788e8e_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_audit_types_txt_last_maker_id_id_1ee6b09d_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_audit_types`
--

LOCK TABLES `mst_audit_types` WRITE;
/*!40000 ALTER TABLE `mst_audit_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_audit_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_campaign_team_role`
--

DROP TABLE IF EXISTS `mst_campaign_team_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_campaign_team_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_team_role` varchar(4) NOT NULL,
  `txt_role_name` varchar(48) DEFAULT NULL,
  `flg_certification_required` varchar(1) DEFAULT NULL,
  `flg_rating_allowed` varchar(1) DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_campaign_team_role_cod_team_role_cod_rec_st_ff457e97_uniq` (`cod_team_role`,`cod_rec_status`),
  KEY `mst_campaign_team_ro_txt_last_checker_id__06e0e35d_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_campaign_team_ro_txt_last_maker_id_id_de0a9279_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_campaign_team_ro_txt_last_checker_id__06e0e35d_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_campaign_team_ro_txt_last_maker_id_id_de0a9279_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_campaign_team_role`
--

LOCK TABLES `mst_campaign_team_role` WRITE;
/*!40000 ALTER TABLE `mst_campaign_team_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_campaign_team_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_campaign_types`
--

DROP TABLE IF EXISTS `mst_campaign_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_campaign_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_campaign_type` varchar(4) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `txt_campaign_type_desc` varchar(96) DEFAULT NULL,
  `flg_sales_campaign` varchar(1) NOT NULL,
  `flg_employee_survey` varchar(1) NOT NULL,
  `num_min_size_for_reporting` smallint(6) NOT NULL,
  `flg_dnc_scrub_reqd` varchar(1) NOT NULL,
  `flg_structured` varchar(1) DEFAULT NULL,
  `flg_response_reqd` varchar(1) DEFAULT NULL,
  `flg_targetlist_mandatory` varchar(1) DEFAULT NULL,
  `flg_cawi` varchar(1) NOT NULL,
  `flg_cati` varchar(1) NOT NULL,
  `flg_capi` varchar(1) NOT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_campaign_types_cod_campaign_type_cod_re_50dd3d56_uniq` (`cod_campaign_type`,`cod_rec_status`),
  KEY `mst_campaign_types_txt_last_checker_id__080e7854_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_campaign_types_txt_last_maker_id_id_ec9d2b31_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_campaign_types_txt_last_checker_id__080e7854_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_campaign_types_txt_last_maker_id_id_ec9d2b31_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_campaign_types`
--

LOCK TABLES `mst_campaign_types` WRITE;
/*!40000 ALTER TABLE `mst_campaign_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_campaign_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_city_classes`
--

DROP TABLE IF EXISTS `mst_city_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_city_classes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_city_class` varchar(4) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `txt_city_class_desc` varchar(48) DEFAULT NULL,
  `amt_mthly_rent_hni` double DEFAULT NULL,
  `amt_mthly_rent_affluent` double DEFAULT NULL,
  `amt_mthly_rent_emerging` double DEFAULT NULL,
  `amt_mthly_rent_mass` double DEFAULT NULL,
  `amt_mthly_exp_per_head_hni` double DEFAULT NULL,
  `amt_mthly_exp_per_head_affluent` double DEFAULT NULL,
  `amt_mthly_exp_per_head_emerging` double DEFAULT NULL,
  `amt_mthly_exp_per_head_mass` double DEFAULT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_city_classes_cod_city_class_cod_rec_status_90c98344_uniq` (`cod_city_class`,`cod_rec_status`),
  KEY `mst_city_classes_txt_last_checker_id__1f41406a_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_city_classes_txt_last_maker_id_id_90f8c29a_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_city_classes_txt_last_checker_id__1f41406a_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_city_classes_txt_last_maker_id_id_90f8c29a_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_city_classes`
--

LOCK TABLES `mst_city_classes` WRITE;
/*!40000 ALTER TABLE `mst_city_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_city_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_contact_channel`
--

DROP TABLE IF EXISTS `mst_contact_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_contact_channel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_channel` varchar(4) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `txt_channel_desc` varchar(48) DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `enu_base_channel` varchar(4) DEFAULT NULL,
  `flg_email_supported` varchar(1) DEFAULT NULL,
  `flg_SMS_supported` varchar(1) DEFAULT NULL,
  `flg_auto_dialer_supported` varchar(1) DEFAULT NULL,
  `cod_auto_dialer` varchar(4) DEFAULT NULL,
  `enu_mail_protocol` varchar(1) NOT NULL,
  `txt_email_id_for_send` varchar(48) DEFAULT NULL,
  `txt_email_signature` longtext DEFAULT NULL,
  `txt_email_signature_2fa` longtext DEFAULT NULL,
  `txt_smtp_client` varchar(255) DEFAULT NULL,
  `flg_enable_ssl` varchar(1) DEFAULT NULL,
  `num_smtp_port` smallint(6) NOT NULL,
  `txt_pop3_username` varchar(48) DEFAULT NULL,
  `txt_pop3_client` varchar(255) DEFAULT NULL,
  `num_pop3_port` smallint(6) NOT NULL,
  `txt_pop3_encryption` varchar(4) DEFAULT NULL,
  `txt_imap_username` varchar(48) DEFAULT NULL,
  `txt_imap_client` varchar(255) DEFAULT NULL,
  `num_imap_port` smallint(6) NOT NULL,
  `txt_imap_encryption` varchar(4) DEFAULT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_contact_channel_cod_channel_cod_rec_status_300abdb4_uniq` (`cod_channel`,`cod_rec_status`),
  KEY `mst_contact_channel_txt_last_checker_id__1f93a6d0_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_contact_channel_txt_last_maker_id_id_59f34c29_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_contact_channel_txt_last_checker_id__1f93a6d0_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_contact_channel_txt_last_maker_id_id_59f34c29_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_contact_channel`
--

LOCK TABLES `mst_contact_channel` WRITE;
/*!40000 ALTER TABLE `mst_contact_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_contact_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_contact_outcome`
--

DROP TABLE IF EXISTS `mst_contact_outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_contact_outcome` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_contact_outcome` varchar(4) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `txt_contact_outcome_desc` varchar(96) DEFAULT NULL,
  `cod_parent_outcome` varchar(4) DEFAULT NULL,
  `enu_base_channel_type` varchar(4) DEFAULT NULL,
  `flg_valid_outcome` varchar(1) NOT NULL,
  `flg_retry` varchar(1) NOT NULL,
  `flg_use_for_followup` varchar(1) NOT NULL,
  `flg_outbound` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_contact_outcome_cod_contact_outcome_cod__c138678d_uniq` (`cod_contact_outcome`,`cod_rec_status`),
  KEY `mst_contact_outcome_txt_last_checker_id__94651f96_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_contact_outcome_txt_last_maker_id_id_3e8ad73a_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_contact_outcome_txt_last_checker_id__94651f96_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_contact_outcome_txt_last_maker_id_id_3e8ad73a_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_contact_outcome`
--

LOCK TABLES `mst_contact_outcome` WRITE;
/*!40000 ALTER TABLE `mst_contact_outcome` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_contact_outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_country_codes`
--

DROP TABLE IF EXISTS `mst_country_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_country_codes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_country` varchar(4) NOT NULL,
  `txt_country_name` varchar(48) DEFAULT NULL,
  `txt_country_short_name` varchar(48) NOT NULL,
  `txt_nationality_name` varchar(48) DEFAULT NULL,
  `cod_country_alternative` varchar(4) DEFAULT NULL,
  `txt_phone_code` varchar(48) DEFAULT NULL,
  `num_hours_gmt_offset` double DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_country_codes_cod_country_cod_rec_status_f7556760_uniq` (`cod_country`,`cod_rec_status`),
  KEY `mst_country_codes_txt_last_checker_id__72704e3e_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_country_codes_txt_last_maker_id_id_45bc24f4_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_country_codes_txt_last_checker_id__72704e3e_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_country_codes_txt_last_maker_id_id_45bc24f4_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_country_codes`
--

LOCK TABLES `mst_country_codes` WRITE;
/*!40000 ALTER TABLE `mst_country_codes` DISABLE KEYS */;
INSERT INTO `mst_country_codes` VALUES (1,'C001','India','In','India','C001','+91',NULL,'N','N','2025-12-27',NULL,NULL,1);
/*!40000 ALTER TABLE `mst_country_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_credit_officer_levels`
--

DROP TABLE IF EXISTS `mst_credit_officer_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_credit_officer_levels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_credit_officer_level` varchar(4) NOT NULL,
  `txt_credit_officer_level_desc` varchar(48) DEFAULT NULL,
  `amt_max_approving_authority` double DEFAULT NULL,
  `amt_single_approver_limit` double DEFAULT NULL,
  `amt_annual_approval_limit` double DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_credit_officer_level_cod_credit_officer_level_31946ac7_uniq` (`cod_credit_officer_level`,`cod_rec_status`),
  KEY `mst_credit_officer_l_txt_last_checker_id__2b683a09_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_credit_officer_l_txt_last_maker_id_id_c2a7668a_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_credit_officer_l_txt_last_checker_id__2b683a09_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_credit_officer_l_txt_last_maker_id_id_c2a7668a_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_credit_officer_levels`
--

LOCK TABLES `mst_credit_officer_levels` WRITE;
/*!40000 ALTER TABLE `mst_credit_officer_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_credit_officer_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_currency`
--

DROP TABLE IF EXISTS `mst_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_currency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_currency` varchar(4) NOT NULL,
  `txt_currency_desc` varchar(48) DEFAULT NULL,
  `txt_currency_symbol` varchar(1) DEFAULT NULL,
  `num_decimal_places` smallint(6) DEFAULT NULL,
  `txt_minor_unit_name` varchar(48) DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_country_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_currency_cod_currency_cod_rec_status_eb3eacf2_uniq` (`cod_currency`,`cod_rec_status`),
  UNIQUE KEY `cod_country_id` (`cod_country_id`),
  KEY `mst_currency_txt_last_checker_id__5895f994_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_currency_txt_last_maker_id_id_42b18c90_fk_sec_user_master_id` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_currency_cod_country_id_9318ad53_fk_mst_country_codes_id` FOREIGN KEY (`cod_country_id`) REFERENCES `mst_country_codes` (`id`),
  CONSTRAINT `mst_currency_txt_last_checker_id__5895f994_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_currency_txt_last_maker_id_id_42b18c90_fk_sec_user_master_id` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_currency`
--

LOCK TABLES `mst_currency` WRITE;
/*!40000 ALTER TABLE `mst_currency` DISABLE KEYS */;
INSERT INTO `mst_currency` VALUES (1,'C001','Rupee','₹',10,'test','N','N','2025-12-27',NULL,1,NULL,1);
/*!40000 ALTER TABLE `mst_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_department_support_team`
--

DROP TABLE IF EXISTS `mst_department_support_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_department_support_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_third_party` bigint(20) NOT NULL,
  `txt_login_id` varchar(48) NOT NULL,
  `dat_from` date DEFAULT NULL,
  `dat_to` date DEFAULT NULL,
  `flg_hr_admin` varchar(1) DEFAULT NULL,
  `flg_sec_admin` varchar(1) NOT NULL,
  `txt_role` varchar(48) DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_department_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_department_support_t_cod_department_id_txt_lo_364d5642_uniq` (`cod_department_id`,`txt_login_id`,`cod_rec_status`,`id_third_party`),
  KEY `mst_department_suppo_txt_last_checker_id__1db9d85c_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_department_suppo_txt_last_maker_id_id_6acffad2_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_department_suppo_cod_department_id_f96bc1c7_fk_mst_depar` FOREIGN KEY (`cod_department_id`) REFERENCES `mst_departments` (`id`),
  CONSTRAINT `mst_department_suppo_txt_last_checker_id__1db9d85c_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_department_suppo_txt_last_maker_id_id_6acffad2_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_department_support_team`
--

LOCK TABLES `mst_department_support_team` WRITE;
/*!40000 ALTER TABLE `mst_department_support_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_department_support_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_departments`
--

DROP TABLE IF EXISTS `mst_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_departments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_department` varchar(4) NOT NULL,
  `id_third_party` bigint(20) NOT NULL,
  `txt_department_name` varchar(96) DEFAULT NULL,
  `txt_dept_head_id` varchar(48) DEFAULT NULL,
  `txt_dept_deputy_id` varchar(48) DEFAULT NULL,
  `cod_parent_department` varchar(4) DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_departments_cod_department_id_third__3616a055_uniq` (`cod_department`,`id_third_party`,`cod_rec_status`),
  KEY `mst_departments_txt_last_checker_id__e30d56be_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_departments_txt_last_maker_id_id_57124c23_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_departments_txt_last_checker_id__e30d56be_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_departments_txt_last_maker_id_id_57124c23_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_departments`
--

LOCK TABLES `mst_departments` WRITE;
/*!40000 ALTER TABLE `mst_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_disability_codes`
--

DROP TABLE IF EXISTS `mst_disability_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_disability_codes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_disability` varchar(4) NOT NULL,
  `txt_disability_desc` varchar(48) DEFAULT NULL,
  `flg_loss_of_legs` varchar(1) NOT NULL,
  `flg_loss_of_arms` varchar(1) NOT NULL,
  `flg_loss_of_vision` varchar(1) NOT NULL,
  `flg_loss_of_hearing` varchar(1) NOT NULL,
  `flg_mental_disability` varchar(1) NOT NULL,
  `flg_certificate_required` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_disability_codes_cod_disability_cod_rec_status_8105544e_uniq` (`cod_disability`,`cod_rec_status`),
  KEY `mst_disability_codes_txt_last_checker_id__3eb96e5e_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_disability_codes_txt_last_maker_id_id_01214c11_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_disability_codes_txt_last_checker_id__3eb96e5e_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_disability_codes_txt_last_maker_id_id_01214c11_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_disability_codes`
--

LOCK TABLES `mst_disability_codes` WRITE;
/*!40000 ALTER TABLE `mst_disability_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_disability_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_disclosure_lang`
--

DROP TABLE IF EXISTS `mst_disclosure_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_disclosure_lang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `txt_disclosure_phrasing` longtext DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_disclosure_id` bigint(20) DEFAULT NULL,
  `cod_language_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_disclosure_lang_cod_disclosure_id_cod_la_87e597d2_uniq` (`cod_disclosure_id`,`cod_language_id`,`cod_rec_status`),
  KEY `mst_disclosure_lang_cod_language_id_bad30107_fk_mst_languages_id` (`cod_language_id`),
  KEY `mst_disclosure_lang_txt_last_checker_id__314fe5e5_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_disclosure_lang_txt_last_maker_id_id_0f03c1cc_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_disclosure_lang_cod_disclosure_id_50454c18_fk_mst_discl` FOREIGN KEY (`cod_disclosure_id`) REFERENCES `mst_disclosures` (`id`),
  CONSTRAINT `mst_disclosure_lang_cod_language_id_bad30107_fk_mst_languages_id` FOREIGN KEY (`cod_language_id`) REFERENCES `mst_languages` (`id`),
  CONSTRAINT `mst_disclosure_lang_txt_last_checker_id__314fe5e5_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_disclosure_lang_txt_last_maker_id_id_0f03c1cc_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_disclosure_lang`
--

LOCK TABLES `mst_disclosure_lang` WRITE;
/*!40000 ALTER TABLE `mst_disclosure_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_disclosure_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_disclosures`
--

DROP TABLE IF EXISTS `mst_disclosures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_disclosures` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_disclosure` varchar(4) NOT NULL,
  `txt_disclosure_desc` varchar(255) DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_disclosures_cod_disclosure_cod_rec_status_2dd4800c_uniq` (`cod_disclosure`,`cod_rec_status`),
  KEY `mst_disclosures_txt_last_checker_id__534f2faf_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_disclosures_txt_last_maker_id_id_4e227de2_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_disclosures_txt_last_checker_id__534f2faf_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_disclosures_txt_last_maker_id_id_4e227de2_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_disclosures`
--

LOCK TABLES `mst_disclosures` WRITE;
/*!40000 ALTER TABLE `mst_disclosures` DISABLE KEYS */;
INSERT INTO `mst_disclosures` VALUES (1,'DS01','test','M','2025-12-27','2025-12-27',1,1);
/*!40000 ALTER TABLE `mst_disclosures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_district_codes`
--

DROP TABLE IF EXISTS `mst_district_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_district_codes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_district` varchar(12) NOT NULL,
  `txt_district_name` varchar(96) DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_country_id` bigint(20) DEFAULT NULL,
  `cod_state_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_district_codes_cod_district_cod_state_i_988ae880_uniq` (`cod_district`,`cod_state_id`,`cod_country_id`,`cod_rec_status`),
  KEY `mst_district_codes_cod_country_id_311a3198_fk_mst_count` (`cod_country_id`),
  KEY `mst_district_codes_cod_state_id_d2fea5fe_fk_mst_state_codes_id` (`cod_state_id`),
  KEY `mst_district_codes_txt_last_checker_id__ab760241_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_district_codes_txt_last_maker_id_id_1c847918_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_district_codes_cod_country_id_311a3198_fk_mst_count` FOREIGN KEY (`cod_country_id`) REFERENCES `mst_country_codes` (`id`),
  CONSTRAINT `mst_district_codes_cod_state_id_d2fea5fe_fk_mst_state_codes_id` FOREIGN KEY (`cod_state_id`) REFERENCES `mst_state_codes` (`id`),
  CONSTRAINT `mst_district_codes_txt_last_checker_id__ab760241_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_district_codes_txt_last_maker_id_id_1c847918_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_district_codes`
--

LOCK TABLES `mst_district_codes` WRITE;
/*!40000 ALTER TABLE `mst_district_codes` DISABLE KEYS */;
INSERT INTO `mst_district_codes` VALUES (1,'D001','Hyderabad','N','N','2025-12-27',NULL,1,1,NULL,1);
/*!40000 ALTER TABLE `mst_district_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_languages`
--

DROP TABLE IF EXISTS `mst_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_languages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_language` varchar(4) NOT NULL,
  `txt_language_name` varchar(48) DEFAULT NULL,
  `txt_iso_3char_code` varchar(4) DEFAULT NULL,
  `txt_iso_2char_code` varchar(4) DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_languages_cod_language_cod_rec_status_91f7941a_uniq` (`cod_language`,`cod_rec_status`),
  KEY `mst_languages_txt_last_checker_id__2840fdd5_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_languages_txt_last_maker_id_id_0f692906_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_languages_txt_last_checker_id__2840fdd5_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_languages_txt_last_maker_id_id_0f692906_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_languages`
--

LOCK TABLES `mst_languages` WRITE;
/*!40000 ALTER TABLE `mst_languages` DISABLE KEYS */;
INSERT INTO `mst_languages` VALUES (1,'L001','English','ENG','En','N','N','2025-12-27',NULL,NULL,1),(2,'L005','English','En','ENG','N','N','2025-12-27',NULL,NULL,1),(3,'tel','telugu','stri','stri','Y','A','2025-12-27','2025-12-27',1,1),(4,'bnvh','nv','n b','nb','N','N','2025-12-27',NULL,NULL,1),(5,'mnbh','mbnm','mn','mn','N','M','2025-12-27',NULL,NULL,1);
/*!40000 ALTER TABLE `mst_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_major_cities`
--

DROP TABLE IF EXISTS `mst_major_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_major_cities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `txt_city_name` varchar(48) DEFAULT NULL,
  `num_longitude_nw` double DEFAULT NULL,
  `num_latitude_nw` double DEFAULT NULL,
  `num_longitude_se` double DEFAULT NULL,
  `num_latitude_se` double DEFAULT NULL,
  `cod_time_zone` varchar(4) DEFAULT NULL,
  `num_hours_gmt_offset` double DEFAULT NULL,
  `flg_daylight_savings` varchar(1) DEFAULT NULL,
  `cod_city_class` varchar(4) DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_city_id` bigint(20) DEFAULT NULL,
  `cod_country_id` bigint(20) DEFAULT NULL,
  `cod_state_code_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cod_city_id` (`cod_city_id`),
  UNIQUE KEY `mst_major_cities_cod_city_id_cod_country__ea5e7349_uniq` (`cod_city_id`,`cod_country_id`,`cod_rec_status`),
  KEY `mst_major_cities_cod_country_id_6b5053df_fk_mst_country_codes_id` (`cod_country_id`),
  KEY `mst_major_cities_cod_state_code_id_05e1219e_fk_mst_state` (`cod_state_code_id`),
  KEY `mst_major_cities_txt_last_checker_id__41b3d54b_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_major_cities_txt_last_maker_id_id_9c0eaa7b_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_major_cities_cod_city_id_1939ab00_fk_mst_city_classes_id` FOREIGN KEY (`cod_city_id`) REFERENCES `mst_city_classes` (`id`),
  CONSTRAINT `mst_major_cities_cod_country_id_6b5053df_fk_mst_country_codes_id` FOREIGN KEY (`cod_country_id`) REFERENCES `mst_country_codes` (`id`),
  CONSTRAINT `mst_major_cities_cod_state_code_id_05e1219e_fk_mst_state` FOREIGN KEY (`cod_state_code_id`) REFERENCES `mst_state_codes` (`id`),
  CONSTRAINT `mst_major_cities_txt_last_checker_id__41b3d54b_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_major_cities_txt_last_maker_id_id_9c0eaa7b_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_major_cities`
--

LOCK TABLES `mst_major_cities` WRITE;
/*!40000 ALTER TABLE `mst_major_cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_major_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_pin_codes`
--

DROP TABLE IF EXISTS `mst_pin_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_pin_codes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_pin_code` varchar(8) NOT NULL,
  `txt_district_name` varchar(48) DEFAULT NULL,
  `txt_city_name` varchar(48) DEFAULT NULL,
  `txt_post_office_name` varchar(48) DEFAULT NULL,
  `num_longitude` double DEFAULT NULL,
  `num_latitude` double DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_country_id` bigint(20) DEFAULT NULL,
  `cod_district_id` bigint(20) DEFAULT NULL,
  `cod_state_code_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_pin_codes_cod_pin_code_cod_country_45608323_uniq` (`cod_pin_code`,`cod_country_id`,`cod_rec_status`),
  KEY `mst_pin_codes_cod_country_id_44b12aea_fk_mst_country_codes_id` (`cod_country_id`),
  KEY `mst_pin_codes_cod_district_id_5b83885b_fk_mst_district_codes_id` (`cod_district_id`),
  KEY `mst_pin_codes_cod_state_code_id_b32aeeab_fk_mst_state_codes_id` (`cod_state_code_id`),
  KEY `mst_pin_codes_txt_last_checker_id__6d4b1851_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_pin_codes_txt_last_maker_id_id_d27cf413_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_pin_codes_cod_country_id_44b12aea_fk_mst_country_codes_id` FOREIGN KEY (`cod_country_id`) REFERENCES `mst_country_codes` (`id`),
  CONSTRAINT `mst_pin_codes_cod_district_id_5b83885b_fk_mst_district_codes_id` FOREIGN KEY (`cod_district_id`) REFERENCES `mst_district_codes` (`id`),
  CONSTRAINT `mst_pin_codes_cod_state_code_id_b32aeeab_fk_mst_state_codes_id` FOREIGN KEY (`cod_state_code_id`) REFERENCES `mst_state_codes` (`id`),
  CONSTRAINT `mst_pin_codes_txt_last_checker_id__6d4b1851_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_pin_codes_txt_last_maker_id_id_d27cf413_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_pin_codes`
--

LOCK TABLES `mst_pin_codes` WRITE;
/*!40000 ALTER TABLE `mst_pin_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_pin_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_prod_codes`
--

DROP TABLE IF EXISTS `mst_prod_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_prod_codes` (
  `cod_product` varchar(4) NOT NULL,
  `enu_product_type` varchar(3) NOT NULL,
  `txt_product_name` varchar(48) NOT NULL,
  `dat_prod_offer_start` date DEFAULT NULL,
  `dat_prod_offer_end` date DEFAULT NULL,
  `flg_apply_selfserve_mode` varchar(1) DEFAULT NULL,
  `flg_sales_certif_reqd` varchar(1) NOT NULL,
  `flg_e_stmt_avlbl` varchar(1) NOT NULL,
  `bin_product_brochure` varchar(255) DEFAULT NULL,
  `bin_product_soc` varchar(255) DEFAULT NULL,
  `bin_product_mitc` varchar(255) DEFAULT NULL,
  `txt_mktg_tag_line` varchar(255) DEFAULT NULL,
  `id_eligibility_questionnaire` bigint(20) NOT NULL,
  `num_eligibility_score_min` smallint(6) NOT NULL,
  `txt_gen_appl_num_func` varchar(255) DEFAULT NULL,
  `txt_gen_acct_num_func` varchar(255) DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_currency_id` bigint(20) DEFAULT NULL,
  `cod_parent_product_id` varchar(4) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_product`),
  KEY `mst_prod_codes_cod_currency_id_65db9b6a_fk_mst_currency_id` (`cod_currency_id`),
  KEY `mst_prod_codes_cod_parent_product_i_eb8c3d20_fk_mst_prod_` (`cod_parent_product_id`),
  KEY `mst_prod_codes_txt_last_checker_id__47079372_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_prod_codes_txt_last_maker_id_id_1815a972_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_prod_codes_cod_currency_id_65db9b6a_fk_mst_currency_id` FOREIGN KEY (`cod_currency_id`) REFERENCES `mst_currency` (`id`),
  CONSTRAINT `mst_prod_codes_cod_parent_product_i_eb8c3d20_fk_mst_prod_` FOREIGN KEY (`cod_parent_product_id`) REFERENCES `mst_prod_codes` (`cod_product`),
  CONSTRAINT `mst_prod_codes_txt_last_checker_id__47079372_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_prod_codes_txt_last_maker_id_id_1815a972_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_prod_codes`
--

LOCK TABLES `mst_prod_codes` WRITE;
/*!40000 ALTER TABLE `mst_prod_codes` DISABLE KEYS */;
INSERT INTO `mst_prod_codes` VALUES ('P001','CAS','Test Pro','2025-12-22','2026-01-30','Y','Y','Y',NULL,'test','test','test',10,10,'nmb','mn','N','N','2025-12-27','2025-12-27',1,NULL,NULL,1),('P002','LON','Pproduct 2','2025-12-10','2025-12-31',NULL,'Y','Y',NULL,NULL,NULL,NULL,10,10,'M,N',',M','N','A','2025-12-27','2025-12-27',1,NULL,NULL,1);
/*!40000 ALTER TABLE `mst_prod_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_prod_disclosures`
--

DROP TABLE IF EXISTS `mst_prod_disclosures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_prod_disclosures` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_disclosure` varchar(4) NOT NULL,
  `num_sequence` smallint(6) DEFAULT NULL,
  `flg_all_applicants_mandatory` varchar(1) NOT NULL,
  `flg_guarantors_mandatory` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_prod_disclosures_cod_disclosure_cod_rec_status_f36f59ab_uniq` (`cod_disclosure`,`cod_rec_status`),
  KEY `mst_prod_disclosures_txt_last_checker_id__8425d4d2_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_prod_disclosures_txt_last_maker_id_id_65a20c0d_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_prod_disclosures_txt_last_checker_id__8425d4d2_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_prod_disclosures_txt_last_maker_id_id_65a20c0d_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_prod_disclosures`
--

LOCK TABLES `mst_prod_disclosures` WRITE;
/*!40000 ALTER TABLE `mst_prod_disclosures` DISABLE KEYS */;
INSERT INTO `mst_prod_disclosures` VALUES (1,'test',10,'Y','Y','N','2025-12-27',NULL,NULL,1),(2,'D002',21,'Y','Y','N','2025-12-27','2025-12-27',1,1);
/*!40000 ALTER TABLE `mst_prod_disclosures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_prod_disclosures_cod_product`
--

DROP TABLE IF EXISTS `mst_prod_disclosures_cod_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_prod_disclosures_cod_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mstproddisclosures_id` bigint(20) NOT NULL,
  `mstprodcodes_id` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_prod_disclosures_cod_mstproddisclosures_id_ms_c0591fcc_uniq` (`mstproddisclosures_id`,`mstprodcodes_id`),
  KEY `mst_prod_disclosures_mstprodcodes_id_970e7915_fk_mst_prod_` (`mstprodcodes_id`),
  CONSTRAINT `mst_prod_disclosures_mstprodcodes_id_970e7915_fk_mst_prod_` FOREIGN KEY (`mstprodcodes_id`) REFERENCES `mst_prod_codes` (`cod_product`),
  CONSTRAINT `mst_prod_disclosures_mstproddisclosures_i_f9f84d61_fk_mst_prod_` FOREIGN KEY (`mstproddisclosures_id`) REFERENCES `mst_prod_disclosures` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_prod_disclosures_cod_product`
--

LOCK TABLES `mst_prod_disclosures_cod_product` WRITE;
/*!40000 ALTER TABLE `mst_prod_disclosures_cod_product` DISABLE KEYS */;
INSERT INTO `mst_prod_disclosures_cod_product` VALUES (1,1,'P001'),(4,2,'P001'),(2,2,'P002');
/*!40000 ALTER TABLE `mst_prod_disclosures_cod_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_prod_docs`
--

DROP TABLE IF EXISTS `mst_prod_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_prod_docs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_doc_type` varchar(4) NOT NULL,
  `enu_doc_purpose` varchar(1) NOT NULL,
  `flg_acct_opening_doc` varchar(1) NOT NULL,
  `num_days_from_acct_opening` smallint(6) NOT NULL,
  `flg_renewal_doc` varchar(1) NOT NULL,
  `enu_post_disb_resubmit_freq` varchar(1) NOT NULL,
  `flg_mandatory` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mst_prod_docs_txt_last_checker_id__7f29926a_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_prod_docs_txt_last_maker_id_id_a305d800_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_prod_docs_txt_last_checker_id__7f29926a_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_prod_docs_txt_last_maker_id_id_a305d800_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_prod_docs`
--

LOCK TABLES `mst_prod_docs` WRITE;
/*!40000 ALTER TABLE `mst_prod_docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_prod_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_prod_docs_cod_product`
--

DROP TABLE IF EXISTS `mst_prod_docs_cod_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_prod_docs_cod_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mstproddocs_id` bigint(20) NOT NULL,
  `mstprodcodes_id` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_prod_docs_cod_produc_mstproddocs_id_mstprodco_ecdf17d7_uniq` (`mstproddocs_id`,`mstprodcodes_id`),
  KEY `mst_prod_docs_cod_pr_mstprodcodes_id_a32009e0_fk_mst_prod_` (`mstprodcodes_id`),
  CONSTRAINT `mst_prod_docs_cod_pr_mstprodcodes_id_a32009e0_fk_mst_prod_` FOREIGN KEY (`mstprodcodes_id`) REFERENCES `mst_prod_codes` (`cod_product`),
  CONSTRAINT `mst_prod_docs_cod_pr_mstproddocs_id_d7f1fbee_fk_mst_prod_` FOREIGN KEY (`mstproddocs_id`) REFERENCES `mst_prod_docs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_prod_docs_cod_product`
--

LOCK TABLES `mst_prod_docs_cod_product` WRITE;
/*!40000 ALTER TABLE `mst_prod_docs_cod_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_prod_docs_cod_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_promo_codes`
--

DROP TABLE IF EXISTS `mst_promo_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_promo_codes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_promo` varchar(4) NOT NULL,
  `txt_promo_code_desc` varchar(96) DEFAULT NULL,
  `flg_default_value` varchar(1) DEFAULT NULL,
  `dat_promo_start` date DEFAULT NULL,
  `dat_promo_end` date DEFAULT NULL,
  `txt_promo_headline` varchar(96) DEFAULT NULL,
  `txt_promo_tagline` varchar(96) DEFAULT NULL,
  `txt_promo_offer_desc` varchar(255) DEFAULT NULL,
  `bin_promo_creative` varchar(255) DEFAULT NULL,
  `bin_promo_creative_small` varchar(255) DEFAULT NULL,
  `flg_customer_facing` varchar(1) DEFAULT NULL,
  `num_promo_priority` smallint(6) DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_product_id` varchar(4) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_promo_codes_cod_promo_cod_rec_status_2ae4a65b_uniq` (`cod_promo`,`cod_rec_status`),
  KEY `mst_promo_codes_cod_product_id_d962fb7c_fk_mst_prod_` (`cod_product_id`),
  KEY `mst_promo_codes_txt_last_checker_id__e432772b_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_promo_codes_txt_last_maker_id_id_2b420f6d_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_promo_codes_cod_product_id_d962fb7c_fk_mst_prod_` FOREIGN KEY (`cod_product_id`) REFERENCES `mst_prod_codes` (`cod_product`),
  CONSTRAINT `mst_promo_codes_txt_last_checker_id__e432772b_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_promo_codes_txt_last_maker_id_id_2b420f6d_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_promo_codes`
--

LOCK TABLES `mst_promo_codes` WRITE;
/*!40000 ALTER TABLE `mst_promo_codes` DISABLE KEYS */;
INSERT INTO `mst_promo_codes` VALUES (1,'test','test description','N','2025-12-05','2025-12-31','test','ytrhgf','mnbnjm','nmb','mb','Y',100,'N','2025-12-27','2025-12-27',NULL,1,1);
/*!40000 ALTER TABLE `mst_promo_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_question_classes`
--

DROP TABLE IF EXISTS `mst_question_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_question_classes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_question_class` varchar(4) NOT NULL,
  `txt_question_class_desc` varchar(48) DEFAULT NULL,
  `num_display_sequence` smallint(6) NOT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_question_classes_cod_question_class_cod_r_7abcab8f_uniq` (`cod_question_class`,`cod_rec_status`),
  KEY `mst_question_classes_txt_last_checker_id__1c1f458a_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_question_classes_txt_last_maker_id_id_c4beabbe_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_question_classes_txt_last_checker_id__1c1f458a_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_question_classes_txt_last_maker_id_id_c4beabbe_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_question_classes`
--

LOCK TABLES `mst_question_classes` WRITE;
/*!40000 ALTER TABLE `mst_question_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_question_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_question_types`
--

DROP TABLE IF EXISTS `mst_question_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_question_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_question_type` varchar(4) NOT NULL,
  `enu_base_question_type` varchar(1) NOT NULL,
  `txt_question_type_desc` varchar(48) DEFAULT NULL,
  `enu_display_type` varchar(10) DEFAULT NULL,
  `num_display_order` smallint(6) DEFAULT NULL,
  `num_max_chars_response` smallint(6) NOT NULL,
  `txt_response_format` varchar(255) DEFAULT NULL,
  `flg_rating_base_zero` varchar(1) NOT NULL,
  `flg_rating_one_highest` varchar(1) DEFAULT NULL,
  `txt_high_rating_label` varchar(48) DEFAULT NULL,
  `txt_low_rating_label` varchar(48) DEFAULT NULL,
  `num_rating_levels` smallint(6) NOT NULL,
  `enu_report_format` varchar(10) DEFAULT NULL,
  `flg_av_recording_reqd` varchar(1) NOT NULL,
  `flg_simple_question` varchar(1) NOT NULL,
  `bin_question_icon` longtext DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_question_class_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_question_types_cod_question_type_enu_ba_da1e236e_uniq` (`cod_question_type`,`enu_base_question_type`,`cod_rec_status`),
  KEY `mst_question_types_cod_question_class_i_66525598_fk_mst_quest` (`cod_question_class_id`),
  KEY `mst_question_types_txt_last_checker_id__86e7a572_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_question_types_txt_last_maker_id_id_4f25be54_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_question_types_cod_question_class_i_66525598_fk_mst_quest` FOREIGN KEY (`cod_question_class_id`) REFERENCES `mst_question_classes` (`id`),
  CONSTRAINT `mst_question_types_txt_last_checker_id__86e7a572_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_question_types_txt_last_maker_id_id_4f25be54_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_question_types`
--

LOCK TABLES `mst_question_types` WRITE;
/*!40000 ALTER TABLE `mst_question_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_question_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_state_codes`
--

DROP TABLE IF EXISTS `mst_state_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_state_codes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_state` varchar(6) NOT NULL,
  `cod_country` varchar(4) NOT NULL,
  `txt_state_short_code` varchar(4) DEFAULT NULL,
  `txt_state_name` varchar(48) DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_state_codes_cod_state_cod_country_co_c536cdf1_uniq` (`cod_state`,`cod_country`,`cod_rec_status`),
  KEY `mst_state_codes_txt_last_checker_id__44ab0ae2_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_state_codes_txt_last_maker_id_id_6830d87e_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_state_codes_txt_last_checker_id__44ab0ae2_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_state_codes_txt_last_maker_id_id_6830d87e_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_state_codes`
--

LOCK TABLES `mst_state_codes` WRITE;
/*!40000 ALTER TABLE `mst_state_codes` DISABLE KEYS */;
INSERT INTO `mst_state_codes` VALUES (1,'S001','1','S001','Telangana','N','N','2025-12-27',NULL,NULL,1);
/*!40000 ALTER TABLE `mst_state_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_third_parties`
--

DROP TABLE IF EXISTS `mst_third_parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_third_parties` (
  `id_third_party` bigint(20) NOT NULL AUTO_INCREMENT,
  `txt_third_party_name` varchar(255) DEFAULT NULL,
  `txt_third_party_short_name` varchar(48) DEFAULT NULL,
  `flg_credit_bureau` varchar(1) NOT NULL,
  `flg_vendor_agency` varchar(1) NOT NULL,
  `flg_builder_developer` varchar(1) NOT NULL,
  `flg_regulator` varchar(1) NOT NULL,
  `flg_employer` varchar(1) NOT NULL,
  `flg_client_entity` varchar(1) NOT NULL,
  `flg_authentication_agency` varchar(1) NOT NULL,
  `flg_distributor_agency` varchar(1) NOT NULL,
  `flg_auditor` varchar(1) NOT NULL,
  `flg_lawyer` varchar(1) NOT NULL,
  `flg_clearing_house` varchar(1) NOT NULL,
  `flg_insurer` varchar(1) NOT NULL,
  `flg_accredited_university` varchar(1) NOT NULL,
  `txt_our_id` varchar(48) DEFAULT NULL,
  `flg_msg_xchg_available` varchar(1) DEFAULT NULL,
  `txt_msg_xchg_ip_address` varchar(96) DEFAULT NULL,
  `txt_msg_xchg_port_num` smallint(6) DEFAULT NULL,
  `txt_msg_xchg_protocol` varchar(48) DEFAULT NULL,
  `txt_msg_xchg_user_id` varchar(48) DEFAULT NULL,
  `txt_msg_xchg_signature` varchar(48) DEFAULT NULL,
  `txt_msg_send_format` varchar(48) DEFAULT NULL,
  `txt_msg_recv_format` varchar(48) DEFAULT NULL,
  `txt_file_send_format` varchar(48) DEFAULT NULL,
  `txt_file_recv_format` varchar(48) DEFAULT NULL,
  `txt_file_send_folder` varchar(255) DEFAULT NULL,
  `txt_file_recv_folder` varchar(255) DEFAULT NULL,
  `num_min_score_possible` smallint(6) DEFAULT NULL,
  `num_max_score_possible` smallint(6) DEFAULT NULL,
  `txt_principal_contact_name` varchar(96) DEFAULT NULL,
  `txt_addr_line1` varchar(96) DEFAULT NULL,
  `txt_addr_line2` varchar(96) DEFAULT NULL,
  `txt_addr_line3` varchar(96) DEFAULT NULL,
  `txt_addr_city` varchar(96) DEFAULT NULL,
  `txt_addr_pin` varchar(8) DEFAULT NULL,
  `dat_addr_effective` date DEFAULT NULL,
  `txt_phone_num` varchar(48) DEFAULT NULL,
  `txt_email_id` varchar(96) DEFAULT NULL,
  `txt_org_url` varchar(96) DEFAULT NULL,
  `txt_escalation_1_name` varchar(96) DEFAULT NULL,
  `txt_escalation_1_phone` varchar(48) DEFAULT NULL,
  `txt_escalation_1_email` varchar(96) DEFAULT NULL,
  `txt_escalation_1_title` varchar(96) DEFAULT NULL,
  `txt_escalation_2_name` varchar(96) DEFAULT NULL,
  `txt_escalation_2_phone` varchar(48) DEFAULT NULL,
  `txt_escalation_2_email` varchar(96) DEFAULT NULL,
  `txt_escalation_2_title` varchar(96) DEFAULT NULL,
  `txt_registration_num` varchar(48) DEFAULT NULL,
  `dat_registration` date DEFAULT NULL,
  `num_gl_acct` int(11) DEFAULT NULL,
  `bin_third_party_logo` varchar(255) NOT NULL,
  `flg_poa_received` varchar(1) NOT NULL,
  `bin_poa_doc` varchar(255) DEFAULT NULL,
  `cod_id_proof_doctyp` varchar(4) DEFAULT NULL,
  `txt_id_proof_docnum` varchar(48) DEFAULT NULL,
  `id_issuer` bigint(20) DEFAULT NULL,
  `txt_id_proof_issuer` varchar(96) DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_addr_country_id` bigint(20) DEFAULT NULL,
  `cod_address_state_id` bigint(20) DEFAULT NULL,
  `cod_third_party_type_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_third_party`),
  UNIQUE KEY `mst_third_parties_id_third_party_cod_rec_status_31c33597_uniq` (`id_third_party`,`cod_rec_status`),
  KEY `mst_third_parties_cod_addr_country_id_add8789f_fk_mst_count` (`cod_addr_country_id`),
  KEY `mst_third_parties_cod_address_state_id_fb74784e_fk_mst_state` (`cod_address_state_id`),
  KEY `mst_third_parties_cod_third_party_type_a4fed538_fk_mst_third` (`cod_third_party_type_id`),
  KEY `mst_third_parties_txt_last_checker_id__340014d5_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_third_parties_txt_last_maker_id_id_80004dea_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_third_parties_cod_addr_country_id_add8789f_fk_mst_count` FOREIGN KEY (`cod_addr_country_id`) REFERENCES `mst_country_codes` (`id`),
  CONSTRAINT `mst_third_parties_cod_address_state_id_fb74784e_fk_mst_state` FOREIGN KEY (`cod_address_state_id`) REFERENCES `mst_state_codes` (`id`),
  CONSTRAINT `mst_third_parties_cod_third_party_type_a4fed538_fk_mst_third` FOREIGN KEY (`cod_third_party_type_id`) REFERENCES `mst_third_party_types` (`id`),
  CONSTRAINT `mst_third_parties_txt_last_checker_id__340014d5_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_third_parties_txt_last_maker_id_id_80004dea_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_third_parties`
--

LOCK TABLES `mst_third_parties` WRITE;
/*!40000 ALTER TABLE `mst_third_parties` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_third_parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_third_party_types`
--

DROP TABLE IF EXISTS `mst_third_party_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_third_party_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_third_party_type` varchar(4) NOT NULL,
  `txt_third_party_type_desc` varchar(48) DEFAULT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `flg_credit_bureau` varchar(1) NOT NULL,
  `flg_vendor_agency` varchar(1) NOT NULL,
  `flg_builder_developer` varchar(1) NOT NULL,
  `flg_regulator` varchar(1) NOT NULL,
  `flg_employer` varchar(1) NOT NULL,
  `flg_client_entity` varchar(1) NOT NULL,
  `flg_authentication_agency` varchar(1) NOT NULL,
  `flg_distributor_agency` varchar(1) NOT NULL,
  `flg_auditor` varchar(1) NOT NULL,
  `flg_lawyer` varchar(1) NOT NULL,
  `flg_clearing_house` varchar(1) NOT NULL,
  `flg_insurer` varchar(1) NOT NULL,
  `flg_accredited_university` varchar(1) DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_third_party_types_cod_third_party_type_cod_7c5241bf_uniq` (`cod_third_party_type`,`cod_rec_status`),
  KEY `mst_third_party_type_txt_last_checker_id__8cecf12b_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_third_party_type_txt_last_maker_id_id_fc2eb754_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_third_party_type_txt_last_checker_id__8cecf12b_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_third_party_type_txt_last_maker_id_id_fc2eb754_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_third_party_types`
--

LOCK TABLES `mst_third_party_types` WRITE;
/*!40000 ALTER TABLE `mst_third_party_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_third_party_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_user_designation`
--

DROP TABLE IF EXISTS `mst_user_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_user_designation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_designation` varchar(4) NOT NULL,
  `id_third_party` bigint(20) NOT NULL,
  `txt_designation_desc` varchar(48) DEFAULT NULL,
  `flg_senior_management` varchar(1) NOT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_parent_designation_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mst_user_designation_cod_designation_cod_rec__70735f54_uniq` (`cod_designation`,`cod_rec_status`),
  KEY `mst_user_designation_cod_parent_designati_ee80d2ae_fk_mst_user_` (`cod_parent_designation_id`),
  KEY `mst_user_designation_txt_last_checker_id__2b18bf0e_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `mst_user_designation_txt_last_maker_id_id_8a71a587_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `mst_user_designation_cod_parent_designati_ee80d2ae_fk_mst_user_` FOREIGN KEY (`cod_parent_designation_id`) REFERENCES `mst_user_designation` (`id`),
  CONSTRAINT `mst_user_designation_txt_last_checker_id__2b18bf0e_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `mst_user_designation_txt_last_maker_id_id_8a71a587_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_user_designation`
--

LOCK TABLES `mst_user_designation` WRITE;
/*!40000 ALTER TABLE `mst_user_designation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_user_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_menu_options`
--

DROP TABLE IF EXISTS `sec_menu_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_menu_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_menu_option` varchar(4) NOT NULL,
  `txt_menu_desc` varchar(96) DEFAULT NULL,
  `txt_menu_helptext` longtext DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `bin_menu_icon` longtext DEFAULT NULL,
  `flg_is_root_menu` varchar(1) NOT NULL,
  `flg_show_as_menu` varchar(1) NOT NULL,
  `cod_parent_menu_option` varchar(4) DEFAULT NULL,
  `txt_menu_param_1` varchar(96) DEFAULT NULL,
  `txt_menu_param_2` varchar(96) DEFAULT NULL,
  `txt_menu_param_3` varchar(96) DEFAULT NULL,
  `cod_module` varchar(4) DEFAULT NULL,
  `flg_public` varchar(1) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sec_menu_options_cod_menu_option_cod_rec_status_2ce5244a_uniq` (`cod_menu_option`,`cod_rec_status`),
  KEY `sec_menu_options_txt_last_checker_id__80098b08_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `sec_menu_options_txt_last_maker_id_id_a65a4a58_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `sec_menu_options_txt_last_checker_id__80098b08_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `sec_menu_options_txt_last_maker_id_id_a65a4a58_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_menu_options`
--

LOCK TABLES `sec_menu_options` WRITE;
/*!40000 ALTER TABLE `sec_menu_options` DISABLE KEYS */;
INSERT INTO `sec_menu_options` VALUES (2,'U001','Masters',NULL,NULL,'category','Y','Y',NULL,NULL,NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(3,'U002','User Management',NULL,NULL,'supervisor_account','Y','Y',NULL,NULL,NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(4,'U003','Campaign Management',NULL,NULL,'campaign','Y','Y',NULL,NULL,NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(5,'U004','Questionnaries',NULL,NULL,'question_answer','Y','Y','',NULL,NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(6,'U005','Menu Options',NULL,NULL,'menu','Y','Y','U001','masters/admin_menu',NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(7,'U006','Language',NULL,NULL,'language','Y','Y','U001','language',NULL,NULL,NULL,'N','N','2025-12-27',NULL,NULL,1),(8,'U007','Currency',NULL,NULL,'money','Y','Y','U001','currency',NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(9,'U008','Country',NULL,NULL,'language','Y','Y','U001','country',NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(10,'U009','States',NULL,NULL,'location_city','Y','Y','U001','state',NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(11,'U010','District',NULL,NULL,'location_city','Y','Y','U001','district',NULL,NULL,NULL,'N','N','2025-12-27',NULL,NULL,1),(12,'U011','Disclosures',NULL,NULL,'policy','Y','Y','U001','disclosures',NULL,NULL,NULL,'N','N','2025-12-27',NULL,NULL,1),(13,'U012','Disclosurelang',NULL,NULL,'info','Y','Y','U001','disclosurelang',NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(14,'U013','ThirdParty Types',NULL,NULL,'category','Y','Y','U001','third-party-types',NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(15,'U014','Thirdparties',NULL,NULL,'handshake','Y','Y','U001','third-party',NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(16,'U015','Question Class',NULL,NULL,'assignment','Y','Y','U004','question_class',NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(17,'U016','Question Type',NULL,NULL,'assignment','Y','Y','U004','question_type',NULL,NULL,NULL,'N','N','2025-12-27',NULL,NULL,1),(18,'U017','Campaign Type',NULL,NULL,'campaign','Y','Y','U003','campaign_type',NULL,NULL,NULL,'N','N','2025-12-27',NULL,NULL,1),(19,'U018','campaign TeamRole',NULL,NULL,'group','Y','Y','U003','campaign-teamrole',NULL,NULL,NULL,'N','N','2025-12-27',NULL,NULL,1),(20,'U019','department',NULL,NULL,'account_tree','Y','Y','U001','department',NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(21,'U020','Promo Codes',NULL,NULL,'local_offer','Y','Y','U001','promotions',NULL,NULL,NULL,'N','N','2025-12-27','2025-12-27',1,1),(22,'U021','Product Code',NULL,NULL,'category','Y','Y','U001','product-code',NULL,NULL,NULL,'N','N','2025-12-27',NULL,NULL,1),(23,'U022','Product Disclosures',NULL,NULL,'category','Y','Y','U001','product-disclosures',NULL,NULL,NULL,'N','N','2025-12-27',NULL,NULL,1);
/*!40000 ALTER TABLE `sec_menu_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_access_log`
--

DROP TABLE IF EXISTS `sec_user_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_access_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `txt_login_id` varchar(48) NOT NULL,
  `dat_time_login` datetime(6) NOT NULL,
  `flg_success` varchar(1) DEFAULT NULL,
  `txt_ip_address_source` varchar(96) DEFAULT NULL,
  `txt_browser_used` varchar(48) DEFAULT NULL,
  `txt_os_used` varchar(48) DEFAULT NULL,
  `txt_user_agent_string` longtext DEFAULT NULL,
  `txt_login_fail_reason` varchar(48) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sec_user_access_log_txt_login_id_dat_time_login_651a14da_uniq` (`txt_login_id`,`dat_time_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_access_log`
--

LOCK TABLES `sec_user_access_log` WRITE;
/*!40000 ALTER TABLE `sec_user_access_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user_access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_master`
--

DROP TABLE IF EXISTS `sec_user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_master` (
  `last_login` datetime(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt_login_id` varchar(48) NOT NULL,
  `txt_user_signature` varchar(128) NOT NULL,
  `flg_functional_id` varchar(1) DEFAULT NULL,
  `flg_force_passwd_chg` varchar(1) DEFAULT NULL,
  `dat_last_passwd_chg` date DEFAULT NULL,
  `txt_user_fname` varchar(48) DEFAULT NULL,
  `txt_user_mname` varchar(48) DEFAULT NULL,
  `txt_user_lname` varchar(48) DEFAULT NULL,
  `enu_user_gender` varchar(4) DEFAULT NULL,
  `dat_user_birth` date DEFAULT NULL,
  `id_parent_company_3rdparty` bigint(20) DEFAULT NULL,
  `txt_parent_company_name` varchar(48) DEFAULT NULL,
  `flg_parent_company_verified` varchar(1) DEFAULT NULL,
  `dat_time_parent_company_verified` datetime(6) DEFAULT NULL,
  `txt_parent_company_verified_by` varchar(48) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) DEFAULT NULL,
  `is_enduser` tinyint(1) DEFAULT NULL,
  `is_client` tinyint(1) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `is_pass_changed` tinyint(1) DEFAULT NULL,
  `is_2fa` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `txt_employee_id` varchar(48) DEFAULT NULL,
  `txt_user_email_id` varchar(96) DEFAULT NULL,
  `txt_user_mobile_phone` varchar(48) DEFAULT NULL,
  `txt_device_assigned` varchar(96) DEFAULT NULL,
  `txt_fcm_token` longtext DEFAULT NULL,
  `dat_time_fcm_expiry` datetime(6) DEFAULT NULL,
  `cod_home_module` varchar(4) DEFAULT NULL,
  `cod_home_menu` varchar(4) DEFAULT NULL,
  `dat_time_t_and_c_accepted` datetime(6) DEFAULT NULL,
  `dat_time_welcome_dismissed` datetime(6) DEFAULT NULL,
  `cod_home_branch` varchar(6) DEFAULT NULL,
  `flg_disabled` varchar(1) DEFAULT NULL,
  `flg_user_logged_in` varchar(1) DEFAULT NULL,
  `dat_last_login` date DEFAULT NULL,
  `num_failed_pwd` smallint(6) DEFAULT NULL,
  `dat_profile_created` date DEFAULT NULL,
  `dat_profile_expiry` date DEFAULT NULL,
  `cod_time_zone` varchar(4) DEFAULT NULL,
  `cod_2fa_question_1` varchar(4) DEFAULT NULL,
  `txt_2fa_answer_1` varchar(48) DEFAULT NULL,
  `cod_2fa_question_2` varchar(4) DEFAULT NULL,
  `txt_2fa_answer_2` varchar(48) DEFAULT NULL,
  `cod_2fa_question_3` varchar(4) DEFAULT NULL,
  `txt_2fa_answer_3` varchar(48) DEFAULT NULL,
  `cod_2fa_question_4` varchar(4) DEFAULT NULL,
  `txt_2fa_answer_4` varchar(48) DEFAULT NULL,
  `cod_2fa_question_5` varchar(4) DEFAULT NULL,
  `txt_2fa_answer_5` varchar(48) DEFAULT NULL,
  `cod_rec_status` varchar(1) DEFAULT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_credit_officer_level_id` bigint(20) DEFAULT NULL,
  `cod_department_id` bigint(20) DEFAULT NULL,
  `cod_language_id` bigint(20) DEFAULT NULL,
  `cod_user_designation_id` bigint(20) DEFAULT NULL,
  `txt_credit_approver_id_id` int(11) DEFAULT NULL,
  `txt_default_reviewer_id_id` int(11) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  `txt_manager_login_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `txt_login_id` (`txt_login_id`),
  KEY `sec_user_ma_txt_log_cd1f93_idx` (`txt_login_id`),
  KEY `sec_user_ma_cod_rec_5cd58e_idx` (`cod_rec_status`),
  KEY `sec_user_master_cod_credit_officer_l_6214c6bb_fk_mst_credi` (`cod_credit_officer_level_id`),
  KEY `sec_user_master_cod_department_id_bcb938a4_fk_mst_departments_id` (`cod_department_id`),
  KEY `sec_user_master_cod_language_id_31399352_fk_mst_languages_id` (`cod_language_id`),
  KEY `sec_user_master_cod_user_designation_9c1ccd87_fk_mst_user_` (`cod_user_designation_id`),
  KEY `sec_user_master_txt_credit_approver__d3e25c31_fk_sec_user_` (`txt_credit_approver_id_id`),
  KEY `sec_user_master_txt_default_reviewer_568935e9_fk_sec_user_` (`txt_default_reviewer_id_id`),
  KEY `sec_user_master_txt_last_checker_id__ab44b895_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `sec_user_master_txt_last_maker_id_id_18d63df3_fk_sec_user_` (`txt_last_maker_id_id`),
  KEY `sec_user_master_txt_manager_login_id_15ec5a67_fk_sec_user_` (`txt_manager_login_id_id`),
  CONSTRAINT `sec_user_master_cod_credit_officer_l_6214c6bb_fk_mst_credi` FOREIGN KEY (`cod_credit_officer_level_id`) REFERENCES `mst_credit_officer_levels` (`id`),
  CONSTRAINT `sec_user_master_cod_department_id_bcb938a4_fk_mst_departments_id` FOREIGN KEY (`cod_department_id`) REFERENCES `mst_departments` (`id`),
  CONSTRAINT `sec_user_master_cod_language_id_31399352_fk_mst_languages_id` FOREIGN KEY (`cod_language_id`) REFERENCES `mst_languages` (`id`),
  CONSTRAINT `sec_user_master_cod_user_designation_9c1ccd87_fk_mst_user_` FOREIGN KEY (`cod_user_designation_id`) REFERENCES `mst_user_designation` (`id`),
  CONSTRAINT `sec_user_master_txt_credit_approver__d3e25c31_fk_sec_user_` FOREIGN KEY (`txt_credit_approver_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `sec_user_master_txt_default_reviewer_568935e9_fk_sec_user_` FOREIGN KEY (`txt_default_reviewer_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `sec_user_master_txt_last_checker_id__ab44b895_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `sec_user_master_txt_last_maker_id_id_18d63df3_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `sec_user_master_txt_manager_login_id_15ec5a67_fk_sec_user_` FOREIGN KEY (`txt_manager_login_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_master`
--

LOCK TABLES `sec_user_master` WRITE;
/*!40000 ALTER TABLE `sec_user_master` DISABLE KEYS */;
INSERT INTO `sec_user_master` VALUES ('2025-12-26 15:18:33.673000',1,'manoj','pbkdf2_sha256$600000$8NBiuDALwjWhQ1vMJ9KzuA$7jbBdjUdmBsZLU/ZEVnY0klF6dLTasnUaqBzXQg5amE=','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sec_user_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_master_groups`
--

DROP TABLE IF EXISTS `sec_user_master_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_master_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `secusermaster_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sec_user_master_groups_secusermaster_id_group_id_88836932_uniq` (`secusermaster_id`,`group_id`),
  KEY `sec_user_master_groups_group_id_96abbd13_fk_auth_group_id` (`group_id`),
  CONSTRAINT `sec_user_master_grou_secusermaster_id_eaa8a81c_fk_sec_user_` FOREIGN KEY (`secusermaster_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `sec_user_master_groups_group_id_96abbd13_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_master_groups`
--

LOCK TABLES `sec_user_master_groups` WRITE;
/*!40000 ALTER TABLE `sec_user_master_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user_master_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_master_user_permissions`
--

DROP TABLE IF EXISTS `sec_user_master_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_master_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `secusermaster_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sec_user_master_user_per_secusermaster_id_permiss_c86fe3f7_uniq` (`secusermaster_id`,`permission_id`),
  KEY `sec_user_master_user_permission_id_be9e7cd8_fk_auth_perm` (`permission_id`),
  CONSTRAINT `sec_user_master_user_permission_id_be9e7cd8_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `sec_user_master_user_secusermaster_id_8d6210f6_fk_sec_user_` FOREIGN KEY (`secusermaster_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_master_user_permissions`
--

LOCK TABLES `sec_user_master_user_permissions` WRITE;
/*!40000 ALTER TABLE `sec_user_master_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user_master_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_preferences`
--

DROP TABLE IF EXISTS `sec_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_preferences` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `txt_photos_default_dir` varchar(255) DEFAULT NULL,
  `txt_docs_default_dir` varchar(255) DEFAULT NULL,
  `bin_user_profile_pic` varchar(255) DEFAULT NULL,
  `cod_css_theme` varchar(4) DEFAULT NULL,
  `txt_login_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `txt_login_id_id` (`txt_login_id_id`),
  CONSTRAINT `sec_user_preferences_txt_login_id_id_1536b97b_fk_sec_user_` FOREIGN KEY (`txt_login_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_preferences`
--

LOCK TABLES `sec_user_preferences` WRITE;
/*!40000 ALTER TABLE `sec_user_preferences` DISABLE KEYS */;
INSERT INTO `sec_user_preferences` VALUES (1,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `sec_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_pswd_hist`
--

DROP TABLE IF EXISTS `sec_user_pswd_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_pswd_hist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `txt_user_signature` varchar(255) NOT NULL,
  `dat_passwd_from` date DEFAULT NULL,
  `dat_passwd_to` date DEFAULT NULL,
  `txt_pswd_changed_by` varchar(48) DEFAULT NULL,
  `txt_login_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sec_user_pswd_hist` (`txt_login_id_id`,`txt_user_signature`,`dat_passwd_from`),
  CONSTRAINT `sec_user_pswd_hist_txt_login_id_id_477b47d8_fk_sec_user_` FOREIGN KEY (`txt_login_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_pswd_hist`
--

LOCK TABLES `sec_user_pswd_hist` WRITE;
/*!40000 ALTER TABLE `sec_user_pswd_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user_pswd_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_role_disclosures`
--

DROP TABLE IF EXISTS `sec_user_role_disclosures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_role_disclosures` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_disclosure` varchar(4) NOT NULL,
  `num_sequence` smallint(6) DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_user_role_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sec_user_role_disclosure_cod_disclosure_cod_user__ba78076e_uniq` (`cod_disclosure`,`cod_user_role_id`,`cod_rec_status`),
  KEY `sec_user_role_disclo_cod_user_role_id_259b1e28_fk_sec_user_` (`cod_user_role_id`),
  KEY `sec_user_role_disclo_txt_last_checker_id__9d424bf1_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `sec_user_role_disclo_txt_last_maker_id_id_e0e601ac_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `sec_user_role_disclo_cod_user_role_id_259b1e28_fk_sec_user_` FOREIGN KEY (`cod_user_role_id`) REFERENCES `sec_user_roles` (`id`),
  CONSTRAINT `sec_user_role_disclo_txt_last_checker_id__9d424bf1_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `sec_user_role_disclo_txt_last_maker_id_id_e0e601ac_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_role_disclosures`
--

LOCK TABLES `sec_user_role_disclosures` WRITE;
/*!40000 ALTER TABLE `sec_user_role_disclosures` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user_role_disclosures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_role_menus`
--

DROP TABLE IF EXISTS `sec_user_role_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_role_menus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_menu_option` varchar(4) NOT NULL,
  `num_display_order` smallint(6) DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_user_role_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sec_user_role_menus_cod_user_role_id_cod_men_aa994df1_uniq` (`cod_user_role_id`,`cod_menu_option`,`cod_rec_status`),
  KEY `sec_user_role_menus_txt_last_checker_id__06a259ce_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `sec_user_role_menus_txt_last_maker_id_id_521bab10_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `sec_user_role_menus_cod_user_role_id_578510d4_fk_sec_user_` FOREIGN KEY (`cod_user_role_id`) REFERENCES `sec_user_roles` (`id`),
  CONSTRAINT `sec_user_role_menus_txt_last_checker_id__06a259ce_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `sec_user_role_menus_txt_last_maker_id_id_521bab10_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_role_menus`
--

LOCK TABLES `sec_user_role_menus` WRITE;
/*!40000 ALTER TABLE `sec_user_role_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user_role_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_roles`
--

DROP TABLE IF EXISTS `sec_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_user_role` varchar(4) NOT NULL,
  `txt_user_role_desc` varchar(48) DEFAULT NULL,
  `cod_home_menu` varchar(4) DEFAULT NULL,
  `flg_hr_admin` varchar(1) NOT NULL,
  `flg_sec_admin` varchar(1) NOT NULL,
  `flg_sysadmin` varchar(1) DEFAULT NULL,
  `flg_self_service_role` varchar(1) NOT NULL,
  `flg_default_value` varchar(1) NOT NULL,
  `num_time_start_wkday` smallint(6) NOT NULL,
  `num_time_end_wkday` smallint(6) NOT NULL,
  `num_time_start_wkend` smallint(6) NOT NULL,
  `num_time_end_wkend` smallint(6) NOT NULL,
  `num_time_start_holiday` smallint(6) NOT NULL,
  `num_time_end_holiday` smallint(6) NOT NULL,
  `num_seconds_inactivity_timeout` smallint(6) NOT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sec_user_roles_cod_user_role_cod_rec_status_dfd326df_uniq` (`cod_user_role`,`cod_rec_status`),
  KEY `sec_user_roles_txt_last_checker_id__3cd3b0ac_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `sec_user_roles_txt_last_maker_id_id_747028f5_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `sec_user_roles_txt_last_checker_id__3cd3b0ac_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `sec_user_roles_txt_last_maker_id_id_747028f5_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_roles`
--

LOCK TABLES `sec_user_roles` WRITE;
/*!40000 ALTER TABLE `sec_user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_x_roles`
--

DROP TABLE IF EXISTS `sec_user_x_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_x_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `txt_login_id` varchar(48) NOT NULL,
  `dat_time_disclosure_ack` datetime(6) DEFAULT NULL,
  `cod_rec_status` varchar(1) NOT NULL,
  `dat_last_maker` date DEFAULT NULL,
  `dat_last_checker` date DEFAULT NULL,
  `cod_user_role_id` bigint(20) DEFAULT NULL,
  `txt_last_checker_id_id` int(11) DEFAULT NULL,
  `txt_last_maker_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sec_user_x_roles_txt_login_id_cod_user_ro_55be83a1_uniq` (`txt_login_id`,`cod_user_role_id`,`cod_rec_status`),
  KEY `sec_user_x_roles_cod_user_role_id_a637134c_fk_sec_user_roles_id` (`cod_user_role_id`),
  KEY `sec_user_x_roles_txt_last_checker_id__a05ceb99_fk_sec_user_` (`txt_last_checker_id_id`),
  KEY `sec_user_x_roles_txt_last_maker_id_id_7bbf3060_fk_sec_user_` (`txt_last_maker_id_id`),
  CONSTRAINT `sec_user_x_roles_cod_user_role_id_a637134c_fk_sec_user_roles_id` FOREIGN KEY (`cod_user_role_id`) REFERENCES `sec_user_roles` (`id`),
  CONSTRAINT `sec_user_x_roles_txt_last_checker_id__a05ceb99_fk_sec_user_` FOREIGN KEY (`txt_last_checker_id_id`) REFERENCES `sec_user_master` (`id`),
  CONSTRAINT `sec_user_x_roles_txt_last_maker_id_id_7bbf3060_fk_sec_user_` FOREIGN KEY (`txt_last_maker_id_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_x_roles`
--

LOCK TABLES `sec_user_x_roles` WRITE;
/*!40000 ALTER TABLE `sec_user_x_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user_x_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_sec_user_` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_sec_user_` FOREIGN KEY (`user_id`) REFERENCES `sec_user_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2Njg1NDE5MCwiaWF0IjoxNzY2NzY3NzkwLCJqdGkiOiI3ZjA5NmQ4NmY0ZDY0NDQxOTZhNzhhZDUyY2M0ZWQzMSIsInVzZXJfaWQiOiIxIn0.8kzv_nK2POlGm9dnLntWINdzrA4svZfErYCdpHSVogk','2025-12-26 16:49:50.261932','2025-12-27 16:49:50.000000',1,'7f096d86f4d6444196a78ad52cc4ed31'),(2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2Njg5OTIxMSwiaWF0IjoxNzY2ODEyODExLCJqdGkiOiIyNjE3NzA1YjU4NGY0NDE0YTFmMzhmMzJlNjRhNzY0YyIsInVzZXJfaWQiOiIxIn0.-ebEzUQontW08fwzAHYUM9ewrnNh1IXN13WYdb1vLwQ','2025-12-27 05:20:11.044026','2025-12-28 05:20:11.000000',1,'2617705b584f4414a1f38f32e64a764c'),(3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NjkwMzAwMCwiaWF0IjoxNzY2ODE2NjAwLCJqdGkiOiJmYTcyY2FiNTgwZDM0NzBhYjhiMDE4ODExYzg0ODlhZiIsInVzZXJfaWQiOiIxIn0.av0pEdH4Muyc7EgXDehFZ3RSXw6iGuq3dWo_9RjF3xk','2025-12-27 06:23:20.164847','2025-12-28 06:23:20.000000',1,'fa72cab580d3470ab8b018811c8489af'),(4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NjkxNjg0MiwiaWF0IjoxNzY2ODMwNDQyLCJqdGkiOiJhMWM2YjllY2Q2OGM0ZjZlYjk3NjFhNGMzZDAyYzU0YyIsInVzZXJfaWQiOiIxIn0.ZgYc4z2FSNEscJWxiV69mIrBhbp9xKAJuo9CLD3lYTo','2025-12-27 10:14:02.012176','2025-12-28 10:14:02.000000',1,'a1c6b9ecd68c4f6eb9761a4c3d02c54c'),(5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NjkyMDQ5NiwiaWF0IjoxNzY2ODM0MDk2LCJqdGkiOiJmMmQ0Yjg2OTFjMjQ0OGEyYTkwOTg4Yjg0Njc0MWMyNiIsInVzZXJfaWQiOiIxIn0.uFAQKy3D6-7_D31DqiDt6zkNXcUE1qznbNO3G-_yizs','2025-12-27 11:14:56.210197','2025-12-28 11:14:56.000000',1,'f2d4b8691c2448a2a90988b846741c26'),(6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NjkyMjk1NCwiaWF0IjoxNzY2ODM2NTU0LCJqdGkiOiIxMTM1NjA1OTAxMjc0NzNlYWU3NzI3NzA1ZDkzNDA1ZSIsInVzZXJfaWQiOiIxIn0.XFdn7N0dSp51HCNgaD-RPrRs07sTTEo2bnNVc3mSEPU','2025-12-27 11:55:54.655502','2025-12-28 11:55:54.000000',1,'113560590127473eae7727705d93405e'),(7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NjkyNTk5NywiaWF0IjoxNzY2ODM5NTk3LCJqdGkiOiI5MWFjZDk2MDhiMjg0YjM1ODZlMTM2YzMwM2UwOGM0NyIsInVzZXJfaWQiOiIxIn0.o7wdIR6VcxrDb8kf7IBY29v8X7YBV75tspROoOBWwcw','2025-12-27 12:46:37.833129','2025-12-28 12:46:37.000000',1,'91acd9608b284b3586e136c303e08c47'),(8,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NjkyNjAyMywiaWF0IjoxNzY2ODM5NjIzLCJqdGkiOiI0OTY1MmEwZDVkNjk0NzM2YmFiMzBiMTAxNTY2OTAxYiIsInVzZXJfaWQiOiIxIn0.WcCQho-3RicyYlnr-II0YnJWtoNSc9aeuFedPYEVA_8','2025-12-27 12:47:03.605511','2025-12-28 12:47:03.000000',1,'49652a0d5d694736bab30b101566901b'),(9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NjkyNjI2MCwiaWF0IjoxNzY2ODM5ODYwLCJqdGkiOiI5YWY0ODgyYmIyNDk0Y2I3OTBjOWFjMWJlYTlmNmE4ZCIsInVzZXJfaWQiOiIxIn0.dTXvz0F45psYSr0MiUm5zTnPOB_TZHqUYVTFWR4qD4k','2025-12-27 12:51:00.561906','2025-12-28 12:51:00.000000',1,'9af4882bb2494cb790c9ac1bea9f6a8d'),(10,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NjkzMjIxNCwiaWF0IjoxNzY2ODQ1ODE0LCJqdGkiOiIxZWM0NjE4MWU3ZjE0NzkyYTVhZTUzNWI2ODI2NGY3MiIsInVzZXJfaWQiOiIxIn0.YabzIXxL3KwypF6_KvQBnJLG1SjD3ZhtQpgMcP0HZdg','2025-12-27 14:30:14.970614','2025-12-28 14:30:14.000000',1,'1ec46181e7f14792a5ae535b68264f72');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-29  7:35:10
