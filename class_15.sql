create database mydb2;
use mydb2;

-- 테이블 생성
create table tb_student(
	student_id int auto_increment primary key,
    student_name varchar(100) not null
);

create table tb_class(
	class_id int auto_increment,
    class_name varchar(100) not null,
    teacher varchar(20) not null,
    primary key(class_id)
);

-- 학생과 수업 테이블을 n: M 관계가 된다.
-- 중간테이블 설계 (수강등록)

create table tb_registration(
	student_id int,
    class_id int,
    registration_date date,
    primary key(student_id, class_id),
    foreign key(student_id) references tb_student(student_id),
    foreign key(class_id) references tb_class(class_id)
);

desc tb_registration;

