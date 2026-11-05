CREATE TABLE bank (
    acno INT PRIMARY KEY,
    name VARCHAR(20),
    balance NUMBER(10,2)
);
DESC Bank;
INSERT INTO bank VALUES (11223344, 'Charles', 50000);
INSERT INTO bank VALUES (22334455, 'Abdul', 25000);
INSERT INTO bank VALUES (33445566, 'Rohan', 15000);
INSERT INTO bank VALUES (44556677, 'Shermi', 5000);
INSERT INTO bank VALUES (55667788, 'Jhansi', 1000);
SELECT * FROM bank;

SET SERVEROUTPUT ON;
DECLARE
cacno bank.acno%TYPE;
cname bank.name%TYPE;
cbalance bank.balance%TYPE;
BEGIN
SELECT acno, name, balance
INTO cacno, cname, cbalance
FROM bank
WHERE acno = 12345678;
dbms_output.put_line(cacno || ' ' || cname || ' ' || cbalance);

EXCEPTION
WHEN no_data_found THEN
dbms_output.put_line('No such customer');
WHEN others THEN
dbms_output.put_line('Error');
END;