
-- 데이터 베이스 생성
CREATE DATABASE shopdb;

-- 데이터 베이스 사용 선언
USE shopdb;

-- 한줄주석 

/**
여러줄 주석
*/

-- 테이블 생성
create table tb_member(
memberID char(8) not null primary key,
memberName char(5) not null,
memberAddress char(20)
);

-- 테이블 구조 확인 명령어
desc tb_member;

-- 테이블 조회 명령어 ( DML - Data Manipulaton Language ) : 데이터 조작언어
select * from tb_member;

select memberID , memberName from tb_member;

-- 테이블 제거 명령어
-- drop table tb_member;

-- C R U D
-- 데이터를 입력하는 SQL ( insert )
-- insert into tb_member() values(); - 기본형태
insert into tb_member(memberID, memberName , memberAddress) 
values('M000001' , '햄발', '서울특별시강남구역삼동123-456');

select * from tb_member;

insert into tb_member(memberID, memberName , memberAddress) 
values('M000002' , '빵또', '서울특별시송파구잠실동123-456');

select * from tb_member;

insert into tb_member(memberID , memberName , memberAddress)
value('M000003','가룡', '부산광역시수영구광안동456-789');

select * from tb_member;








