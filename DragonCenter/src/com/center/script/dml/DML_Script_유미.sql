/*
    A-1. 기초 정보 관리(과정, 과목, 강의실, 교재)
        1) 과정 정보 입력/출력/수정/삭제
        2) 과목 정보 입력/출력/수정/삭제
        3) 강의실 정보 입력/출력/수정/삭제
        4) 교재 정보 입력/출력/수정/삭제
    A-2. 교사 계정 관리
        1) 교사 정보 입력/출력/수정/삭제
        2) 교사별 강의 가능 과목 등록
        3) 특정 교사 선택시 상세 정보 출력
            -개설 과정 이름 및 기간, 개설 과목 이름 및 기간, 교재, 강의실  
    A-3. 개설 과정 관리 
        1) 개설 과정 입력/출력/수정/삭제
        2) 과정 정보 출력
            -과정명, 기간, 강의실, 개설 과목 등록 여부, 교육생 등록 인원
        3) 특정 개설 과정 선택시 개설 과목 정보 출력
        4) 특정 개설 과정 선택시 등록된 교육생 정보 출력
    B-1. 교사 강의 스케쥴 조회
        1) 현재 강의 스케줄 확인 
            -상태(예정/진행/종료)
        2) 강의 스케줄 상세 조회
            -과정 번호, 과정/과목 이름 및 기간, 교재, 강의실, 등록 인원
        3) 해당 과정의 교육생 정보 조회
            -이름, 연락처, 수료 또는 탈락
    D-1. 교육 과정 조회 
        1) 개설 과정 조회
            -과정/과목 이름 및 기간, 담당 교사
*/

--A-1. 기초 정보 관리
--A-1.1) 과정 정보 관리(tblCourse)
--1. 과정 정보 등록; 번호, 이름, 기간(5.5, 6, 7) 입력
insert into tblCourse(course_seq, course_name, course_period) 
    values(course_seq.nextval, 이름, 기간);

--2. 과정 정보 조회; 번호, 이름, 기간 출력
select * from tblCourse;

--3. 과정 정보 수정; 해당 과정 번호의 이름, 기간 수정
update tblCourse set course_name = 이름 where course_seq = 번호;
update tblCourse set course_period = 기간 where course_seq = 번호;

--4. 과정 정보 삭제; 해당 과정 번호의 과정 삭제
delete from tblCourse where course_seq = 번호;


--A-1.2) 과목 정보 관리(tblSubject)
--1. 과목 정보 등록; 번호, 이름, 기간(0.5~4.0) 입력
insert into tblSubject (subject_seq, subject_name, subject_period)
    values (subject_seq.nextVal, 이름, 기간);

--2. 과목 정보 조회; 번호, 이름, 기간 출력
select * from tblSubject;

--3. 과목 정보 수정; 해당 과목 번호의 이름, 기간 수정
update tblSubject set subject_name = 이름 where subject_seq = 번호;
update tblSubject set subject_period = 기간 where subject_seq = 번호;

--4. 과목 정보 삭제; 해당 과목 번호의 과목 삭제
delete from tblSubject where subject_seq = 번호;


--A-1.3) 강의실 정보 관리(tblRoom)
--1. 강의실 정보 등록; 번호, 이름, 수용 인원(26, 30) 입력
insert into tblRoom(room_seq, room_name, room_capacity) 
    values (room_seq.nextval , room_seq.nextval || '강의실', 수용인원);

--2. 강의실 정보 조회; 번호, 이름, 수용 인원 출력
select * from tblRoom;

--3. 강의실 정보 수정; 해당 강의실 번호의 이름, 수용인원 수정
update tblRoom set room_name = 이름 where room_seq = 번호;
update tblRoom set room_capacity = 수용인원 where room_seq = 번호;

--4. 강의실 정보 삭제; 해당 강의실 번호의 강의실 정보 삭제
delete from tblRoom where room_seq = 번호;


