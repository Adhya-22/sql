create database movie_db;

use movie_db;

create table movie_info(
movie_name varchar(100) not null,
genre enum('Action','Comedy','Horror','Sci-Fi'),
movie_language char(20),
budget decimal(12,2),
IMDb_rating float,
collection double,
Director_Name varchar(80)
);

insert into movie_info values
(null,'Sci-Fi','English',160000000.00,8.8,850000000.00,'Christopher Nolan');

insert into movie_info values
('Joker','Action','English',55000000.00,8.4,1070000000.00,'Todd Phillips');

insert into movie_info values
('Parasite','Comedy','Korean',11400000.00,8.5,258000000.00,'Bong Joon-ho');

insert into movie_info values
('The Conjuring','Horror','English',20000000.00,7.5,320000000.00,'James Wan');


insert into movie_info(movie_name,genre,movie_language,budget,IMDb_rating,collection,Director_Name) values
('Interstellar','Sci-Fi','English',165000000.00,8.6,700000000.00,'Christopher Nolan');

insert into movie_info(movie_name,genre,movie_language,budget,IMDb_rating,collection,Director_Name) values
('Get Out','Horror','English',4500000.00,7.7,255000000.00,'Jordan Peele');

insert into movie_info(movie_name,genre,movie_language,budget,IMDb_rating,collection,Director_Name) values
('3 Idiots','Comedy','Hindi',55000000.00,8.4,400000000.00,'Rajkumar Hirani');

insert into movie_info(movie_name,genre,movie_language,budget,IMDb_rating,collection,Director_Name) values
('Mad Max Fury Road','Action','English',150000000.00,8.1,375000000.00,'George Miller');


insert into movie_info values
('Avatar','Sci-Fi','English',237000000.00,7.9,2900000000.00,'James Cameron'),
('Annabelle','Horror','English',6500000.00,5.4,257000000.00,'John Leonetti'),
('Rush Hour','Comedy','English',90000000.00,7.0,245000000.00,'Brett Ratner'),
('Gladiator','Action','English',103000000.00,8.5,465000000.00,'Ridley Scott');

select * from movie_info;

update movie_info set IMDb_rating=8.7 where movie_name='Joker';

delete from movie_info where genre='Horror';

drop table movie_info;

create table actors(
actor_name varchar(100) not null,
gender enum('Male','Female','Other'),
role_name char(30) unique,
salary decimal(10,2),
popular binary,
net_worth double
);

insert into actors values
('Yash','Male','RockyBhai',15000000.00,'1',53000000.00);

insert into actors values
(null,'Male','PushpaRaj',18000000.00,'1',47000000.00);

insert into actors values
('Sudeep','Male','RockyBhai',12000000.00,'1',25000000.00);

insert into actors values
('Rashmika Mandanna','Female','Srivalli',9000000.00,'0',8000000.00);


insert into actors(actor_name,gender,role_name,salary,popular,net_worth) values
('Puneeth Rajkumar','Male','James',20000000.00,'1',60000000.00);

insert into actors(actor_name,gender,role_name,salary,popular,net_worth) values
('Sai Pallavi','Female','Malar',7000000.00,'1',9000000.00);

insert into actors(actor_name,gender,role_name,salary,popular,net_worth) values
('Darshan','Male','Kranti',17000000.00,'1',40000000.00);

insert into actors(actor_name,gender,role_name,salary,popular,net_worth) values
('Samantha Ruth Prabhu','Female','Raji',14000000.00,'0',13000000.00);


insert into actors values
('Rajinikanth','Male','Jailer',25000000.00,'1',55000000.00),
('Prabhas','Male','Baahubali',30000000.00,'0',65000000.00),
('Vijay','Male','Leo',28000000.00,'1',50000000.00),
('Deepika Padukone','Female','Shantipriya',22000000.00,'1',70000000.00);

select * from actors;

update actors set salary=35000000.00 where actor_name='Prabhas';

delete from actors where popular=0;

drop table actors;

create table staff(
staff_ID int unique,
staff_name varchar(100) not null,
department enum('Editing','Camera','Sound','VFX'),
shift char(15),
salary decimal(9,2),
experience float not null
);

insert into staff values
(101,'Rahul Kumar','Editing','Morning',85000.00,5.5);

insert into staff values
(101,'Sneha Rao','VFX','Night',95000.00,6.2);

insert into staff values
(103,null,'Camera','Evening',72000.00,4.8);

insert into staff values
(104,'Megha Singh','Sound','Morning',68000.00,null);


insert into staff(staff_ID,staff_name,department,shift,salary,experience) values
(105,'Karan Mehta','Editing','Night',88000.00,5.1);

insert into staff(staff_ID,staff_name,department,shift,salary,experience) values
(106,'Priya Sharma','VFX','Morning',99000.00,7.0);

insert into staff(staff_ID,staff_name,department,shift,salary,experience) values
(107,'Rohit Verma','Camera','Evening',75000.00,4.4);

