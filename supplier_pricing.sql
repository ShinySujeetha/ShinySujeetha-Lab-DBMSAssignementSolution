drop table if exists supplier_pricing;

create table supplier_pricing(
PRICING_ID  int primary key auto_increment,
PRO_ID int,
SUPP_ID int,
SUPP_PRICE int default '0',
foreign key(PRO_ID) references product(PRO_ID),
foreign key(SUPP_ID) references supplier(SUPP_ID));

desc supplier_pricing;

insert into supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) values(1,2,1500);
insert into supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) values(3,5,30000);
insert into supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) values(5,1,3000);
insert into supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) values(2,3,2500);
insert into supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) values(4,1,1000);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(12,2,780);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(12,4,789);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(3,1,31000);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(1,5,1450);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(4,2,999);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(7,3,549);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(7,4,529);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(6,2,105);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(6,1,99);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(2,5,2999);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(5,2,2999);


select * from supplier_pricing;