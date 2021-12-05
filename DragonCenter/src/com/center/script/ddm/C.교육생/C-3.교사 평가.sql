-- C-3. 학생 -> 교사 평가
-- 수강 완료한 과정에 대한 교사 평가

-- 프로시저(학생 -> 교사 평가)
create or replace procedure procTeacherEvaluation
(
    psseq number,
    ppreparing number,
    pimplement number,
    pprofessionalism number,
    pattitude number,
    pstudentsupport number,
    potheropinion varchar2
)
is
begin
    
    update tblteacherevaluation
    set
        preparing = ppreparing,
        implement = pimplement,
        professionalism = pprofessionalism,
        attitude = pattitude,
        studentsupport = pstudentsupport,
        otheropinion = potheropinion
    where
        enrollment_seq = (select en.enrollment_seq from tblenrollment en where en.student_seq = psseq)
        and sysdate > (select oc.oc_enddate from tblenrollment en inner join tblopencourse oc on en.oc_seq = oc.oc_seq where en.student_seq = psseq);
        
end procTeacherEvaluation;

-- #테스트(학생 -> 교사 평가)
declare
    vseq number := 3; -- 학생 수강 신청 번호
    vpreparing number := 0; -- 데이터 입력!
    vimplement number := 0; -- 데이터 입력!
    vprofessionalism number := 0; -- 데이터 입력!
    vattitude number := 0; -- 데이터 입력!
    vstudentsupport number := 0; -- 데이터 입력! 
    votheropinion varchar2(100) := ' '; -- 데이터 입력!
begin
    procTeacherEvaluation(vseq, vpreparing, vimplement, vprofessionalism, vattitude, vstudentsupport, votheropinion);
end;    