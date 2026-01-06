create database school;
use school;
create table students(
studentID int ,
name varchar(20),
age int,
course  varchar(30),
marks  int );
insert into students (studentID,name,age,course,marks) values (1,"sam",21,"DA",85);
insert into students (studentID,name,age,course,marks) values (2,"Ram",22,"DS",85);
insert into students (studentID,name,age,course,marks) values (3,"siya",23,"TL",85);
insert into students (studentID,name,age,course,marks) values (4,"jiya",24,"PD",85);
insert into students (studentID,name,age,course,marks) values (5,"piya",25,"JD",85);
select * from students;
select name,marks from students;
select * from students where age>23;
update students set marks = 87 where studentid=2;
update students set marks = 80 where studentid=3;
update students set marks = 75 where studentid=4;
update students set marks = 70 where studentid=5;
select * from students where marks between 71 and 80;
select* from students where name like "s%";
#Display all students sorted by marks (highest first)
select * from students order by marks desc;
#Display top 3 students by marks
select * from students order by marks desc limit 3;
#Display students sorted by name alphabetically
select name from students order by name;
#Students with marks > 70 AND course = 'Pd'
select * from students where course ='pd' and marks>70;
#Students with marks > 80 OR course = 'Java'
select * from students where marks>80 or course='java';
#Students enrolled in courses 'da', 'pd', 'jd'
select * from students where course in ('DA', 'PD', 'JD'); 
#Find the total number of students
select count(studentid) from students;
#Find the average marks of all students
select avg(marks) from students;
#find Minimum marks,maximum marks
select min(marks) from students;
select max(marks) from students;
#Display the number of students in each course
select course,count(studentid) from students group by course;
#Display courses having more than 1 student
select course,count(studentid)from students group by course having count(course)>1;
#Display courses where the average marks are greater than 70
select avg(marks),course from students group by course having avg(marks)>70;
#Update marks to 95 for the student with id = 1
update students set marks =95 where studentid=1;
#Delete the student whose id = 5
delete from students where studentid=5;
select max(marks),course from students group by course;

