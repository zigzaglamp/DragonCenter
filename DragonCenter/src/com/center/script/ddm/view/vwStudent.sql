-- 교육생 뷰
create or replace view vwStudent as
select
    distinct s.student_seq as 학생번호,
    s.student_name as 학생명,
    s.student_ssn as "학생 주민등록번호",
    s.student_tel as "학생 연락처",
    s.student_coursenum as "학생 수강횟수",
    en.enrollment_seq as "학생 수강신청 번호",
    c.course_seq as 과정번호,
    c.course_name as 과정명,
    oc.oc_startdate as 과정시작일,
    oc.oc_enddate as 과정종료일,
    c.course_period as 과정기간,
    r.room_name as 강의실명,
    case
        when ab.abandonment_date is not null
            then null
        else oc.oc_enddate
    end as 수료일,
    ab.abandonment_date as 탈락일
        
from tblstudent s
    inner join tblenrollment en
        on s.student_seq = en.student_seq
            inner join tblopencourse oc
                on oc.oc_seq = en.oc_seq
                    inner join tblcourse c
                        on oc.course_seq = c.course_seq
                            inner join tblroom r
                                on r.room_seq = oc.room_seq
                                    full outer join tblabandonment ab
                                        on en.enrollment_seq = ab.enrollment_seq
order by s.student_seq;



