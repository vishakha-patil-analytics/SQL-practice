show databases;
create database practice;
use practice;
create table students(
st_id int,
st_name varchar(50),
marks int,
city varchar(50),
primary key(st_id)); 
insert into students(st_id,st_name,marks,city) values
(1,"riya",80,"pune"),
(2,"siya",90,"Mumbai"),
(3,"jiya",85,"Hydrabad"),
(4,"vidhi",95,"Delhi"),
(5,"veda",90,"kolkata");
select * from students;
alter table students add age int ;
alter table students drop column age;
alter table students drop age;
alter table students modify city varchar(40);
update students set city='pune' where st_id=3;
update students set st_name='ridhi' where st_id=1;
delete from students where city='pune';
rename table students to learners;
select* from learners;
alter table learners rename column st_name to name;
rename table learners to students;
select * from students;
insert into students(st_id,name,marks,city) values (1,'Jiya',80,"pune");
insert into students(st_id,name,marks,city) values(3,'ridhi',85,'hydrabad');
select name from students;
select * from students where city="mumbai";
select name,marks,marks+5 as "viva" from students;
select st_id,marks,marks-2 as "practical" from students;
select * from students where name like "%i";
alter table students add grade varchar(50); 







