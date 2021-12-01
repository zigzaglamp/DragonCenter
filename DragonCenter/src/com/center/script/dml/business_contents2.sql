-- business_contents2.sql
/*
    A-4. 개설 과목 관리(과정, 과목, 강의실, 교재)
        1) 개설 과목 입력/출력/수정/삭제
        2) 개설 과목 정보 출력
            - 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 교사명
        3) 교재 정보 입력/출력/수정/삭제
    A-6. 시험 관리 및 성적 조회
        1) 개설 과목 별로 성적 등록 여부, 시험 문제 파일 등록 여부 출력
        2) 교육생 개인이 수강한 모든 개설 과목에 대한 성적 정보(개설 과목명, 개설 과목 기간, 교사명, 출력, 필기, 실기) 출력
        3) 개설 과목별 성적 출력(과정명, 개설과정기간, 강의실명, 개설과목명, 교사명, 교육생 이름, 교육생주민번호, 필기, 실기 출력
    B-2. 배점 입출력
        1) 배점 정보를 출결, 필기, 실기로 구분해서 등록
        2) 시험 날짜, 시험 문제 추가
        3) 과목 목록 출력시 과목번호, 과정명, 과정기간, 강의실, 과목명, 과목기간, 교재명, 출결, 필기, 실기, 배점 출력
    B-3. 성적 입출력
        1) 특정 과목 선택시 교육생 이름, 교육생 전화번호, 중도탈락 및 출결, 필기, 실기 성적 출력
        1-2) 특정 교육생 정보 선택 시 해당 교육생의 시험 점수를 입력
        2) 교육생 전체에 대해서 성적을 등록했는지의 여부 출력
    C-1. 교육생이 수강한 과목에 대한 성적 조회
        1) 과목번호, 과목명, 과목기간, 교재명, 교사명, 배점정보, 성적정보, 과목별 시험날짜, 시험문제 출력
*/

-- A-4. 개설 과목 관리
-- A-4.1) 개설과목 입력/수정/삭제
insert into tblopensubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
       values (os_seq.nextVal, 기초과목번호, 개설과정번호, 시작년월일, 종료년월일);
update tblopensubject set subject_seq = 기초과목번호 where os_seq = 번호;
update tblopensubject set oc_seq = 개설과정번호 where os_seq = 번호;
delete from tblopensubject where os_seq = 번호;

-- A-4.2) 개설 과목 정보 출력
select
    distinct s.subject_name as "과목명",
    os.os_startdate || '~' || os.os_enddate as "기간",
    b.book_name as "교재명",
    t.teacher_name as "교사명"
from tblsubject s
 inner join tblopensubject os
  on s.subject_seq = os.subject_seq
   inner join tblbook b
    on s.subject_seq = b.subject_seq
     inner join tblopencourse oc
      on oc.oc_seq = os.oc_seq
       inner join tblteachermanagement tm
        on oc.oc_seq = tm.oc_seq
         inner join tblteacher t
          on tm.teacher_seq = t.teacher_seq;
-- A-4.3) 교재 정보 입력/출력/수정/삭제
insert into tblbook (book_seq, book_name, book_publisher, book_price, subject_seq)
       values (book_seq.nextVal, 교재명, 출판사, 가격, 과목번호);
update tblbook set book_name where subject_seq = 과목번호;
update tblbook set book_publisher where subject_seq = 과목번호;
update tblbook set book_price where subject_seq = 과목번호;
delete from tblbook where subject_seq = 과목번호;
-- A-6. 시험 관리 및 성적 조회
-- A-6.1) 개설 과목 별로 성적 등록 여부, 시험 문제 파일 등록 여부
select
    os.os_seq as "개설과목번호",
    s.score_exam as "필기성적",
    s.score_skill as "실기성적",
    s.score_attendance as "출결성적",
    t.test_file as "파일경로" 
from tblopensubject os
 inner join tblscore s
  on os.oc_seq = s.os_seq
   inner join tbltest t
    on os.oc_seq = t.os_seq
     order by os.os_seq;
