--------------------------------------------------------------------------------
-- B-2. 배점 입출력
-- B-2.1) 배점 정보를 출결, 필기, 실기로 구분해서 등록
--------------------------------------------------------------------------------
insert into tblScorePercent (sp_seq, os_seq, exam_per, skill_per, attendance_per)
       values ((select max(sp_seq)+1 from tblscorepercent), 50, 46, 16, 38);
--------------------------------------------------------------------------------
-- B-2.2) 시험날짜, 시험 문제 추가
--------------------------------------------------------------------------------
insert into tblTest (test_seq, test_file, os_seq, test_type, test_date)
       values (test_seq.nextVal, 'https://www.sycenter.net/document/00446', 20, '실기', '01-08-04');
--------------------------------------------------------------------------------
-- B-2.3) 과목 목록 출력시 개설과목명, 개설과목기간, 개설과정명, 개설과정기간, 강의실, 교재명, 배점정보, 성적정보
--------------------------------------------------------------------------------
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
            on os.os_seq = sc.os_seq
             inner join tblScorePercent sp
              on sp.os_seq = os.os_seq
               inner join tbltest te
                on te.os_seq = os.os_seq
                 inner join tblcourse c
                  on oc.course_seq = c.course_seq
--------------------------------------------------------------------------------
-- B-3. 성적 입출력
-- B-3.1) 특정 과목 선택시 교육생 이름, 교육생 전화번호, 중도탈락 및 출결, 필기, 실기 성적 출력
--------------------------------------------------------------------------------
select
    os.os_seq,
    st.student_name as "교육생이름",
    st.student_tel as "교육생전화번호",
    a.abandonment_date as "중도탈락일",
    sc.score_attendance as "출결성적",
    sc.score_exam as "필기성적",
    sc.score_skill as "실기성적"
from tblopensubject os    
 inner join tblopencourse oc
  on os.oc_seq = oc.oc_seq
   inner join tblenrollment e
    on oc.oc_seq = e.oc_seq
     inner join tblstudent st
      on e.student_seq = st.student_seq
       inner join tblabandonment a
        on e.enrollment_seq = a.enrollment_seq
         inner join tblscore sc
          on os.os_seq = sc.os_seq
           where os.os_seq = 3
            order by os.os_seq;
--------------------------------------------------------------------------------
-- B-3.1-2) 특정 교육생 정보 선택 시 해당 교육생의 시험 점수를 입력
--------------------------------------------------------------------------------
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
       values
       ((select max(score_seq) from tblscore)+1,
       (select max(enrollment_seq)-- 더미데이터 존재로 max를 사용했으나 교육생이름과 수강신청번호는 1:1매칭이기때문에 실제데이터 구현시 max는 삭제
       from tblenrollment e
       inner join tblstudent s
       on e.student_seq = s.student_seq
       where s.student_name = '서민종'),
       16,
       3,
       22,
       16,
       19);
--------------------------------------------------------------------------------
-- B-3.2) 교육생 전체에 대해서 성적을 등록했는지의 여부 출력
--------------------------------------------------------------------------------
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
 left outer join tblstudent s
  on e.student_seq = s.student_seq
   left outer join tblscore sc
    on sc.enrollment_seq = e.enrollment_seq;
--------------------------------------------------------------------------------