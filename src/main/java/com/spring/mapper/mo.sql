select * from mo_info;

drop table mo_comment

CREATE TABLE mo_member (
id varchar(50) primary key,
pw varchar(30) not null,
name varchar(30) not null,
gender varchar(10) not null,
age int(5) not null,
checknum int(5) not null
);

CREATE TABLE mo_board(
no int not null auto_increment primary key,
id varchar(50),
title varchar(50) not null,
content varchar(1000) not null,
file varchar(100),
day datetime
);
select * from mo_board;

CREATE TABLE mo_comment(
no int not null,
id varchar(50) not null,
content varchar(1000) not null,
day datetime
);

CREATE TABLE mo_info(
category varchar(30) not null,
cause varchar(1000) not null,
sign varchar(1000) not null,
plan varchar(1000) not null
);

CREATE TABLE mo_recommand(
category varchar(30) not null,
food varchar(100) not null,
plan varchar(1000) not null
);

CREATE TABLE mo_deep (
id varchar(50),
img varchar(100) not null,
category varchar(30) not null,
step varchar(30) not null,
percent float(10) not null,
date datetime,
);

CREATE TABLE mo_deep1 (
no int not null auto_increment primary key,
id varchar(50),
img varchar(100) not null,
result varchar(10),
date datetime
);

insert into mo_deep1(id, img)
values("123", "123");

select * from mo_deep1;

commit;

insert into mo_member(id, pw, name, gender, age, checknum)
values("test", "test", "테스트", "여", 20, 5);
select * from mo_member;

insert into mo_info(category, cause, sign, plan)
values("test", "test", "test", "test")


insert into mo_board(id, title, content, file, day)
values("test", "테스트제목", "테스트내용", "파일", now());

insert into mo_comment(no, id, content, day)
values("1", "test", "테스트내용입니다", now());

select * from mo_board;
select * from mo_deep;
select * from mo_comment;
select * from information_schema.table_constraints where table_name = 'mo_board';
alter table mo_board drop foreign key mo_board_ibfk_1;

select * from mo_board;
select * from mo_board where title like '%test%' or content like '%test%';

ALTER TABLE `mo_deep` ADD `no` int FIRST;
select * from mo_deep;

DROP TABLE mo_deep1;

CREATE TABLE mo_deep1 (
no int not null auto_increment primary key,
id varchar(50),
img varchar(100) not null,
result varchar(10),
percent float,
category varchar(5),
date datetime
);

DROP TABLE mo_deep1;

CREATE TABLE mo_deep1 (
no int not null auto_increment primary key,
id varchar(50),
img varchar(100) not null,
result varchar(10),
date datetime
);

DROP TABLE mo_deep1;

CREATE TABLE mo_deep1 (
no int not null auto_increment primary key,
id varchar(50),
img varchar(100) not null,
result varchar(10),
percent int,
category varchar(5),
date datetime
);
ALTER TABLE user mo_deep1 percent float

DELETE TABLE mo_deep1;

select * from mo_deep1;
ALTER TABLE `mo_deep1` ADD 'percent' int not null;
select no from mo_deep1 where id = 'test' and img = '210806_161220_47.png';
show tables;
show full columns from mo_recommand;

create table mo_check(
id varchar(50),
no1 int not null,
no2 int,
no3 int,
no4 int,
no5 int,
no6 int,
no7 int,
no8 int,
no9 int,
no10 int

DROP TABLE mo_deep1;

CREATE TABLE mo_deep1 (
no int not null auto_increment primary key,
id varchar(50),
img varchar(100) not null,
result varchar(10),
percent float,
category varchar(5),
date datetime
);
