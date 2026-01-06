create database table2;
use table2;
CREATE TABLE table2 (
    Empno     int,
    Ename     VARCHAR(20),
    Job       VARCHAR(15),
    MGR       int,
    Hiredate  DATE,
    Sal       decimal(7,2),
    COMM      decimal(7,2),
    Dept_No   int
);
rename table table2 to emp;
INSERT INTO emp (Empno, Ename, Job, MGR, Hiredate, Sal, COMM, Dept_No) VALUES
(7369, 'Smith', 'Clerk', 7902, '1980-12-17', 800.00, NULL, 20),
(7499, 'Allen', 'Salesman', 7698, '1981-02-20', 1600.00, 300.00, 30),
(7521, 'Ward', 'Salesman', 7698, '1981-02-22', 1250.00, 500.00, 30),
(7566, 'Jones', 'Manager', 7839, '1981-04-02', 2975.00, NULL, 20),
(7654, 'Martin', 'Salesman', 7698, '1981-09-28', 1250.00, 1400.00, 30),
(7698, 'Blake', 'Manager', 7839, '1981-05-01', 2850.00, NULL, 30),
(7782, 'Clark', 'Manager', 7839, '1981-06-09', 2450.00, NULL, 10),
(7788, 'Scott', 'Analyst', 7566, '1982-12-09', 3000.00, NULL, 20),
(7839, 'King', 'President', NULL, '1981-11-17', 5000.00, NULL, 10),
(7844, 'Turner', 'Salesman', 7698, '1981-06-08', 1500.00, 0.00, 30),
(7876, 'Adams', 'Clerk', 7788, '1983-01-12', 1100.00, NULL, 20),
(7900, 'James', 'Clerk', 7698, '1981-12-03', 950.00, NULL, 30),
(7902, 'Ford', 'Analyst', 7566, '1981-12-03', 3000.00, NULL, 20),
(7934, 'Miller', 'Clerk', 7782, '1982-01-21', 1300.00, NULL, 10);
##Q1. Display all the information of the EMP table
select * from emp;
##Q2. Display unique Jobs from EMP table
 
##Q5. Display Empno, Ename, Job, Hiredate and experience of all Managers
select empno,ename,hiredate from emp where job='manager';
