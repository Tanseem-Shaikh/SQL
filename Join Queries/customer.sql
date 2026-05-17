create database customer;
use customer;
create table customer(cid int primary key,cName varchar(20));
insert into customer(cid,cName)values(1,'Riya'),(2,'Mahira'),(3,'Atik'),(4,'Hania');
select * from customer;

create table product(pid int primary key,pName varchar(30),price int );
insert into product(pid,pName,price)values(1001,'pen',10),(1002,'book',100),(1003,'pencil',10),(1004,'sharpner',10);
select * from product;

create table orders(oid int primary key,quantity int,pid int,cid int,foreign key(pid) references product(pid),foreign key(cid) references customer(cid));
insert into orders(oid,quantity,pid,cid)values(111,2,1001,1),(112,4,1002,2),(113,7,1003,3),(114,20,1004,3),(115,10,1001,1),(116,15,1002,3);
select * from orders;

-- inner join
select customer.cName,product.pName,product.price from orders  inner join customer  on orders.cid=customer.cid
inner join product  on orders.pid=product.pid;

-- right join
select customer.cName,product.pName,product.price from orders  right join customer  on orders.cid=customer.cid
inner join product  on orders.pid=product.pid;

-- left join
select customer.cName,product.pName,product.price from orders  left join customer  on orders.cid=customer.cid
inner join product  on orders.pid=product.pid;

-- full join
select customer.cName,product.pName,product.price from orders  right join customer  on orders.oid=customer.cid
inner join product  on orders.pid=product.pid
union
select customer.cName,product.pName,product.price from orders  left join customer  on orders.cid=customer.cid
inner join product  on orders.pid=product.pid;







