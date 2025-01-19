create database Batch24
use Batch24

Create Table student(
RollNumber int,
Name Varchar(20),
city Varchar (20),
Email Varchar(20))

Select * From student

insert into student values (1 ,'Shubham', 'Pune' , 'shubham@gmail.com')
insert into student values (2 ,'Dinesh', 'loni' , 'dinesh@gmail.com')
insert into student values (3 ,'Pavan', 'Dadh' , 'pavan@gmail.com')
insert into student values (4 ,'Priyanka', 'Sankeware' , 'priya@gmail.com')
insert into student values (5 ,'Sonali', 'Newasa' , 'sonali@gmail.com')
insert into student values (1 ,'Madhuri', 'pune' , 'madhuri@gmail.com')
insert into student values (1 ,'Sakshi', 'Pune' , 'sakshi@gmail.com')

select * from student

Alter table student add Age int
update student set age = 23 where rollnumber=1
update student set rollnumber = 6 where name='Madhuri'
update student set rollnumber = 7 where name='sakshi'

update student set age = 22 where rollnumber=7
update student set age = 18 where rollnumber=2
update student set age = 17 where rollnumber=3
update student set age = 28 where rollnumber=4
update student set age = 25 where rollnumber=5

--type of constraints
--1.Not null  2.Primary Key 3.Unique 4.Check 5.Default

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT, 
	Email varchar(50) unique,
    Course varchar(20) default 'Dot Net',
    Gender varchar(10) check (Gender = 'male' or Gender = 'female')
);
select * from Employees

insert into Employees values (1, 'shubham',23, 'shubham@gmail.com', 'MVC','male') 

--insert into Employees values (1, 'ram',26, 'ram@gmail.com', 'MVC','male') error primary key

 --insert into Employees values (1, '',23, 'shubham@gmail.com', 'MVC','male')  error not null

 insert into Employees values (2, 'pavan',17, 'dot net','pavan@gmail.com', 'male') 
 delete from Employees where EmployeeID=2
 insert into Employees values (2, 'pavan',17, 'pavan@gmail.com','dot net', 'male') 

 
drop table Student
drop table Employees











