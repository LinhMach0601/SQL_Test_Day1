CREATE DATABASE Fresher_Training_Management;
USE Fresher_Training_Management;

CREATE TABLE trainee (
	traineeID int NOT NULL auto_increment PRIMARY KEY,
    Full_Name varchar(100),
    Date_Of_Birth date,
    Gender ENUM('male', 'female', 'unknown'),
    ET_IQ int(2),
    ET_Gmath int(2),
    ET_English int(2),
    Training_Class varchar(100),
    Evaluation_Notes text,
    check(ET_IQ >= 0 && ET_IQ <= 20),
    check(ET_Gmath >= 0 && ET_Gmath <= 20),
    check(ET_English >= 0 && ET_English <= 50)
);

-- Question 2
ALTER TABLE trainee
ADD VTI_Account varchar(100) NOT NULL UNIQUE;

-- Test input data
INSERT INTO trainee (Full_Name, Date_Of_Birth, Gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes, VTI_Account)
VALUES ('Nguyễn Văn A', '1999-10-20', 1, 10, 12, 50, 'Testing', 'note for something', 'VTI.AAccount');

CREATE TABLE `trainee` (
  `traineeID` int NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(100) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Gender` enum('male','female','unknown') DEFAULT NULL,
  `ET_IQ` int DEFAULT NULL,
  `ET_Gmath` int DEFAULT NULL,
  `ET_English` int DEFAULT NULL,
  `Training_Class` varchar(100) DEFAULT NULL,
  `Evaluation_Notes` text,
  `VTI_Account` varchar(100) NOT NULL,
  PRIMARY KEY (`traineeID`),
  UNIQUE KEY `VTI_Account` (`VTI_Account`),
  CONSTRAINT `trainee_chk_1` CHECK (((`ET_IQ` >= 0) and (`ET_IQ` <= 20))),
  CONSTRAINT `trainee_chk_2` CHECK (((`ET_Gmath` >= 0) and (`ET_Gmath` <= 20))),
  CONSTRAINT `trainee_chk_3` CHECK (((`ET_English` >= 0) and (`ET_English` <= 50)))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

Select * From trainee