Create database library;

Use library;

Create table books(
id int Primary key Auto_Increment,
title VARCHAR(255),
author VARCHAR(100),
year YEAR,
genre VARCHAR(100));

Insert into books(id,title,author,year,genre) values(101,"The Great Gatsby","F.Scott Fitzgerald",1925,"Fiction");

Insert into books(id,title,author,year,genre) values(102,"Pride and Prejudice","Jane Austen",1913,"Romance");

Insert into books(id,title,author,year,genre) values(103,"To Kill a Mockingbird","Harper Lee",1960,"Fiction");

Insert into books(id,title,author,year,genre) values(104,"1984","George Orewell",1949,"Dystopian");

Insert into books(id,title,author,year,genre) values(105,"Moby Dick","Herman Melville",1951,"Adventure");

Select * from books;

Select * from books where title like "T%";

Select * from books where author like "%son";

Select * from books where title like "%and%";

Select * from books where title like "%bird";

Select * from books where title REGEXP "[A-Z]e | [A-Z]e | [A-Z]e";

Select * from books where title REGEXP "[0-9]";

Select * from books where author REGEXP "[A-J]";

Select * from books where genre REGEXP "Fiction|Adventure";

Select * from books where author REGEXP "[A-J]";

Select * from books where year like "19%" and Year>1950;

Select * from books where author REGEXP "[A-Z]e | [A-Z]e";

Select * from books where title REGEXP "^p" AND Title REGEXP "[A-Ze] | [A-Z]e";

Select * from books where Title REGEXP "[^a-zA-Z0-9]";

