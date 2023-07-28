USE fresher_training_management;

-- Exercise 2: Data Types
CREATE TABLE Exercise2 (
	ID int auto_increment PRIMARY KEY,
    `Name` char(50),
    `Code` varchar(5),
    Modified_Date datetime
);

CREATE DATABASE extra_assignment;
USE extra_assignment;

-- Exercise 1: Question 1: Design a table
CREATE TABLE Trainee (
	TraineeID int auto_increment PRIMARY KEY,
    Full_Name varchar(50),
    Birth_Date date,
    Gender enum('male', 'female', 'unknown'),
    ET_IQ int(2),
    check (ET_IQ >= 0 && ET_IQ <= 20),
    ET_Gmath int(2),
    check (ET_Gmath >= 0 && ET_Gmath <= 20),
    ET_English int(2),
    check (ET_English >= 0 && ET_English <=50),
    Training_Class varchar(10),
    Evaluation_Notes text
);

-- Exercise 1: Question 2: Change the table TRAINEE to add one or more field named VTI_Account which is a not null field
ALTER TABLE Trainee
ADD VTI_Account varchar(20) not null unique;

INSERT INTO Trainee (Full_Name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes, VTI_Account)
VALUES ('Mạch Hiền Linh', '2000-01-06', 2, '18', '20', '45', 'Tester', 'Trainee note', 'LinhMach.VTI');

Select * From Trainee;

-- Exercise 2: Data Type
CREATE TABLE excerise2 (
	ID int auto_increment PRIMARY KEY,
    `Name` char(50),
    `Code` varchar(5),
    Modified_Date datetime
);

-- Excerise 3: Data Type 2
CREATE TABLE exercise3 (
	ID int auto_increment PRIMARY KEY,
    `Name` nvarchar(50),
    Birth_Date date,
    Gender ENUM('male', 'female', 'unknown'),
    isDeletedFlag boolean default 0
);
CREATE DATABASE `extra_assignment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
