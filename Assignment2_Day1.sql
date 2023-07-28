CREATE DATABASE entrance_exam_management;
USE entrance_exam_management;

CREATE TABLE department (
	DepartmentID int auto_increment PRIMARY KEY,
    Department_Name varchar(50)
);

CREATE TABLE `position` (
	PositionID int auto_increment PRIMARY KEY,
    Position_Name varchar(50)
);

CREATE TABLE `account` (
	AccountID int auto_increment PRIMARY KEY,
    Email varchar(100),
    User_Name varchar(50),
    Full_Name varchar(50),
    DepartmentID int,
    CONSTRAINT FK_AccountDepartment FOREIGN KEY (DepartmentID) REFERENCES department(DepartmentID),
    PositionID int,
    CONSTRAINT FK_AccountPosition FOREIGN KEY (PositionID) REFERENCES `position`(PositionID),
    Create_Date date
);

CREATE TABLE `group` (
	GroupID int auto_increment PRIMARY KEY,
    Group_Name varchar(50),
    CreatorID int,
    Create_Date date
);

CREATE TABLE group_account (
	GroupID int,
    AccountID int,
    Join_Date date,
    PRIMARY KEY (GroupID, AccountID),
    FOREIGN KEY (GroupID) REFERENCES `group`(GroupID),
    FOREIGN KEY (AccountID) REFERENCES `account`(AccountID)
);

CREATE TABLE type_question (
	TypeID int auto_increment PRIMARY KEY,
    Type_Name varchar(50)    
);

CREATE TABLE category_question (
	CategoryID int auto_increment PRIMARY KEY,
    Category_Name varchar(50)
);

CREATE TABLE question (
	QuestionID int auto_increment PRIMARY KEY,
    Content text,
    CategoryID int,
    CONSTRAINT FK_QuestionCategory FOREIGN KEY (CategoryID) REFERENCES category_question(CategoryID),
    TypeID int,
    CONSTRAINT FK_QuestionType FOREIGN KEY (TypeID) REFERENCES type_question(TypeID),
    CreatorID int,
    Create_Date date
);

CREATE TABLE answer (
	AnswerID int auto_increment PRIMARY KEY,
    Content text,
    QuestionID int,
    CONSTRAINT FK_AnswerQuestion FOREIGN KEY (QuestionID) REFERENCES question(QuestionID),
    isCorrect boolean not null DEFAULT 0
);

CREATE TABLE exam (
	ExamID int auto_increment PRIMARY KEY,
    `Code` char(10),
    Title varchar(100),
    CategoryID int,
    CONSTRAINT FK_ExamCategory FOREIGN KEY (CategoryID) REFERENCES category_question(CategoryID),
    Duration time,
    CreatorID int,
    Create_Date date
);

CREATE TABLE exam_question (
	ExamID int,
    QuestionID int,
    PRIMARY KEY (ExamID, QuestionID),
    FOREIGN KEY (ExamID) REFERENCES exam(ExamID),
    FOREIGN KEY (QuestionID) REFERENCES question(QuestionID)
);
CREATE DATABASE `entrance_exam_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
