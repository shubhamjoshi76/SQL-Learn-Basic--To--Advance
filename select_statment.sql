create table Student
(
RollNumber int,
Name varchar(50),
Gender varchar(10),
City varchar(50),
Age int
)

select * from student


insert into Student values 
(1, 'akash', 'male', 'pune', 22),
(11, 'shruti', 'female', 'pune', 20),
(7, 'snehal', 'female', 'mumbai', 25),
(2, 'prakash', 'male', 'mumbai', 20),
(3, 'ajay', 'male', 'pune', 25),
(4, 'prathmesh', 'male', 'satara', 21),
(50, 'avinash', 'male', 'pune', 23),
(17, 'sujata', 'female', 'pune', 20),
(13, 'priyanka', 'female', 'mumbai', 28),
(9, 'sumit', 'male', 'satara', 32)


select RollNumber, name, Gender, City, Age from Student

select RollNumber, name, Gender from Student

-- to limit number of records 
select top 3 RollNumber, name, Gender from student
select top 7 RollNumber, name, Gender from student

insert into Student values (9, 'sumit', 'male', 'satara', 32)

select distinct RollNumber, name, Gender, City, Age from Student


-- filter records 
select RollNumber, Name, Gender, City, Age from Student where RollNumber = 9

select RollNumber, Name, Gender, City, Age from Student where RollNumber != 9
select RollNumber, Name, Gender, City, Age from Student where RollNumber <> 9

select RollNumber, Name, Gender, City, Age from Student where City <> 'pune'

select RollNumber, Name, Gender, City, Age from Student
where City = 'pune'

select RollNumber, Name, Gender, City, Age from Student
where City = 'pune' and Age = 22

select RollNumber, Name, Gender, City, Age from Student
where City = 'pune' or Age = 22

select RollNumber, Name, Gender, City, Age from Student
where Age >= 20 and Age <= 22

select RollNumber, Name, Gender, City, Age from Student
where Age between 20 and 22

select RollNumber, Name, Gender, City, Age from Student
where Age not between 20 and 22

select RollNumber, Name, Gender, City, Age from Student
where RollNumber = 13 and Rollnumber = 1 and ROllNumber = 2

select RollNumber, Name, Gender, City, Age from Student
where RollNumber = 13 or Rollnumber = 1 or ROllNumber = 2 or RollNumber = 7 or RollNumber = 17

select RollNumber, Name, Gender, City, Age from Student
where RollNumber in (13, 1, 2, 7, 17)

select RollNumber, Name, Gender, City, Age from Student
where RollNumber not in (13, 1, 2, 7, 17)


select RollNumber, Name, Gender, City, Age from Student
where Name = 'akash'

select RollNumber, Name, Gender, City, Age from Student
where Name = 'p'

select RollNumber, Name, Gender, City, Age from Student
where Name like 'p%'

select RollNumber, Name, Gender, City, Age from Student
where Name like '%h'

select RollNumber, Name, Gender, City, Age from Student
where Name like '%sh%'

select RollNumber, Name, Gender, City, Age from Student
where Name like '_k%'

select RollNumber, Name, Gender, City, Age from Student
where Name like '__i%'

insert into Student values (90, 'bond007', 'male', 'satara', 32)

select RollNumber, Name, Gender, City, Age from Student

select RollNumber, Name, Gender, City, Age from Student
where Name like '%[0-9]%'

select RollNumber, Name, Gender, City, Age from Student
where Name like '%[iu]%'

-- order by clause

select RollNumber, Name, Gender, City, Age from Student

select RollNumber, Name, Gender, City, Age from Student order by RollNumber -- ascending order
select RollNumber, Name, Gender, City, Age from Student order by RollNumber desc

select RollNumber, Name, Gender, City, Age from Student order by Gender

select RollNumber, Name, Gender, City, Age from Student order by Gender, Age
select RollNumber, Name, Gender, City, Age from Student order by Gender, Age desc