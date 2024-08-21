-- Create the database if it doesn't exist
IF DB_ID('AISD') IS NULL
BEGIN
    CREATE DATABASE AISD;
END
GO

-- Use the AISD database
USE AISD;
GO

-- 1. Creating the CaseLoadManager table
CREATE TABLE CaseLoadManager (
    CaseLoadManagerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL
);
GO

-- 2. Creating the Teacher table
CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Subject VARCHAR(50)
);
GO

-- 3. Creating the TeacherAssistant table
CREATE TABLE TeacherAssistant (
    TeacherAssistantID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL
);
GO

-- 4. Creating the Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    CaseLoadManagerID INT,
    ScheduleID INT,
    TeacherAssistantID INT,
    FOREIGN KEY (CaseLoadManagerID) REFERENCES CaseLoadManager(CaseLoadManagerID),
    FOREIGN KEY (TeacherAssistantID) REFERENCES TeacherAssistant(TeacherAssistantID)
);
GO

-- 5. Creating the StudentTeacher junction table
CREATE TABLE StudentTeacher (
    StudentTeacherID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    TeacherID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID)
);
GO

-- 6. Creating the Schedule table
CREATE TABLE Schedule (
    ScheduleID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    ClassPeriod INT,
    ClassName VARCHAR(100),
    RoomNumber VARCHAR(10),
    TeacherID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID)
);
GO
