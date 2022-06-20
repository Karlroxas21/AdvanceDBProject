
select * from Barber

--insert data in Barber
insert into Barber(FName, LName, City, Street, HireDate, Rate, Username, Password)
values('Karl', 'Roxas', 'Taguig', 'Baker', '15-JUNE-2022', 300,	'papers', 'papersiswhite');
insert into Barber(FName, LName, City, Street, HireDate, Rate, Username, Password)
values('Robert', 'Cruz', 'Makati', 'Quezon', '15-JUNE-2022', 300, 'black', 'sometimes');
insert into Barber(FName, LName, City, Street, HireDate, Rate, Username, Password)
values('Fiona', 'Maxine', 'Manila', 'Amorito', '19-APRIL-2021', 400,'usr1', 'pwfion');
insert into Barber(FName, LName, City, Street, HireDate, Rate, Username, Password)
values('Jerome', 'Cobre', 'Batangas', 'Alae', '5-JANUARY-2021', 300,'cobs', 'jerome_01');
insert into Barber(FName, LName, City, Street, HireDate, Rate, Username, Password)
values('Joaquim', 'Dela Cruz', 'Manila', 'Morayta', '5-FEBRUARY-2021', 250,'joqs', 'joqauim_joqs');
insert into Barber(FName, LName, City, Street, HireDate, Rate, Username, Password)
values('Karina', 'Dela Cruz', 'Caloocan', 'Elegante', '9-MARCH-2021', 350,'karina', 'realkarina');
insert into Barber(FName, LName, City, Street, HireDate, Rate, Username, Password)
values('Kristine', 'Biag', 'Makati', 'Jobert', '12-MAY-2021', 300,'kristine1', 'kristine_123');
insert into Barber(FName, LName, City, Street, HireDate, Rate, Username, Password)
values('Ralph', 'Cristobal', 'Pasig', 'J. Rizal', '17-JULY-2021', 350,'rc_17', 'rc_tiga_hanap_ng');
insert into Barber(FName, LName, City, Street, HireDate, Rate, Username, Password)
values('Rene', 'Victor', 'Manila', 'Manuel Q.', '19-AUGUST-2021', 300,'rj_source', 'iamrjdsource');
insert into Barber(FName, LName, City, Street, HireDate, Rate, Username, Password)
values('Vince', 'Regala', 'Rizal', 'Aquino', '8-NOVEMBER-2021', 350,'vince_gwap', 'ingsx');



select * from Customer
--insert data in Customer
insert into Customer(FName, LName, RegisterDate)
values('Jacques', 'Posthuma', '10-FEBRUARY-2022');
insert into Customer(FName, LName, RegisterDate)
values('Duncan', 'Bresnahan', '13-FEBRUARY-2022');
insert into Customer(FName, LName, RegisterDate)
values('Nanci', 'Boomer', '21-NOVEMBER-2021');
insert into Customer(FName, LName, RegisterDate)
values('Eugene', 'Super', '21-JUNE-2021');
insert into Customer(FName, LName, RegisterDate)
values('Yee', 'Minier', '22-JULY-2021');
insert into Customer(FName, LName, RegisterDate)
values('Juan', 'Mazzariello', '24-JULY-2021');
insert into Customer(FName, LName, RegisterDate)
values('Alma', 'Henkel', '25-JULY-2021');
insert into Customer(FName, LName, RegisterDate)
values('Shandra', 'Kiener', '29-NOVEMBER-2021');
insert into Customer(FName, LName, RegisterDate)
values('Chong', 'Padeken', '2-DECEMBER-2021');
insert into Customer(FName, LName, RegisterDate)
values('June', 'Beener', '27-JANUARY-2021');

