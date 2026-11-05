CREATE TABLE laptop (
model_no VARCHAR(10) PRIMARY KEY,
company_name VARCHAR(20),
price NUMBER(10,2)
);
DESC laptop;

INSERT INTO laptop VALUES ('L1001', 'DELL', 50000);
INSERT INTO laptop VALUES ('L1002', 'HP', 40000);
INSERT INTO laptop VALUES ('L1003', 'ACER', 30000);
INSERT INTO laptop VALUES ('L1004', 'SONY', 45000);
INSERT INTO laptop VALUES ('L1005', 'LENOVO', 35000);

SELECT * FROM laptop;

CREATE OR REPLACE FUNCTION maximum
RETURN NUMBER IS
maxprice NUMBER(10,2) := 0;
BEGIN
SELECT MAX(price) INTO maxprice FROM laptop;
RETURN maxprice;
END;

DECLARE
n NUMBER(10,2);
BEGIN
n := maximum();
dbms_output.put_line(' Maximum price = ' || n);
END;