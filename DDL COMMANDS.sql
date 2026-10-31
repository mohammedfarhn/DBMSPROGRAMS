-- executing ddl commands
USE dbmslabpractical;
-- creating a table
CREATE TABLE Student(
	Register_No VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(20),
    Mark_1 INT,
    Mark_2 INT,
    Mark_3 INT 
);

-- description of table
DESC Student;

-- using alter and adding new columns
ALTER TABLE Student ADD(Total INT, Average DECIMAL(7,2));
DESC Student;

-- using rename and changing the table name
RENAME TABLE Student TO Student_T1;
DESC Student_T1;
SHOW TABLES;

-- using truncate and remove all the rows
TRUNCATE TABLE Student_T1;
SELECT * FROM Student_T1;

-- using drop deleting the table completely
DROP TABLE Student_T1;
SHOW TABLES;


