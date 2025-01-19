
create table Trainer
(
Id int primary key,
Name varchar(50),
Gender varchar(10),
Experience int
)
create table Student
(
RollNumber int primary key,
Name varchar(50),
Gender varchar(10),
City varchar(50),
TrainerId int foreign key references Trainer(Id)
)

select * from Trainer
select * from Student

insert into Trainer values (1, 'vikul', 'male', 14), (2, 'usha', 'female', 3)

insert into Student values (1, 'akash', 'male', 'pune', 1), (2, 'vikas', 'male', 'mumbai', 1)
insert into Student values (3, 'sneha', 'female', 'pune', 1) 

 insert into Student values  (4, 'prathmesh', 'male', 'pune', 2)
 
drop table Trainer
drop table Student
