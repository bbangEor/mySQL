-- 데이터 입력하기 
/*
insert into usertbl(uesrName,birthYesr ,addr ,mobile) 
values ('이승기','1987','서울','010-111-1111');

insert into usertbl(uesrName,birthYesr ,addr ,mobile) 
values ('김경호','1971','전남','010-222-2222');

insert into usertbl(uesrName,birthYesr ,addr ,mobile) 
values ('이승기','1987','서울','010-111-1111');

insert into usertbl(uesrName,birthYesr ,addr ,mobile) 
values ('이승기','1987','서울','010-111-1111');
*/

insert into usertbl(userName,birthYear ,addr ,mobile) 
values ('이승기','1999','서울','010-111-1111'),
		('김경호','1998','전남','010-111-1111'),
        ('윤종신','1997','경남',''),
        ('임재범','1996','경북','010-222-1111'),
        ('은지원','1995','경기','010-333-1111'),
        ('조관우','1994','경남','010-444-1111'),
        ('김범수','1993','경기','010-555-1111'),
        ('조용필','1992','서울','010-666-1111'),
        ('바비킴','1991','서울','010-777-1111'),
        ('성시경','1990','경남', null);

desc usertbl;

select * from usertbl;

-- 삭제하고자 하는 테이블을 참조하고있다면 테이블 삭제가 불가. 
-- drop table buytbl;
-- drop table usertbl;
-- delete from usertbl;

-- select * from usertbl;


insert into buytbl(userName, prodName, price, amount)
values  ('김범수', '운동화', 30, 2),
		('김범수', '노트북', 1000, 1),
        ('조용필', '모니터', 200, 1),
        ('바비킴', '모니터', 200, 5),
        ('김범수', '청바지', 50, 3),
        ('바비킴', '메모리', 80, 10),
        ('성시경', '책', 15, 5),
        ('은지원', '책', 15, 2),
        ('은지원', '청바지', 50, 1),
        ('바비킴', '운동화', 30, 2),
        ('은지원', '책', 15, 1),
        ('바비킴', '운동화', 30, 2);
        
select * from buytbl;

-- 김영웅은 현재 userTBL 테이블에 존재하지않는다.
-- 그래서 buytbl row 값으로 들어올 수 없다. (제약때문)
insert into buytbl(userName, prodName, price, amount)
values ('김영웅', '운동화', 30 , 2);

-- 특정 데이터를 조회하고싶다면? -> 필터를 걸면됨! (WHERE)
select * from usertbl where userName = '이승기';
select * from buytbl where userName = '김범수'; 



 