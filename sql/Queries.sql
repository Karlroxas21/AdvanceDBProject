
--Single SQL Queries
--KARL
select * from Barber
select * from Customer
select * from Sales
select * from Service

--SQL with WHERE Condition
--KARL
select * from Barber where BarberID=10;
select * from Barber where BarberID=11;
select * from Barber where BarberID=12;

--SQL Compound Conditions(AND,OR,NOT)
--KARL
select * from Sales
where ReceiptNum=80 AND BarberID=15;--add 2 more
select * from Sales
where CustomerID=4 OR ReceiptNum=40;--add 2 more
select * from Sales
where Received NOT IN(500, 200, 300);--add 2 more

--SQL Computed Fields
--KARL
select count(Date)as TotalCustomerToday
from Sales
where Date='17 JUNE 2022';
select sum(Received)as TotalMoneyReceivedToday
from Sales
where Date='17 JUNE 2022';

--SQL Where Application with a Range Search
--KARL
select * from Service
where Price >=200 AND Price<=500
select * from Service
where Price >=500 AND Price <=1000
select * from Barber
where Rate >=300 AND Rate <=400

--SQL Where Application with a Pattern Search
--KARL
select * from Service
where Title LIKE '%Hair Color%';
select * from Service
where Title NOT LIKE '%Hair Color%';
select * from Service
where Title LIKE '%Spa%';

--Using LIKE Operator
--KARL
select Street from Barber
where Street like '%a';
select Street from Barber
where Street like '_a%';

--Using IN Operator
--KARL
select * from Barber
where City IN ('Manila', 'Taguig');
select * from Barber
where Street IN ('Baker', 'Elegante', 'Aquino');\

--Using Sorting Queries
--KARL
select * from Service
order by Price
select * from Service
order by  Price desc
select * from Service
order by Description

--SQL Group by and Having application
--KARL
select BarberID, count(Date) as TotalCustomerToday from Sales
group by BarberID
having sum(total) >0
select ServiceID, sum(Price) as ServiceGreaterThanEqual500 from Service 
group by ServiceID
having sum(Price) >=500

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