
-- joins in sql

create table Trainer 
(
Id int primary key,
Name varchar(50),
Experience int
)

insert into Trainer values (1, 'vikul', 14), (2, 'usha', 3), (3, 'atul', 3)

create table Student 
(
RollNumber int primary key,
Name varchar(50),
City varchar(50),
TrainerId int foreign key references Trainer(Id)
)

insert into Student values (1, 'akash', 'pune', 1), (2, 'priyanka', 'pune', 1), 
(3, 'prakash', 'pune', 2), (4, 'bahubali', 'pune', null), (5, 'bhalla', 'pune', null)

go

select * from Trainer
select * from Student

-- inner join
select Student.Name as [Student Name], Trainer.Name as [Trainer Name]
from Student inner join Trainer 
on Student.TrainerId = Trainer.Id

select *
from Student inner join Trainer 
on Student.TrainerId = Trainer.Id

-- left table in general we pick foreign key table as left table
-- in our example, left table = Student, right table = Trainer

select Trainer.*
from Student inner join Trainer 
on Student.TrainerId = Trainer.Id


-- student name with trainer name
select Student.Name, Trainer.Name
from Student inner join Trainer 
on Student.TrainerId = Trainer.Id

-- table alias
select s.Name, t.Name
from Student s inner join Trainer t
on s.TrainerId = t.Id

-- be default join is inner join
select s.Name, t.Name
from Student s join Trainer t
on s.TrainerId = t.Id

-- left outer join
-- common plus uncommon data from left table

select s.Name as StudentName, t.Name as TrainerName
from Student s left outer join Trainer t 
on s.TrainerId = t.Id

select s.Name as StudentName, t.Name as TrainerName
from Student s left join Trainer t 
on s.TrainerId = t.Id

-- right outer join
-- common plus uncommon from right table

select * from Trainer

select s.Name as StudentName, t.Name as TrainerName
from Student s right outer join Trainer t
on s.TrainerId = t.Id

select s.Name as StudentName, t.Name as TrainerName
from Student s right join Trainer t
on s.TrainerId = t.Id

-- full outer join
-- common plus uncommon from both tables
select s.Name as StudentName, t.Name as TrainerName
from Student s full join Trainer t
on s.TrainerId = t.Id

-- cross join
-- it returns cartesian product from both tables
-- it matches all records from one table with each record from another table
-- no need of on condition

select s.Name as StudentName, t.Name as TrainerName
from Student s cross join Trainer t
