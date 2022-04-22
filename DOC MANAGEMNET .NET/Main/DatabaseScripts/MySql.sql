-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: documentmanagement12356
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20211004133103_Init','5.0.10'),('20211004133402_RunSqlDataScript','5.0.10');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DeletedDate` datetime(6) DEFAULT NULL,
  `DeletedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('20914b75-d50c-42f9-b624-d430b968ea2c','Batch records',NULL,'2021-01-26 11:41:31.827240','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-26 11:41:32','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('40e84cc7-a98d-4781-ab3d-463b4980bbd7','Document batch manufacturing reviews',NULL,'2021-01-26 11:42:31.453532','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-26 11:42:31','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('7b0b316f-d60c-4e55-be83-25d1b8aa8f62','Resume','Resume All Employees','2021-01-03 14:32:47.826060','00000000-0000-0000-0000-000000000000','2021-01-03 14:32:48','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('80654b51-04bd-4896-ac6b-ea0c5a4d339a','Quality assurance document',NULL,'2021-01-26 11:41:16.887040','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-26 11:41:17','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('861ba2f2-d77a-4ad6-ba45-7d97938330bc','Conduct ongoing training',NULL,'2021-01-26 11:42:15.307907','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-26 11:42:15','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('8839ec8c-608b-411b-9a29-7ee5763334f3','HR Policies','Microsoft Defender for Endpoint is a holistic, cloud delivered endpoint security solution that includes risk-based vulnerability management and assessment, attack surface reduction, behavioral based and cloud-powered next generation protection, endpoint detection and response (EDR), automatic investigation and remediation, managed hunting services, rich APIs, and unified security management.','2021-01-09 15:08:27.798419','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-09 15:08:28','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('8a38af04-2431-4f60-acbc-515727ad3ea5','Confidancial',NULL,'2021-01-26 11:43:11.582543','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-26 11:43:12','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('93051459-18aa-49a9-af08-36dbbf53a651','SOP production','Microsoft Defender for Endpoint is a holistic, cloud delivered endpoint security solution that includes risk-based vulnerability management and assessment, attack surface reduction, behavioral based and cloud-powered next generation protection, endpoint detection and response (EDR), automatic investigation and remediation, managed hunting services, rich APIs, and unified security management.','2021-01-09 15:08:52.055158','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-09 15:08:52','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('dd53b3d5-4ad4-40f8-881d-164f4119da76','Logbooks',NULL,'2021-01-26 11:41:47.956431','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-26 11:41:48','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentaudittrails`
--

DROP TABLE IF EXISTS `documentaudittrails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentaudittrails` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DocumentId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `OperationName` int NOT NULL,
  `AssignToUserId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `AssignToRoleId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DeletedDate` datetime(6) DEFAULT NULL,
  `DeletedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_DocumentAuditTrails_AssignToRoleId` (`AssignToRoleId`),
  KEY `IX_DocumentAuditTrails_AssignToUserId` (`AssignToUserId`),
  KEY `IX_DocumentAuditTrails_CreatedBy` (`CreatedBy`),
  KEY `IX_DocumentAuditTrails_DocumentId` (`DocumentId`),
  CONSTRAINT `FK_DocumentAuditTrails_Documents_DocumentId` FOREIGN KEY (`DocumentId`) REFERENCES `documents` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_DocumentAuditTrails_Roles_AssignToRoleId` FOREIGN KEY (`AssignToRoleId`) REFERENCES `roles` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_DocumentAuditTrails_Users_AssignToUserId` FOREIGN KEY (`AssignToUserId`) REFERENCES `users` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_DocumentAuditTrails_Users_CreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentaudittrails`
--

