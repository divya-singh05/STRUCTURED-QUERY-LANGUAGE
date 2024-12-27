Create database selfjoin;

Use selfjoin;

Create table employee(
id int,
name varchar(20),
manager_id int);

Insert into employee values(101,"ADAM",103),
(102,"BOB",104),
(103,"CASEY",NULL),
(104,"DONALD",103);

Select * from employee;

Select *
from employee a
left join employee b
on a.id=b.id;

Select a.name,b.name 
from employee a
left join employee b
on a.manager_id=b.id;

Create table Student(
Student_id int,
Name VARCHAR(50));

Insert into Student values
(101,"ADAM"),
(102,"BOB"),
(103,"CASEY");

Select * from Student;

Create table Course(
Student_id int,
Course VARCHAR(20));

Insert into Course values
(102,"ENGLISH"),
(105,"MATHS"),
(103,"SCIENCE"),
(107,"C.S");

Select * from Course;

Select * 
from Student s
left join Course c
on s.student_id=c.student_id
where c.student_id is NULL;

Select c.student_id,c.Course
from Student s
right join Course c
on s.student_id=c.student_id
where s.student_id is NULL;

Create table EMPLOYEES(
emp_id int,
Name VARCHAR(50),
Department_id int,
Salary int,
Age int,
City VARCHAR(20));

Insert into EMPLOYEES values
(1,"ALICE",)