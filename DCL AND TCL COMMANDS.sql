-- EXECUTING DCL AND TCL COMAMNDS
USE dbmslabpractical;

 -- CREATING A TABLE
 CREATE TABLE purchase(
	Item_no VARCHAR(10),
    Item_name VARCHAR(20),
    price DECIMAL(10,2)
);

-- INSERTING FIVE TUPLES
INSERT INTO purchase VALUES('L101', 'Laptop', 50000);
INSERT INTO purchase VALUES('L102', 'Computer', 30000);
INSERT INTO purchase VALUES('L103', 'Printer', 15000);
INSERT INTO purchase VALUES('L104', 'Scanner', 5000);
INSERT INTO purchase VALUES('L105', 'Projector', 40000);
SELECT * FROM purchase;

-- creating user customer identified by sales
CREATE USER 'customer'@'localhost' IDENTIFIED BY 'sales';

-- dcl 


