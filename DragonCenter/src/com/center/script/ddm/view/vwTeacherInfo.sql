/* 교사 정보 */

create view vwTeacherInfo
as
select
    tt.teacher_name as "교사명",
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
order by toc.oc_startdate desc;