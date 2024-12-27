Create database company;

Use company;

Create table EMPLOYEES(
emp_id int,
Name VARCHAR(50),
Department_id int,
Salary int,
Age int,
City VARCHAR(20));

Insert into EMPLOYEES values
(1,"Alice",101,50000,28,"New York"),
(2,"Bob",102,55000,35,"Chicago"),
(3,"Charlie",101,60000,38,"Los Angeles"),
(4,"David",103,45000,25,"New York"),
(5,"Eve",104,70000,45,"San Diego"),
(6,"Riya",101,40000,25,"Los Angeles");

Select * from EMPLOYEES;

Create table Departments(
Department_ID INT,
Department_Name VARCHAR(20));

Insert into Departments values
(101,"HR"),
(102,"SALES"),
(103,"IT"),
(104,"FINANCE");

Select * from Departments;

#1.FIND THE HIGHEST SALARY IN EMPLOYEES TABLE. 

Select MAX(Salary) from EMPLOYEES;

#2.GET NAMES OF EMPLOYEES WHO WORK IN THE SAME CITY AS "ALICE".

Select Name from EMPLOYEES 
where city = (Select city from EMPLOYEES where Name = "Alice");

#3.LIST ALL EMPLOYEES WHO EARN MORE THAN THE AVERAGE SALARY OF THE EMPLOYEES TABLE.

Select Name from EMPLOYEES
where Salary > (Select avg(Salary) from EMPLOYEES);

#4.RETRIVE NAMES OF EMPLOYEES WHOSE AGE IS BELOW THAN AVERAGE AGE.

Select Name from EMPLOYEES
where Age < (Select avg(Age) from EMPLOYEES);

#5.GET THE NAME OF THE DEPARTMENT WITH THE LOWEST PAID EMPLOYEES.
Select d.Department_Name,e.Salary
from Departments d
join EMPLOYEES e
on d.Department_id=e.Department_id
where salary=(Select min(Salary)from EMPLOYEES);

Select Department_Name from Departments
where Department_id = (Select Department_id 
from EMPLOYEES
where salary=(Select min(Salary) 
from EMPLOYEES));

#6.FIND ALL EMPLOYEES WHO BELONG TO A DEPARTMENT WHERE THE AVERAGE SALARY IS MORE THAN 60000.
Select Name 
from EMPLOYEES 
where Department_ID=
(Select Department_ID
from EMPLOYEES
group by Department_ID
having avg(Salary)>60000);

#7.LIST NAMES OF EMPLOYEES WHO EARN THE MINIMUM SALARY IN THEIR RESPECTIVE DEPARTMENTS. 
Select Name
from EMPLOYEES
where Salary in;

Select Department_ID 
from EMPLOYEES 
group by Department_ID
having min(SALARY);

Select Name from EMPLOYEES 
where salary in(
Select min(Salary) from EMPLOYEES
group by Department_ID
having min(Salary));

Select Name,Salary,Department_ID 
from EMPLOYEES
where Salary in(
Select min(Salary) from EMPLOYEES
group by Department_ID
 having min(Salary));

#8.FIND EMPLOYEES WHO ARE OLDER THAN THE AVERAGE AGE OF EMPLOYEES IN THEIR DEPARTMENT. 

Select Name from EMPLOYEES
where Age in(
Select avg(Age)
from EMPLOYEES
group by Department_ID);

#9.FIND THE NAMES OF EMPLOYEES WHO EARN LESS THAN BOB.

Select Name from EMPLOYEES
where Salary <
(Select Salary 
from EMPLOYEES
Where Name="Bob");

#10.GET THE NAME OF EMPLOYEES WHO WORK IN DEPARTMENTS WITH 2 EMPLOYEES. 

Select Name 
from EMPLOYEES
where Department_ID in
(Select Department_ID
from EMPLOYEES
group by Department_ID 
having count(Name)=2);

#11.FIND DEPARTMENTS WITH NO EMPLOYEE OLDER THAN 30 YEARS. 

Select Department_Name
from Departments
where Department_ID in
(Select Name 
from EMPLOYEES
where Age >30);

#12.GET THE NAMES OF EMPLOYEES WHO LIVE IN THE SAME CITY AS HIGHEST PAIS EMPLOYEE.

#13.FIND THE DEPARTMENTS WITH AT LEAST ONE EMPLOYEE EARNING MORE THAN 55000.

#14.LIST THE NAMES OF EMPLOYEES WHO ARE YOUNGER THAN ALL EMPLOYEES IN (IT) DEPARTMENT. 
 Select Name 
 from EMPLOYEES
 where Age =(
 Select min(Age)
 from EMPLOYEES
 where Department_ID in 
 (Select Department_ID
 from Departments
 where Department_Name="IT"));
 
Insert into EMPLOYEES values
(7,"Zoe",103,70050,21,"New York"),
(8,"Ian",103,834000,23,"China");

Select * from EMPLOYEES;
