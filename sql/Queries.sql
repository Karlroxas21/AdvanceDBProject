
--Single SQL Queries
--KARL
select * from Barber -- View the all values in Barber table
select * from Customer -- View the all values in Customer table
select * from Sales -- View the all values in Sales table
select * from Service -- View the all values in Service table

--SQL with WHERE Condition
--KARL
select * from Barber where BarberID=10; -- List the table Barber where BarberID is 10
select * from Barber where BarberID=11; -- List the table Barber where BarberID is 11
select * from Barber where BarberID=12; -- List the table Barber where BarberID is 12

--SQL Compound Conditions(AND,OR,NOT)
--KARL
select * from Sales
where ServiceID=30 AND BarberID=15; --List the table Sales where ServiceID is 30 and BarberID is 15
select * from Sales
where CustomerID=20 AND ServiceID=50; --List the table Sales where CustoemrID is 20 and ServiceID is 50

select * from Sales
where CustomerID=4 OR ReceiptNum=40; --List the value of CustomerID 4 or Search the ReceiptNum 40
select * from Sales
where CustomerID=14 OR ReceiptNum=510; --List the value of CustomerID 14 or Search the ReceiptNum 510

select * from Sales
where Received NOT IN(500, 200, 300); --List all values in Sales table but not Recevied = 500, 200, and 300
select * from Sales
where BarberID NOT IN(10, 23, 22); --List all values in Sales table but not BarberId = 10, 23, and 22

--SQL Computed Fields
--KARL
select count(Date)as TotalCustomerToday
from Sales
where Date='17 JUNE 2022'; --List total Customer in June 17 2022 from Sales table
select sum(Received)as TotalMoneyReceivedToday
from Sales
where Date='17 JUNE 2022'; --List total money received in June 17 2022 from Sales table

--SQL Where Application with a Range Search
--KARL
select * from Service
where Price >=200 AND Price<=500 --List all values in Service table where Price is ranging from 200 to 500
select * from Service
where Price >=500 AND Price <=1000 --List all values in Service table where Price is ranging from 500 to 1000
select * from Barber
where Rate >=300 AND Rate <=400 --List all values in Barber table where the Rate of barber is ranging from 300 to 400

--SQL Where Application with a Pattern Search
--KARL
select * from Service
where Title LIKE '%Hair Color%'; --Search in Service table the 'Hair Color' keywords
select * from Service
where Title NOT LIKE '%Hair Color%'; --Display all values in Service table except for 'Hair Color' keywords
select * from Service
where Title LIKE '%Spa%'; --Search in Service table the 'Spa' keyword

--Using LIKE Operator
--KARL
select Street from Barber
where Street like '%a'; --Pattern search for letter 'a' in Barber table
select Street from Barber
where Street like '_a%'; --Pattern search for containing letter 'a' in second letter in Barber table

--Using IN Operator
--KARL
select * from Barber
where City IN ('Manila', 'Taguig');  --Display all values in Barber if the City is = Taguig and Manila
select * from Barber
where Street IN ('Baker', 'Elegante', 'Aquino'); --Display all values in Barber if the Street is = Baker, Elegante and Aquino

--Using Sorting Queries
--KARL
select * from Service
order by Price              --Display all values in service in Price low to high
select * from Service
order by  Price desc		--Display all values in service in Price high to low
select * from Service
order by Description		 --Display all values in service in Description a-z

--SQL Group by and Having application
--KARL
select BarberID, count(ReceiptNum) as AllTotalCustomer from Sales
group by BarberID
having sum(total) >0		--In there time in barbershop, how many barbers served customers? and make a new column for the AllTotalCustomer
select ServiceID, sum(Price) as ServiceGreaterThanEqual500 from Service 
group by ServiceID
having sum(Price) >=500		--List the ServiceID if the Service cost greater than or equal to 500 and make a new column for the price

--Using SQL Functions (AVG, Sum, Max, Min, Count, Rollup) 2 QUERIES EACH
--?

--Joining Two Tables
--?

--Joining Multiple Tables
--?

--Alter table structure
--?

--Creating new table in existing table
--?

--Insert new data to the new table
--?

--Delete data to the new Table
--?

--Update data to to new table
--?

--Foreign Key Restriction
--**DISPLAY THE SQL CODE AND RESULTS, AND MIN. OF 2 Queries PER ITEM**