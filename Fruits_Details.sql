use avijit_dey;
create table Fruits (Fname varchar(20) not null, Fnum bigint(11), 
Flocation varchar(30) not null unique, Fspecification varchar(10) not null);
alter table Fruits Add Fid int after Fname;
alter table Fruits modify Fspecification varchar(20) not null;
alter table Fruits rename to Fruits_Details;
insert into Fruits_Details values('Mango', 12, 123456, 'Kolkata', 'Sweet');
insert into Fruits_Details values('Banana', 13, 123457, 'Bengal', 'Sweet');
insert into Fruits_Details values('Apple', 14, 123458, 'Kashmir', 'Sweet');
insert into Fruits_Details values('Cherry', 15, 123459, 'Ladakh', 'Sweet');
insert into Fruits_Details values('Coconut', 16, 123450, 'Tamil', 'Sweet');
truncate table Fruits_Details;
Drop table Fruits_Details;