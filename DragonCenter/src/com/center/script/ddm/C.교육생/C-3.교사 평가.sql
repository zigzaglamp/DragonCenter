-- C-3. 학생 -> 교사 평가
-- 수강 완료한 과정에 대한 교사 평가

-- 프로시저(학생 -> 교사 평가)
create or replace procedure procTeacherEvaluation
(
    psseq number, -- 학생 번호
    ppreparing number, -- 수업준비 점수
    pimplement number, -- 수업실행 점수
    pprofessionalism number, -- 전문성 점수
    pattitude number, -- 근무태도 점수
    pstudentsupport number, -- 학생지원 점수
    potheropinion varchar2 -- 기타의견
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
        -- 과정 종료일이 현재 날짜 기준보다 이전인지(과정이 끝났는지) 검사
        
exception
    when others then
        dbms_output.put_line('잘못된 값입니다');                
        
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
    
exception
    when others then
        dbms_output.put_line('잘못된 값입니다');
    
end;    

-- #테스트 확인
declare
    vtseq number := 1; -- 교사 번호
    vcseq number := 1; -- 과정 번호
    vresult sys_refcursor;
    vrow vwteacherevaluation%rowtype;
begin
    procEvaluationCheck(vtseq, vcseq, vresult);
    
    dbms_output.put_line(chr(10));
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    dbms_output.put_line('교사이름' || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) 
                                        || chr(9) || '과정명' || chr(9)|| chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '과정종료일' || chr(9) || chr(9) 
                                        || '수업준비' || chr(9) || '수업실행' || chr(9) || chr(9) || '전문성' || chr(9) || chr(9)
                                        || lpad('태도', 6, ' ') || chr(9) || chr(9) || '학생지원' || chr(9) || chr(9) || chr(9) || '총점' || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '기타의견');
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;    
        
        dbms_output.put_line(lpad(vrow."교사이름", 8, ' ') || chr(9) || chr(9) || chr(9) || vrow."과정명" || chr(9) || chr(9) || vrow."과정종료일" || chr(9) || chr(9) || chr(9) || chr(9) 
        || vrow."수업준비" || chr(9) || chr(9) || chr(9) || chr(9) || vrow."수업실행" || chr(9) || chr(9) || chr(9) || chr(9) || vrow."전문성" 
        || chr(9) || chr(9) || chr(9) || chr(9) || vrow."근무태도" || chr(9) || chr(9) || chr(9) || chr(9) || lpad(vrow."학생지원", 2, ' ') || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || vrow."총점" || chr(9) || chr(9) || chr(9) || chr(9) || vrow."후기");
        dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    end loop;
    
exception
    when others then
        dbms_output.put_line('잘못된 값입니다');
    
end;  