select * from Service
--insert data in Service
insert into Service(Title, Description, Price)
values('Signature Haircut w/ Shampoo, 
Hot Towel & 10minutes Massage', 'Popogi ka', 200.00);
insert into Service(Title, Description, Price)
values('Beard Shave', 'Feeling bata ulit', 180.00);
insert into Service(Title, Description, Price)
values('Head Shave', 'Feeling bata ulit', 200.00);
insert into Service(Title, Description, Price)
values('Massage(Head, Back)10minutes', 
'Para kang nasa langit sa sobrang sarap', 250.00);
insert into Service(Title, Description, Price)
values('Massage(Hand, Foot)10minutes', 
'Para kang nasa langit sa sobrang sarap', 250.00);
insert into Service(Title, Description, Price)
values('Eyebrow','No Description', 100.00);
insert into Service(Title, Description, Price)
values('Student Haircut w/ Blowdry & Pomade (w/out shampoo',
'Tataas ang mga grades mo', 150.00);
insert into Service(Title, Description, Price)
values('Hair Color: Short', 'Gagwapo ka!', 500.00);
insert into Service(Title, Description, Price)
values('Hair Color: Medium', 'Gagwapo ka!', 700.00);
insert into Service(Title, Description, Price)
values('Hair Color: Long', 'Gagwapo ka!', 950.00);
insert into Service(Title, Description, Price)
values('Hair Spa: Short', 'Masarap to promise', 450.00);
insert into Service(Title, Description, Price)
values('Hair Spa: Medium', 'Masarap to promise', 650.00);
insert into Service(Title, Description, Price)
values('Hair Spa: Long', 'Masarap to promise', 800.00);
insert into Service(Title, Description, Price)
values('Mentholated Scalp Treatment',
'No Description', 500.00);
insert into Service(Title, Description, Price)
values('Anti-dandruff treatment','No Description', 600.00);
insert into Service(Title, Description, Price)
values('FFacial Treatment','No Description', 500.00);
insert into Service(Title, Description, Price)
values('Brazillian blowout: Short','No Description', 1000.00);
insert into Service(Title, Description, Price)
values('Brazillian blowout: Medium',
'No Description', 1500.00);
insert into Service(Title, Description, Price)
values('Brazillian blowout: Long','No Description', 2500.00);
insert into Service(Title, Description, Price)
values('Hair Color w/ Bleaching','No Description', 
3000.00);

--insert data in Sales
insert into Sales(BarberID, ServiceID, CustomerID, Date,
PaymentDesc, Received, Change, Total)
values((select BarberID from Barber where BarberID=10),
(select ServiceID from Service where ServiceID=5),
(select CustomerID from Customer where CustomerID=2),
'17-JUNE-2022', 'Cash', 500, 
(500-(select Price from Service where ServiceID=5)-
(select Rate from Barber where BarberID=10)),
(select Price from Service where ServiceID=5)+
(select Rate from Barber where BarberID=10));
--
insert into Sales(BarberID, ServiceID, CustomerID, Date,
PaymentDesc, Received, Change, Total)
values((select BarberID from Barber where BarberID=11),
(select ServiceID from Service where ServiceID=10),
(select CustomerID from Customer where CustomerID=4),
'17-JUNE-2022', 'Cash', 600, 
(600-(select Price from Service where ServiceID=10)-
(select Rate from Barber where BarberID=11)),
(select Price from Service where ServiceID=10)+
(select Rate from Barber where BarberID=11));
--
insert into Sales(BarberID, ServiceID, CustomerID, Date,
PaymentDesc, Received, Change, Total)
values((select BarberID from Barber where BarberID=12),
(select ServiceID from Service where ServiceID=15),
(select CustomerID from Customer where CustomerID=6),
'17-JUNE-2022', 'Cash', 600, 
(600-(select Price from Service where ServiceID=15)-
(select Rate from Barber where BarberID=12)),
(select Price from Service where ServiceID=15)+
(select Rate from Barber where BarberID=12));
--
insert into Sales(BarberID, ServiceID, CustomerID, Date,
PaymentDesc, Received, Change, Total)
values((select BarberID from Barber where BarberID=13),
(select ServiceID from Service where ServiceID=20),
(select CustomerID from Customer where CustomerID=8),
'17-JUNE-2022', 'Cash', 1000, 
(1000-(select Price from Service where ServiceID=20)-
(select Rate from Barber where BarberID=13)),
(select Price from Service where ServiceID=20)+
(select Rate from Barber where BarberID=13));
--
insert into Sales(BarberID, ServiceID, CustomerID, Date,
PaymentDesc, Received, Change, Total)
values((select BarberID from Barber where BarberID=14),
(select ServiceID from Service where ServiceID=25),
(select CustomerID from Customer where CustomerID=10),
'17-JUNE-2022', 'Cash', 500, 
(500-(select Price from Service where ServiceID=25)-
(select Rate from Barber where BarberID=14)),
(select Price from Service where ServiceID=25)+
(select Rate from Barber where BarberID=14));
--
insert into Sales(BarberID, ServiceID, CustomerID, Date,
PaymentDesc, Received, Change, Total)
values((select BarberID from Barber where BarberID=15),
(select ServiceID from Service where ServiceID=30),
(select CustomerID from Customer where CustomerID=12),
'17-JUNE-2022', 'Cash', 500, 
(500-(select Price from Service where ServiceID=30)-
(select Rate from Barber where BarberID=15)),
(select Price from Service where ServiceID=30)+
(select Rate from Barber where BarberID=15));
--
insert into Sales(BarberID, ServiceID, CustomerID, Date,
PaymentDesc, Received, Change, Total)
values((select BarberID from Barber where BarberID=16),
(select ServiceID from Service where ServiceID=35),
(select CustomerID from Customer where CustomerID=14),
'17-JUNE-2022', 'Cash', 500, 
(500-(select Price from Service where ServiceID=35)-
(select Rate from Barber where BarberID=16)),
(select Price from Service where ServiceID=35)+
(select Rate from Barber where BarberID=16));
--
insert into Sales(BarberID, ServiceID, CustomerID, Date,
PaymentDesc, Received, Change, Total)
values((select BarberID from Barber where BarberID=17),
(select ServiceID from Service where ServiceID=40),
(select CustomerID from Customer where CustomerID=16),
'17-JUNE-2022', 'Cash', 1000, 
(1000-(select Price from Service where ServiceID=40)-
(select Rate from Barber where BarberID=17)),
(select Price from Service where ServiceID=40)+
(select Rate from Barber where BarberID=17));
--
insert into Sales(BarberID, ServiceID, CustomerID, Date,
PaymentDesc, Received, Change, Total)
values((select BarberID from Barber where BarberID=22),
(select ServiceID from Service where ServiceID=45),
(select CustomerID from Customer where CustomerID=18),
'17-JUNE-2022', 'Cash', 1000, 
(1000-(select Price from Service where ServiceID=45)-
(select Rate from Barber where BarberID=22)),
(select Price from Service where ServiceID=45)+
(select Rate from Barber where BarberID=22));
--
insert into Sales(BarberID, ServiceID, CustomerID, Date,
PaymentDesc, Received, Change, Total)
values((select BarberID from Barber where BarberID=23),
(select ServiceID from Service where ServiceID=50),
(select CustomerID from Customer where CustomerID=20),
'17-JUNE-2022', 'Cash', 1500, 
(1500-(select Price from Service where ServiceID=50)-
(select Rate from Barber where BarberID=23)),
(select Price from Service where ServiceID=50)+
(select Rate from Barber where BarberID=23));

select * from Barber
select * from Customer
select * from Service
select * from Sales



