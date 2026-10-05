create database COUNT;
use COUNT;
CREATE TABLE Student (
StudentID NUMBER PRIMARY KEY,
StudentName VARCHAR2(30),
DepartmentID NUMBER
);

INSERT INTO Student VALUES (1001, 'Arun', 101);
INSERT INTO Student VALUES (1002, 'Divya', 102);
INSERT INTO Student VALUES (1003, 'Karthik', 101);
INSERT INTO Student VALUES (1004, 'Nisha', 103);
INSERT INTO Student VALUES (1005, 'Rahul', 101);

COMMIT;

CREATE OR REPLACE FUNCTION CountStudents (
p_DepartmentID NUMBER
)
RETURN NUMBER
IS
TotalStudents NUMBER;
BEGIN
SELECT COUNT(*)
INTO TotalStudents
FROM Student
WHERE DepartmentID = p_DepartmentID;

RETURN TotalStudents;
END;
/

SELECT CountStudents(101) AS Student_Count
FROM dual;
