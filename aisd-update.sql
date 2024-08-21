-- Update a student's case load manager
UPDATE Student
SET CaseLoadManagerID = 3  -- Assign to a new Case Load Manager
WHERE StudentID = 1;

-- Update a teacher's subject
UPDATE Teacher
SET Subject = 'Physics'  -- Change the subject
WHERE TeacherID = 2;

-- Update a student's teacher assistant
UPDATE Student
SET TeacherAssistantID = 2  -- Assign to a new Teacher Assistant
WHERE StudentID = 4;

-- Update the room number for a specific class in the schedule
UPDATE Schedule
SET RoomNumber = '202'  -- Change the room number
WHERE StudentID = 3 AND ClassName = 'Math';

-- Update the last name of a teacher assistant
UPDATE TeacherAssistant
SET LastName = 'Garcia'  -- Update the last name
WHERE TeacherAssistantID = 5;

-- Update all students to have a new case load manager
UPDATE Student
SET CaseLoadManagerID = 2;  -- Reassign all students to the new Case Load Manager