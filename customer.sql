drop table if exists customer;

create table customer(
CUS_ID int primary key auto_increment,
CUS_NAME varchar(20) not null,
CUS_PHONE varchar(10) not null,
CUS_CITY varchar(30) not null,
CUS_GENDER char);

desc customer;

insert into customer(CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values ('AAKASH','9999999999','DELHI','M');
insert into customer(CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values ('AMAN','9785463215','NOIDA','M');
insert into customer(CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values ('NEHA','9999999999','MUMBAI','F');
insert into customer(CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values ('MEGHA','9994562399','KOLKATA','F');
insert into customer(CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values ('PULKIT','7895999999','LUCKNOW','M');

select * from customer;