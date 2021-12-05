--------------------------------------------------------------------------------
-- C-1. 교육생이 수강한 과목에 대한 성적 조회
-- C-1.1) 과목번호, 과목명, 과목기간, 교재명, 교사명, 배점정보, 성적정보, 과목별 시험날짜, 시험문제 출력
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
              on sp.os_seq = os.oc_seq
               inner join tbltest te
                on te.os_seq = os.os_seq
                 inner join tblcourse c
                  on oc.course_seq = c.course_seq
--------------------------------------------------------------------------------