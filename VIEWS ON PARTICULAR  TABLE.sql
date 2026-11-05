-- executing views for a particular table
USE dbmslabpractical;

-- reating a table train
CREATE TABLE Train (
	Train_No INT PRIMARY KEY,
	Train_Name VARCHAR(20),
	Source VARCHAR(20),
	Destination VARCHAR(20)
);
INSERT INTO train VALUES (50001, 'Malgudi Exp', 'Bengaluru', 'Mysuru');
INSERT INTO train VALUES (50002, 'Karnataka Exp', 'Bengaluru', 'New Delhi');
INSERT INTO train VALUES (50003, 'Shatabdi Exp', 'Bengaluru', 'Chennai');
SELECT * FROM Train;

-- crearing a view which shows the whole table
CREATE VIEW Display_view AS
SELECT * FROM Train;
SELECT * FROM Display_view;

-- inserting a tow thorugh view
CREATE VIEW Insert_view AS
SELECT Train_no, Train_name FROM Train;
INSERT INTO Insert_view VALUES (50004, 'Kochuveli Exp');
SELECT * FROM Display_view;