select * from tblCourse;

drop table tblCourse;

-- 과정 10개
create table tblCourse
(
    course_seq number not null,
    course_name varchar2(150) not null,
    course_period number not null 
);

create sequence course_seq

alter table tblCourse
    add constraint tblc_course_seq_pk primary key(course_seq);
alter table tblCourse
    add constraint tblc_course_period_ck check(course_period in (5.5, 6, 7));
    
insert into tblCourse(course_seq, course_name, course_period) values(course_seq.nextval, 'Framework을 활용한 빅데이터 개발자 전문 과정', 7);
insert into tblCourse(course_seq, course_name, course_period) values(course_seq.nextval, '웹 애플리케이션을 활용한 빅데이터 응용SW개발자 양성 과정', 5.5);
insert into tblCourse(course_seq, course_name, course_period) values(course_seq.nextval, '웹 보안엔지니어링 양성과정', 5.5);
insert into tblCourse(course_seq, course_name, course_period) values(course_seq.nextval, 'Python Java 응용SW실무개발자 양성 과정', 7);
insert into tblCourse(course_seq, course_name, course_period) values(course_seq.nextval, '시큐어 코딩 웹 애플리케이션 응용SW개발자 양성 과정', 5.5);
insert into tblCourse(course_seq, course_name, course_period) values(course_seq.nextval, '클라우드 컴퓨팅 기반의 빅데이터 수집분석처리전문가', 6);
insert into tblCourse(course_seq, course_name, course_period) values(course_seq.nextval, 'Java Python 기반 응용SW 개발자 양성과정', 6);
insert into tblCourse(course_seq, course_name, course_period) values(course_seq.nextval, 'github 기반의 스프링을 활용한 프레임워크 구축 개발자', 6);
insert into tblCourse(course_seq, course_name, course_period) values(course_seq.nextval, '웹기반 빅데이터 분석 응용SW개발자 양성과정', 6);
insert into tblCourse(course_seq, course_name, course_period) values(course_seq.nextval, '애자일 기법에 기반한 클라우드 웹어플리케이션 개발자', 6);