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
