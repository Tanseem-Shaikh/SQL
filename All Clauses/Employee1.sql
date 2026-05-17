use capgemini;
Database changed

 create table emp(id int primary key, name varchar(20), salary int , department varchar(20), location varchar(20));

 alter table emp modify id int auto_increment;

desc emp;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| id         | int         | NO   | PRI | NULL    |       |
| name       | varchar(20) | YES  |     | NULL    |       |
| salary     | int         | YES  |     | NULL    |       |
| department | varchar(20) | YES  |     | NULL    |       |
| location   | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

insert into emp(name,salary,department,location)values('Anup',10000,'dev','Pune'),('Rani',26000,'test','Nashik'),('Jay',18000,'dev','Nagpur'),('vishal',22000,'support','Pune'),('Shina',35000,'test','Nagpur'),('Rony',11000,'support','Nagpur'),('Pooja',38000,'Dev','Nashik');


select * from emp;
+----+--------+--------+------------+----------+
| id | name   | salary | department | location |
+----+--------+--------+------------+----------+
|  1 | Anup   |  10000 | dev        | Pune     |
|  2 | Rani   |  26000 | test       | Nashik   |
|  3 | Jay    |  18000 | dev        | Nagpur   |
|  4 | vishal |  22000 | support    | Pune     |
|  5 | Shina  |  35000 | test       | Nagpur   |
|  6 | Rony   |  11000 | support    | Nagpur   |
|  7 | Pooja  |  38000 | Dev        | Nashik   |
+----+--------+--------+------------+----------+

 select name from emp;

+--------+
| name   |
+--------+
| Anup   |
| Rani   |
| Jay    |
| vishal |
| Shina  |
| Rony   |
| Pooja  |
+--------+

select count(id)  as total_amployee from emp;
+----------------+
| total_amployee |
+----------------+
|              7 |
+----------------+

select department   from emp;
+------------+
| department |
+------------+
| dev        |
| test       |
| dev        |
| support    |
| test       |
| support    |
| Dev        |
+------------+

select department,count(*) as total_worker from emp group by department;

+------------+--------------+
| department | total_worker |
+------------+--------------+
| dev        |            3 |
| test       |            2 |
| support    |            2 |
+------------+--------------+

 select * from emp where salary=(select max(salary) from emp);
+----+-------+--------+------------+----------+
| id | name  | salary | department | location |
+----+-------+--------+------------+----------+
|  7 | Pooja |  38000 | Dev        | Nashik   |
+----+-------+--------+------------+----------+

select * from emp where salary=(select min(salary) from emp);
+----+------+--------+------------+----------+
| id | name | salary | department | location |
+----+------+--------+------------+----------+
|  1 | Anup |  10000 | dev        | Pune     |
+----+------+--------+------------+----------+

select count(salary) as total_emp from emp where salary>20000;
+-----------+
| total_emp |
+-----------+
|         4 |
+-----------+

 select avg(salary) as avg_salary from emp;
+------------+
| avg_salary |
+------------+
| 22857.1429 |
+------------+

select * from emp order by(salary) desc limit 5;
+----+--------+--------+------------+----------+
| id | name   | salary | department | location |
+----+--------+--------+------------+----------+
|  7 | Pooja  |  38000 | Dev        | Nashik   |
|  5 | Shina  |  35000 | test       | Nagpur   |
|  2 | Rani   |  26000 | test       | Nashik   |
|  4 | vishal |  22000 | support    | Pune     |
|  3 | Jay    |  18000 | dev        | Nagpur   |
+----+--------+--------+------------+----------+

select * from emp where department='marketing';
Empty set (0.00 sec)


select * from emp where salary between 15000 and 25000;
+----+--------+--------+------------+----------+
| id | name   | salary | department | location |
+----+--------+--------+------------+----------+
|  3 | Jay    |  18000 | dev        | Nagpur   |
|  4 | vishal |  22000 | support    | Pune     |
+----+--------+--------+------------+----------+

 select * from emp where salary =null;
Empty set (0.00 sec)

select * from emp where name like 'j%';
+----+------+--------+------------+----------+
| id | name | salary | department | location |
+----+------+--------+------------+----------+
|  3 | Jay  |  18000 | dev        | Nagpur   |
+----+------+--------+------------+----------+

select * from emp order by(salary) desc ;
+----+--------+--------+------------+----------+
| id | name   | salary | department | location |
+----+--------+--------+------------+----------+
|  7 | Pooja  |  38000 | Dev        | Nashik   |
|  5 | Shina  |  35000 | test       | Nagpur   |
|  2 | Rani   |  26000 | test       | Nashik   |
|  4 | vishal |  22000 | support    | Pune     |
|  3 | Jay    |  18000 | dev        | Nagpur   |
|  6 | Rony   |  11000 | support    | Nagpur   |
|  1 | Anup   |  10000 | dev        | Pune     |
+----+--------+--------+------------+----------+

select sum(salary)  as total_salary from emp;
+--------------+
| total_salary |
+--------------+
|       160000 |
+--------------+

 select name,count(name) ascount from emp group by name having count(name)>1;
Empty set (0.00 sec)

 select * from emp where location='pune';
+----+--------+--------+------------+----------+
| id | name   | salary | department | location |
+----+--------+--------+------------+----------+
|  1 | Anup   |  10000 | dev        | Pune     |
|  4 | vishal |  22000 | support    | Pune     |
+----+--------+--------+------------+----------+

select avg(salary) as avg_salary from emp where department='dev';
+------------+
| avg_salary |
+------------+
| 22000.0000 |
+------------+

select * from emp where salary>(select avg(salary) from emp);
+----+-------+--------+------------+----------+
| id | name  | salary | department | location |
+----+-------+--------+------------+----------+
|  2 | Rani  |  26000 | test       | Nashik   |
|  5 | Shina |  35000 | test       | Nagpur   |
|  7 | Pooja |  38000 | Dev        | Nashik   |
+----+-------+--------+------------+----------+

 select * from emp where department='test'  order by(salary) limit 1;
+----+------+--------+------------+----------+
| id | name | salary | department | location |
+----+------+--------+------------+----------+
|  2 | Rani |  26000 | test       | Nashik   |
+----+------+--------+------------+----------+

