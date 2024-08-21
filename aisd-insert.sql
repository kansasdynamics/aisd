-- Use the AISD database
USE AISD;
GO

-- 1. Inserting data into the CaseLoadManager table
INSERT INTO CaseLoadManager (FirstName, LastName)
VALUES 
    ('John', 'Doe'),
    ('Jane', 'Smith'),
    ('Michael', 'Johnson'),
    ('Emily', 'Davis'),
    ('David', 'Wilson');
GO

-- 2. Inserting data into the Teacher table
INSERT INTO Teacher (FirstName, LastName, Subject)
VALUES 
    ('Sarah', 'Taylor', 'Math'),
    ('James', 'Brown', 'Science'),
    ('Linda', 'Anderson', 'English'),
    ('Robert', 'Thomas', 'History'),
    ('Patricia', 'Jackson', 'Art');
GO

-- 3. Inserting data into the TeacherAssistant table
INSERT INTO TeacherAssistant (FirstName, LastName)
VALUES 
    ('Alice', 'Moore'),
    ('Tom', 'Clark'),
    ('Nancy', 'Lewis'),
    ('Steven', 'Lee'),
    ('Laura', 'Walker');
GO

-- 4. Inserting data into the Student table
INSERT INTO Student (FirstName, LastName, CaseLoadManagerID, TeacherAssistantID)
VALUES 
    ('Michael', 'Scott', 1, 1),
    ('Dwight', 'Schrute', 2, 2),
    ('Jim', 'Halpert', 3, 3),
    ('Pam', 'Beesly', 4, 4),
    ('Stanley', 'Hudson', 5, 5);
GO

-- 5. Inserting data into the StudentTeacher table
-- Assuming each student has multiple teachers
INSERT INTO StudentTeacher (StudentID, TeacherID)
VALUES 
    (1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
    (2, 1), (2, 2), (2, 3), (2, 4), (2, 5),
    (3, 1), (3, 2), (3, 3), (3, 4), (3, 5),
    (4, 1), (4, 2), (4, 3), (4, 4), (4, 5),
    (5, 1), (5, 2), (5, 3), (5, 4), (5, 5);
GO

-- 6. Inserting data into the Schedule table
-- Assuming each student has the same schedule structure but with different teachers
INSERT INTO Schedule (StudentID, ClassPeriod, ClassName, RoomNumber, TeacherID)
VALUES 
    (1, 1, 'Math', '101', 1), (1, 2, 'Science', '102', 2), (1, 3, 'English', '103', 3),
    (1, 4, 'History', '104', 4), (1, 5, 'Art', '105', 5),
    
    (2, 1, 'Math', '101', 1), (2, 2, 'Science', '102', 2), (2, 3, 'English', '103', 3),
    (2, 4, 'History', '104', 4), (2, 5, 'Art', '105', 5),
    
    (3, 1, 'Math', '101', 1), (3, 2, 'Science', '102', 2), (3, 3, 'English', '103', 3),
    (3, 4, 'History', '104', 4), (3, 5, 'Art', '105', 5),
    
    (4, 1, 'Math', '101', 1), (4, 2, 'Science', '102', 2), (4, 3, 'English', '103', 3),
    (4, 4, 'History', '104', 4), (4, 5, 'Art', '105', 5),
    
    (5, 1, 'Math', '101', 1), (5, 2, 'Science', '102', 2), (5, 3, 'English', '103', 3),
    (5, 4, 'History', '104', 4), (5, 5, 'Art', '105', 5);
GO
