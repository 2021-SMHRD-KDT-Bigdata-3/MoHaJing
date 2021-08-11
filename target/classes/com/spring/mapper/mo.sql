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

select * from mo_recommand;
drop table mo_recommand;

DROP TABLE mo_deep;

select * from mo_deep1

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



create table mo_checkrecommand(
no varchar(5),
cause varchar(1000),
plan varchar(1000)
);

select * from mo_deep1;
select no, id, img, result, percent, category, date(date) as date from mo_deep1;
insert into mo_deep1(id, img, result, percent, category, date)
values("test", "img", "M", 1.0, "M", curdate());

insert into mo_checkrecommand(no, cause)
values("no1", "소위 이마가 벗겨지기 시작하면 탈모가 본격적으로 진행되는 것으로, 이마 헤어라인이 뒤로 후퇴하면서 이마가 점점 넓어지는 것은 유전적인 소인에 의한 탈모를 의심해볼 수 있다.");
insert into mo_checkrecommand(no, cause)
values("no2", "머리카락이 가늘어지면서 부드러워지고 힘이 없는 것은 영양공급에 문제가 있다는 뜻이다. 얇아진 머리카락은 빠지기도 쉬워 탈모 가능성이 매우 높다.");
insert into mo_checkrecommand(no, cause)
values("no3", "하루에 머리카락이 100개 이상 빠지기 시작하는 것은 전형적인 초기 탈모 증상이다. 머리숱이 현저히 줄기 시작하고, 머리카락 사이로 두피가 살짝 보인다. 이 시기는 중증 탈모 단계에 비해 탈모 치료 부담이 적고, 먹고 바르는 약물치료만으로도 탈모를 예방·관리할 수 있다.");
insert into mo_checkrecommand(no, cause)
values("no4", "젖은 비듬도 탈모 의심 신호인데, 두피가 가렵고 손으로 긁으면 손톱에 비듬이 끼고 이런 증상이 6개월 이상 지속된다면 이후 탈모가 시작될 가능성이 높다. 젖은 비듬은 탈모의 원인인 남성 호르몬과 깊은 연관성이 있으며, 갑자기 생긴 비듬과 두피 가려움증도 탈모의 전조증상으로 볼 수 있다.");
insert into mo_checkrecommand(no, cause)
values("no5", "머리카락이 가늘어지면서 부드러워지는 것은 영양공급에 문제가 있다는 뜻이다. 얇아진 머리카락은 빠지기도 쉬워 탈모 가능성이 매우 높다.");
insert into mo_checkrecommand(no, cause)
values("no6", "두피를 살짝 눌러도 욱신거리고 따끔거리는 통증이 있다면 세균에 감염된 것으로 의심해볼 수 있다. 두피가 청결하지 못하고 노폐물이 쌓이면 세균 감염 위험이 큰데, 두피 통증이 있으면, 머리를 두피까지 구석구석 씻어내기가 어려워 악순환이 될 수 있다.");
insert into mo_checkrecommand(no, cause)
values("no7", "탈모의 주범인 테스토스테론을 디하이드로테스토스테론으로 변화시키는 5알파-환원효소가 뒷머리보다는 앞머리에 더 많이 분포되어 있기 때문에 앞머리 탈모가 뒷머리보다 더 심하다. 뒷머리보다 앞머리나 정수리 부위의 머리카락이 가늘고, 더 많이 빠진다면 탈모치료가 필요할 수 있다.");
insert into mo_checkrecommand(no, cause)
<<<<<<< HEAD
values("no1", "소위 이마가 벗겨지기 시작하면 탈모가 본격적으로 진행되는 것으로, 이마 헤어라인이 뒤로 후퇴하면서 이마가 점점 넓어지는 것은 유전적인 소인에 의한 탈모를 의심해볼 수 있다.");

create table mo_checkrecommand(
no varchar(5),
cause varchar(1000),
plan varchar(1000)
);

