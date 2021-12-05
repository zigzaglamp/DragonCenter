-- 면접 합격자 뷰
create or replace view vwPassInterview as
select
    ir.interviewer_name as 면접자명,
    ir.interviewer_tel as 면접자연락처,
    ir.oc_seq as 희망과정
from tblinterviewer ir
    inner join tblinterview i
        on ir.interviewer_seq = i.interviewer_seq
where i.interview_result = 'Y'
order by i.interviewer_seq;