drop table if exists rating;

create table rating(
RAT_ID int primary key auto_increment,
ORD_ID int,
RAT_RATSTARS int not null,
foreign key(ORD_ID) references orders(ORD_ID));

desc rating;

insert into rating(ORD_ID,RAT_RATSTARS) values(101,4);
insert into rating(ORD_ID,RAT_RATSTARS) values(102,3);
insert into rating(ORD_ID,RAT_RATSTARS) values(103,1);
insert into rating(ORD_ID,RAT_RATSTARS) values(104,2);
insert into rating(ORD_ID,RAT_RATSTARS) values(105,4);
insert into rating(ORD_ID,RAT_RATSTARS) values(106,3);
insert into rating(ORD_ID,RAT_RATSTARS) values(107,4);
insert into rating(ORD_ID,RAT_RATSTARS) values(108,4);
insert into rating(ORD_ID,RAT_RATSTARS) values(109,3);
insert into rating(ORD_ID,RAT_RATSTARS) values(110,5);
insert into rating(ORD_ID,RAT_RATSTARS) values(111,3);
insert into rating(ORD_ID,RAT_RATSTARS) values(112,4);
insert into rating(ORD_ID,RAT_RATSTARS) values(113,2);
insert into rating(ORD_ID,RAT_RATSTARS) values(114,1);
insert into rating(ORD_ID,RAT_RATSTARS) values(115,1);
insert into rating(ORD_ID,RAT_RATSTARS) values(116,0);

select * from rating;

