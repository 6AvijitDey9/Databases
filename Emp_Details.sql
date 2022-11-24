use avijit_dey;
create table Emp_Details (Id numeric(2), Id_name varchar(10), Basic_salary numeric(6), Designation varchar(10), age numeric(2)); #Create table
alter table Emp_Details modify Basic_salary integer(6); #Modify column type
alter table Emp_Details modify Id_name varchar(15); #Modify column type
create table Emp_Details_trainee(trainee_Id numeric(2), Id_name varchar(10), Basic_salary numeric(6), Designation varchar(10), age numeric(2)); #Create table
insert into Emp_Details values  #Insert values into table
(1, 'Ruman', 6700, 'Manager', 28),
(2, 'Rohit', 7000, 'Manager', 24),
(3, 'Ranjan', 7500, 'Manager', 29),
(4, 'Ronin', 8000, 'Manager', 30),
(5, 'Ranjha', 9000, 'Manager', 32);
insert into Emp_Details_trainee select * from Emp_Details; 
select * from Emp_Details, Emp_Details_trainee;
alter table Emp_Details add skills varchar(15) after age;
alter table Emp_Details add DOJ date after skills;
update Emp_Details set skills= 'Java' where Id=1; #Update data
update Emp_Details set skills= 'C' where Id=2;
update Emp_Details set skills= 'C++' where Id=3;
update Emp_Details set skills= 'Python' where Id=4;
update Emp_Details set skills= 'Rust' where Id=5;
update Emp_Details set DOJ= '2022-03-23' where Id=1;
update Emp_Details set DOJ= '2022-02-21' where Id=2;
update Emp_Details set DOJ= '2022-05-06' where Id=3;
update Emp_Details set DOJ= '2022-09-9' where Id=4;
update Emp_Details set DOJ= '2022-11-18' where Id=5;
alter table Emp_Details_trainee modify Designation varchar(18);
update Emp_Details_trainee set Designation = 'Senior IT specialist';
update Emp_Details set skills = 'HTML' where skills = 'Rust';
delete from Emp_Details where DOJ='2022-02-21';
select * from Emp_Details where Basic_salary='9000'; #Select with condition
select * from Emp_Details where Basic_salary='9000' and Id_name='Ranjha'; #Select with and condition
select * from Emp_Details where Designation='Manager' or Id_name='Ranjha'; #Select with or condition
select * from Emp_Details where Basic_salary in ('9000', '7000'); #Select with in condition
select * from Emp_Details where Id_name like 'R%'; #Select with like condition, prename
select * from Emp_Details where Id_name like '%N'; #Select with like condition, postname
select * from Emp_Details where Id_name like '%N%'; #Select with like condition, middile
select * from Emp_Details where Id_name like 'R%N'; #Starts with and ends with
select * from Emp_Details where Id_name like 'Ru_an'; #Blank space in middle of name
