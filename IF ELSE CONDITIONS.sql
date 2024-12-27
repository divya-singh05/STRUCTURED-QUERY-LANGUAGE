Create database conditions;

Use conditions;

Create table EMPL(
emp_id int,
Name VARCHAR(50),
Department Varchar(20),
Salary int,
Joining_year int);

Insert into EMPL values
(101,"Alice","HR",60000,"2020"),
(102,"Bob","IT",75000,"2018"),
(103,"Charlie","Finance",50000,"2021"),
(104,"David","IT",80000,"2015"),
(105,"Eve","HR",45000,"2022");

Select * from EMPL;

Select emp_id,Name,
IF(Salary>=60000,Salary*0.10,Salary*0.05)
from EMPL;

Select emp_id,Name,
IF(Joining_year<2020,"Experiences","Newcomer")
from EMPL;

Select emp_id,Name,
IF(Salary>75000,"High Earner","Average Earner")
from EMPL
 where Department = "IT";
 
 Select emp_id,Name,
 IF(Salary>70000,"Eligible","Not Eligible")
 from EMPL
 where Department = "IT";
 
 Select emp_id,Name,
 IF(emp_id%2,"EVEN","ODD")
 from EMPL;

Select Joining_year,
IF(Joining_year%4 = 0 OR Joining_year%400 = 0,"LEAP","NOT LEAP")
from EMPL;



