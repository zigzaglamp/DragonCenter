/*과정정보*/
create or replace view vwCourseInfo
as
select 
    oc.oc_seq as oc_seq,
    c.course_seq as c_seq,
    c.course_name as course_name,  
    oc.oc_startdate as oc_startdate,
    oc.oc_enddate as oc_enddate
from tblopencourse oc
    inner join tblcourse c 
        on oc.course_seq = c.course_seq;

commit;