create Database CSE_3A_189


------------- into operation ------------------------------

create table Crciket(
name varchar(20),
city varchar(20),
age int);

insert into Crciket values ('Sachin Tendulkar','Mumbai', 30),
						   ('Rahul Dravid' , 'Bombay' , 35),
						   ('M.S. Dhoni' , 'Jharkhand', 31),
						   ('Suresh Raina' , 'Gujarat' , 30)


--1. Create table Worldcup from cricket with all the columns and data.
select * into Worldcup From Crciket


--2. Create table T20 from cricket with first two columns with no data.
select Name , city into T20 from Crciket
where 1=2
select * from T20

--3. Create table IPL From Cricket with No Data
select * into IPL from Crciket
where 1=2
select * from IPL


-------part - b -------------
create table Employee
(
Name varchar(20),
City varchar(20),
Age int
);


insert into Employee values ('Jay Patel','Rajkot', 30),
						   ('Rahul Dave' , 'Baroda' , 35),
						   ('Jeet Patel' , 'Surat', 31),
						   ('Vijay Raval' , 'Rajkot' , 30)

select * from Employee

--1. Create table Employee_detail from Employee with all the columns and data.
select * into Employee_detail from Employee 
select * from Employee_detail


--2. Create table Employee_data from Employee with first two columns with no data.
select name , city into Employee_data from Employee 
where 1=2
select * from Employee_data


--3. Create table Employee_info from Employee with no Data
select * into Employee_info from Employee 
where 1=2
select * from Employee_info



------- part - C ---------

--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
insert  into Employee_info  select * from Employee 
where city = 'rajkot'
select * from Employee_info


--2. Insert the Data into Employee_info from Employee whose age is more than 32.
insert  into Employee_info  select * from Employee 
where Age > 32
select * from Employee_info




------------- Update Operation -------------------------

--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
update Deposit
set Amount = 5000
where amount = 3000
select * from deposit


--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table) 
update Borrow
set Bname = 'C.G. Road'
where CName = 'Anil'
select * from Borrow

--3. Update Account No of SANDEEP to 111 & Amount to 5000. (Use Deposit Table)
update deposit
set actno=111,amount=5000
where Cname = 'sandeep'
select * from deposit

--4. Update amount of KRANTI to 7000. (Use Deposit Table)
update deposit
set amount = 7000
where Cname ='kranti'
select * from deposit

--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
update branch
set Bname = 'Andheri West'
where Bname = 'Andheri'
select * from branch

--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
update deposit 
set Bname= 'Nehru Palace'
where cname = 'Mehul'
select * from deposit

--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit
--Table)
update deposit
set amount = 5000
where actno between 103 and 107
select * from deposit

--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
update deposit 
set adate='1995-4-1'
where Cname = 'anil'
select * from deposit

--9. Update the amount of MINU to 10000. (Use Deposit Table)
update deposit
set amount = 10000
where cname='minu'
select * from deposit

--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
update Deposit
set amount=5000 , adate='1996-4-1'
where CNAME ='pramod'
select * from deposit