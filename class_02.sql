-- 데이터 집합 생성
create database db_tenco_market;
-- 사용
use db_tenco_market;

-- 데이터 베이스 삭제 
-- drop database db_tenco_market

-- 사전 기반 지식 : MySQL 은 대 소문자를 구분하지 않는다.
-- 단 . 구분하는 RDBMS 도 있다.

-- 테이블 설계하기

-- 고객 테이블 생성
create table userTBL(
	userName char(3) not null primary key,
    birthYear int not null,
    addr char(2) not null,
    mobile char(12)
);

show tables;
select * from userTBL;
desc userTBL;

-- 구매 테이블 생성
create table buyTBL(
	id int not null auto_increment, -- auto_increment : 데이터가 들어올때마다 숫자 + 1씩 증가
    userName char(3) not null,
    prodName char(3) not null,
    price int not null,
    amount int,
    primary key(id),
    foreign key(userName) references userTBL(userName)
);

show tables;
select * from buyTBL;
desc buyTBL;
