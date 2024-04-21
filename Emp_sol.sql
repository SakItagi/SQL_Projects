use etl1;

create table emp12(id int,fname varchar(30),lname varchar(40),salary int,Gender varchar(10));

select * from emp12;


insert into emp12
values(1,'Bhanu','Pratap',75,'M'),
(2,'Priya','Anand',80,'F'),
(3,'Savendra','Singh',85,'M'),
(4,'Riya','Gupta',90,'F'),
(5,'Komal','Joshi',80,'F'),
(6,'Supriya','Deshmukh',87,'F'),
(7,'Abhi','Singh',77,'M'),
(8,'Bhavesh','Sharma',66,'M'),
(9,'Tanu','Chauhan',85,'F'),
(10,'Om','Prakash',70,'M');

select * from emp12;

-- show salary of all employees

select salary from emp12;

-- show the fnames and salaries of all employees

select fname,salary from emp12;

-- show the fnames having salary greater than 75

select fname from emp12 where salary>75;

-- show the fname,lname of emp whch are female

select fname,lname from emp12 where Gender='F';

-- show the details of employees which are male and having salary greater than 75

select * from emp12 where Gender='M' and salary>75;

-- show the details of id 1,3,5,6,8

select * from emp12 where id in (1,3,5,6,8);

-- show the details of employees having salary from 60 to 80

select * from emp12 where salary between 60 and 80;

-- Show the details of abhi and komal

select * from emp12 where fname in ('Abhi','Komal');

-- show the details of all employees except tanu

select * from emp12 where fname!='Tanu';

-- Add the details of Danish Prasad earning 85 at id 11

insert into emp12(id,fname,lname,salary)
values(11,'Danish','Prasad',85);

-- Add komal sharma to table without salary, gender and id

insert into emp12(fname,lname)
values('Komal','Sharma');


-- show the details of employees having i in their fname


select * from emp12 where fname like '%i%';

-- Show the details of employees having a at 2nd position of their fname

select * from emp12 where fname like '_a%';

-- show the details of employees having 'a' at third last position of their lname

select * from emp12 where lname like '%a__';

-- delete the details of id 3 and 5.

delete from emp12 where id in (3,5);


-- add column location

alter table emp12 add column location varchar(50);

-- change the salary of id 1 and 8 to 97.

update emp12 set salary=97 where id in (1,8);


-- insert the values of location of females to 'vashi'

update emp12 set location='Vashi' where Gender='F';

-- remove the column location

alter table emp12 drop column location;

select * from emp12;

-- show the details of employees of 7,8 and 9th row

select * from emp12 limit 6,3;

-- show the details of first 2 females.

select * from emp12 where Gender='F' limit 1,2;


-- show the fname and lname of 4th and 5th row.

select fname,lname from emp12 limit 3,2;


-- show the details of highest paid employee.

select * from emp12 order by salary desc limit 1;

-- show the top 3 highest paid employees.

select * from emp12 order by salary desc limit 3;

-- show the details of employee having 3rd highest salary.

select * from emp12 order by salary desc limit 2,1;

-- show the details of highest paid male employee.

select * from emp12 where Gender='M' order by Salary desc limit 1;

-- show the fname,salary of 2nd highest paid female.

select fname,lname,salary from emp12 where Gender='F' order by salary desc limit 1,1;

-- who has the highest salary amongst id 2,3,4,6,7

select * from emp12 order by salary desc limit 1;

-- show the average salary of all employees

select avg(salary) from emp12;

-- show the double of salary of all employees as d_sal.

select salary,(2*salary) as d_sal from emp12;





 
