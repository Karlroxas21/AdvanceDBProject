create database Barbershop

--Barber table
create table Barber(
	BarberID int primary key identity(10, 1),
	FName  varchar(55),
	LName varchar(55),
	City varchar(55),
	Street varchar(55),
	HireDate date,
	Rate int,
	Username varchar(55),
	Password varchar(55)
)

--Service table
create table Service(
	ServiceID int primary key identity(5, 5),
	Title varchar(55),
	Description varchar(55),
	Price decimal(9,2)
)

--Customer table
create table Customer(
	CustomerID int primary key identity(2, 2),
	FName varchar(55),
	LName varchar(55),
	RegisterDate date
)

--Payment table
create table Sales(
	ReceiptNum int primary key identity(20, 10),
	BarberID int foreign key references Barber(BarberID),
	ServiceID int foreign key references Service(ServiceID),
	CustomerID int foreign key references Customer(CustomerID),
	Date date,
	PaymentDesc varchar(55),
	Received smallmoney,
	Change smallmoney,
	Total smallmoney,
)