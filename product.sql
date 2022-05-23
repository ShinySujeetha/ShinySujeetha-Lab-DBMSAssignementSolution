drop table if exists product;

create table product(
PRO_ID int primary key auto_increment,
PRO_NAME varchar(20) not null default 'dummy',
PRO_DESC varchar(60),
CAT_ID int,
foreign key(CAT_ID) references category(CAT_ID));

desc product;

insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('GTA V','Windows 7 and above with i5 processor and 8GB RAM',2);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('TSHIRT','SIZE-L with Black, Blue and White variations',5);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('ROG LAPTOP','Windows 10 with 15inch screen, i7 processor, 1TB SSD',4);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('OATS','Highly Nutritious from Nestle',3);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('HARRY POTTER','Best Collection of all time by J.K Rowling',1);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('MILK','1L Toned Milk',3);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('Boat Earphones','1.5Meter long Dolby Atmos',4);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('Jeans','Stretchable Denim Jeans with various sizes and color',5);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('Project IGI','compatible with windows 7 and above',2);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('Hoodie','Black GUCCI for 13 yrs and above',5);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('Rich Dad Poor Dad','Written by RObert Kiyosaki',1);
insert into product(PRO_NAME,PRO_DESC,CAT_ID) values ('Train Your Brain','By Shireen Stephen',1);

select * from product;


