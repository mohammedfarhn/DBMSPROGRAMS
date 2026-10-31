-- executing DML commands
USE dbmslabpractical;

-- creating table
CREATE TABLE Student (
	Register_No VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(20),
    Mark_1 INT, Mark_2 INT, Mark_3 INT,
    Total INT,
    Average DECIMAL(7,2)
);

-- Inserting five rows using 'insert'
INSERT INTO Student VALUES('51001', 'Charies', 99, 100, 95, NULL, NULL);
INSERT INTO Student VALUES('51002', 'Abdul', 100, 99, 100, NULL, NULL);
INSERT INTO Student VALUES('51003', 'Roshan', 95, 100, 97, NULL, NULL);
INSERT INTO Student VALUES('51004', 'Shermi', 100, 99, 98, NULL, NULL);
INSERT INTO Student VALUES('51005', 'Jhansi', 97, 98, 100, NULL, NULL);

-- selecting and viewing rows in table
SELECT * FROM Student;

-- updating the table 
UPDATE Student
SET Total = (Mark_1 + Mark_2 + Mark_3),
	Average = (Mark_1 + Mark_2 + Mark_3)/3
WHERE Register_No > 0;
SELECT * FROM Student;

-- using delete removing a tuple
DELETE FROM Student
WHERE Register_No = '51005';
SELECT * FROM Student;


