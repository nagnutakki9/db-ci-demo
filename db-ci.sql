DROP TABLE departments CASCADE CONSTRAINTS;
CREATE TABLE departments (
    department_id NUMBER(3),
    department_description VARCHAR2(50)
);
INSERT INTO departments (department_id, department_description) VALUES(1, 'Sales Department');
INSERT INTO departments (department_id, department_description) VALUES(2, 'Marketing Department');

DROP TABLE employees CASCADE CONSTRAINTS;
CREATE TABLE employees (
    first_name VARCHAR2(25) PRIMARY KEY,
    last_name VARCHAR2(25),
    department_id number(3) REFERENCES departments(department_id)
);
INSERT INTO employees (first_name, last_name, department_id) VALUES('Nag', 'Nutakki', 1);
