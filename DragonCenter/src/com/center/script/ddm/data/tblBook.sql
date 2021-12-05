drop table tblbook;
drop sequence book_seq;
create table tblBook
(
	book_seq number,
	book_name varchar2(100) not null,
	book_publisher varchar2(50) not null,
	book_price number null,
	subject_seq number not null
);

create sequence book_seq;

alter table tblBook
    add constraint tblb_book_seq_pk primary key(book_seq);

alter table tblBook
    add constraint tblb_subject_seq_fk foreign key(subject_seq) references tblSubject(subject_seq);





insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '클라우드 이해하기', '한월북스', 33000, 5);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '기초 react.js 개론', '(주)갑유책방', 34000, 24);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '모두의 HTML', '(주)국유출판사', 38000, 11);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 Python 개론', '(주)한미라이프', 12000, 15);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '쉬운 네트워크 정석', '(주)명사미디어', 34000, 24);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '모두의 Spring 공부', '미미북스', 25000, 25);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 react.js 실습', '당사출판사', 27000, 34);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '네트워크 노트', '장유아카데미', 23000, 44);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '쉬운 SQL의 모든 것', '미빛아카데미', 16000, 44);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 JDBC 수업', '유당라이프', 25000, 3);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '쉬운 데이터베이스', '장유출판사', 23000, 49);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '모두의 SQL의 모든 것', '명유아카데미', 27000, 14);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 네트워크 이해하기', '(주)장청미디어', 33000, 13);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '쉬운 CSS 실습', '(주)한유미디어', 31000, 2);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '모두의 JDBC 개론', '(주)한미출판사', 10000, 20);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 보안 개론', '(주)국책방', 33000, 15);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '모두의 Java', '(주)당출판', 28000, 4);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '보안 실습', '한갑미디어', 35000, 13);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '모두의 C언어 노트', '한월북스', 33000, 22);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, 'react.js 공부', '갑미미디어', 39000, 21);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '모두의 JavaScript 공부', '명월아카데미', 19000, 38);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '보안 이해하기', '갑빛아카데미', 13000, 16);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 Java 실습', '장청라이프', 18000, 18);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '기초 네트워크', '명월아카데미', 17000, 48);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '클라우드 개론', '(주)국꿈북스', 17000, 34);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '쉬운 react.js 이해하기', '장유출판사', 21000, 39);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '기초 AWS 노트', '사꿈아카데미', 23000, 7);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, 'HTML 수업', '당청라이프', 33000, 10);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 Python 정석', '(주)갑사책방', 39000, 42);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 C언어 개론', '사미아카데미', 18000, 29);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, 'react.js 이해하기', '미유북스', 17000, 1);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, 'AWS', '당당미디어', 16000, 22);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 CSS 노트', '(주)명사책방', 28000, 16);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '모두의 JavaScript', '(주)갑월북스', 28000, 33);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, 'JavaScript 정석', '국꿈북스', 31000, 11);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '기초 Spring의 모든 것', '한빛북스', 31000, 15);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '모두의 네트워크 이해하기', '명당출판', 14000, 17);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '기초 Spring 정석', '사사출판', 12000, 23);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '쉬운 네트워크 수업', '사꿈책방', 28000, 14);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '쉬운 JDBC 노트', '한빛책방', 15000, 7);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 오라클 이해하기', '국사아카데미', 23000, 34);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '쉬운 JDBC', '미월라이프', 25000, 1);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '모두의 C언어', '장미북스', 12000, 11);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '응용 HTML', '사청책방', 28000, 36);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '기초 Spring의 모든 것', '(주)명당출판', 20000, 20);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '클라우드 이해하기', '(주)갑꿈책방', 31000, 24);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '쉬운 보안 노트', '(주)한당출판', 21000, 26);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '쉬운 UML 실습', '미빛출판사', 33000, 31);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '기초 JavaScript 개론', '장갑출판사', 38000, 15);
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, '기초 보안 실습', '(주)장사출판', 22000, 15);

commit;