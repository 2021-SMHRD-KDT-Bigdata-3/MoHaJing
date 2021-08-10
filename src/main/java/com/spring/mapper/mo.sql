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

select * from mo_deep1
drop TABLE mo_deep1;



DROP TABLE mo_deep;

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

DELETE TABLE mo_no_check;

select * from mo_deep1;
ALTER TABLE `mo_deep1` ADD 'percent' int not null;
select no from mo_deep1 where id = 'test' and img = '210806_161220_47.png';
show tables;
show full columns from mo_recommand;

select * from mo_check;

drop table mo_check;
TRUNCATE mo_recommand;
create table mo_check(
id varchar(50),
no1 int,
no2 int,
no3 int,
no4 int,
no5 int,
no6 int,
no7 int,
no8 int,
no9 int,
no10 int
);
select * from mo_check;
select * from mo_member;
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

select * from mo_recommand;

ALTER TABLE mo_recommand MODIFY food varchar(1000);
ALTER TABLE mo_recommand MODIFY plan varchar(1000);

insert into mo_recommand(category, food, plan)
values("O", "고기", "외출 후 저녁에 샴푸해 두피와 모발에 쌓인 노폐물을 씻어내기");
insert into mo_recommand(category, food, plan)
values("O", "달걀", "맵거나 짠 자극적인 음식 섭취 줄이기 더 내기");
insert into mo_recommand(category, food, plan)
values("O", "두부", "머리를 말릴 때는 시원한 바람이나 자연적으로 말리기");
insert into mo_recommand(category, food, plan)
values("O", "흑임자", "매일 7시간 이상 숙면하기");
insert into mo_recommand(category, food)
values("O", "검은콩");
insert into mo_recommand(category, food)
values("O", "생선");
insert into mo_recommand(category, food)
values("O", "포도");
insert into mo_recommand(category, food)
values("O", "칡");
insert into mo_recommand(category, food)
values("O", "블루베리");
insert into mo_recommand(category, food)
values("O", "두피 염을 예방하는 면역력을 키워주는 음식 등");

select * from mo_member;

insert into mo_recommand(category, food, plan)
values("M", "채소", "아침먹기");
insert into mo_recommand(category, food, plan)
values("M", "과일", "소식하기");
insert into mo_recommand(category, food, plan)
values("M", "검은콩(쥐눈이콩), 현미, 통밀, 귀리 등의 정제되지 않은 곡류", "천천히 많이 씹기");
insert into mo_recommand(category, food, plan)
values("M", "미역, 다시마, 김 등의 해초류", "걷기 등의 가벼운 운동");
insert into mo_recommand(category, food, plan)
values("M", "된장", "항상 두피와 머리를 건강한 상태로 유지하고, 마사지를 병행한다면 효가는 배가 됨");
insert into mo_recommand(category, food, plan)
values("M", "두부", "자신의 두피 상태와 잘 맞는 기능성 샴푸를 사용하기");
insert into mo_recommand(category, food, plan)
values("M", "치즈", "샴푸칠을 할 때는 손톱이 아닌 손끝을 사용하여 부드럽게 마사지를 하기");
insert into mo_recommand(category, food, plan)
values("M", "마", "머리를 감기 전에 굵은 빗을 사용하여 머리를 빗어준 후 감기");
insert into mo_recommand(category, food, plan)
values("M", "두유", "머리를 감고 건조시킬 때는 가르마의 반대 방향으로 빗질을 하기");
insert into mo_recommand(category, food, plan)
values("M", "나물", "머리를 앞으로 숙인 후 뒷 목부터 이마 방향으로 빗질을 하기");
insert into mo_recommand(category, food, plan)
values("M", "뿌리채소", "귀에서부터 정수리 방향으로 빗질하기");
insert into mo_recommand(category, food, plan)
values("M", "김치, 청국장, 된장과 같은 발효음식", "빗질은 부드럽고 굵은 빗을 사용하기");
insert into mo_recommand(category, plan)
values("M", "영양분을 충분히 섭취하기");
select * from mo_deep1;

ALTER TABLE `mo_member` DROP `checknum`;

create table mo_check(
id varchar(50),
no1 int,
no2 int,
no3 int,
no4 int,
no5 int,
no6 int,
no7 int,
no8 int,
no9 int,
no10 int
);

ALTER TABLE mo_recommand MODIFY food varchar(1000);
ALTER TABLE mo_recommand MODIFY plan varchar(1000);

insert into mo_recommand(category, food, plan)
values("O", "고기", "외출 후 저녁에 샴푸해 두피와 모발에 쌓인 노폐물을 씻어내기");
insert into mo_recommand(category, food, plan)
values("O", "달걀", "맵거나 짠 자극적인 음식 섭취 줄이기 더 내기");
insert into mo_recommand(category, food, plan)
values("O", "두부", "머리를 말릴 때는 시원한 바람이나 자연적으로 말리기");
insert into mo_recommand(category, food, plan)
values("O", "흑임자", "매일 7시간 이상 숙면하기");
insert into mo_recommand(category, food)
values("O", "검은콩");
insert into mo_recommand(category, food)
values("O", "생선");
insert into mo_recommand(category, food)
values("O", "포도");
insert into mo_recommand(category, food)
values("O", "칡");
insert into mo_recommand(category, food)
values("O", "블루베리");
insert into mo_recommand(category, food)
values("O", "두피 염을 예방하는 면역력을 키워주는 음식 등");



insert into mo_recommand(category, food, plan)
values("M", "채소", "아침먹기");
insert into mo_recommand(category, food, plan)
values("M", "과일", "소식하기");
insert into mo_recommand(category, food, plan)
values("M", "검은콩(쥐눈이콩), 현미, 통밀, 귀리 등의 정제되지 않은 곡류", "천천히 많이 씹기");
insert into mo_recommand(category, food, plan)
values("M", "미역, 다시마, 김 등의 해초류", "걷기 등의 가벼운 운동");
insert into mo_recommand(category, food, plan)
values("M", "된장", "항상 두피와 머리를 건강한 상태로 유지하고, 마사지를 병행한다면 효가는 배가 됨");
insert into mo_recommand(category, food, plan)
values("M", "두부", "자신의 두피 상태와 잘 맞는 기능성 샴푸를 사용하기");
insert into mo_recommand(category, food, plan)
values("M", "치즈", "샴푸칠을 할 때는 손톱이 아닌 손끝을 사용하여 부드럽게 마사지를 하기");
insert into mo_recommand(category, food, plan)
values("M", "마", "머리를 감기 전에 굵은 빗을 사용하여 머리를 빗어준 후 감기");
insert into mo_recommand(category, food, plan)
values("M", "두유", "머리를 감고 건조시킬 때는 가르마의 반대 방향으로 빗질을 하기");
insert into mo_recommand(category, food, plan)
values("M", "나물", "머리를 앞으로 숙인 후 뒷 목부터 이마 방향으로 빗질을 하기");
insert into mo_recommand(category, food, plan)
values("M", "뿌리채소", "귀에서부터 정수리 방향으로 빗질하기");
insert into mo_recommand(category, food, plan)
values("M", "김치, 청국장, 된장과 같은 발효음식", "빗질은 부드럽고 굵은 빗을 사용하기");
insert into mo_recommand(category, plan)
values("M", "영양분을 충분히 섭취하기");
