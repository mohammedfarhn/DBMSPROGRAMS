-- executing nested queries
-- creating a table department
USE dbmslabpractical;
CREATE TABLE teacher(
	Tid INT PRIMARY KEY,
    Tname varchar(20),
    Did varchar(20)
);
INSERT INTO teacher VALUES( 01, 'ANITHA', 'D11');
INSERT INTO teacher VALUES( 02, 'SUNITHA', 'D12');
INSERT INTO teacher VALUES( 03, 'GANITHA', 'D13');
SELECT * FROM teacher;
 -- createing a department table with 3 tuples
CREATE TABLE department(
	Did VARCHAR(20),
    Dname VARCHAR(20)
);
INSERT INTO department VALUES('D11', 'MATHS');
INSERT INTO department VALUES('D12', 'SCIENCE');
SELECT * FROM department;
-- using nested query
SELECT * FROM teacher 
WHERE Did IN(
	SELECT Did FROM department
    WHERE teacher.Did = department.Did
);
