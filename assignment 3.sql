create database demo4;
use demo4;
CREATE TABLE students10 (
    student_id INT,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT,
    age INT,
    city VARCHAR(50),
    scholarship INT
);

INSERT INTO students10 VALUES 
(1, 'Ravi', 'Math', 85, 20, 'Chennai', NULL),
(2, 'Priya', 'Science', 92, 21, 'Delhi', 10000),
(3, 'Amit', 'English', 75, 19, 'Mumbai', 5000),
(4, 'Sneha', 'Math', 88, 22, 'Kolkata', NULL),
(5, 'John', 'History', 67, 20, 'Chennai', NULL),
(6, 'Meena', 'Science', 95, 23, 'Delhi', 15000),
(7, 'Karan', 'English', 70, 20, 'Bangalore', 3000),
(8, 'Divya', 'History', 80, 22, 'Mumbai', NULL);
select * from students10;
 select name, marks from students10
 where marks between 70 and 90;
 select name ,age from students10
 where age between 20 and 22;
 select * from students10 where name like 'p%';
 select * from students10 where city like '%ai%';
 select name from students10 where name like '_r%';
 select name,marks from students10 order by  marks desc limit 3;
 select name, scholarship from students10 where scholarship is not null;
 select name from students10 where city ="delhi" limit 1;
 select name, marks from students10
 where marks> any(select marks from students10 where course="History");
SELECT name, marks
FROM students10
WHERE marks > ALL (
    SELECT marks
    FROM students10
    WHERE course = 'English'

 );
 select name,age from students10 
 where course="math" and age>21;
 select name from students10
 where course ="science" or  course="English";
 select name,city from students10 
 where  not city="mumbai";
 select name,scholarship from students10 
 where scholarship is null;
 select name ,ifnull(scholarship,0) scholarship from students10;
 select name,coalesce(scholarship,0) scholarship from students10;
 

