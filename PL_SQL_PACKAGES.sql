CREATE TABLE Library (
    Book_id VARCHAR2(10) PRIMARY KEY,
    Book_name VARCHAR2(40),
    B_price NUMBER(10,2)
);

INSERT INTO library VALUES ('B1001', 'Fundamentals of Computers', 200);
INSERT INTO library VALUES ('B1002', 'Programming in C', 300);
INSERT INTO library VALUES ('B1003', 'Data Structures', 400);

SELECT * FROM library;

--Creating and implementing the package

CREATE OR REPLACE PACKAGE library_package IS
PROCEDURE add_new (B_id VARCHAR2, B_name VARCHAR2, B_price NUMBER);
FUNCTION display RETURN VARCHAR2;
END library_package;

CREATE OR REPLACE PACKAGE BODY library_package IS
PROCEDURE add_new (B_id VARCHAR2, B_name VARCHAR2, B_price NUMBER) IS
BEGIN
INSERT INTO library VALUES (B_id, B_name, B_price);
END;
FUNCTION display RETURN VARCHAR2 IS
BEGIN
RETURN 'Record Inserted';
END display;
END library_package;

BEGIN
library_package.add_new('B1004', 'Object Oriented Programming with JAVA', 500);
dbms_output.put_line(library_package.display);
END;

SELECT * FROM library;