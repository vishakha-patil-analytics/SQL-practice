#Show database
show databases;
##DDL (Data Defination langauge)
#Create
#Drop
#Alter
#rename
#Truncate
#Create databases;
create database batch_4;
#Drop database
drop database batch_4;
#Use database
use batch_4;
#create table
create table Employee(
emp_id int,
emp_name varchar(50),
emp_role varchar(50),
emp_location varchar(40),
emp_salary int,
primary key(emp_id));
select * from employee;
#Alter table
alter table employee add column empadhar int;
alter table employee add column emp_mobileno int;
#drop column
alter table employee drop column empadhar;
alter table employee drop column emp_mobileno;
#rename
alter table employee rename column emp_location to emp_address;
##DML (Data Manipulation Langauge)
#Insert
#Update
#Delete
select * from employee;
truncate table employee;
insert into employee(emp_id,emp_name ,emp_role ,emp_Address,emp_salary )values (1,"Pallavi","DA","Mumbai",50000);
insert into employee(emp_id,emp_name ,emp_role ,emp_Address,emp_salary )values (2,"Vaishali","Ds","Pune",60000);
insert into employee(emp_id,emp_name ,emp_role ,emp_Address,emp_salary )values (3,"Vishakha","TL","Hydrabad",75000);
insert into employee(emp_id,emp_name ,emp_role ,emp_Address,emp_salary )values (4,"Kabir","DS","Pune",70000);
insert into employee(emp_id,emp_name ,emp_role ,emp_Address,emp_salary )values (5,"Atharv","PD","Benglore",65000);
#Update
 update employee set emp_role="DA" where emp_id=3;
update employee set emp_salary=75000 where emp_id=4;
#delete
delete from employee where  emp_id =1;
##Operators In SQL
#1.Comparison Operator
#equal to
select * from employee where emp_name='vishakha';
select * from employee where emp_role='ds';
#Not Equal to
select * from employee where emp_role!="da";
select * from employee where emp_address!="mumbai";
#Greater than
select * from employee where emp_salary>70000;
#Less Than
select * from employee where emp_salary<69000;
#Greater than or equal to
select * from employee where emp_salary>=71000;
#less than or equal to
select * from employee where emp_salary<=60000;
#2. Arithmatic Operators
select Emp_name ,emp_salary,emp_salary+5000 as "bonus" from employee;
select Emp_name ,emp_salary,emp_salary-2000 as "pf" from employee;
select Emp_name ,emp_salary,emp_role,emp_salary*2 as "increment " from employee where emp_id=4;
insert into employee(emp_id,emp_name ,emp_role ,emp_Address,emp_salary )values (1,"Pallavi","DA","Mumbai",50000);
#Like Operator
select * from employee where emp_name like "a%";
select * from employee where emp_name like "v%";
select * from  employee where emp_name like "%i";
select * from employee where emp_name like "%a%";
#Between Operator 
select emp_id,emp_name,emp_salary from employee where emp_salary between 50000 and 70000;
select emp_id,emp_name,emp_salary from employee where emp_salary between 71000 and 80000;
#In Operator
select emp_name,emp_role from employee where emp_role in ("DA");
select emp_name,emp_role,emp_address from employee where emp_role in ("DS","PD","TL");
#And Operator
select * from employee;
select * from employee where emp_name="vishakha" and emp_role="da";
select * from employee where emp_name="Pallavi" and emp_salary=56000;
#OR Operator
select * from employee where emp_name="kabir" or emp_role="da";
#Not Operator
select * from employee where not emp_name="atharv";
select * from employee where not emp_role="DA";
## Clauses
#1.WHERE clause
select * from employee where emp_id=1;
select * from employee where emp_name="vishakha";
select emp_name,emp_role,emp_id from employee where emp_id=4;
select emp_name,emp_salary from employee where emp_salary>50000;
#Order By
select emp_name,emp_salary from employee order by emp_salary;
select emp_name,emp_salary,emp_role from employee order by emp_salary desc;
#Count
select count(emp_id) from employee where emp_salary=50000;
select count(emp_id) from employee where emp_salary>45000;
select count(emp_id) from employee where emp_name="vishakha";
#distinct Count
select* from employee;
select count(distinct emp_role) as "Role" from employee;
select count(distinct emp_address) as "Address" from employee;
select count(distinct emp_name) as "Name" from employee;
select count(distinct emp_salary) as "salary" from employee;
#GroupBy
select count(emp_id),emp_role from employee group by emp_role;
select count(emp_id),emp_role from employee group by emp_id;
select sum(emp_salary),emp_role from employee group by emp_role;
#Having clause
select emp_role,sum(emp_salary) from employee group by emp_role having sum(emp_salary)>55000;
select emp_address,sum(emp_salary) from employee group by emp_address having sum(emp_salary)>=50000;
#Joins
#Inner Join
#Left Join
#Right Join
#Outer Join
create table t1(
city varchar(50),
Temperature int);
insert into t1(city,temperature) values ("Chicago",16),("Washington",17),("Sanfransisco",18),("Orlando",19);
select * from t1;
create table t2(
city varchar(50),
Humidity int);
insert into t2(city,Humidity) values ("Chicago",60),("Washington",61),("Sanfransisco",62),("New york",71);
select * from t2;
#inner join
select t1.city,t1.temperature,t2.humidity from t1 inner join t2 on t1.city=t2.city;
#left join
select t1.city,t1.temperature,t2.humidity from t1 left join t2 on t1.city=t2.city;
#right join
select t2.city,t2.humidity,t1.temperature from t1 right join t2 on t1.city=t2.city;
#outer join
select t1.city,t1.temperature,t2.humidity from t1 left join t2 on t1.city=t2.city union
select t2.city,t1.temperature,t2.humidity from t1 right join t2 on t1.city=t2.city;
#constrain-Rules
#1.Not null ---- ensure that values not contain any null values.
#2.Unique ----- Ensure that values should be contain unique values.
#3.Primary key ---- It is conmbination of not null and unique constrain.
#4.check constrain
#5.Default constrain
#6.Foreign key --- It is a reference of primary key.
#NOT NULL
create table s1(
Name Varchar(50) not null,
ID int not null);
select * from s1;
insert into s1(name,id) values ("ABC",1),("DEF",2),("XYZ",3);
create table ss1(
name varchar(50) not null,
Lname varchar(50),
id int not null);
select * from ss1;
drop table ss1;
#Unique constrain
create table s2(
name varchar(15) not null,
id int unique );
insert into s2(name,id) values("Vaishali",1),("Pallavi",1);
insert into s2(name,id) values("Vaishali",1),("Pallavi",2);
select* from s2;
insert into s2(name,id) values("Vishakha",3),("Vishakha",5);
#Check constrain
create table s3(
name varchar(20),
age int check(age>=18));
insert into s3(name,age)values("ABC",18),("XYZ",17);
select * from s3;
insert into s3(name,age)values("LMN",19),("HGH",23);









 











