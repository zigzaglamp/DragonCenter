/*교육생 정보*/

create or replace view vwStudentInfo
as
select 
        s.student_name as sname, 
        s.student_seq as sseq,
        s.student_tel as stel, 
        substr(s.student_ssn,-7) as sssn,
        c.course_name as ccourse_name,
        c.course_seq as ccourse_seq,
        e.enrollment_seq as eseq,
        o.oc_startdate as startdate,
        o.oc_enddate as enddate
from tblenrollment e
    inner join tblstudent s
        on e.student_seq = s.student_seq
            inner join tblopencourse o
                on e.oc_seq = o.oc_seq
                    inner join tblcourse c
                        on o.course_seq = c.course_seq;
 commit;                       
select * from vwStudentInfo order by sseq; 