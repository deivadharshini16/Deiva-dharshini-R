USE db_hex;


Create Table users (
UserID int identity(1,1) NOT NULL,
UserName varchar(250),
password varchar(55),
FullName varchar(255),
IsActive bit,
category varchar(50),
Primary key(UserID)
);

select * from users;
-- Create Productmaster table
Create Table ProductMaster(
productid int NOT NULL,
productName varchar(50),
AvailableQty bigint,
Primary key(productid)
); 

select * from Productmaster;

-- Create Tansaction table
Create Table Transactions (
TransactionId int NOT NULL,
Transactiondate date,
ProductId int,
TransactionType varchar(50),
Qty int,
UpdatedBy int,
primary key(TransactionsId)
);

select * from Transactions;

-- Insert values into the user table

Insert into users values (1,'Deiva','Deiva@123','Deivadharshini',1,'CSE');
Insert into users values (2,'sruthi','sruthi@123','SruthiDeiva',1,'ECE');
Insert into users values (3,'Sathya','sathya@123','SathyaDeiva',1,'It');


-- INsert values into the productmaster table

Insert into ProductMaster values(11,'Soap',5);
Insert into ProductMaster values(12,'oil',50);
Insert into ProductMaster values(13,'Shampoo',30);

-- Insert values into Transaction values
Insert into Transactions values('1.12.2001',11,'in',32,1);
Insert into Transactions values('2.12.2001',12,'in',33,2);
Insert into Transactions values('3.12.2001',13,'in',34,3);

-- Alter table by adding column

Alter table users Add phoneno int;
Alter table users Add Address varchar(50);
Alter table users Add city varchar(50); 

-- Alter table by adding new column

Alter table users Drop column FullName;
Alter table Productmaster Drop column ProductName;
Alter table users Drop column Password;


-- Upadte table by setting field

update Users set category='Developer' where UserId=1;
update Users set category='Delivery' where UserId=2;
update Users set category='customer' where UserId=3;

-- Select users from The table

Select * from users;
select UserName,category from users;
select distinct username,category from users;

-- Select values from Product master
Select * from ProductMaster;
Select * from ProductMaster where availableqty<2;
Select * from ProductMaster where availableqty>10;
Select * from ProductMaster where availableqty>20;

-- Select Values from transactions
select * from Transactions where transactiontype='in';
select * from ProductMaster where productName='oil';
insert into productmaster values(14,'liquid',35);

alter table users add constraint category default 'admin'for category;

Insert into users(username,password,fullname,isactive) values ('Deiva','Deiva@123','Deivadharshini',1);
Insert into users (username,password,fullname,isactive)  values ('sruthi','sruthi@123','SruthiDeiva',1);
Insert into users (username,password,fullname,isactive) values ('Sathya','sathya@123','SathyaDeiva',1);
select * from users;

select * from productmaster where availableqty not in(5,50);

Select * from productmaster where availableqty !=50;

select* from users;
select * from users where username like 'D%';
Select * from users where username like '_r%';
select * from users where username like '%a'; 


select max(availableqty) as Max_qty from productmaster;

select min(availableqty) as min_qty from productmaster; 

select sum(availableqty) as sum_qty from productmaster;

select count(*) as total_qty from productmaster;