insert into mo_checkrecommand(no, cause)
values("no1", "소위 이마가 벗겨지기 시작하면 탈모가 본격적으로 진행되는 것으로, 이마 헤어라인이 뒤로 후퇴하면서 이마가 점점 넓어지는 것은 유전적인 소인에 의한 탈모를 의심해볼 수 있다.");
insert into mo_checkrecommand(no, cause)
values("no2", "머리카락이 가늘어지면서 부드러워지고 힘이 없는 것은 영양공급에 문제가 있다는 뜻이다. 얇아진 머리카락은 빠지기도 쉬워 탈모 가능성이 매우 높다.");
insert into mo_checkrecommand(no, cause)
values("no3", "하루에 머리카락이 100개 이상 빠지기 시작하는 것은 전형적인 초기 탈모 증상이다. 머리숱이 현저히 줄기 시작하고, 머리카락 사이로 두피가 살짝 보인다. 이 시기는 중증 탈모 단계에 비해 탈모 치료 부담이 적고, 먹고 바르는 약물치료만으로도 탈모를 예방·관리할 수 있다.");
insert into mo_checkrecommand(no, cause)
values("no4", "젖은 비듬도 탈모 의심 신호인데, 두피가 가렵고 손으로 긁으면 손톱에 비듬이 끼고 이런 증상이 6개월 이상 지속된다면 이후 탈모가 시작될 가능성이 높다. 젖은 비듬은 탈모의 원인인 남성 호르몬과 깊은 연관성이 있으며, 갑자기 생긴 비듬과 두피 가려움증도 탈모의 전조증상으로 볼 수 있다.");
insert into mo_checkrecommand(no, cause)
values("no5", "머리카락이 가늘어지면서 부드러워지는 것은 영양공급에 문제가 있다는 뜻이다. 얇아진 머리카락은 빠지기도 쉬워 탈모 가능성이 매우 높다.");
insert into mo_checkrecommand(no, cause)
values("no6", "두피를 살짝 눌러도 욱신거리고 따끔거리는 통증이 있다면 세균에 감염된 것으로 의심해볼 수 있다. 두피가 청결하지 못하고 노폐물이 쌓이면 세균 감염 위험이 큰데, 두피 통증이 있으면, 머리를 두피까지 구석구석 씻어내기가 어려워 악순환이 될 수 있다.");
insert into mo_checkrecommand(no, cause)
values("no7", "탈모의 주범인 테스토스테론을 디하이드로테스토스테론으로 변화시키는 5알파-환원효소가 뒷머리보다는 앞머리에 더 많이 분포되어 있기 때문에 앞머리 탈모가 뒷머리보다 더 심하다. 뒷머리보다 앞머리나 정수리 부위의 머리카락이 가늘고, 더 많이 빠진다면 탈모치료가 필요할 수 있다.");
insert into mo_checkrecommand(no, cause)
values("no8", "남성호르몬이 증가하면 수염과 털의 성장을 촉진시킨다. 문제는 남성호르몬이 머리카락의 성장은 억제한다는 사실이다. 남성호르몬이 증가하면 정수리나 앞머리 부위의 머리카락이 가늘어지거나 빠질 수 있다.
간혹 털을 밀수록 털이 굵어진다고 믿기도 하는데, 이는 사실이 아니다. 털을 밀 경우 털이 이전보다 굵게 자라는 게 아니라 가는 두께의 윗부분 털이 잘리면서 새로 자라는 털이 더 굵게 보이는 것일 뿐이다. 제모를 해도 모근을 완전히 제거하지 않으면 털의 굵은 단면은 남아 있고, 털 또한 이전의 두께로 다시 자란다.");
insert into mo_checkrecommand(no, cause)
values("no9", "정수리 탈모의 원인: 무리한 식이요법 또는 잘못된 식습관으로 인한 영양 불균형, 출산·월경과 같은 호르몬 이상, 수면 부족, 스트레스로 인한 면역력 저하, 자율신경계 이상, 갱년기에 나타나는 호르몬 불균형 등이 있다.");
insert into mo_checkrecommand(no, cause)
values("no10", "피지가 많아지면 모공을 막고, 염증을 유발해 두피 건강을 나쁘게 한다. 지루성 피부염은 피지 과다 분비를 자극해 두피의 영양공급을 막아 모발이 잘 자라지 못하고 가늘어지다가 결국 탈모로 이어질 수 있다.");

values("no8", "남성호르몬이 증가하면 수염과 털의 성장을 촉진시킨다. 문제는 남성호르몬이 머리카락의 성장은 억제한다는 사실이다. 남성호르몬이 증가하면 정수리나 앞머리 부위의 머리카락이 가늘어지거나 빠질 수 있다.
간혹 털을 밀수록 털이 굵어진다고 믿기도 하는데, 이는 사실이 아니다. 털을 밀 경우 털이 이전보다 굵게 자라는 게 아니라 가는 두께의 윗부분 털이 잘리면서 새로 자라는 털이 더 굵게 보이는 것일 뿐이다. 제모를 해도 모근을 완전히 제거하지 않으면 털의 굵은 단면은 남아 있고, 털 또한 이전의 두께로 다시 자란다.");
insert into mo_checkrecommand(no, cause)
values("no9", "정수리 탈모의 원인: 무리한 식이요법 또는 잘못된 식습관으로 인한 영양 불균형, 출산·월경과 같은 호르몬 이상, 수면 부족, 스트레스로 인한 면역력 저하, 자율신경계 이상, 갱년기에 나타나는 호르몬 불균형 등이 있다.");
insert into mo_checkrecommand(no, cause)
values("no10", "피지가 많아지면 모공을 막고, 염증을 유발해 두피 건강을 나쁘게 한다. 지루성 피부염은 피지 과다 분비를 자극해 두피의 영양공급을 막아 모발이 잘 자라지 못하고 가늘어지다가 결국 탈모로 이어질 수 있다.");

select * from mo_checkrecommand;
select food from mo_recommand where category = "M" and NOT food is NULL;
<<<<<<< HEAD

alter table mo_member add sns varchar(100);
 
insert into mo_member(id, pw, name, gender, age)
values("naver", "naver", "테스트", "여", 20);



