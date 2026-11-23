create database employee;
use employee;
create table departments (department_id int , department_name varchar(100));
create table employees(employee_id int, employee_name varchar(50), gender enum('M','F'), age int, hire_date date, 
designation varchar(100),department_id int, location_id int, salary decimal(10,2));
create table location(location_id int, location varchar(30));

Alter table employees add email varchar(50);
ALTER TABLE Employees MODIFY designation VARCHAR(300);
ALTER TABLE Employees DROP COLUMN age;
ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining;


RENAME TABLE departments TO Departments_Info;
rename table location to Locations;

TRUNCATE TABLE Employees;

drop table employees;
drop database employee;

create database employee;
use employee;
 
create table departments (department_id int primary key , department_name varchar(100) not null unique);
create table location(location_id int auto_increment primary key, location varchar(30) not null unique);
create table employees(employee_id int primary key, employee_name varchar(50) not null, gender char(1) CHECK (gender IN ('M', 'F')), age int CHECK (age >= 18), hire_date date default(current_date), 
designation varchar(100),department_id int , location_id int, salary decimal(10,2),FOREIGN KEY (department_id)
REFERENCES departments(department_id), FOREIGN KEY(location_id) REFERENCES location(location_id));