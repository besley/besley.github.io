CREATE DATABASE  IF NOT EXISTS `wfdesignerdemo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wfdesignerdemo`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: wfdesignerdemo
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `bizappflow`
--

DROP TABLE IF EXISTS `bizappflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bizappflow` (
  `ID` int(11) NOT NULL,
  `AppName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AppInstanceID` varchar(50) NOT NULL,
  `AppInstanceCode` varchar(50) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `ActivityName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ChangedTime` datetime(6) NOT NULL,
  `ChangedUserID` varchar(50) NOT NULL,
  `ChangedUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hrsleave`
--

DROP TABLE IF EXISTS `hrsleave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hrsleave` (
  `ID` int(11) NOT NULL,
  `LeaveType` smallint(6) NOT NULL DEFAULT '0',
  `Days` decimal(18,1) NOT NULL,
  `FromDate` date NOT NULL,
  `ToDate` date NOT NULL,
  `CurrentActivityText` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `CreatedUserID` int(11) NOT NULL,
  `CreatedUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CreatedDate` date NOT NULL,
  `DepManagerRemark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DirectorRemark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DeputyGeneralRemark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `GeneralManagerRemark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hrsleaveopinion`
--

DROP TABLE IF EXISTS `hrsleaveopinion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hrsleaveopinion` (
  `ID` int(11) NOT NULL,
  `AppInstanceID` varchar(50) NOT NULL,
  `ActivityID` varchar(50) DEFAULT NULL,
  `ActivityName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ChangedTime` datetime(6) NOT NULL,
  `ChangedUserID` int(11) NOT NULL,
  `ChangedUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manproductorder`
--

DROP TABLE IF EXISTS `manproductorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manproductorder` (
  `ID` int(11) NOT NULL,
  `OrderCode` varchar(30) DEFAULT NULL,
  `Status` smallint(6) DEFAULT NULL,
  `ProductName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `UnitPrice` decimal(18,2) DEFAULT NULL,
  `TotalPrice` decimal(18,2) DEFAULT NULL,
  `CreatedTime` datetime(6) DEFAULT NULL,
  `CustomerName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Mobile` varchar(30) DEFAULT NULL,
  `Remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LastUpdatedTime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysdepartment`
--

DROP TABLE IF EXISTS `sysdepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysdepartment` (
  `ID` int(11) NOT NULL,
  `DeptCode` varchar(50) NOT NULL,
  `DeptName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ParentID` int(11) NOT NULL,
  `Description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysemployee`
--

DROP TABLE IF EXISTS `sysemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysemployee` (
  `ID` int(11) NOT NULL,
  `DeptID` int(11) NOT NULL,
  `EmpCode` varchar(50) NOT NULL,
  `EmpName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `EMail` varchar(100) DEFAULT NULL,
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysemployeemanager`
--

DROP TABLE IF EXISTS `sysemployeemanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysemployeemanager` (
  `ID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `EmpUserID` int(11) NOT NULL,
  `ManagerID` int(11) NOT NULL,
  `MgrUserID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysresource`
--

DROP TABLE IF EXISTS `sysresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysresource` (
  `ID` int(11) NOT NULL,
  `ResourceType` smallint(6) NOT NULL,
  `ParentResourceID` int(11) NOT NULL,
  `ResourceName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ResourceCode` varchar(100) NOT NULL,
  `OrderNo` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysrole`
--

DROP TABLE IF EXISTS `sysrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysrole` (
  `ID` int(11) NOT NULL,
  `RoleCode` varchar(50) NOT NULL,
  `RoleName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysrolegroupresource`
--

DROP TABLE IF EXISTS `sysrolegroupresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysrolegroupresource` (
  `ID` int(11) NOT NULL,
  `RgType` smallint(6) NOT NULL,
  `RgID` int(11) NOT NULL,
  `ResourceID` int(11) NOT NULL,
  `PermissionType` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysroleuser`
--

DROP TABLE IF EXISTS `sysroleuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysroleuser` (
  `ID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysuser`
--

DROP TABLE IF EXISTS `sysuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysuser` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EMail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysuserresource`
--

DROP TABLE IF EXISTS `sysuserresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysuserresource` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ResourceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmptest`
--

DROP TABLE IF EXISTS `tmptest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmptest` (
  `ID` int(11) NOT NULL,
  `VALUE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wfactivityinstance`
--

DROP TABLE IF EXISTS `wfactivityinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wfactivityinstance` (
  `ID` int(11) NOT NULL,
  `ProcessInstanceID` int(11) NOT NULL,
  `AppName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AppInstanceID` varchar(50) NOT NULL,
  `ProcessGUID` varchar(100) NOT NULL,
  `ActivityGUID` varchar(100) NOT NULL,
  `ActivityName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ActivityCode` varchar(50) DEFAULT NULL,
  `ActivityType` smallint(6) NOT NULL,
  `ActivityState` smallint(6) NOT NULL DEFAULT '0',
  `WorkItemType` smallint(6) NOT NULL DEFAULT '0',
  `AssignedToUserIDs` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AssignedToUserNames` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `BackwardType` smallint(6) DEFAULT NULL,
  `BackSrcActivityInstanceID` int(11) DEFAULT NULL,
  `BackOrgActivityInstanceID` int(11) DEFAULT NULL,
  `GatewayDirectionTypeID` smallint(6) DEFAULT NULL,
  `CanNotRenewInstance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TokensRequired` int(11) NOT NULL DEFAULT '1',
  `TokensHad` int(11) NOT NULL,
  `ComplexType` smallint(6) DEFAULT NULL,
  `MergeType` smallint(6) DEFAULT NULL,
  `MIHostActivityInstanceID` int(11) DEFAULT NULL,
  `CompareType` smallint(6) DEFAULT NULL,
  `CompleteOrder` double DEFAULT NULL,
  `SignForwardType` smallint(6) DEFAULT NULL,
  `NextStepPerformers` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CreatedByUserID` varchar(50) NOT NULL,
  `CreatedByUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CreatedDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OverdueDateTime` datetime(6) DEFAULT NULL,
  `OverdueTreatedDateTime` datetime(6) DEFAULT NULL,
  `LastUpdatedByUserID` varchar(50) DEFAULT NULL,
  `LastUpdatedByUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LastUpdatedDateTime` datetime(6) DEFAULT NULL,
  `EndedDateTime` datetime(6) DEFAULT NULL,
  `EndedByUserID` varchar(50) DEFAULT NULL,
  `EndedByUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `RecordStatusInvalid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RowVersionID` varbinary(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_WfActivityInstance_ProcessInstanceID` (`ProcessInstanceID`),
  CONSTRAINT `FK_WfActivityInstance_ProcessInstanceID` FOREIGN KEY (`ProcessInstanceID`) REFERENCES `wfprocessinstance` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wflog`
--

DROP TABLE IF EXISTS `wflog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wflog` (
  `ID` int(11) NOT NULL,
  `EventTypeID` int(11) NOT NULL,
  `Priority` int(11) NOT NULL,
  `Severity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `StackTrace` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `InnerStackTrace` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `RequestData` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wfprocess`
--

DROP TABLE IF EXISTS `wfprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wfprocess` (
  `ID` int(11) NOT NULL,
  `ProcessGUID` varchar(100) NOT NULL,
  `Version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1',
  `ProcessName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProcessCode` varchar(50) NOT NULL,
  `IsUsing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AppType` varchar(20) DEFAULT NULL,
  `PageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `XmlFileName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `XmlFilePath` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `XmlContent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `StartType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `StartExpression` varchar(100) DEFAULT NULL,
  `Description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EndType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EndExpression` varchar(100) DEFAULT NULL,
  `CreatedDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdatedDateTime` datetime(6) DEFAULT NULL,
  `RowVersionID` varbinary(8) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wfprocessinstance`
--

DROP TABLE IF EXISTS `wfprocessinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wfprocessinstance` (
  `ID` int(11) NOT NULL,
  `ProcessGUID` varchar(100) NOT NULL,
  `ProcessName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1',
  `AppInstanceID` varchar(50) NOT NULL,
  `AppName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AppInstanceCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ProcessState` smallint(6) NOT NULL DEFAULT '0',
  `ParentProcessInstanceID` int(11) DEFAULT '0',
  `ParentProcessGUID` varchar(100) DEFAULT NULL,
  `InvokedActivityInstanceID` int(11) DEFAULT '0',
  `InvokedActivityGUID` varchar(100) DEFAULT NULL,
  `CreatedDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedByUserID` varchar(50) NOT NULL,
  `CreatedByUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `OverdueDateTime` datetime(6) DEFAULT NULL,
  `OverdueTreatedDateTime` datetime(6) DEFAULT NULL,
  `LastUpdatedDateTime` datetime(6) DEFAULT NULL,
  `LastUpdatedByUserID` varchar(50) DEFAULT NULL,
  `LastUpdatedByUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EndedDateTime` datetime(6) DEFAULT NULL,
  `EndedByUserID` varchar(50) DEFAULT NULL,
  `EndedByUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `RecordStatusInvalid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RowVersionID` varbinary(8) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wfprocessvariable`
--

DROP TABLE IF EXISTS `wfprocessvariable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wfprocessvariable` (
  `ID` int(11) NOT NULL,
  `VariableType` varchar(50) NOT NULL,
  `AppInstanceID` varchar(100) NOT NULL,
  `ProcessGUID` varchar(100) NOT NULL,
  `ProcessInstanceID` int(11) NOT NULL,
  `ActivityGUID` varchar(100) DEFAULT NULL,
  `ActivityName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Value` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LastUpdatedDateTime` datetime(6) NOT NULL,
  `RowVersionID` binary(8) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wftasks`
--

DROP TABLE IF EXISTS `wftasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wftasks` (
  `ID` int(11) NOT NULL,
  `ActivityInstanceID` int(11) NOT NULL,
  `ProcessInstanceID` int(11) NOT NULL,
  `AppName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AppInstanceID` varchar(50) NOT NULL,
  `ProcessGUID` varchar(100) NOT NULL,
  `ActivityGUID` varchar(100) NOT NULL,
  `ActivityName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TaskType` smallint(6) NOT NULL,
  `TaskState` smallint(6) NOT NULL DEFAULT '0',
  `EntrustedTaskID` int(11) DEFAULT NULL,
  `AssignedToUserID` varchar(50) NOT NULL,
  `AssignedToUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IsEMailSent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CreatedByUserID` varchar(50) NOT NULL,
  `CreatedByUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CreatedDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdatedDateTime` datetime(6) DEFAULT NULL,
  `LastUpdatedByUserID` varchar(50) DEFAULT NULL,
  `LastUpdatedByUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EndedByUserID` varchar(50) DEFAULT NULL,
  `EndedByUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EndedDateTime` datetime(6) DEFAULT NULL,
  `RecordStatusInvalid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RowVersionID` varbinary(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_WfTasks_ActivityInstanceID` (`ActivityInstanceID`),
  CONSTRAINT `FK_WfTasks_ActivityInstanceID` FOREIGN KEY (`ActivityInstanceID`) REFERENCES `wfactivityinstance` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wftransitioninstance`
--

DROP TABLE IF EXISTS `wftransitioninstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wftransitioninstance` (
  `ID` int(11) NOT NULL,
  `TransitionGUID` varchar(100) NOT NULL,
  `AppName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AppInstanceID` varchar(50) NOT NULL,
  `ProcessInstanceID` int(11) NOT NULL,
  `ProcessGUID` varchar(100) NOT NULL,
  `TransitionType` tinyint(3) unsigned NOT NULL,
  `FlyingType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `FromActivityInstanceID` int(11) NOT NULL,
  `FromActivityGUID` varchar(100) NOT NULL,
  `FromActivityType` smallint(6) NOT NULL,
  `FromActivityName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ToActivityInstanceID` int(11) NOT NULL,
  `ToActivityGUID` varchar(100) NOT NULL,
  `ToActivityType` smallint(6) NOT NULL,
  `ToActivityName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ConditionParseResult` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CreatedByUserID` varchar(50) NOT NULL,
  `CreatedByUserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CreatedDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RecordStatusInvalid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RowVersionID` varbinary(8) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'wfdesignerdemo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06 11:16:56
