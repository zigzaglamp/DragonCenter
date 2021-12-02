/*교육생 정보*/

create or replace view vwStudentInfo
as
select 
        s.student_name as sname, 
        s.student_tel as stel, 
        substr(s.student_ssn,-7) as sssn,
        c.course_name as ccourse_name,
        e.enrollment_seq as eseq
from tblenrollment e
    inner join tblstudent s
        on e.student_seq = s.student_seq
            inner join tblopencourse o
                on e.oc_seq = o.oc_seq
                    inner join tblcourse c
                        on o.course_seq = c.course_seq;
                        
select * from vwStudentInfo;      