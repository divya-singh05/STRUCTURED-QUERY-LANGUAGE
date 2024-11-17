Create database company;

Use company;

create table employees(
id int auto_increment,
name VARCHAR(100),
position VARCHAR(100),
salary decimal(10,2),
date_of_joining date,
primary key(id));

insert into employees(name,position,salary,date_of_joining)
VALUES("JOHN DOE","MANAGER",55000.00,"2020-01-15"),
("JANE SMITH","DEVELOPER",48000.00,"2019-07-10"),
("ALICE JOHNSON","DESIGNER",45000.00,"2021-03-22"),
("BOB BROWN","DEVELOPER",5000.00,"2018-11-01");

Select * from employees;

Select * from employees where position = "DEVELOPER";

set sql_safe_updates=0;

Update employees
set salary = 46000.00 where Name = "ALICE JOHNSON";

Delete from employees where name = "BOB BROWN";

Select * from employees where salary < 48000;

Alter table employees add email varchar(100);

Update employees
Set email = "john.doe@company.com" where name = "JOHN DOE";

Select * from employees;

Select name ,salary from employees;

set sql_safe_updates=0;

Select count( * ) from employees where date_of_joining < "2020-01-01";

Select  * from employees order by salary DESC;

ALTER TABLE employees DROP email;

Select * from employees order by salary DESC limit 1;



