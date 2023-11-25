create database if not exists travego;
use travego;
create table if not exists travego.passenger(Passenger_id int primary key, Passenger_name varchar(20), Category varchar(20),Gender varchar(20),Boarding_city varchar(20),Destination_city varchar(20),Distance int, Bus_type varchar(20));
insert into passenger values (1,'Sejal','AC','F','Bengaluru','Chennai',350,'Sleeper'),(2,'Anamol','Non-AC','M','Mumbai','Hyderabad',700,'Sitting'),(3,'Pallavi','AC','F','Panaji','Bengaluru',600,'Sleeper'),(4,'Khusboo','AC','F','Chennai','Mumbai',1500,'Sleeper'),(5,'Udit','Non-AC','M','Trivandrum','Panaji',1000,'Sleeper'),(6,'Ankur','AC','M','Nagpur','Hyderabad',500,'Sitting'),(7,'Hemant','Non-AC','M','Panaji','Mumbai',700,'Sleeper'),(8,'Manish','Non-AC','M','hYDERABAD','Bengaluru',500,'Sitting'),(9,'Piyush','AC','M','Pune','Nagpur',700,'Sitting');
select * from passenger;
update passenger set Boarding_city = 'Hyderabad' where Passenger_id =8; 
create table if not exists travego.price(id int primary key, Bus_type varchar(20), Distance int, Price int);
insert into price values (1,'Sleeper',350,770),(2,'Sleeper',500,1100),(3,'Sleeper',600,1320),(4,'Sleeper',700,1540),(5,'Sleeper',1000,2200),(6,'Sleeper',1200,2640),(7,'Sleeper',1500,2700),(8,'Sitting',500,620),(9,'Sitting',600,744),(10,'Sitting',700,868),(11,'Sitting',1000,1240),(12,'Sitting',1200,1488),(13,'Sitting',1500,1860);
select * from price;

-- a.	How many females and how many male passengers traveled a minimum distance of 600 KMs?
select Gender,passenger_name from passenger where distance >=600 order by passenger_name;

-- b.	Find the minimum ticket price of a Sleeper Bus
select min(Price) from price where bus_type like '%sleeper%';

-- c.	Select passenger names whose names start with character 'S' 
select passenger_name from passenger where passenger_name like 'S%';

-- d.	Calculate price charged for each passenger displaying Passenger name, Boarding City, Destination City, Bus_Type, Price in the output
