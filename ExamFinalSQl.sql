create database ExamFinal
go
use ExamFinal
go

create table Department(
DepartID int primary key,
DepartName varchar(50) not null,
Description varchar(50) not null
)

create table Employee(
EmpCode char(6) primary key,
FirstName varchar(30) not null,
LastName varchar(30) not null,
Birthday smalldatetime not null,
Gender bit default 1,
Address varchar(100),
DepartID int,
Salary money,
foreign key (DepartID) references Department(DepartID)
)

insert into Department values ('01', N'DepartA', N'dirty')
insert into Department values ('02', N'DepartB', N'goodjob')
insert into Department values ('03', N'DepartC', N'amazing')

insert into Employee values ('001', N'Nguyen', N'Anh', N'2002-07-13', N'1', N'HaNoi', N'001', N'100')
insert into Employee values ('002', N'Tran', N'Trinh', N'2024-01-15', N'1', N'ThanhHoa', N'002', N'200')
insert into Employee values ('003', N'Vu', N'Khoi', N'2024-01-15', N'1', N'HaNoi', N'003', N'300')

select *from Department
select *from Employee
UPDATE Employee
SET Salary = Salary * 1.1;

SELECT EmpCode, FirstName, LastName, Birthday, Gender, Address, DepartID, Salary FROM Employee