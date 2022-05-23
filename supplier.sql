drop table if exists supplier;

create table supplier(
SUPP_ID int primary key auto_increment,
SUPP_NAME varchar(50) not null,
SUPP_CITY varchar(50) not null,
SUPP_PHONE VARCHAR(50) not null);

desc supplier;

insert into supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE) values('Rajesh Retails','Delhi',1234567890);
insert into supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE) values('Appario Ltd.','Mumbai',2589631470);
insert into supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE) values('Knome products','Banglore',9785462315);
insert into supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE) values('Bansal Retails','Kochi',8975463285);
insert into supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE) values('Mittal Ltd.','Lucknow',7898456532);

select * from supplier;