CREATE PROCEDURE AddStudent
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @CaseLoadManagerID INT,
    @TeacherAssistantID INT
AS
BEGIN
    INSERT INTO Student (FirstName, LastName, CaseLoadManagerID, TeacherAssistantID)
    VALUES (@FirstName, @LastName, @CaseLoadManagerID, @TeacherAssistantID);
END;
