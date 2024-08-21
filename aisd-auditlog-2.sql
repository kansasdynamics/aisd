-- Sample trigger to log updates on the Student table
CREATE TRIGGER trg_Student_Audit
ON Student
AFTER UPDATE
AS
BEGIN
    INSERT INTO AuditLog (TableName, Operation, ChangedBy, OldValue, NewValue)
    VALUES ('Student', 'UPDATE', SYSTEM_USER, (SELECT FirstName FROM deleted), (SELECT FirstName FROM inserted));
END;