LOCK TABLES `documentaudittrails` WRITE;
/*!40000 ALTER TABLE `documentaudittrails` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentaudittrails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentrolepermissions`
--

DROP TABLE IF EXISTS `documentrolepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentrolepermissions` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DocumentId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `RoleId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `StartDate` datetime(6) DEFAULT NULL,
  `EndDate` datetime(6) DEFAULT NULL,
  `IsTimeBound` tinyint(1) NOT NULL,
  `IsAllowDownload` tinyint(1) NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DeletedDate` datetime(6) DEFAULT NULL,
  `DeletedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_DocumentRolePermissions_CreatedBy` (`CreatedBy`),
  KEY `IX_DocumentRolePermissions_DocumentId` (`DocumentId`),
  KEY `IX_DocumentRolePermissions_RoleId` (`RoleId`),
  CONSTRAINT `FK_DocumentRolePermissions_Documents_DocumentId` FOREIGN KEY (`DocumentId`) REFERENCES `documents` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_DocumentRolePermissions_Roles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_DocumentRolePermissions_Users_CreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentrolepermissions`
--

LOCK TABLES `documentrolepermissions` WRITE;
/*!40000 ALTER TABLE `documentrolepermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentrolepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `CategoryId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DeletedDate` datetime(6) DEFAULT NULL,
  `DeletedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Documents_CategoryId` (`CategoryId`),
  KEY `IX_Documents_CreatedBy` (`CreatedBy`),
  KEY `IX_Documents_Url` (`Url`),
  CONSTRAINT `FK_Documents_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Documents_Users_CreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentuserpermissions`
--

DROP TABLE IF EXISTS `documentuserpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentuserpermissions` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DocumentId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `UserId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `StartDate` datetime(6) DEFAULT NULL,
  `EndDate` datetime(6) DEFAULT NULL,
  `IsTimeBound` tinyint(1) NOT NULL,
  `IsAllowDownload` tinyint(1) NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DeletedDate` datetime(6) DEFAULT NULL,
  `DeletedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_DocumentUserPermissions_CreatedBy` (`CreatedBy`),
  KEY `IX_DocumentUserPermissions_DocumentId` (`DocumentId`),
  KEY `IX_DocumentUserPermissions_UserId` (`UserId`),
  CONSTRAINT `FK_DocumentUserPermissions_Documents_DocumentId` FOREIGN KEY (`DocumentId`) REFERENCES `documents` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_DocumentUserPermissions_Users_CreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `users` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_DocumentUserPermissions_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentuserpermissions`
--

LOCK TABLES `documentuserpermissions` WRITE;
/*!40000 ALTER TABLE `documentuserpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentuserpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginaudits`
--

DROP TABLE IF EXISTS `loginaudits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginaudits` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `UserName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `LoginTime` datetime(6) NOT NULL,
  `RemoteIP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Provider` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Latitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Longitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginaudits`
--

LOCK TABLES `loginaudits` WRITE;
/*!40000 ALTER TABLE `loginaudits` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginaudits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nlog`
--

DROP TABLE IF EXISTS `nlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nlog` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `MachineName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Logged` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Level` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Logger` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Callsite` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nlog`
--

LOCK TABLES `nlog` WRITE;
/*!40000 ALTER TABLE `nlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `nlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations`
--

DROP TABLE IF EXISTS `operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operations` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DeletedDate` datetime(6) DEFAULT NULL,
  `DeletedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES ('0913b517-a5b2-4ec1-8b61-af374162df9a','Download','2021-10-06 11:44:24.533819','4b352b37-332a-40c6-ab05-e38fcf109719','2021-10-06 11:44:24','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('31b90345-4a48-4d7e-b11e-1d513493243b','Edit','2020-11-04 18:29:51.750360','00000000-0000-0000-0000-000000000000','2020-12-10 21:15:37','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('6db3646c-77aa-430c-b259-c8643476935e','Delete','2020-11-10 15:39:48.863845','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('80120352-300f-4115-a203-d1758ac65241','List','2020-12-11 13:14:35.628961','00000000-0000-0000-0000-000000000000','2020-12-27 20:32:05','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('9c21309b-e23f-4267-81e5-8f7e8329515b','View','2021-10-06 11:44:19.795618','4b352b37-332a-40c6-ab05-e38fcf109719','2021-10-06 11:44:20','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('aabbd1f7-e491-42da-8117-388bc23d19f4','Share','2021-10-06 11:44:28.673092','4b352b37-332a-40c6-ab05-e38fcf109719','2021-10-06 11:44:29','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('e887e9fe-cba3-4ed1-995b-506909327182','Add','2020-11-10 15:39:38.758927','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0);
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roleclaims`
--

DROP TABLE IF EXISTS `roleclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roleclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `OperationId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ScreenId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `RoleId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_RoleClaims_OperationId` (`OperationId`),
  KEY `IX_RoleClaims_RoleId` (`RoleId`),
  KEY `IX_RoleClaims_ScreenId` (`ScreenId`),
  CONSTRAINT `FK_RoleClaims_Operations_OperationId` FOREIGN KEY (`OperationId`) REFERENCES `operations` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_RoleClaims_Roles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_RoleClaims_Screens_ScreenId` FOREIGN KEY (`ScreenId`) REFERENCES `screens` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roleclaims`
--

LOCK TABLES `roleclaims` WRITE;
/*!40000 ALTER TABLE `roleclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `roleclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `Name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('185c414b-9c32-4bb1-a1f4-9a3ea0a1ab1b',0,'Manager','Manager','a1c94855-8132-4c1a-af4b-aff603eff9b2'),('49e35563-4e7e-4607-9543-6208abd3b89d',0,'Super Admin','Super Admin','563c062c-d1ed-4cea-b470-a5dca2b34988'),('ca8c2198-c488-43c3-b573-73e0e313c2f4',0,'External','External','2ae107ce-181f-48c3-a89c-487a5790014d'),('cb2ef8de-afac-44d1-8cca-cf93ea034fae',0,'HOD','HOD','7f112c15-a435-47a9-ae71-806ea4227887'),('d7b7d555-2fa8-45bb-a3e8-e8320d272f99',0,'Employee','Employee','03899268-b245-499f-add4-6532ddb3df43');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screenoperations`
--

DROP TABLE IF EXISTS `screenoperations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screenoperations` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `OperationId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ScreenId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DeletedDate` datetime(6) DEFAULT NULL,
  `DeletedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ScreenOperations_OperationId` (`OperationId`),
  KEY `IX_ScreenOperations_ScreenId` (`ScreenId`),
  CONSTRAINT `FK_ScreenOperations_Operations_OperationId` FOREIGN KEY (`OperationId`) REFERENCES `operations` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ScreenOperations_Screens_ScreenId` FOREIGN KEY (`ScreenId`) REFERENCES `screens` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenoperations`
--

LOCK TABLES `screenoperations` WRITE;
/*!40000 ALTER TABLE `screenoperations` DISABLE KEYS */;
INSERT INTO `screenoperations` VALUES ('15418a70-b443-4771-9b66-2276802ec7fd','6db3646c-77aa-430c-b259-c8643476935e','385a1d6d-fe7b-467c-9fc0-f219718f881d','2021-01-02 12:19:09.175422','00000000-0000-0000-0000-000000000000','2021-01-02 12:19:09','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('190dd8a6-1762-4a28-a591-f0c0280a06b9','80120352-300f-4115-a203-d1758ac65241','e55c897a-3e14-4359-97dd-2f1740c55d6d','2021-01-05 23:14:03.921158','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-05 23:14:04','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('2ae591a6-a096-4a03-82a8-fee64df1bcde','e887e9fe-cba3-4ed1-995b-506909327182','c7b824e8-53f5-40db-abb2-aa44a0903f5a','2021-01-02 12:22:39.500657','00000000-0000-0000-0000-000000000000','2021-01-02 12:22:40','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('2bac04db-312b-432b-a50b-b21d37dc96b7','e887e9fe-cba3-4ed1-995b-506909327182','54f53830-a496-4541-b075-635ec62c3c22','2020-12-13 10:48:23.931850','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('2e5a9471-a666-475b-bb22-c40068313852','31b90345-4a48-4d7e-b11e-1d513493243b','9ab80541-7434-4824-b100-3dfa2b5cd604','2021-01-02 12:34:08.244862','00000000-0000-0000-0000-000000000000','2021-01-02 12:34:08','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('37ce6a11-51d0-443b-95ac-38b28436620f','80120352-300f-4115-a203-d1758ac65241','f46df66e-4e43-4474-b08a-e756b7dd32f4','2021-01-02 12:19:04.818269','00000000-0000-0000-0000-000000000000','2021-01-02 12:19:05','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('45914de2-4169-44d4-84f7-ef1c55ca9ddf','31b90345-4a48-4d7e-b11e-1d513493243b','088189ea-7f6d-47ff-86b7-199531210269','2021-01-05 23:43:59.041913','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-05 23:43:59','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('47ad7c6a-976e-4f98-85d6-29f2c49cbf9e','31b90345-4a48-4d7e-b11e-1d513493243b','69d39b03-49dd-4532-a74e-6b36515b7a7e','2021-01-04 20:59:28.078158','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-04 20:59:28','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('4b115be9-f2e4-4e86-9d80-026c80d48e02','80120352-300f-4115-a203-d1758ac65241','ef99dc91-9002-431e-935e-490c87d5165d','2021-04-19 10:23:16.682138','4b352b37-332a-40c6-ab05-e38fcf109719','2021-04-19 10:23:17','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('4c2f9716-9d54-4249-8c51-a9c087c48757','31b90345-4a48-4d7e-b11e-1d513493243b','a1c313b9-edaf-4c21-a58e-82b80f971659','2020-12-13 10:55:54.610572','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('558737bd-2cae-44e5-b911-4116c232f8f0','80120352-300f-4115-a203-d1758ac65241','9ab80541-7434-4824-b100-3dfa2b5cd604','2021-01-02 12:34:10.763006','00000000-0000-0000-0000-000000000000','2021-01-02 12:34:11','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('57e0ccce-9c60-409a-8b15-5b4bea385e27','80120352-300f-4115-a203-d1758ac65241','c7b824e8-53f5-40db-abb2-aa44a0903f5a','2021-01-02 12:22:41.336194','00000000-0000-0000-0000-000000000000','2021-01-02 12:22:41','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('6c177a5f-ea69-44ae-8843-ca68c86d3c76','31b90345-4a48-4d7e-b11e-1d513493243b','c7b824e8-53f5-40db-abb2-aa44a0903f5a','2021-01-02 12:22:38.654686','00000000-0000-0000-0000-000000000000','2021-01-02 12:22:39','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('720e3bfa-e9d8-4ce1-886e-24dd1689e0b5','e887e9fe-cba3-4ed1-995b-506909327182','662e3de3-ea4b-4539-a82d-d237afbda201','2020-12-13 10:56:08.806119','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('73fe00d4-c2d5-4a90-91b6-411f699ca390','31b90345-4a48-4d7e-b11e-1d513493243b','385a1d6d-fe7b-467c-9fc0-f219718f881d','2020-12-13 10:56:13.876253','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('751cc648-607c-4774-8c9a-223a141b4a0b','80120352-300f-4115-a203-d1758ac65241','088189ea-7f6d-47ff-86b7-199531210269','2021-01-02 14:35:08.250567','00000000-0000-0000-0000-000000000000','2021-01-02 14:35:08','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('7d019fbf-449b-46a7-b99d-c1ca52d141ac','e887e9fe-cba3-4ed1-995b-506909327182','9ab80541-7434-4824-b100-3dfa2b5cd604','2021-01-02 12:34:09.137794','00000000-0000-0000-0000-000000000000','2021-01-02 12:34:09','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('7fff920a-e7ae-47b3-9c22-71e9ff465496','e887e9fe-cba3-4ed1-995b-506909327182','385a1d6d-fe7b-467c-9fc0-f219718f881d','2020-12-13 10:56:12.389557','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('92ed5f9e-f6e9-41ca-8944-828f37a960a2','e887e9fe-cba3-4ed1-995b-506909327182','a1c313b9-edaf-4c21-a58e-82b80f971659','2020-12-13 10:56:01.993989','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('9891ec18-7642-4757-ab9c-2eec31a1102a','31b90345-4a48-4d7e-b11e-1d513493243b','662e3de3-ea4b-4539-a82d-d237afbda201','2020-12-13 10:56:07.855834','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('a086bb89-3c22-47cc-b023-e3cad8ed8c27','80120352-300f-4115-a203-d1758ac65241','c86094af-e800-4ec5-8764-30fc3e637ea6','2021-01-02 16:23:54.854673','00000000-0000-0000-0000-000000000000','2021-01-02 16:23:55','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('ab6364b1-5e15-4b02-a0a7-2e716fee2b9f','80120352-300f-4115-a203-d1758ac65241','7618aef0-34fa-48af-ab1a-7ef4d9e49896','2021-01-04 00:38:28.620475','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-04 00:38:29','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('adb60e73-183e-4b91-910e-82bd8fefcc8e','6db3646c-77aa-430c-b259-c8643476935e','9ab80541-7434-4824-b100-3dfa2b5cd604','2021-01-02 12:34:09.930488','00000000-0000-0000-0000-000000000000','2021-01-02 12:34:10','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('ae408c5d-c007-457d-939f-b378e1143ba0','6db3646c-77aa-430c-b259-c8643476935e','662e3de3-ea4b-4539-a82d-d237afbda201','2020-12-13 10:56:09.776028','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('b5a18aef-777a-43ab-9af4-4e94c25c1e12','80120352-300f-4115-a203-d1758ac65241','a1c313b9-edaf-4c21-a58e-82b80f971659','2020-12-13 10:56:06.257498','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('b6890d5a-98fb-4263-b2ce-70776c4b6d66','80120352-300f-4115-a203-d1758ac65241','385a1d6d-fe7b-467c-9fc0-f219718f881d','2021-01-02 12:19:10.129565','00000000-0000-0000-0000-000000000000','2021-01-02 12:19:10','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('b898b2d6-2a28-4ce4-b131-5464413cc192','31b90345-4a48-4d7e-b11e-1d513493243b','54f53830-a496-4541-b075-635ec62c3c22','2020-12-13 10:48:57.259051','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('c41f73bf-7565-4c78-ba6b-af5c80a09287','6db3646c-77aa-430c-b259-c8643476935e','a1c313b9-edaf-4c21-a58e-82b80f971659','2020-12-13 10:56:04.405371','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('ccb7dc0b-af8b-4e40-8c19-9f3fceed14f5','6db3646c-77aa-430c-b259-c8643476935e','54f53830-a496-4541-b075-635ec62c3c22','2020-12-13 10:49:10.849220','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('d203f3cd-4b88-4eb3-a810-7b2d705e57be','6db3646c-77aa-430c-b259-c8643476935e','c7b824e8-53f5-40db-abb2-aa44a0903f5a','2021-01-02 12:22:40.447641','00000000-0000-0000-0000-000000000000','2021-01-02 12:22:40','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('d58d7288-8ead-460f-a560-9d53e492c2fe','80120352-300f-4115-a203-d1758ac65241','54f53830-a496-4541-b075-635ec62c3c22','2020-12-13 11:43:31.938649','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('d6e97da8-1c88-414a-bc42-ccd558881427','9c21309b-e23f-4267-81e5-8f7e8329515b','9ab80541-7434-4824-b100-3dfa2b5cd604','2021-10-06 11:46:15.487535','4b352b37-332a-40c6-ab05-e38fcf109719','2021-10-06 11:46:15','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('e1219b12-0865-4465-9cde-e2cdeacc4fd9','80120352-300f-4115-a203-d1758ac65241','b293b493-bfc9-4bfb-b4a4-67c05ae9b0b5','2021-01-02 12:18:45.135145','00000000-0000-0000-0000-000000000000','2021-01-02 12:18:45','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('f5493206-0dd7-4691-99f3-d1fdc3d67983','80120352-300f-4115-a203-d1758ac65241','662e3de3-ea4b-4539-a82d-d237afbda201','2020-12-13 10:56:10.890510','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('fa1c29d0-0694-445d-bb36-c4dd35a24e9c','0913b517-a5b2-4ec1-8b61-af374162df9a','9ab80541-7434-4824-b100-3dfa2b5cd604','2021-10-06 11:46:22.630373','4b352b37-332a-40c6-ab05-e38fcf109719','2021-10-06 11:46:22','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('ff2f1364-72ff-44e5-87bf-f2c60168e8e1','aabbd1f7-e491-42da-8117-388bc23d19f4','9ab80541-7434-4824-b100-3dfa2b5cd604','2021-10-06 11:46:25.946875','4b352b37-332a-40c6-ab05-e38fcf109719','2021-10-06 11:46:26','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0);
/*!40000 ALTER TABLE `screenoperations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screens`
--

DROP TABLE IF EXISTS `screens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screens` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DeletedDate` datetime(6) DEFAULT NULL,
  `DeletedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screens`
--

LOCK TABLES `screens` WRITE;
/*!40000 ALTER TABLE `screens` DISABLE KEYS */;
INSERT INTO `screens` VALUES ('088189ea-7f6d-47ff-86b7-199531210269','User_Permission','2021-01-02 23:38:13.225575','00000000-0000-0000-0000-000000000000','2021-10-02 16:46:08','4b352b37-332a-40c6-ab05-e38fcf109719',NULL,'00000000-0000-0000-0000-000000000000',0),('385a1d6d-fe7b-467c-9fc0-f219718f881d','User','2020-11-11 02:41:03.134309','00000000-0000-0000-0000-000000000000','2020-12-10 21:39:12','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('54f53830-a496-4541-b075-635ec62c3c22','Page','2020-11-11 02:40:46.199696','00000000-0000-0000-0000-000000000000','2021-10-02 16:39:31','4b352b37-332a-40c6-ab05-e38fcf109719',NULL,'00000000-0000-0000-0000-000000000000',0),('662e3de3-ea4b-4539-a82d-d237afbda201','Role','2020-11-10 15:41:09.161940','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('69d39b03-49dd-4532-a74e-6b36515b7a7e','Rest_password','2021-01-04 23:24:31.890280','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-06 22:14:15','4b352b37-332a-40c6-ab05-e38fcf109719',NULL,'00000000-0000-0000-0000-000000000000',0),('7618aef0-34fa-48af-ab1a-7ef4d9e49896','Document_Permission','2021-01-04 00:38:21.090427','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-04 00:38:21','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('9ab80541-7434-4824-b100-3dfa2b5cd604','Documents_Library','2021-01-02 18:04:00.685577','00000000-0000-0000-0000-000000000000','2021-10-02 17:09:28','4b352b37-332a-40c6-ab05-e38fcf109719',NULL,'00000000-0000-0000-0000-000000000000',0),('a1c313b9-edaf-4c21-a58e-82b80f971659','Action','2020-11-10 21:10:35.992599','00000000-0000-0000-0000-000000000000','2021-10-02 16:42:57','4b352b37-332a-40c6-ab05-e38fcf109719',NULL,'00000000-0000-0000-0000-000000000000',0),('b293b493-bfc9-4bfb-b4a4-67c05ae9b0b5','Page_Action','2021-01-02 17:42:40.758207','00000000-0000-0000-0000-000000000000','2021-10-02 16:41:30','4b352b37-332a-40c6-ab05-e38fcf109719',NULL,'00000000-0000-0000-0000-000000000000',0),('c7b824e8-53f5-40db-abb2-aa44a0903f5a','Category','2021-01-02 12:22:29.901048','00000000-0000-0000-0000-000000000000','2021-01-02 12:22:30','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('c86094af-e800-4ec5-8764-30fc3e637ea6','My_Documents','2021-01-02 21:53:42.750291','00000000-0000-0000-0000-000000000000','2021-10-02 16:32:54','4b352b37-332a-40c6-ab05-e38fcf109719',NULL,'00000000-0000-0000-0000-000000000000',0),('e55c897a-3e14-4359-97dd-2f1740c55d6d','Document_Audit_Trail','2021-01-05 23:13:52.695135','4b352b37-332a-40c6-ab05-e38fcf109719','2021-01-05 23:13:53','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('ef99dc91-9002-431e-935e-490c87d5165d','Login_Audit','2021-04-19 10:23:08.173979','4b352b37-332a-40c6-ab05-e38fcf109719','2021-04-19 10:23:08','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0),('f46df66e-4e43-4474-b08a-e756b7dd32f4','Role_User','2021-01-02 12:13:32.787281','00000000-0000-0000-0000-000000000000','2021-01-02 12:13:33','00000000-0000-0000-0000-000000000000',NULL,'00000000-0000-0000-0000-000000000000',0);
/*!40000 ALTER TABLE `screens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userclaims`
--

DROP TABLE IF EXISTS `userclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `OperationId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ScreenId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `UserId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_UserClaims_OperationId` (`OperationId`),
  KEY `IX_UserClaims_ScreenId` (`ScreenId`),
  KEY `IX_UserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_UserClaims_Operations_OperationId` FOREIGN KEY (`OperationId`) REFERENCES `operations` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_UserClaims_Screens_ScreenId` FOREIGN KEY (`ScreenId`) REFERENCES `screens` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_UserClaims_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userclaims`
--

LOCK TABLES `userclaims` WRITE;
/*!40000 ALTER TABLE `userclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `userclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogins`
--

DROP TABLE IF EXISTS `userlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogins` (
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderDisplayName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `UserId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_UserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_UserLogins_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogins`
--

LOCK TABLES `userlogins` WRITE;
/*!40000 ALTER TABLE `userlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernotifications`
--

DROP TABLE IF EXISTS `usernotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usernotifications` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `UserId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `IsRead` tinyint(1) NOT NULL,
  `DocumentId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `DeletedDate` datetime(6) DEFAULT NULL,
  `DeletedBy` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_UserNotifications_CreatedBy` (`CreatedBy`),
  KEY `IX_UserNotifications_DocumentId` (`DocumentId`),
  KEY `IX_UserNotifications_UserId` (`UserId`),
  CONSTRAINT `FK_UserNotifications_Documents_DocumentId` FOREIGN KEY (`DocumentId`) REFERENCES `documents` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_UserNotifications_Users_CreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `users` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_UserNotifications_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernotifications`
--

LOCK TABLES `usernotifications` WRITE;
/*!40000 ALTER TABLE `usernotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `UserId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `RoleId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_UserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_UserRoles_Roles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_UserRoles_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES ('4b352b37-332a-40c6-ab05-e38fcf109719','49e35563-4e7e-4607-9543-6208abd3b89d'),('1a5cf5b9-ead8-495c-8719-2d8be776f452','d7b7d555-2fa8-45bb-a3e8-e8320d272f99');
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `FirstName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `LastName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `IsDeleted` tinyint(1) NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1a5cf5b9-ead8-495c-8719-2d8be776f452','Nikunj','Jambukiya',0,'employee@gmail.com','EMPLOYEE@GMAIL.COM','employee@gmail.com','EMPLOYEE@GMAIL.COM',0,'AQAAAAEAACcQAAAAEISmz8S4E4dOhEPhhcQ6xmdJCNeez7fmWB6tXa1h2yKrwD3lO+lX+eKSeKdgPB/Mcw==','HFC3ZVYIMS63F5H6FHWNDUFRLRI4RDEG','63d328a2-6ab2-4157-a4c8-b143894a8467','9904750722',0,0,NULL,1,0),('4b352b37-332a-40c6-ab05-e38fcf109719','Mukesh','Jambukiya',0,'admin@gmail.com','ADMIN@GMAIL.COM','admin@gmail.com','ADMIN@GMAIL.COM',0,'AQAAAAEAACcQAAAAEM60FYHL5RMKNeB+CxCOI41EC8Vsr1B3Dyrrr2BOtZrxz6doL8o6Tv/tYGDRk20t1A==','5D4GQ7LLLVRQJDQFNUGUU763GELSABOJ','4819e213-16af-48e6-b15e-bc680d358295','1234567890',0,0,NULL,1,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertokens`
--

DROP TABLE IF EXISTS `usertokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertokens` (
  `UserId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_UserTokens_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertokens`
--

LOCK TABLES `usertokens` WRITE;
/*!40000 ALTER TABLE `usertokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'documentmanagement12356'
--
/*!50003 DROP PROCEDURE IF EXISTS `NLog_AddEntry_p` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `NLog_AddEntry_p`(
  p_machineName nvarchar(200),
  p_logged datetime(3),
  p_level varchar(5),
  p_message longtext,
  p_logger nvarchar(300),
  p_properties longtext,
  p_callsite nvarchar(300),
  p_exception longtext
)
BEGIN
  INSERT INTO NLog (
	`Id`,
    `MachineName`,
    `Logged`,
    `Level`,
    `Message`,
    `Logger`,
    `Properties`,
    `Callsite`,
    `Exception`
  ) VALUES (
    uuid(),
    p_machineName,
    p_logged,
    p_level,
    p_message,
    p_logger,
    p_properties,
    p_callsite,
    p_exception
  );
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-06 12:18:56
