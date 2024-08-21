CREATE VIEW vw_StudentSchedules AS
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
    Teacher t ON sch.TeacherID = t.TeacherID;
