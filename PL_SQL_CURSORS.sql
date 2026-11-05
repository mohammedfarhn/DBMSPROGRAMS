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

DECLARE
cacno bank.acno%TYPE;
cname bank.name%TYPE;
cbalance bank.balance%TYPE;
CURSOR cbank IS
SELECT acno, name, balance FROM bank;
BEGIN
dbms_output.put_line('Account No. ' || 'Name ' || 'Balance');
dbms_output.put_line('=========================');
OPEN cbank;
LOOP
FETCH cbank INTO cacno, cname, cbalance;
EXIT WHEN cbank%NOTFOUND;
dbms_output.put_line(cacno || ' ' || cname || ' ' || cbalance);
END LOOP;
CLOSE cbank;
END;

