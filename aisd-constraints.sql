-- Ensure that a student's first and last name combination is unique
ALTER TABLE Student
ADD CONSTRAINT uc_StudentName UNIQUE (FirstName, LastName);

-- Prevent null values in critical fields
ALTER TABLE Teacher
ALTER COLUMN Subject VARCHAR(50) NOT NULL;

-- Ensure that class periods are within a specific range
ALTER TABLE Schedule
ADD CONSTRAINT chk_ClassPeriod CHECK (ClassPeriod BETWEEN 1 AND 8);
