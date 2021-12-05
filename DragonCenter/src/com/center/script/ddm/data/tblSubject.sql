create table tblSubject
(
	subject_seq number,
	subject_name varchar2(60) not null,
	subject_period number not null
);

create sequence subject_seq;

alter table tblSubject
    add constraint tbls_subject_seq_pk primary key(subject_seq);






insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '오라클 활용 개론', 1.7);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '보안 기초 개론', 2.2);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '클라우드 전문 1', 2.4);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '오라클 설계 개론', 1.9);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'SQL 기반 2', 0.7);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'react.js 기반 2', 1.1);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Back-end 활용 프로그래밍', 2.2);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'C언어 전문 및 응용', 2.0);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'HTML 전문 1', 2.4);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Front-end 기반 실습', 1.9);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Java 전문 프로그래밍', 3.5);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Python 기반 프로그래밍', 3.2);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'AWS 구현 2', 2.0);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '클라우드 기반 2', 2.9);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'AWS 구현 1', 2.3);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Back-end 설계 2', 1.9);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Back-end 활용 특강', 2.7);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Front-end 기반 개론', 4.0);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'AWS 구현 실습', 4.3);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '보안 전문 개론', 0.5);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'react.js 활용 1', 1.7);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '보안 설계 프로그래밍', 2.3);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Front-end 활용 과목', 2.4);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'CSS 전문 프로그래밍', 3.6);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'CSS 전문 특강', 2.8);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'react.js 설계 과목', 1.0);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Front-end 설계 2', 1.2);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Java 설계 과목', 2.1);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Front-end 설계 1', 2.3);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'AWS 전문 및 응용', 1.1);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'JDBC 전문 과목', 3.4);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '클라우드 설계 과목', 2.0);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '데이터베이스 구현 과목', 1.8);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '네트워크 구현 및 응용', 2.7);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'AWS 설계 특강', 4.0);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '클라우드 기반 프로그래밍', 0.9);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'JavaScript 기반 실습', 3.1);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'react.js 전문 프로그래밍', 1.1);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'JDBC 기반 및 응용', 0.9);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'HTML 구현 과목', 1.2);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '보안 활용 및 응용', 1.6);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'C언어 설계 1', 1.7);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '클라우드 활용 특강', 2.4);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Python 활용 실습', 2.2);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'react.js 활용 과목', 4.1);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Back-end 설계 프로그래밍', 1.4);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'Python 기반 및 응용', 2.2);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, '클라우드 구현 개론', 0.8);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'C언어 전문 개론', 2.5);
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 'SQL 기반 1', 1.3);
    
    commit;
