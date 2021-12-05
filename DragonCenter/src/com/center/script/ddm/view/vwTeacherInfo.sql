/* 교사 정보 */

create or replace view vwTeacherSchedule
as
select
    tt.teacher_seq as teacher_seq,
    tt.teacher_name as teacher_name,
    tc.course_name as course_name,
    toc.oc_startdate as oc_startdate,
    toc.oc_enddate as oc_enddate,
    case
        when toc.oc_startdate > sysdate then '예정'
        when toc.oc_enddate >= sysdate then '진행'
        when toc.oc_enddate < sysdate then '종료'
    end as state
from tblOpenCourse toc inner join tblCourse tc
    on (toc.course_seq = tc.course_seq) inner join tblTeacherManagement ttm
    on (ttm.oc_seq = toc.oc_seq) inner join tblTeacher tt
    on (tt.teacher_seq = ttm.teacher_seq) inner join (select max(tm_seq) as final
                                                    from tblTeacherManagement
                                                    group by oc_seq) ttmr
    on (ttm.tm_seq = ttmr.final) 
order by toc.oc_startdate desc;
