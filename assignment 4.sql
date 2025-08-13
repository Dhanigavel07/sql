create database assignment4;
use assignment4;
CREATE TABLE Employees (
    emp_id INT ,
    name VARCHAR(50),
    dept_id INT
);

INSERT INTO Employees (emp_id, name, dept_id) VALUES
(1, 'Ravi', 101),
(2, 'Priya', 102),
(3, 'Karan', 101),
(4, 'Anjali', 103),
(5, 'Manish', NULL);
select * from Employees;
CREATE TABLE Depart (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO Depart(dept_id, dept_name) VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');
select * from Depart;
select Employees.emp_id, Employees.name,Depart.dept_name from Employees
  left join depart on  Employees.dept_id=Depart.dept_id
where depart.dept_name ='IT';
select depart.dept_id,depart.dept_name from depart
left join employees on depart.dept_id=employees.dept_id
where employees.dept_id is null;
select employees.name,depart.dept_name from employees
cross join depart;
select employees.name,depart.dept_name from employees
right join depart on employees.dept_id=depart.dept_id;
