create table employee (empid int, ename varchar(50), salary int, location varchar(50));
desc employee;

insert into employee values (1, 'Sai', 200, 'Delhi');
insert into employee values (2, 'Sanket', 300, 'Chennai');
insert into employee values (3, 'Anmol', 100, 'Pune');
insert into employee values (4, 'Karan', 600 , 'chennai');
insert into employee values (5, 'Mahesh', 700 , 'DELHI');
insert into employee values (6, 'Ramesh', 600, 'delhi');
insert into employee values (7, 'Satish', 500, 'CHENNAI');
insert into employee values (8, 'Suraj', 700, 'PUNE');
insert into employee values (9, 'Harry', 900, 'Bangalore');
insert into employee values (6, 'Ryan', 900, 'BANGALORE');

commit;

select * from employee;
update employee set empid = 10 where ename = 'Ryan';

-- display all the employees working from delhi;
select * from employee where upper(location) ='DELHI';
-- or
select * from employee where lower(location) = 'delhi';

-- display all employees who earns more than 400 and from chennai
select * from employee where salary > 400 and location ='chennai'; -- not correct ans we have two emp from chennai with salary >400
select * from employee where salary > 400 and upper (location)='CHENNAI'; -- correct ans 

