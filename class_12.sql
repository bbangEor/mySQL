-- drop table movieTBL; 
-- 데이터 베이스 설계 ( db_movie )
create database db_movie;
use db_movie;


-- 테이블 생성 , 설계 
create table movieTBL(
	id int primary key auto_increment,
    title varchar(20) not null,
    director varchar(10) not null,
    release_date date not null,
    genre varchar(10) not null,
    rating  double not null
);

desc movieTBL;

insert into movieTBL (title ,director, release_date,genre,rating)
values
('괴물', '봉준호', '2006-07-27', '드라마', 8.28),
('극한직업', '이병헌', '2019-01-23', '코미디', 9.20),
('명량', '김한민', '2014-07-30', '사극', 9.17),
('신과함께-죄와 벌', '김용화', '2017-12-20', '판타지', 7.56),
('밀양', '임권택', '2016-09-07', '드라마', 7.76),
('반도', '연상호', '2020-07-15', '액션', 6.71),
('베테랑', '류승원', '2015-08-05', '액션', 8.49),
('변호인', '양우석', '2013-12-18', '드라마', 8.41),
('군함도', '류승원', '2017-07-26', '사극', 8.01),
('암살', '최도운', '2015-07-22', '액션', 8.37);

select * from movieTBL;

-- 문제 1. 평점 8.00 이상인 영화만 조회 
select *
from movieTBL
where rating > 8.00; 

-- 문제 2. 평점 8.00 이상이면서 액션 장르인 영화 조회
select *
from movieTBL
where rating > 8.00 and genre = '액션'; 

-- 연습

-- 1.  개봉일이 '2016-09-07'인 영화의 평점을 7.86으로 수정
	update movieTBL
    set rating = '7.86'
    where release_date = '2016-09-07';
    
-- 2. 2015년 이후 개봉한 영화 중 평점이 8 이상인 영화 조회
	select *
	from movieTBL
	where rating > 8.00 and release_date > '2015-12-31' ; 

-- 3.   2017년 이후 개봉 작품을 출력
	


-- 4.  2010년 부터 2015년 사이에 개봉한 영화 조회

-- 5.  평점 8.00 이상이면서 액션 장르인 영화 조회


