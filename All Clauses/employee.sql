
use employee;
desc employee;
select * from employee;
insert into employee( name,mob_no,country,salary,join_date,email)values('salt','2345679845','London',78000,'2022-10-23','salt23@gmail.com'),('Raj','2345679823','London',78000,'2024-10-02','raj3@gmail.com'),('Naira','2342379845','Australia',65000,'2022-11-23','naira@gmail.com'),('Sahil','2345673445','Australia',75000,'2022-03-21','Sahil12@gmail.com'),('Seema','2345379845','London',80000,'2020-05-23','seema45@gmail.com'),('Zoya','5465679845','Canada',78000,'2022-10-23','zoya@gmail.com'),('Mayank','2745679845','London',70000,'2025-01-3','mayank3@gmail.com');
select country , sum(salary) as total_salary from employee group by country;
update employee set country='London'where id=4;
alter table employee rename column id to emp_id;
alter table employee modify name varchar(40);
select * from employee where country='India';
select * from employee where salary>50000;
select sum(salary)from employee ;
select min(salary)from employee ;
select max(salary)from employee ;
select * from employee where salary=(select min(salary)from employee);
select * from employee where salary=(select max(salary)from employee);
select country,count(*) as total_employee from employee  group by country;
select *  from employee  order by salary  desc;
select *  from employee where salary between 50000 and 80000;
select *  from employee where join_date between  2025-01-03 and 2022-10-24 ;
select *  from employee where country in('India', 'London');
select * from employee where name like 'r%l';
select * from employee where name like 'r%';
select * from employee where name like '____';
select name as emp_name from employee;
select count(*) as total_employee from employee;
select * from employee limit 5;
select * from employee limit 14 offset 6;

