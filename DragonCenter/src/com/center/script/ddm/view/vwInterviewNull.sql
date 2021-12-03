--면접일자 없는 사람
create or replace view vwInterviewNull
as
select 
    ir.interviewer_seq  as "면접번호",
    ir.interviewer_name  as "이름",
    ir.interviewer_tel  as "전화번호",
    ir.oc_seq  as "희망과정번호",
    ir.interviewer_date as "희망 면접일",
    i.interview_date  as "확정 면접일"
from tblInterviewer ir
    left join tblInterview i
        on ir.interviewer_seq = i.interviewer_seq 
            where i.interview_date is null;
            
commit;