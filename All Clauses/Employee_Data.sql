create database capgemini;
 use capgemini;

create table employee_Data (id int primary key auto_increment,name varchar(20),profile varchar(20),email varchar(20),salary int,age int, experience int);

insert into employee_Data(name,profile,email,salary,age,experience) values('Rani','dev','rani@gmail.com',11000,43,27),('Raj','test','raj@gmail.com',21000,33,17),('Radha','test','rasha@gmail.com',26000,38,21),('Raj','dev','raj12@gmail.com',51000,32,12),('John','dev','john@gmail.com',51000,39,27);

desc Employee_Data;

 select * from Employee_Data;

 select count(salary) as salary_expences from Employee_Data;

select sum(salary) as salary_expences from Employee_Data;

 select profile,max(salary) as maximum_Salary from Employee_Data group by profile;

 select  avg(experience) as average_experience  from Employee_Data;


select * from Employee_Data where salary=(select max(salary) from Employee_Data);

 select name,experience,min(salary) as minimum_Salary from Employee_Data group by name,experience;

select count(*) as working_Employee from Employee_Data;

select name from Employee_Data where profile='test' and salary>25000;

update Employee_Data set profile='support' where id=3;

select name,salary from Employee_Data where salary=(select max(salary) from Employee_Data where salary<(select max(salary)from Employee_Data));

 select name,salary from Employee_Data where salary=(select min(salary) from Employee_Data where salary>(select min(salary)from Employee_Data));

select avg(salary) as avg from Employee_Data where profile='dev';

select name ,salary ,experience from Employee_Data where experience=(select min(experience) from Employee_Data) ;

select name,salary,age from Employee_Data where salary=(select max(salary)  from Employee_Data )and age=(select min(age)  from Employee_Data);


