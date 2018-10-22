CREATE DATABASE ex_employee1;

\connect  ex_employee1;

CREATE TABLE employee(empid INT, name TEXT, managerid INT, deptid INT, salary REAL);
CREATE TABLE department(deptid INT, deptname TEXT);

\copy employee FROM 'employee_data.csv' WITH DELIMITER ',' CSV HEADER;
\copy department FROM 'department.csv' WITH DELIMITER ',' CSV HEADER; 
