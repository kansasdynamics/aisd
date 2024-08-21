CREATE TABLE AuditLog (
    AuditID INT PRIMARY KEY IDENTITY(1,1),
    TableName VARCHAR(50),
    Operation VARCHAR(10),
    ChangedBy VARCHAR(50),
    ChangedOn DATETIME DEFAULT GETDATE(),
    OldValue VARCHAR(MAX),
    NewValue VARCHAR(MAX)
);
