select * from mo_board;

CREATE TABLE mo_member (
id varchar(50) primary key,
pw varchar(30) not null,
name varchar(30) not null,
gender varchar(10) not null,
age int(5) not null,
checknum int(5) not null
);

CREATE TABLE mo_board(
no int not null auto_increment,
id varchar(50),
title varchar(50) not null,
content varchar(1000) not null,
file varchar(100),
day datetime,
);

CREATE TABLE mo_comment(
no int not null,
id varchar(50) not null,
content varchar(1000) not null,
day datetime,
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

commit;

insert into mo_member(id, pw, name, gender, age, checknum)
values("test", "test", "테스트", "여", 20, 5);
select * from mo_member;


insert into mo_board(id, title, content, file, day)
values("test", "테스트제목", "테스트내용", "파일", now());
select * from mo_board;

select * from mo_comment;
select * from information_schema.table_constraints where table_name = 'mo_comment';
alter table mo_comment drop foreign key mo_comment_ibfk_2;

select * from mo_board;
select * from mo_board where title like '%test%' or content like '%test%';