-- A-6.2) 교육생 개인이 수강한 모든 개설 과목에 대한 성적 정보(개설 과목명, 개설 과목 기간, 교사명, 출결, 필기, 실기) 출력
select
distinct sj.subject_name as "개설과목명",
    os.os_startdate || '~' || os.os_enddate as "개설 과목 기간",
    t.teacher_name "교사명",
    sc.score_exam as "필기성적",
    sc.score_skill as "실기성적",
    sc.score_attendance as "출결성적"
from tblstudent s
 inner join tblenrollment e
  on s.student_seq = e.student_seq
   inner join tblopencourse oc
    on e.oc_seq = oc.oc_seq
     inner join tblopensubject os
      on oc.oc_seq = os.oc_seq
       inner join tblsubject sj
        on sj.subject_seq = os.subject_seq
         inner join tblteachermanagement tm
          on oc.oc_seq = tm.oc_seq
           inner join tblteacher t
            on tm.teacher_seq = t.teacher_seq
             inner join tblscore sc
              on os.oc_seq = sc.os_seq
               where s.student_seq = 교육생번호;
                order by sj.subject_name
-- A-6.3) 개설 과목별 성적 출력(과정명, 개설과정기간, 강의실명, 개설과목명, 교사명, 교육생 이름, 교육생주민번호, 필기, 실기 출력                                                                
select
distinct c.course_name as "과정명",
    c.course_period as "개설과정기간",
    r.room_name as "강의실명",
    s.subject_name as "개설과목명",
    t.teacher_name as "교사명",
    st.student_name as "교육생이름",
    st.student_ssn as "교육생주민번호",
    sc.score_exam as "필기점수",
    sc.score_skill as "실기점수"
from tblopencourse oc
 inner join tblcourse c
  on oc.course_seq = c.course_seq
   inner join tblroom r
    on oc.room_seq = r.room_seq
     inner join tblopensubject os
      on os.oc_seq = oc.oc_seq
       inner join tblsubject s
        on os.subject_seq = s.subject_seq
         inner join tblteachermanagement tm
          on tm.oc_seq = oc.oc_seq
           inner join tblteacher t
            on tm.teacher_seq = t.teacher_seq
             inner join tblenrollment e
              on e.oc_seq = oc.oc_seq
               inner join tblstudent st
                on st.student_seq = e.student_seq
                 inner join tblscore sc
                  on sc.enrollment_seq = e.enrollment_seq;
-- B-2. 배점 입출력
-- B-2.1) 배점 정보를 출결, 필기, 실기로 구분해서 등록
insert into tblScorePercent (sp_seq, os_seq, exam_per, skill_per, attendance_per)
       values (sp_seq.nextVal, 개설 과목 번호, 필기비중, 실기비중, 출결비중);
-- B-2.2) 시험날짜, 시험 문제 추가
insert into tblTest (test_seq, test_file, os_seq, test_type, test_date)
       values (test_seq.nextVal, 파일 링크, 개설 과목 번호, 유형, 시험일);
-- B-2.3) 과목 목록 출력시 개설과목명, 개설과목기간, 개설과정명, 개설과정기간, 강의실, 교재명, 배점정보, 성적정보
select
    distinct s.subject_name as "개설과목명",
    s.subject_period as "개설과목기간",
    c.course_name as "개설과정명",
    c.course_period as "개설과정기간",
    oc.room_seq as "강의실",
    b.book_name as "교재명",
    sp.attendance_per as "출결비중",
    sp.skill_per as "실기비중",
    sp.exam_per "필기비중",
    sc.score_attendance as "출결성적",
    sc.score_skill as "실기성적",
    sc.score_exam as "필기성적",
    te.test_file as "파일등록"
from tblopensubject os
 inner join tblsubject s
  on s.subject_seq = os.subject_seq
   inner join tblopencourse oc
    on oc.oc_seq = os.oc_seq
     inner join tblbook b
      on b.subject_seq = s.subject_seq
       inner join tblteachermanagement tm
        on oc.oc_seq = tm.oc_seq
         inner join tblteacher t
          on tm.teacher_seq = t.teacher_seq
           inner join tblscore sc
            on os.oc_seq = sc.os_seq
             inner join tblScorePercent sp
              on sp.os_seq = os.oc_seq
               inner join tbltest te
                on te.os_seq = os.os_seq
                 inner join tblcourse c
                  on oc.course_seq = c.course_seq
