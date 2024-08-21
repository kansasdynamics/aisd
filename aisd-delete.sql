-- Delete a student record
DELETE FROM Student
WHERE StudentID = 5;

-- Delete a teacher
DELETE FROM Teacher
WHERE TeacherID = 3;

-- Delete a teacher assistant
DELETE FROM TeacherAssistant
WHERE TeacherAssistantID = 4;

-- Delete a student's class from their schedule
DELETE FROM Schedule
WHERE StudentID = 2 AND ClassName = 'History';

-- Delete all records for a specific teacher in the StudentTeacher table
DELETE FROM StudentTeacher
WHERE TeacherID = 1;

-- Delete all students from a specific case load manager
DELETE FROM Student
WHERE CaseLoadManagerID = 4;