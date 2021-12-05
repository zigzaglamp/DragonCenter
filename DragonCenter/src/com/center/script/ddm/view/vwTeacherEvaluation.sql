-- 교사 평가 뷰
create or replace view vwTeacherEvaluation as
select
    t.teacher_seq as 교사번호,
    t.teacher_name as 교사이름,
    oc.oc_seq as 과정번호,
    c.course_name as 과정명,
    oc.oc_enddate as 과정종료일,
    te.preparing as 수업준비,
    te.implement as 수업실행,
    te.professionalism as 전문성,
    te.attitude as 근무태도,
    te.studentsupport as 학생지원,
    round((te.preparing + te.implement + te.professionalism + te.attitude + te.studentsupport) / 10, 1) as 총점,
    te.otheropinion as 후기
from tblteacherevaluation te
    inner join tblenrollment en
        on te.enrollment_seq = en.enrollment_seq
            inner join tblopencourse oc
                on oc.oc_seq = en.oc_seq
                    inner join tblteachermanagement tm
                        on tm.oc_seq = oc.oc_seq
                            inner join tblteacher t
                                on t.teacher_seq = tm.teacher_seq
                                    inner join tblcourse c
                                        on c.course_seq = oc.course_seq               
where oc.oc_enddate < sysdate                                        
order by en.enrollment_seq, t.teacher_seq, oc.oc_enddate;