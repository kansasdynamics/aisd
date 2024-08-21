-- Index on Student's LastName to speed up searches by last name
CREATE INDEX idx_Student_LastName ON Student(LastName);

-- Index on Schedule's ClassPeriod and StudentID to speed up schedule queries
CREATE INDEX idx_Schedule_ClassPeriod ON Schedule(StudentID, ClassPeriod);