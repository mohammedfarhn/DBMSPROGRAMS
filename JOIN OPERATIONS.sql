-- EXECUUTING JOIN OPERATIONS IN SQL
USE dbmslabpractical;
-- creating employee table
CREATE TABLE employee (
	emp_id INT PRIMARY KEY,
	emp_name VARCHAR(20),
	edept_id INT
);
INSERT INTO employee VALUES (1001, 'Charles', 10);
INSERT INTO employee VALUES (1002, 'Abdul', 20);
INSERT INTO employee VALUES (1003, 'Rohan', 30);
SELECT * FROM employee;
-- creating department table
CREATE TABLE department (
	dept_id INT PRIMARY KEY,
	dept_name VARCHAR(20)
);
INSERT INTO department VALUES (10, 'Accounts');
INSERT INTO department VALUES (20, 'Design');
INSERT INTO department VALUES (40, 'Testing');
INSERT INTO department VALUES (50, 'Purchase');
SELECT * FROM department;

-- using inner join operation
SELECT emp_id, emp_name, edept_id, dept_name
FROM employee
INNER JOIN department
ON employee.edept_id = department.dept_id;

-- using left outer join operation
SELECT emp_id, emp_name, edept_id, dept_name
FROM employee LEFT OUTER JOIN department
ON employee.edept_id = department.dept_id;

-- using right outer join operation
SELECT emp_id, emp_name, edept_id, dept_name
FROM employee RIGHT OUTER JOIN department
ON employee.edept_id = department.dept_id;

-- using full join operation
SELECT emp_id, emp_name, edept_id, dept_name
FROM employee
LEFT JOIN department
ON employee.edept_id = department.dept_id
UNION
SELECT emp_id, emp_name, edept_id, dept_name
FROM employee
RIGHT JOIN department
ON employee.edept_id = department.dept_id;