-- B-3. 성적 입출력
-- B-3.1) 특정 과목 선택시 교육생 이름, 교육생 전화번호, 중도탈락 및 출결, 필기, 실기 성적 출력
select
    distinct st.student_name as "교육생이름",
    st.student_tel as "교육생전화번호",
    a.abandonment_date as "중도탈락일",
    sc.score_attendance as "출결성적",
    sc.score_exam as "필기성적",
    sc.score_skill as "실기성적"
from tblenrollment e
 inner join tblstudent st
  on e.student_seq = st.student_seq
   inner join tblopencourse oc
    on e.oc_seq = oc.oc_seq
     inner join tblabandonment a
      on e.enrollment_seq = a.enrollment_seq
       inner join tblscore sc
        on e.enrollment_seq = sc.enrollment_seq
         inner join tblopensubject os
          on oc.oc_seq = os.oc_seq
           where os.os_seq = 개설과목번호;
            order by st.student_name;
-- B-3.1-2) 특정 교육생 정보 선택 시 해당 교육생의 시험 점수를 입력
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
       values
       ((select max(score_seq) from tblscore)+1,
       (select max(enrollment_seq)-- 더미데이터 존재로 max를 사용했으나 교육생이름과 수강신청번호는 1:1매칭이기때문에 실제데이터 구현시 max는 삭제
       from tblenrollment e
       inner join tblstudent s
       on e.student_seq = s.student_seq
       where s.student_name = '교육생이름'),
       개설과목번호,
       배점번호,
       필기점수,
       실기점수,
       출결점수);
-- B-3.2) 교육생 전체에 대해서 성적을 등록했는지의 여부 출력
select
distinct s.student_name as "교육생이름",
case
    when sc.score_exam is not null then '등록'
    when sc.score_exam is null then '미등록'
end as "필기등록여부",
case
    when sc.score_skill is not null then '등록'
    when sc.score_skill is null then '미등록'
end as "실기등록여부",
case
    when sc.score_attendance is not null then '등록'
    when sc.score_attendance is null then '미등록'
end as "출결등록여부"
from tblenrollment e
 inner join tblstudent s
  on e.student_seq = s.student_seq
   inner join tblscore sc
    on sc.enrollment_seq = e.enrollment_seq
select * from tblscore;
select count(distinct(enrollment_seq)) from tblscore;

-- C-1. 교육생이 수강한 과목에 대한 성적 조회
-- C-1.1) 과목번호, 과목명, 과목기간, 교재명, 교사명, 배점정보, 성적정보, 과목별 시험날짜, 시험문제 출력
-- B-2.3) 중복

-- 과목파트 대표뷰
create or replace view vwOpenSubjectListInfo
as select
    distinct s.subject_name as "개설과목명",
    s.subject_period as "개설과목기간",
    c.course_name as "개설과정명",
    c.course_period as "개설과정기간",
    oc.room_seq as "강의실",
    b.book_name as "교재명",
    sp.attendance_per as "출결비중",
    sp.skill_per as "실기비중",
    sp.exam_per "필기비중",
    sc.score_attendance as "출결성적",
    sc.score_skill as "실기성적",
    sc.score_exam as "필기성적",
    te.test_file as "파일등록"
from tblopensubject os
 inner join tblsubject s
  on s.subject_seq = os.subject_seq
   inner join tblopencourse oc
    on oc.oc_seq = os.oc_seq
     inner join tblbook b
      on b.subject_seq = s.subject_seq
       inner join tblteachermanagement tm
        on oc.oc_seq = tm.oc_seq
         inner join tblteacher t
          on tm.teacher_seq = t.teacher_seq
           inner join tblscore sc
            on os.oc_seq = sc.os_seq
             inner join tblScorePercent sp
              on sp.os_seq = os.oc_seq
               inner join tbltest te
                on te.os_seq = os.os_seq
                 inner join tblcourse c
                  on oc.course_seq = c.course_seq
                                                            
    