insert into staff(staff_ID,staff_name,department,shift,salary,experience) values
(108,'Anjali Nair','Sound','Night',69000.00,3.5);

insert into staff values
(109,'Vikram Shetty','Editing','Morning',83000.00,5.9),
(110,'Neha Kapoor','VFX','Evening',97000.00,6.8),
(111,'Suresh Babu','Camera','Night',71000.00,4.0),
(112,'Divya Iyer','Sound','Morning',66000.00,2.9);

select * from staff;

update staff set salary=120000.00 where staff_name='Divya Iyer';

delete from staff where department='Sound';

drop table staff;

create table theater(
theater_ID int unique,
screen_number bigint,
theater_name varchar(100) not null,
city enum('Bangalore','Mumbai','Delhi','Chennai'),
seat_type char(20),
ticket_price decimal(8,2),
rating float,
daily_revenue double not null
);

insert into theater values
(201,90001,'PVR Cinemas','Bangalore','Premium',350.00,4.5,250000.00);

insert into theater values
(201,90002,'INOX','Mumbai','Luxury',500.00,4.7,350000.00);

insert into theater values
(203,90003,null,'Delhi','Standard',250.00,4.3,180000.00);

insert into theater values
(204,90004,'Galaxy Screens','Chennai','VIP',600.00,4.8,null);

insert into theater(theater_ID,screen_number,theater_name,city,seat_type,ticket_price,rating,daily_revenue) values
(205,90005,'Miraj Cinemas','Bangalore','Standard',220.00,4.1,150000.00);

insert into theater(theater_ID,screen_number,theater_name,city,seat_type,ticket_price,rating,daily_revenue) values
(206,90006,'Asian Multiplex','Mumbai','Premium',400.00,4.6,310000.00);

insert into theater(theater_ID,screen_number,theater_name,city,seat_type,ticket_price,rating,daily_revenue) values
(207,90007,'Movie Time','Delhi','Luxury',550.00,4.4,280000.00);

insert into theater(theater_ID,screen_number,theater_name,city,seat_type,ticket_price,rating,daily_revenue) values
(208,90008,'SRS Cinema','Chennai','VIP',650.00,4.9,450000.00);

insert into theater values
(209,90009,'Aura Theater','Bangalore','Premium',370.00,4.2,240000.00),
(210,90010,'Silver Screen','Mumbai','VIP',700.00,4.9,500000.00),
(211,90011,'Dream Cinema','Delhi','Standard',210.00,3.9,130000.00),
(212,90012,'Royal Multiplex','Chennai','Luxury',580.00,4.7,390000.00);

select * from theater;

update theater set ticket_price=800.00 where theater_name='Skyline Cinemas';

delete from theater where city='Delhi';

drop table theater;

create table booking_tickets(
booking_ID int unique,
booking_number bigint not null unique,
customer_name varchar(100) not null,
payment_mode enum('UPI','Card','Cash','NetBanking'),
seat_category char(15),
amount decimal(8,2),
tax float,
final_amount double
);

insert into booking_tickets values
(301,500001,'Rohan Sharma','UPI','Premium',850.00,18.0,1003.00);

insert into booking_tickets values
(301,500002,'Ananya Rao','Card','VIP',1200.00,18.0,1416.00);

insert into booking_tickets values
(303,null,'Karthik R','Cash','Standard',400.00,18.0,472.00);

insert into booking_tickets values
(304,500004,null,'NetBanking','Luxury',1500.00,18.0,1770.00);

insert into booking_tickets(booking_ID,booking_number,customer_name,payment_mode,seat_category,amount,tax,final_amount) values
(305,500005,'Rahul Verma','UPI','VIP',1300.00,18.0,1534.00);

insert into booking_tickets(booking_ID,booking_number,customer_name,payment_mode,seat_category,amount,tax,final_amount) values
(306,500006,'Sneha Kapoor','Card','Premium',900.00,18.0,1062.00);

insert into booking_tickets(booking_ID,booking_number,customer_name,payment_mode,seat_category,amount,tax,final_amount) values
(307,500007,'Vijay Kumar','Cash','Standard',350.00,18.0,413.00);

insert into booking_tickets(booking_ID,booking_number,customer_name,payment_mode,seat_category,amount,tax,final_amount) values
(308,500008,'Pooja Shetty','NetBanking','Luxury',1700.00,18.0,2006.00);

insert into booking_tickets values
(309,500009,'Arjun Reddy','UPI','Premium',950.00,18.0,1121.00),
(310,500010,'Kavya Menon','Card','VIP',1400.00,18.0,1652.00),
(311,500011,'Harsha Gowda','Cash','Standard',300.00,18.0,354.00),
(312,500012,'Divya Iyer','NetBanking','Luxury',1800.00,18.0,2124.00);

select * from booking_tickets;

update booking_tickets set final_amount=1600.00 where customer_name='Amit Joshi';

delete from booking_tickets where payment_mode='Cash';

drop table booking_tickets;

select customer_name from booking_tickets;

select * from booking_tickets where final_amount=1500.00
