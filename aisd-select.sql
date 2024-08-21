-- Retrieve student information along with their case load manager and teacher assistant
SELECT 
    s.StudentID, 
    s.FirstName AS StudentFirstName, 
    s.LastName AS StudentLastName, 
    clm.FirstName AS CaseLoadManagerFirstName, 
    clm.LastName AS CaseLoadManagerLastName, 
    ta.FirstName AS TeacherAssistantFirstName, 
    ta.LastName AS TeacherAssistantLastName
FROM 
    Student s
JOIN 
    CaseLoadManager clm ON s.CaseLoadManagerID = clm.CaseLoadManagerID
JOIN 
    TeacherAssistant ta ON s.TeacherAssistantID = ta.TeacherAssistantID;

-- Retrieve all students and their assigned teachers
SELECT 
    s.StudentID, 
    s.FirstName AS StudentFirstName, 
    s.LastName AS StudentLastName, 
    t.FirstName AS TeacherFirstName, 
    t.LastName AS TeacherLastName, 
    t.Subject AS TeacherSubject
FROM 
    Student s
JOIN 
    StudentTeacher st ON s.StudentID = st.StudentID
JOIN 
    Teacher t ON st.TeacherID = t.TeacherID;

-- Get the class schedule for a specific student
SELECT 
    s.StudentID, 
    s.FirstName AS StudentFirstName, 
    s.LastName AS StudentLastName, 
    sch.ClassPeriod, 
    sch.ClassName, 
    sch.RoomNumber, 
    t.FirstName AS TeacherFirstName, 
    t.LastName AS TeacherLastName, 
    t.Subject AS TeacherSubject
FROM 
    Student s
JOIN 
    Schedule sch ON s.StudentID = sch.StudentID
JOIN 
    Teacher t ON sch.TeacherID = t.TeacherID
WHERE 
    s.StudentID = 1;  -- Replace with any StudentID


-- List all students along with their teachers and case load managers
SELECT 
    s.StudentID, 
    s.FirstName AS StudentFirstName, 
    s.LastName AS StudentLastName, 
    clm.FirstName AS CaseLoadManagerFirstName, 
    clm.LastName AS CaseLoadManagerLastName, 
    t.FirstName AS TeacherFirstName, 
    t.LastName AS TeacherLastName, 
    t.Subject AS TeacherSubject
FROM 
    Student s
JOIN 
    CaseLoadManager clm ON s.CaseLoadManagerID = clm.CaseLoadManagerID
JOIN 
    StudentTeacher st ON s.StudentID = st.StudentID
JOIN 
    Teacher t ON st.TeacherID = t.TeacherID;

-- Retrieve full schedule for all students
SELECT 
    s.StudentID, 
    s.FirstName AS StudentFirstName, 
    s.LastName AS StudentLastName, 
    sch.ClassPeriod, 
    sch.ClassName, 
    sch.RoomNumber, 
    t.FirstName AS TeacherFirstName, 
    t.LastName AS TeacherLastName, 
    t.Subject AS TeacherSubject
FROM 
    Student s
JOIN 
    Schedule sch ON s.StudentID = sch.StudentID
JOIN 
    Teacher t ON sch.TeacherID = t.TeacherID
ORDER BY 
    s.StudentID, sch.ClassPeriod;
