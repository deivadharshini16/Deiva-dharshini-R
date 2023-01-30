USE db_hex;
-- Create User Table

Create Table users (
UserID int NOT NULL,
UserName varchar(250),
password varchar(55),
FullName varchar(255),
IsActive bit,
category varchar(50),
Primary key(UserID)
);

-- Create Productmaster table
Create Table ProductMaster(
productid int NOT NULL,
productName varchar(50),
AvailableQty bigint,
Primary key(productid)
); 

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

