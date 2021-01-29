use WFA3DotNet
--1. Create table
create table Product(
ProductId int not null primary key identity(1,1),
Description varchar(20) not null unique,
SetQty int not null
check(setqty=1 or setqty=5 or setqty=10)
default 1,
Rate decimal(10,2)
check(rate>=51 and rate<=5000)
)

--2.Insert 20 records
insert into Product values('Foundation',5,1500.23)
insert into Product values('Concealer',1,1000.3)
insert into Product values('Eyeliner',10,500.25)
insert into Product values('kajal',5,200.43)
insert into Product values('Eyeshadow',5,400.3)
insert into Product values('lipstick',1,60.3)
insert into Product values('Mascara',10,1750.23)
insert into Product values('Primer',5,2000.52)
insert into Product values('Blush',5,3000.25)
insert into Product values('Brush',1,700.3)
insert into Product values('Remover',10,900.23)
insert into Product values('Nail Paint',1,60.5)
insert into Product values('Mirror',10,100.3)
insert into Product values('Comb',5,300.2)
insert into Product values('Condour',1,3500.25)
insert into Product values('Cream',10,600.65)
insert into Product values('Mkit',5,4000)
insert into Product values('powder',1,80.23)
insert into Product values('Bindi',5,55.23)
insert into Product values('Bronzer',1,2500.2)

select * from Product


--3.Update all the rates with 10% rate hike

update Product set rate=(rate*1.1) from Product

--4.Delete last record by providing the ProductID.
delete from product where ProductId=20

--5.Alter the above table and add the following column
alter table product add Margincode char(1)
check(margincode='A' or margincode='B' or margincode=null)

--6.Update few records to set MarginCode to A and some records MarginCode to B

update product set margincode='A' where rate>2000

update product set margincode='B' where rate<100

--7.Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1.

update product set SetQty=10 where margincode='A' and setqty=1


