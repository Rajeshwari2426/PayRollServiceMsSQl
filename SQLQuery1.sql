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
