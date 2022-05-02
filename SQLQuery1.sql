----UC1 create database----
create database PayRollService;
use PayRollService;
-----UC2-Create Table----
CREATE TABLE EmployeePayRoll(
	Id int identity(1,1) primary key,
	Name varchar(200),
	Salary float,
	startDate date);
  