create database avijit_dey;
use avijit_dey;
create table Student (Sid int primary key auto_increment, Sname varchar(20) not null, Sphone bigint(11) not null unique, 
Semail varchar(30) not null unique, Squalification varchar(10) not null, Sdept varchar(20));
alter table Student Add age int after Sname; #add new column
alter table Student modify Squalification varchar(15) not null; #modify datatype size
alter table Student DROP COLUMN Sdept; #drop column
alter table Student rename to Student_Details; #change table name
drop table Student;
insert into Student_Details values (1, 'SQL', 24, 25111997, 'sql2022@gmail.com', 'MySql'); #Add rows into table
insert into Student_Details values (2, 'SQL2', 24, 25111998, 'sql2023@gmail.com', 'MySql'); #Add rows into table
insert into Student_Details values (3, 'SQL3', 24, 25111999, 'sql2024@gmail.com', 'MySql'); #Add rows into table
insert into Student_Details values (4, 'SQL4', 24, 25112000, 'sql2025@gmail.com', 'MySql'); #Add rows into table
insert into Student_Details values (5, 'SQL5', 24, 25112001, 'sql2026@gmail.com', 'MySql'); #Add rows into table
insert into Student_Details values (6, 'SQL6', 24, 25112002, 'sql2027@gmail.com', 'MySql'); #Add rows into table
insert into Student_Details values (7, 'SQL7', 24, 25112003, 'sql2028@gmail.com', 'MySql'); #Add rows into table
insert into Student_Details values (8, 'SQL8', 24, 25112004, 'sql2029@gmail.com', 'MySql'); #Add rows into table
insert into Student_Details values (9, 'SQL9', 24, 25112005, 'sql2030@gmail.com', 'MySql'); #Add rows into table
insert into Student_Details values (10, 'SQL10', 24, 25112006, 'sql20231@gmail.com', 'MySql'); #Add rows into table
insert into Student_Details values (0, 'SQL00', 24, 25112007, 'sql20232@gmail.com', 'MySql'); #Though I have given sid 0 still it will be auto incremented in actual table