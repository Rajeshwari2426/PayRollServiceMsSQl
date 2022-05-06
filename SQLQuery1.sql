----UC1 create database----
create database PayRollService;
use PayRollService;
-----UC2-Create Table----
CREATE TABLE EmployeePayRoll(
	Id int identity(1,1) primary key,
	Name varchar(200),
	Salary float,
	startDate date);
-------UC3-Insert data to table-----
INSERT INTO EmployeePayRoll (Name,Salary,startDate) Values('Rajeshwari',70000,getdate());
insert into EmployeePayRoll (Name, Salary, StartDate) values
('Deeraj', 70000.00, '2007-02-03'),
('Nani', 50000.00, '2010-05-04'),
('Jk', 60000.00, '2009-06-09'),
('Anushka', 40000.00, '2018-03-05'),
('Samantha', 50000.00, '2020-08-02');
--UC4-- Retrieve  data
select * from EmployeePayRoll where Name='Rajeshwari';
select Id,Name from EmployeePayRoll where Name='Deeraj';
select * from EmployeePayRoll;
--UC5-- Retrieve salary of particular employee and particular date range
select Salary from EmployeePayRoll where Name = 'Jk';
select * from EmployeePayRoll where StartDate between cast ('2018-01-01' as date) and GETDATE();
--UC6-- add Gender to Employee_Payroll Table and Update the Rows to reflect the correct Employee Gender
alter table EmployeePayRoll add Gender char(1);
update EmployeePayRoll set Gender = 'M' where Id in (2,3,4,5);
update EmployeePayRoll set Gender = 'F' where Id in (1,6,7);
--UC7-- find sum, average, min, max and number of male and female employees
select sum(Salary) as sumsalary,Gender from EmployeePayRoll group by Gender;
select avg(Salary) as avgsalary,Gender from EmployeePayRoll group by Gender; 
select max(Salary) as maxsalary,Gender from EmployeePayRoll group by Gender; 
select min(Salary) as minsalary,Gender from EmployeePayRoll group by Gender; 
select count(Name) as EmployeeCount,Gender from EmployeePayRoll group by Gender;  
--UC8-- add employee phone, department(not null), Address (using default values)
select * from EmployeePayRoll;
alter table EmployeePayRoll add Phone bigint;
update EmployeePayRoll set Phone = 9034569874 where Id IN (5,4,6,7);
update EmployeePayRoll set Phone = 9505569874 where Id IN (1,2,3);
alter table EmployeePayRoll add Address varchar(100) not null default 'Hyderabad';
alter table EmployeePayRoll add Department varchar(250) not null default 'IT';
--UC9-- Extend table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay.
alter table EmployeePayRoll add Basic_Pay float not null default 0.00;
update EmployeePayRoll set Basic_Pay=70000.00 where Id in (1,6,7); 
update EmployeePayRoll set Basic_Pay=50000.00 where Id=2;
update EmployeePayRoll set Basic_Pay=60000.00 where Id=3;
update EmployeePayRoll set Basic_Pay=40000.00 where Id=4;
update EmployeePayRoll set Basic_Pay=50000.00 where Id=5;
alter table EmployeePayRoll add Deductions float not null default 0.00,
								 Taxable_Pay float not null default 0.00, 
								 Income_Tax float not null default 0.00,
								 Net_Pay float not null default 0.00;
select * from EmployeePayRoll;
update EmployeePayRoll set Net_Pay = (Basic_Pay-Deductions-Taxable_Pay-Income_Tax);
--UC10-- Two departments for same employee
insert into EmployeePayRoll (Name, Salary, startDate, Gender, Phone, Address, Department, Basic_Pay, Deductions, Taxable_Pay, Income_Tax) values ('Dhoni', 60000.00, '2011-07-07', 'M', 950561230, 'Chennai', 'Sports', 60000.00, 1000.00, 2000.00, 1500.00);
								 


