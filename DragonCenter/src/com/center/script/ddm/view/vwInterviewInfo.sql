/*면접정보*/
create or replace view vwInterviewInfo
as
select 
        ir.oc_seq as oc_seq,
        ir.interviewer_name as name, 
        ir.interviewer_tel as tel, 
        ir.interviewer_date as hopedate,
        i.interviewer_seq as seq,
        i.interview_date as ensuredate,
        i.interview_result as result
from tblinterviewer ir 
    inner join tblinterview i 
        on ir.interviewer_seq = i.interviewer_seq; 

select * from vwinterviewinfo;
