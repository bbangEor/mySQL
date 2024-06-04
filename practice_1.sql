-- practice_1
-- drop table  ;

-- 데이터 집합 생성
create database ssLions;

-- 사용
use ssLions;

-- 선수 테이블 설계
create table playerTBL(
playerName char (3) not null primary key,
playerNum int not null,
playerPos char (2)
);

show tables;
select * from playerTBL;
desc playerTBL;

