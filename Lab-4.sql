-------------- Alter Operation ---------------------

-------- Part - A -------
--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE Deposit ADD city varchar(50) , Pincode int

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT 
ALTER COLUMN CNAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT

--4. Rename Column ActNo to ANO.
sp_rename 'deposit.actno' , 'ANO'

--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT
DROP COLUMN city

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
sp_rename 'deposit' , 'Deposit_Detail'

select * from DEPOSIT_detail



-------- Part - B ----------
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
sp_rename 'Deposit_Detail.Adate' , 'AOpenDate'

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIl
DROP COLUMN AopenDate

--3. Rename Column CNAME to CustomerName.
sp_rename 'Deposit_Detail.Cname' , 'CustomerName'




------- Part - C ----------

create table STUDENT_DETAIL (
	 Enrollment_no Varchar(20),
	 Name varchar(25),
	 CPI decimal(5,2),
	 BirthDate Datetime
	 );


--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null). 
alter table STUDENT_DETAIL
add City varchar(20) not null , Backlog int
select * from STUDENT_DETAIL

--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35). 
alter table Student_Detail
alter column Name varchar(35)

--3. Change the data type DECIMAL to INT in CPI Column. 
alter table Student_Detail
alter column cpi int

--4. Rename Column Enrollment_No to ENO. 
sp_rename 'STUDENT_DETAIL.Enrollment_No' , 'ENO'

--5. Delete Column City from the student_detail table. 
alter table Student_Detail
drop column city

--6. Change name of table student_detail to STUDENT_MASTER.
sp_rename 'Student_Detail' , 'STUDENT_MASTER'




-------------------------- DELETE, Truncate, Drop Operation ------------------------------


-------- Part- A -------

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
delete from Deposit_Detail 
where amount >= 4000

--2. Delete all the accounts CHANDI BRANCH.
delete from Deposit_Detail 
where Bname = 'chandi'

--3. Delete all the accounts having account number (ANO) is greater than 105.
delete from Deposit_Detail 
where Ano > 105 

--4. Delete all the records of Deposit_Detail table. (Use Truncate)
Truncate table Deposit_Detail

--5. Remove Deposit_Detail table. (Use Drop)
drop table Deposit_Detail



---------- Part -B -------------

Create Table Emplyee_Master 
(
	EmpNo int ,
	EmpName Varchar(25),
	JoiningDate Datetime,
	Salary Decimal(8,2),
	City Varchar(20)
	);


Insert into Emplyee_Master (EmpNo , EMpName , JoiningDate , Salary , City ) values (101,'Keyur' ,'2002-1-5' ,12000,'Rajkot'),
						          (102,'Hardik' ,'2004-2-15' ,14000,'Ahmedabad'),
								  (103,' Kajal ' ,'2006-3-14' ,15000,'Baroda'),
								  (104,'Bhoomi' ,'2005-6-23' ,12500,'Ahmedabad'),
								  (105,'Harmit' ,'2004-2-15' ,14000,'Rajkot'),
								  (106,'Mitesh' ,'2001-9-25' ,5000,'Jamnagar'),
								  (107,'Meera ' , null ,7000,'Morbi'),
								  (108,'Kishan' ,'2003-2-6' ,10000, null );

select * from Emplyee_Master


--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
Delete From Emplyee_Master
where Salary >=14000

--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
Delete From Emplyee_Master
where city ='Rajkot'

--3. Delete all the Employees who joined after 1-1-2007.
Delete From Emplyee_Master
where JoiningDate ='2007-1-1'

--4. Delete the records of Employees whose joining date is null and Name is not null.
Delete From Emplyee_Master
where JoiningDate is null and EmpName is not null

--5. Delete the records of Employees whose salary is 50% of 20000.
Delete From Emplyee_Master
where Salary = 0.5*20000

--6. Delete the records of Employees whose City Name is not empty.
Delete From Emplyee_Master
where City is not  Null

--7. Delete all the records of Employee_MASTER table. (Use Truncate)
Truncate Table Employee_Master

--8. Remove Employee_MASTER table. (Use Drop)
Drop Table Emplyee_Master
