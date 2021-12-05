--------------------------------------------------------------------------------
-- A-6. 시험 관리 및 성적 조회
-- A-6.1) 개설 과목 별로 성적 등록 여부, 시험 문제 파일 등록 여부
--------------------------------------------------------------------------------
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
     select * from tblopencourse
     select * from tblcourse;
     select * from tblsubject where subject_seq in (1,2,3,4,29,32);
--------------------------------------------------------------------------------
-- A-6.2) 교육생 개인이 수강한 모든 개설 과목에 대한 성적 정보(개설 과목명, 개설 과목 기간, 교사명, 출결, 필기, 실기) 출력
--------------------------------------------------------------------------------
update tblopensubject set os_startdate = '19-02-01', os_enddate = '19-03-14' where os_seq = 1;
update tblopensubject set os_startdate = '19-03-15', os_enddate = '19-05-01' where os_seq = 2;
update tblopensubject set os_startdate = '19-05-02', os_enddate = '19-06-01' where os_seq = 3;
update tblopensubject set os_startdate = '19-06-02', os_enddate = '19-07-01' where os_seq = 4;
update tblopensubject set os_startdate = '19-07-02', os_enddate = '19-08-02' where os_seq = 29;
update tblopensubject set os_startdate = '19-08-03', os_enddate = '19-09-01' where os_seq = 32;
/*
tblscore 인설트
tblteachermanagement 인설트
tblopensubject os_seq 1 6개 1,2,3,4,29,32
tblopensubject 기간 업데이트
*/
select
    distinct sj.subject_name as "개설과목명",
    os.os_startdate as "시작일",
    os.os_enddate as "종료일",
    sc.score_exam as "필기성적",
    sc.score_skill as "실기성적",
    sc.score_attendance as "출결성적",
    t.teacher_name "교사명"
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
           inner join tblscore sc
            on os.os_seq = sc.os_seq
             inner join tblteacher t
              on tm.teacher_seq = t.teacher_seq
               where e.student_seq = 3
                order by os.os_startdate;
-------------------------------------------------------------------------------
-- A-6.3) 개설 과목별 성적 출력(과정명, 개설과정기간, 강의실명, 개설과목명, 교사명, 교육생 이름, 교육생주민번호, 필기, 실기 출력                                                                
-------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------

--procedure

--------------------------------------------------------------------------------
/*
A-6. 시험 관리 및 성적 조회
2) 교육생 개인이 수강한 모든 개설 과목에 대한 성적 정보(개설 과목명, 개설 과목 시작일, 개설 과목 종료일, 필기성적, 실기성적, 출결성적, 교사명) 출력
*/
-------------------------------------------------------------------------------
begin
    procStudentScoreInfo(3);
end;
-- 수강신청번호
-------------------------------------------------------------------------------
create or replace procedure procStudentScoreInfo(
    pes1 number
)
is
    cursor vcursor
        is select
        "개설과목명",
        "시작일",
        "종료일",
        "필기성적",
        "실기성적",
        "출결성적",
        "교사명",
        "a",
        "b",
        "c"
        from vwStudentScoreInfo where "수강번호" = pes1;
        
        vexam_result number;
        vskill_result number;
        vattendance_result number;
begin
    for vrow in vcursor loop
        
        vexam_result := vrow."a" * (vrow."필기성적"/50);
        vskill_result := vrow."b" * (vrow."실기성적"/50);
        vattendance_result := vrow."c" * (vrow."출결성적"/50);
        dbms_output.put_line(
        '['||vrow."개설과목명"||']'||'   '||
        '['||vrow."시작일"||']'||'   '||
        '['||vrow."종료일"||']'||'   '||
        '['||vexam_result||']'||'   '||
        '['||vskill_result||']'||'   '||
        '['||vattendance_result||']'||'   '||
        '['||vrow."교사명"||']');
    
    end loop;
end;
-------------------------------------------------------------------------------
create or replace view vwStudentScoreInfo
as select
    distinct sj.subject_name as "개설과목명",
    os.os_startdate as "시작일",
    os.os_enddate as "종료일",
    sc.score_exam as "필기성적",
    sc.score_skill as "실기성적",
    sc.score_attendance as "출결성적",
    t.teacher_name as "교사명",
    e.enrollment_seq as "수강번호",
    sp.exam_per as "a",
    sp.skill_per as "b",
    sp.attendance_per as "c",
    os.os_seq
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
           inner join tblscore sc
            on os.os_seq = sc.os_seq
             inner join tblteacher t
              on tm.teacher_seq = t.teacher_seq
               inner join tblscorepercent sp
                on sp.os_seq = os.os_seq
                 order by os.os_startdate
-------------------------------------------------------------------------------