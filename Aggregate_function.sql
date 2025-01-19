select * from Student

-- agregate functions

-- count() -> number of records in a table
select count(*) from Student 
select count(*) from Student where Gender = 'male' and City = 'pune'
select count(1) from Student 
select count(RollNumber) from Student 

-- min() -> returns minimum value
select * from Student
select min(Age) from Student

-- max() -> returns maximum value
select max(Age) from Student

-- sum() -> returns addition of all values
select sum(Age) from Student

-- avg() -> returns average value
select avg(Age) from Student


-- group by clause
select * from Student

-- Gender wise count
select Gender, count(Gender) as Total from Student
group by Gender

select City, count(City) as Total from Student
group by City

-- city wise gender wise count
select City, Gender, count(RollNumber) as Total from Student
group by City, Gender

-- gender wise minimum age 
select Gender, min(Age) from Student 
group by Gender



