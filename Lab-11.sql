------------------------- Implement SQL Joins ----------------------------------



----------- Part - A ------------

--1. Combine information from student and result table using cross join or Cartesian product.
select * from STU_INFO 
cross join RESULT


--2. Perform inner join on Student and Result tables.
select * from STU_INFO 
inner join RESULT
on STU_INFO.Rno = RESULT.Rno


--3. Perform the left outer join on Student and Result tables.
select * from STU_INFO 
left outer join RESULT
on STU_INFO.Rno = RESULT.Rno


--4. Perform the right outer join on Student and Result tables.
select * from STU_INFO 
right outer join RESULT
on STU_INFO.Rno = RESULT.Rno


--5. Perform the full outer join on Student and Result tables.
select * from STU_INFO 
full outer join RESULT
on STU_INFO.Rno = RESULT.Rno


--6. Display Rno, Name, Branch and SPI of all students.
select STU_INFO.Rno , STU_INFO.Name , STU_INFO.Bramch , RESULT.spi 
from STU_INFO full outer join RESULT
on STU_INFO.Rno = RESULT.Rno


--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
select STU_INFO.Rno , STU_INFO.Name , STU_INFO.Bramch , RESULT.spi 
from STU_INFO full outer join RESULT
on STU_INFO.Rno = RESULT.Rno
where STU_INFO.Bramch = 'CE' 


--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select STU_INFO.Rno , STU_INFO.Name , STU_INFO.Bramch , RESULT.spi 
from STU_INFO full outer join RESULT
on STU_INFO.Rno = RESULT.Rno
where STU_INFO.Bramch <> 'EC' 


--9. Display average result of each branch.
select STU_INFO.Bramch , avg(RESULT.spi) 
from STU_INFO left outer join RESULT
on STU_INFO.Rno = RESULT.Rno
group by STU_INFO.Bramch


--10. Display average result of CE and ME branch
select STU_INFO.Bramch , avg(RESULT.spi) as average
from STU_INFO left outer join RESULT
on STU_INFO.Rno = RESULT.Rno
where STU_INFO.Bramch = 'CE' or STU_INFO.Bramch = 'ME'
group by STU_INFO.Bramch






-------- Part - B ------------
--1. Display average result of each branch and sort them in ascending order by SPI.
select STU_INFO.Bramch , avg(RESULT.spi) 
from STU_INFO left outer join RESULT
on STU_INFO.Rno = RESULT.Rno
group by STU_INFO.Bramch
order by avg(RESULT.spi)

--2. Display highest SPI from each branch and sort them in descending order.
select STU_INFO.Bramch , max(RESULT.spi) as Highest
from STU_INFO left outer join RESULT
on STU_INFO.Rno = RESULT.Rno
group by STU_INFO.Bramch
order by max(RESULT.spi) desc



--------- Part - C -----------

--1. Retrieve the names of employee along with their manager’s name from the Employee table

select E.Name as Employee_Name , M.name as Manager_Name
From EMPLOYEE_MASTER E  join EMPLOYEE_MASTER M
on E.MangerNo = M.EmployeeNo
