-- 생성
create database mydb;
-- 사용
use mydb;

-- 테이블 생성
create table student(
	student_id int  ,
    name varchar(50) not null , -- 유연한 텍스트블럭 
    grade int not null,
    major varchar(50) not null
);

select * from student;
desc student; -- 제약사항 확인

-- 과목 테이블 생성
create table subject(
	subject_id int,
    subject_name varchar(50) not null,
    credit int not null ,
    department varchar(5),
    professor char(50) not null
);

select *from subject;

-- 이미 생선된 테이블에 기본키를 추가하기
 alter table student add primary key(student_id);
 desc student;
 
 -- 사전 기반 지식
 -- 데이터가 들어가 있는 상태에서 빈 값이 포함되어있다면 , 기본키를 추가 할 수 없다.
 -- 즉 , null 값이 존재해선 안된다.
 
 alter table subject add primary key(subject_id);
 desc subject;


-- 주문
-- order 
-- row -> id : pk
-- 고객 주문내용 - 문자 
-- 상품 이름
-- 상품 가격
-- 수량

-- 예약어는 기본적으로 테이블 이름으로 선점할 수 없다.
-- `` < 예약어가 아닌 명칭 임을 알리는 문자 (강제적 선점) 
create table `order`(
	id int primary key,
    price bigint,
    customer_order varchar(50),
    product_name varchar(20) not null,
    quantity int not null,
    order_date date not null
);
desc `order`;

-- 도전과제  !
insert into `order` (id, price, customer_order , product_name, quantity ,order_date )
values(2,15000,'or123','바지', 3,'2024-05-30');

select * from `order`;

create table customer(
id int primary key,
name varchar(10) not null,
email varchar(30),
address varchar(50) not null 
);

desc customer;

insert into customer(id , name , email , address)
values( 123 , '햄발' , 'ham123@naver.com' , '부산광역시 햄집' );

select * from customer;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

