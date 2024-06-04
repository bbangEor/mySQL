-- 테이블을 삭제하는 명령어
drop table student;

-- Default 값에 제약 설정하기 

create table student(
	student_id int primary key,
    name varchar(50) not null,
    grade int not null,
    major varchar(50) default '미정' not null
    -- major에 값을 대입하지 않으면 디폴드 값인 '미정' 이 대입됨.
);
desc student;

-- 기본 문구모양
-- insert into 테이블명(컬럼명 1 , 컬럼명 2 , ... ) values( 값1 , 값2 , ...);
-- insert into 테이블명 values( 값1 , 값2 , ...); -> 생략 버전

insert into student(student_id , name , grade , major)
values ( 1 , '햄발' , 3 , '햄스터개발과');

insert into student(student_id , name , grade , major)
values ( 2 , '가룡' , 1 ,'햄스터개발과' );

insert into student values ( 3 , '빵또아' , 4 , '빵개발과');


select * from student;


-- 디폴트 제약을 사용했을때 값넣기 2
insert into student(student_id , name , grade , major)
values ( 5 , '김햄발' , 3 , default);

-- delete from 구문을 사용할때는 반드시 필터 걸기! 
delete from student where student_id = 5;

-- date 타입 형식을 사용할때 연습
-- drop table `order`;

create table `order`(
	id int primary key,
    customer_order varchar(50),
    product_name varchar(20) not null,
    quantity int not null,
    order_date date not null
);

insert into `order` values(123 , '빠른배송' , '핸사발면' , 2 , '2024-05-30' );
insert into `order` values(124 , '안전배송' , '핸사발면' , 3 , '20240530' );

-- 오류가 발생하는 상황 예시 
-- 월 에는 0 을 표기 ( ex . 5월 -> 05 월 )
insert into `order` values(124 , '예약배송' , '핸사발면' , 2 , '2024530' );
-- 1년은 12개월 , 13월은 존재 x 
insert into `order` values(125 , '걸어서배송' , '핸사발면' , 2 , '20241330' );

select * from `order`;







