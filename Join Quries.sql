create database Employee_Data;
use Employee_Data;
create table department(deptid int primary key,deptName varchar(30));
desc department;
create table employee(empid int primary key,empName varchar(30) ,deptid int ,foreign key(deptid) references department(deptid));
desc employee;
insert into department(deptid,deptName)values(1,'HR'),(2,'SALES'),(3,'MARKETING'),(4,'FINANCE'),(5,'NULL');
select * from department;
insert into employee(empid,empName,deptid)values(101,'om',1),(102,'Sahil',2),(103,'Mariya',3),(104,'Riya',4),(105,'Naman',5),(107,'Riya',4),(109,'mahi',2),(108,'Aayra',3);
select * from employee;
-- inner join
select employee.empName,department.deptName from employee inner join department on employee.deptid=department.deptid;

-- right join
select employee.empName,department.deptName from employee right join department on employee.deptid=department.deptid;

-- left join
select employee.empName,department.deptName from employee left join department on employee.deptid=department.deptid;

-- Full join
select employee.empName,department.deptName from employee right join department on employee.deptid=department.deptid
union
select employee.empName,department.deptName from employee left join department on employee.deptid=department.deptid;

-- cross join 
select employee.empName,department.deptName from employee cross join department;

select employee.empName,employee.empid,department.deptid,department.deptName from employee cross join department;
