/*Executing single-line queries and group functions */

/* creating a database */
CREATE DATABASE dbmslabpractical;
USE dbmslabpractical;
-- creating a table  
CREATE TABLE inventory (
	Item_no VARCHAR(10) PRIMARY KEY,
	Item_name VARCHAR(20),
	price INT
);
-- describing the table
DESC inventory;
-- inserting rows in the table
INSERT INTO inventory VALUES ('L101', 'Laptop', 50000);
INSERT INTO inventory VALUES ('L102', 'Computer', 30000);
INSERT INTO inventory VALUES ('L103', 'Printer', 15000);
INSERT INTO inventory VALUES ('L104', 'Scanner', 5000);
INSERT INTO inventory VALUES ('L105', 'Projector', 40000);
SELECT * FROM inventory;

-- using count group function
SELECT COUNT(*) Number_of_items
FROM inventory;

-- using max group function
SELECT MAX(price) Maximum_price
FROM inventory;

-- using min group function
SELECT MIN(price) Minimum_price 
FROM inventory;

-- using sum group function
SELECT SUM(price) Total_amount
FROM inventory;

-- using average group function
SELECT AVG(price) Average
FROM inventory;

