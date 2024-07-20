create table EMP
(
	EID int,
	Ename Varchar(20),
	Department varchar(20),
	Salary int,
	JoiningDate datetime,
	City varchar(20)
	);

Insert into EMP values  ( 101 , 'Rahul' , 'Admin' , 56000 , '1990-1-1' , 'Rajkot' ) ,
						( 102 , 'Hardik' , 'IT' , 18000 , '1990-9-25' , 'Ahemdabad' ) ,
						( 103 , 'Bhavin' , 'HR' , 25000 , '1991-5-14' , 'Baroda' ) ,
						( 104 , 'Bhoomi' , 'Admin' , 39000 , '1991-2-8' , 'Rajkot' ) ,
						( 105 , 'Rohit' , 'IT' , 17000 , '1990-7-23' , 'Jamnagar' ) ,
						( 106 , 'Priya' , 'IT' , 9000 , '1990-10-18' , 'Ahemdabad' ) ,
						( 107 , 'Bhoomi' , 'HR' , 34000 , '1991-12-25' , 'Rajkot' )

select * from EMP

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively. 
select max(salary) as Highest , min(salary) as Lowest from EMP

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, 
--respectively.
select sum(salary) as Total_Sal , avg(salary) as Average_Sal from EMP

--3. Find total number of employees of EMPLOYEE table.
select count(ename) as Total_Employees from EMP

--4. Find highest salary from Rajkot city. 
select max(salary) as Highest from EMP
where city = 'Rajkot'

--5. Give maximum salary from IT department. 
select max(salary) as Maximum from EMP
where Department = 'IT'

--6. Count employee whose joining date is after 8-feb-91.
select count(EName) from emp
where JoiningDate > '1991-2-8'

--7. Display average salary of Admin department.
select avg(salary) as Average from EMP
where Department = 'Admin'

--8. Display total salary of HR department. 
select sum(salary) as TOtal from EMP
where Department = 'HR'

--9. Count total number of cities of employee without duplication. 
select count(DISTINCT city) as NUMBER_CITY from EMP

--10. Count unique departments. 
select count(DISTINCT Department) as Dept_No from EMP

--11. Give minimum salary of employee who belongs to Ahmedabad. 
select min(salary) as Lowest from EMP
where city = 'Ahemdabad'

--12. Find city wise highest salary. 
select city , max(salary) as MAXIMUM  from EMP
group by city

--13. Find department wise lowest salary. 
select Department , min(salary) as MINMUM  from EMP
group by Department

--14. Display city with the total number of employees belonging to each city. 
select city , count(Ename) as numbers  from EMP
group by city

--15. Give total salary of each department of EMP table. 
select Department , sum(salary) as Total  from EMP
group by Department

--16. Give average salary of each department of EMP table without displaying the respective department 
--name.
select avg(salary) as Average  from EMP
group by Department





---------------------------  Part - B  -------------------------------------

--1. Count the number of employees living in Rajkot. 
select count(Ename) as Emp_Rajkot from EMP
where city = 'Rajkot'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE. 
select max(salary) - min(salary) as DIFFERENCE from EMP

--3. Display the total number of employees hired before 1st January, 1991.
select count(Ename) as Total from Emp
where JoiningDate < '1991-1-1'






------------------------  Part - C -------------------------------------

--1. Count the number of employees living in Rajkot or Baroda.
select count(EName) from EMP
where city in ('Rajkot' , 'Baroda')

--2. Display the total number of employees hired before 1st January, 1991 in IT department. 
select count(Ename) from EMP
where Department='IT' and JoiningDate < '1991-1-1'

--3. Find the Joining Date wise Total Salaries. 
select JoiningDate , sum(salary) from EMP
group by JoiningDate

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
select Department , max(salary) as maximum , city from EMP
where city like 'r%'
group by Department , City




















------------------ Extra -----------------


--- Find the Employee Name with the Highest Salary for Each Department
select Ename ,department ,  max(salary) from EMP
where salary in (select max(salary) from EMP group by Department)
group by Department , ename