--A-1.4) 교재 정보 관리(tblBook)
--1. 교재 정보 등록; 번호, 교재명, 출판사, 가격, 과목 번호 입력
insert into tblBook (book_seq, book_name, book_publisher, book_price, subject_seq)
    values (book_seq.nextVal, 교재명, 출판사, 가격, 과목번호);

--2. 교재 정보 조회; 번호, 교재명, 출판사, 가격, 과목 번호 출력
select * from tblBook;

--3. 교재 정보 수정; 해당 교재 번호의 교재명, 출판사, 가격, 과목 번호 수정
update tblBook set book_name = 교재명 where book_seq = 번호;
update tblBook set book_publisher = 출판사 where book_seq = 번호;
update tblBook set book_price = 가격 where book_seq = 번호;
update tblBook set subject_seq = 과목번호 where book_seq = 번호;

--4. 교재 정보 삭제; 해당 교재 번호의 교재 정보 삭제
delete from tblBook where book_seq = 번호;


--A-2. 교사 계정 관리
--A-2.1) 교사 정보 관리(tblTeacher)
--1. 교사 정보 등록; 번호, 이름, 주민등록번호, 연락처 입력
insert into tblTeacher (teacher_seq, teacher_name, teacher_ssn, teacher_tel) 
    values (teacher_seq.nextVal, 이름, 주민등록번호, 연락처);

--2. 교사 정보 조회; 번호, 이름, 주민등록번호, 연락처 출력
select * from tblTeacher;

--3. 교사 정보 수정; 해당 교사 번호의 이름, 주민등록번호, 연락처 수정
update tblTeacher set teacher_name = 이름 where teacher_seq = 번호;
update tblTeacher set teacher_ssn = 주민등록번호 where teacher_seq = 번호;
update tblTeacher set teacher_tel = 연락처 where teacher_seq = 번호;

--4. 교사 정보 삭제; 해당 교사 번호의 교사 정보 삭제
delete from tblTeacher where teacher_seq = 번호;


--A-2.2) 교사별 강의 가능 과목 관리(tblSubjectTeacher)
--1. 가능 과목 등록; 번호, 과목번호, 교사번호 입력
insert into tblSubjectTeacher (st_seq, subject_seq, teacher_seq) 
    values (st_seq.nextVal, 과목번호, 교사번호);

--2. 가능 과목 조회; 번호, 교사명(tblTeacher), 과목명(tblSubject) 출력
select 
    tst.st_seq as "번호",
    tt.teacher_name as "교사명",
    ts.subject_name as "과목명"
from tblSubjectTeacher tst inner join tblTeacher tt
    on (tst.teacher_seq = tt.teacher_seq) inner join tblSubject ts
    on (tst.subject_seq = ts.subject_seq);

--3. 가능 과목 수정; 해당 번호의 과목번호, 교사번호 수정
update tblSubjectTeacher set subject_seq = 과목번호 where st_seq = 번호;
update tblSubjectTeacher set teacher_seq = 교사번호 where st_seq = 번호;

--4. 가능 과목 삭제; 해당 번호의 강의 가능 교사 정보 삭제
delete from tblSubjectTeacher where st_seq = 번호;


--A-2.3) 특정 교사 선택시 상세 정보 조회
--1. 상세 정보 조회; 해당 교사 번호의 개설 과정명, 과목명 및 기간, 교재, 강의실 출력
select
    tt.teacher_name as "교사명",
    tc.course_name as "과목명",
    toc.oc_startdate as "과정 시작일",
    toc.oc_enddate as "과정 종료일",
    ts.subject_name as "과목명",
    tos.os_startdate as "과목 시작일",
    tos.os_enddate as "과목 종료일",
    tb.book_name as "교재명",
    tr.room_name as "강의실"
