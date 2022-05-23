drop table if exists orders;

create table orders(
ORD_ID int primary key auto_increment,
ORD_AMOUNT int not null,
ORD_DATE date not null,
CUS_ID int,
PRICING_ID int,
foreign key(CUS_ID) references customer(CUS_ID),
foreign key(PRICING_ID) references supplier_pricing(PRICING_ID));

alter table orders auto_increment=101;

desc orders;

insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(1500,'2021-10-06',2,1);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(1000,'2021-10-12',3,5);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(30000,'2021-09-16',5,2);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(1500,'2021-10-05',1,1);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(3000,'2021-08-16',4,3);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(1450,'2021-08-18',1,9);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(789,'2021-08-18',3,7);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(780,'2021-10-06',5,6);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(3000,'2021-10-06',5,3);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(2500,'2021-10-06',2,4);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(1000,'2021-10-06',4,5);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(789,'2021-10-06',4,7);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(31000,'2021-10-06',1,8);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(1000,'2021-10-06',3,5);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(3000,'2021-10-06',5,3);
insert into orders(ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values(99,'2021-10-06',2,14);

update orders set ORD_DATE='2021-09-01' where ORD_ID=107;
update orders set ORD_DATE='2021-09-07' where ORD_ID=108;
update orders set ORD_DATE='2021-09-10' where ORD_ID=109;
update orders set ORD_DATE='2021-09-10' where ORD_ID=110;
update orders set ORD_DATE='2021-09-15' where ORD_ID=111;
update orders set ORD_DATE='2021-09-16' where ORD_ID=112;
update orders set ORD_DATE='2021-09-16' where ORD_ID=113;
update orders set ORD_DATE='2021-09-16' where ORD_ID=114;
update orders set ORD_DATE='2021-09-16' where ORD_ID=115;
update orders set ORD_DATE='2021-09-17' where ORD_ID=116;

select * from orders;

