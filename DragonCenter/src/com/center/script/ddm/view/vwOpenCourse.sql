/* 개설 과정 상세 정보 */

create or replace view vwOpenCourse
as
select
    toc.oc_seq as oc_seq,
    tc.course_name as course_name,
    toc.oc_startdate as oc_startdate,
    toc.oc_enddate as oc_enddate,
    tr.room_seq as room_seq,
    tr.room_name as room_name,
    tr.room_capacity as room_capacity,
    case
        when (select count(*) from tblOpenSubject 
              group by oc_seq having oc_seq = toc.oc_seq) > 0 then 'Y'
        else 'N'
    end as regsub,
    (select 
         case count(*)
             when 1 then 0
             else count(*)
         end
     from tblEnrollment e full outer join tblOpenCourse oc
         on (e.oc_seq = oc.oc_seq)
     group by oc.oc_seq having oc.oc_seq = toc.oc_seq) as num
from tblOpenCourse toc inner join tblCourse tc
    on (toc.course_seq = tc.course_seq) inner join tblRoom tr
    on (toc.room_seq = tr.room_seq) 
order by toc.oc_startdate desc;
