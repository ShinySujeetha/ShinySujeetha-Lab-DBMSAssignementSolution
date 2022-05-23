drop table if exists category;

create table category(
CAT_ID int primary key auto_increment,
CAT_NAME varchar(20) not null);

desc category;

insert into category(CAT_NAME) values('BOOKS');
insert into category(CAT_NAME) values('GAMES');
insert into category(CAT_NAME) values('GROCERIES');
insert into category(CAT_NAME) values('ELECTRONICS');
insert into category(CAT_NAME) values('CLOTHES');

select * from category;