from tblTeacher tt inner join tblTeacherManagement ttm
    on (tt.teacher_seq = ttm.teacher_seq) inner join tblOpenCourse toc
    on (ttm.oc_seq = toc.oc_seq) inner join tblOpenSubject tos
    on (toc.oc_seq = tos.oc_seq) inner join tblCourse tc
    on (toc.course_seq = tc.course_seq) inner join tblSubject ts
    on (tos.subject_seq = ts.subject_seq) inner join tblRoom tr
    on (toc.room_seq = tr.room_seq) inner join tblBook tb
    on (ts.subject_seq = tb.subject_seq) inner join (select max(tm_seq) as final
                                                     from tblTeacherManagement
                                                     group by oc_seq) ttmr
    on (ttm.tm_seq = ttmr.final)
where tt.teacher.seq = 교사번호;


--A-3. 개설 과정 관리
--A-3.1) 개설 과정 정보 관리(tblOpenCourse)
--1. 개설 과정 등록; 번호, 과정번호, 시작일, 종료일, 강의실 번호 입력
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values(oc_seq.nextval, 과정_번호, 시작일, 종료일, 강의실_번호);


--2. 개설 과정 조회; 번호, 과정번호, 시작일, 종료일, 강의실 번호 출력
select * from tblOpenCourse;

--3. 개설 과정 수정; 해당 번호의 과정 번호, 시작일, 종료일, 강의실 수정
update tblOpenCourse set course_seq = 과정_번호 where oc_seq = 번호;
update tblOpenCourse set oc_startdate = 시작일 where oc_seq = 번호;
update tblOpenCourse set oc_enddate = 종료일 where oc_seq = 번호;
update tblOpenCourse set room_seq = 강의실_번호 where oc_seq = 번호;

--4. 개설 과정 삭제; 해당 번호의 개설 과정 정보 삭제
delete from tblOpenCourse where oc_seq = 번호;


--A-3.2) 개설 과정 정보 출력
--과정명, 기간, 강의실, 개설 과목 등록 여부, 교육생 등록 인원
select 
    toc.oc_seq as "개설 과정 번호",
    tc.course_name as "과정명",
    toc.oc_startdate as "시작일",
    toc.oc_enddate as "종료일",
    tr.room_name as "강의실",
    case
        when (select count(*) from tblOpenSubject 
              group by oc_seq having oc_seq = toc.oc_seq) = 0 then 'N'
        else 'Y'
    end as "개설 과목 등록 여부",
    (select count(*) from tblEnrollment 
     group by oc_seq having oc_seq = toc.oc_seq) as "등록 인원"
from tblCourse tc inner join tblOpenCourse toc
    on (tc.course_seq = toc.course_seq) inner join tblRoom tr
    on (toc.room_seq = tr.room_seq);


--A-3.3) 특정 개설 과정 선택시 개설 과목 정보 조회
--개설 과목명, 기간 출력
select
    ts.subject_name as "개설 과목명",
    tos.os_startdate as "시작일",
    tos.os_enddate as "종료일"
from tblOpenSubject tos inner join tblSubject ts
    on (tos.subject_seq = ts.subject_seq)
where os_seq = 개설_과정_번호;


--A-3.4) 특정 개설 과정 선택시 교육생 정보 조회
--이름, 주민등록번호, 연락처 출력
select
    ts.student_name as "이름",
    ts.student_ssn as "주민등록번호",
    ts.student_tel as "연락처"
from tblEnrollment te inner join tblStudent ts
    on (te.student_seq = ts.student_seq)
where os_seq = 개설_과정_번호;


--B-1. 교사 강의 스케줄 조회
--B-1.1) 현재 강의 스케줄 확인
--교사 번호에 해당하는 과정 상태(예정/진행/종료) 출력
select
    tc.course_name as "과정명",
    toc.oc_startdate as "시작일",
    toc.oc_enddate as "종료일",
    case
        when toc.oc_startdate > sysdate then '예정'
        when toc.oc_enddate >= sysdate then '진행'
        when toc.oc_enddate < sysdate then '종료'
    end as "상태"
