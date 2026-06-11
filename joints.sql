#---------------------------------11/06/2026---------------- JOINTS-----------------------------------------------

create database joints_sql;
use joints_sql;

create table cust(
cust_name varchar(10),
cust_id int,
address varchar(15),
city varchar(10),
countary varchar(10),
primary key(cust_id)
);

create table oder_info(
cust_id int,
order_id int,
employee_id int,
order_date datetime,
shipped int,
primary key(order_id)
);

insert into cust(cust_name,cust_id,address,city,countary) values 
("asri",1,"banglore","banglore","india"),
("cherry",2,"koti","hyd","india"),
("vasu",3,"shinlong","shinlong","china"),
("janu",4,"taipie","banglore","india"),
("ammu",5,"banglore","banglore","india"),
("annu",6,"hongkong","hongkong","hongkong");
insert into cust(cust_name,cust_id,address,city,countary) values 
("sunnu",10,"banglore","banglore","india"),
("cherry",11,"koti","hyd","europe");

insert into oder_info(cust_id,order_id,employee_id,order_date,shipped) values
(1, 1001, 201, '2025-01-10 09:15:00', 1),
(2, 1002, 202, '2025-01-15 11:30:00', 0),
(3, 1003, 203, '2025-02-05 14:45:00', 1),
(4, 1004, 201, '2025-02-18 16:20:00', 1),
(5, 1005, 204, '2025-03-01 10:00:00', 0),
(6, 1006, 202, '2025-03-12 13:10:00', 1);
insert into oder_info(cust_id,order_id,employee_id,order_date,shipped) values
(7, 1007, 207, '2025-01-10 09:15:00', 1),
(8, 1009, 208, '2025-01-15 11:30:00', 0);

select *from oder_info;
select *from cust;

SELECT c.cust_id, c.cust_name, o.order_id, o.order_date FROM cust c INNER JOIN oder_info o ON c.cust_id = o.cust_id;

SELECT c.cust_id, c.cust_name, o.order_id, o.order_date FROM cust c LEFT JOIN oder_info o ON c.cust_id = o.cust_id;

SELECT c.cust_id, c.cust_name, o.order_id, o.order_date FROM cust c RIGHT JOIN oder_info o ON c.cust_id = o.cust_id;

SELECT c.cust_id, c.cust_name, o.order_id, o.order_date FROM cust c LEFT OUTER JOIN oder_info o ON c.cust_id = o.cust_id;

SELECT c.cust_id, c.cust_name, o.order_id, o.order_date FROM cust c RIGHT OUTER JOIN oder_info o ON c.cust_id = o.cust_id;

SELECT c.cust_name, c.city, o.order_id FROM cust c JOIN oder_info o ON c.cust_id = o.cust_id WHERE c.city = 'banglore';

SELECT cust_name, city FROM cust WHERE city = 'banglore' UNION SELECT cust_name, city FROM cust WHERE city = 'hyd';

SELECT city FROM cust UNION ALL SELECT countary FROM cust;

select c.cust_id,o.order_id from oder_info o inner join cust c on c.cust_id=o.order_id;

select c.cust_id, cust_name, o.order_id from cust c inner join oder_info o on c.cust_id=o.order_id;

SELECT cust_id FROM cust INTERSECT SELECT cust_id FROM oder_info;