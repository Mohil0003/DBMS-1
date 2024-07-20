create table student
(
StuID INT ,
FirstName VARCHAR(25) ,
LastName VARCHAR(25) ,
Website VARCHAR(50) ,
City VARCHAR(25),
Address VARCHAR(100)
);

insert into student values (1011 , 'keyur' , 'patel' , 'techonthenet.com', 'Rajkot' ,  'A-303 ''Vasant Kunj'', Rajkot') ,
						   (1022 , 'Hardik ' , 'Shah' , 'digminecraft.com', 'Ahmedabad' ,  '""Ram Krupa"" , Raiya Road') ,
						   (1033 , 'Kajal ' , 'Trivedi' , 'bigactivities.com', 'Baroda' ,  'Raj bhavan plot ,  near garden') ,
						   (1044 , 'Bhoomi ' , 'Gajera' , 'checkyourmath.com', 'Ahmedabad' ,  '"Jig''s Home" , Narol') ,
						   (1055 , 'Harmit' , 'Mitel ' , '@me.darshan.com', 'Rajkot' ,  'B-55 , Raj Residency ') ,
						   (1066 , 'Ashok ' , 'Jani' , null, 'Baroda' ,  'A502 , Club House Building')

select * from student 



------------- Part - A -----------------

--1. Display the name of students whose name starts with ‘k’. 
select FirstName from student 
where FirstName like 'k%'

--2. Display the name of students whose name consists of five characters.
select FirstName from student 
where FirstName like '_____'

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters. 
select FirstName , LastName from student 
where city like '_____a'

--4. Display all the students whose last name ends with ‘tel’. 
select * from student 
where LastName like '%tel'

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’. 
select * from student 
where FirstName like 'ha%t'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
select * from student 
where FirstName like 'k_y%'

--7. Display the name of students having no website and name consists of five characters. 
select * from student 
where Website is null and FirstName like '_____'

--8. Display all the students whose last name consist of ‘jer’.  
select * from student
where LastName like '%jer%'

--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
select * from student 
where city like '[r,b]%'

--10. Display all the name students having websites.
select * from student 
where Website is not null

--11. Display all the students whose name starts from alphabet A to H. 
select * from student 
where FirstName like '[a-h]%'

--12. Display all the students whose name’s second character is vowel.
select * from student 
where FirstName like '_[a,e,i,o,u]%'

--13. Display the name of students having no website and name consists of minimum five characters. 
select * from student 
where Website is null and FirstName like '_____%'

--14. Display all the students whose last name starts with ‘Pat’.
select * from student 
where LastName like 'Pat%'

--15. Display all the students whose city name does not starts with ‘b’. 
select * from student 
where city not like 'b%'








------------------  Part - B --------------------------



--1. Display all the students whose name starts from alphabet A or H. 
select * from student 
where FirstName like '[a,h]%'

--2. Display all the students whose name’s second character is vowel and of and start with H. 
select * from student 
where FirstName like 'h[a,e,i,o,u]%'

--3. Display all the students whose last name does not ends with ‘a’.
select * from student 
where LastName not like '%a'

--4. Display all the students whose first name starts with consonant. 
select * from student 
where FirstName not like '[a,e,i,o,u]%'

--5. Display all the students whose website contains .net 
select * from student 
where Website like '%.net%'




-------------------------- Part - C -----------------------------------

--1. Display all the students whose address consist of -. 
select * from student
where Address like '%-%'

--2. Display all the students whose address contains single quote or double quote. 
select * from student
where Address like '%''%''%' or Address like '%"%"%'

--3. Display all the students whose website contains @. 
select * from student
where Website like '%@%'

--4. Display all the names those are either four or five characters. 
select * from student
where FirstName like '____' or FirstName like '_____'