from tblOpenCourse toc inner join tblCourse tc
    on (toc.course_seq = tc.course_seq) inner join tblTeacherManagement ttm
    on (ttm.oc_seq = toc.oc_seq) inner join tblTeacher tt
    on (tt.teacher_seq = ttm.teacher_seq) inner join (select max(tm_seq) as final
                                                      from tblTeacherManagement
                                                      group by oc_seq) ttmr
    on (ttm.tm_seq = ttmr.final)
where tt.teacher_seq = 교사_번호;


--B-1.2) 강의 스케줄 상세 조회
--해당 과정 번호의 과정명, 과목명 및 기간, 교재, 강의실, 등록 인원 출력
select
    tc.course_name as "과정명",
    toc.oc_startdate as "과정 시작일",
    toc.oc_enddate as "과정 종료일",
    ts.subject_name as "과목명",
    tos.os_startdate as "과목 시작일",
    tos.os_enddate as "과목 종료일",
    tr.room_name as "강의실",
    (select count(*) from tblEnrollment 
     group by oc_seq having oc_seq = toc.oc_seq) as "등록 인원"
from tblCourse tc inner join tblOpenCourse toc
    on (tc.course_seq = toc.course_seq) inner join tblOpenSubject tos
    on (tos.oc_seq = toc.oc_seq) inner join tblSubject ts
    on (tos.subject_seq = ts.subject_seq) inner join tblRoom tr
    on (toc.room_seq = tr.room_seq) inner join tblTeacherManagement ttm
    on (ttm.oc_seq = toc.oc_seq) inner join tblTeacher tt
    on (tt.teacher_seq = ttm.teacher_seq) inner join (select max(tm_seq) as final
                                                      from tblTeacherManagement
                                                      group by oc_seq) ttmr
    on (ttm.tm_seq = ttmr.final)
where tt.teacher_seq = 교사_번호
    and toc.oc_seq = 개설_과정_번호;


--B-1.3) 해당 과정의 교육생 정보 조회
--해당 개설 과정 번호의 교육생 정보(이름, 연락처, 상태) 출력
select
    ts.student_name as "이름",
    ts.student_tel as "연락처",
    case
        when (select count(*) from tblAbandonment 
              where enrollment_seq = te.enrollment_seq) = 1 then '중도 탈락'
        when toc.oc_startdate > sysdate then '예정'
        when toc.oc_enddate >= sysdate then '진행 중'
        when toc.oc_enddate < sysdate then '수료'
    end as "상태"
from tblOpenCourse toc inner join tblCourse tc
    on (toc.course_seq = tc.course_seq) inner join tblEnrollment te
    on (te.oc_seq = toc.oc_seq) inner join  tblStudent ts
    on (te.student_seq = ts.student_seq)
where toc.oc_seq = 개설_과정_번호;


--D-1. 교육 과정 조회
--D-1.1) 개설 과정 조회
--과정명, 과목명 및 기간, 담당 교사
select
    toc.oc_seq,
    tt.teacher_name as "교사명",
    tc.course_name as "과정명",
    toc.oc_startdate as "과정 시작일",
    toc.oc_enddate as "과정 종료일",
    ts.subject_name as "과목명",
    tos.os_startdate as "과목 시작일",
    tos.os_enddate as "과목 종료일"
from tblTeacher tt inner join tblTeacherManagement ttm
    on (tt.teacher_seq = ttm.teacher_seq) inner join tblOpenCourse toc
    on (ttm.oc_seq = toc.oc_seq) inner join tblOpenSubject tos
    on (toc.oc_seq = tos.oc_seq) inner join tblCourse tc
    on (toc.course_seq = tc.course_seq) inner join tblSubject ts
    on (tos.subject_seq = ts.subject_seq) inner join (select max(tm_seq) as final
                                                      from tblTeacherManagement
                                                      group by oc_seq) ttmr
    on (ttm.tm_seq = ttmr.final) 
order by toc.oc_startdate desc;
