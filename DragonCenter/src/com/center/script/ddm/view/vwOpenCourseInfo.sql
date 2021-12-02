/* 개설 과정 상세 정보 */

create view vwOpenCourseInfo
as
select
    toc.oc_seq as "개설 번호",
    tt.teacher_name as "교사명",
    tc.course_name as "과정명",
    toc.oc_startdate as "과정 시작일",
    toc.oc_enddate as "과정 종료일",
    ts.subject_name as "과목명",
    tos.os_startdate as "과목 시작일",
    tos.os_enddate as "과목 종료일",
    tr.room_name as "강의실명"
from tblTeacher tt inner join tblTeacherManagement ttm
    on (tt.teacher_seq = ttm.teacher_seq) inner join tblOpenCourse toc
    on (ttm.oc_seq = toc.oc_seq) inner join tblCourse tc
    on (toc.course_seq = tc.course_seq) inner join tblOpenSubject tos
    on (tos.oc_seq = toc.oc_seq) inner join tblSubject ts
    on (tos.subject_seq = ts.subject_seq) inner join tblRoom tr
    on (toc.room_seq = tr.room_seq) inner join (select max(tm_seq) as final
                                                    from tblTeacherManagement
                                                    group by oc_seq) ttmr
    on (ttm.tm_seq = ttmr.final) 
order by toc.oc_startdate desc;