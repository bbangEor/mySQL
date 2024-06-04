
use mydb;
-- 테이블 생성
create table TB_USER(
	user_id int auto_increment,
    username varchar(50) not null,
    password varchar(50) not null,
    primary key (user_id)
);

create table TB_USER_DETAILS(
	details_id int auto_increment,
    user_id int unique,
	address varchar(100),
    phone_number varchar(15),
    email varchar(50),
    primary key (details_id),
    foreign key(user_id) references tb_user(user_id) -- tb_user 의 user id 를 참조하기 
);


-- 팀 테이블 설계
create table tb_team(
ranking int not null,
teamName varchar (10) not null ,
foundation date not null 
);

desc tb_team ;
-- 선수 테이블 설계
create table tb_player(
playerNum int not null ,
playerName varchar (10) not null ,
playerPosition varchar (10)
);

desc tb_player;

