use sakila;
show tables;
#1. Extract first_name and last_name of actor
select first_name,last_name from actor;
#2. extract first name and last name of actor as a full name
select concat(first_name," ",last_name) as "Full Name" from actor;
#3. You need to find the actor id,first name,last name of an actor whom you know only first name is joe.
select actor_id,first_name,last_name from actor where first_name="joe";
#4. You need to find the actor id,first name,last name of an actor whom you know only first name is TOM.
select actor_id,first_name,last_name from actor where first_name="TOM";
#5.find all the actor whos last name contains the letter 'GEN'.
select * from actor where last_name like "%GEN%";
#6.find all the actor whos list name contains the letter 'LI' and arrange the data in order.
select * from actor where last_name like "%LI%" order by actor_id;
#7.Using IN,display the country id and country column of the following countries afganistan,bangladesh,china.
select * from country;
select country_id,country from country where country in ("afghanistan","bangladesh","china");
#8.add description column in actor table.
alter table actor add column description varchar(50);
#9.Delete description column from actor.
alter table actor drop column description;
#10.The actor harpo williams was accidently enter in the actor table as harry williams ,write the query to fix name.
update actor set first_name= "harpo" where first_name= "harry" and last_name="williams";
#11.List the last name of actor as well as how many actor have same last name.
select last_name,count(last_name) as "last name" from actor group by last_name;
#12.list the last name of actor as well as how many actors have same last name but only for names that shared by atleast two actors.
select last_name,count(last_name) as "last name" from actor group by last_name having count(last_name)>2;





