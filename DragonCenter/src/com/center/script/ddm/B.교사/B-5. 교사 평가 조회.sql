-- B-5. 교사 -> 교사 평가 조회
-- 특정 과정, 전체 평가 조회

-- 프로시저(교사 -> 교사 평가 조회)
create or replace procedure procEvaluationCheck
(
    psseq number,
    pcseq number,
    presult out sys_refcursor
)
is
begin
    open presult
        for select * from vwteacherevaluation where "교사번호" = psseq and "과정번호" = pcseq;
        
exception
    when others then
        dbms_output.put_line('값을 잘못 입력하셨습니다'); 

end procEvaluationCheck;

-- #테스트(교사 -> 교사 평가 조회)
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
                                        || chr(9) || '과정명' || chr(9)|| chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '과정종료일' || chr(9) || chr(9) 
                                        || '수업준비' || chr(9) || '수업실행' || chr(9) || chr(9) || '전문성' || chr(9) || chr(9)
                                        || '태도' || chr(9) || chr(9) || '학생지원' || chr(9) || chr(9) || chr(9) || '총점' || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '기타의견');
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;    
        
        dbms_output.put_line(vrow."교사이름" || chr(9) || chr(9) || chr(9) || vrow."과정명" || chr(9) || chr(9) || vrow."과정종료일" || chr(9) || chr(9) || chr(9) || chr(9) 
        || vrow."수업준비" || chr(9) || chr(9) || chr(9) || chr(9) || vrow."수업실행" || chr(9) || chr(9) || chr(9) || chr(9) || vrow."전문성" 
        || chr(9) || chr(9) || chr(9) || chr(9) || vrow."근무태도" || chr(9) || chr(9) || chr(9) || chr(9) || vrow."학생지원" || chr(9) || chr(9) || chr(9) || chr(9) || vrow."총점" || chr(9) || chr(9) || chr(9) || chr(9) || vrow."후기");
        dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    end loop;
end;  

-- #테스트(교사 평점 조회)
select
    t.teacher_name as 교사명,
    c.course_name as 과정명,
    oc.oc_startdate as 과정시작일,
    oc.oc_enddate as 과정종료일,
    round(avg(round((te.preparing + te.implement + te.professionalism + te.attitude + te.studentsupport) / 10, 1)),1) as 평점
from tblteacherevaluation te
    inner join tblenrollment en
        on te.enrollment_seq = en.enrollment_seq
            inner join tblopencourse oc
                on oc.oc_seq = en.oc_seq
                    inner join tblteachermanagement tm
                        on tm.oc_seq = oc.oc_seq
                            inner join tblteacher t
                                on t.teacher_seq = tm.teacher_seq
                                    inner join tblcourse c
                                        on c.course_seq = oc.course_seq
where oc.oc_enddate < sysdate and t.teacher_seq = 1 and oc.oc_seq = 1
group by t.teacher_name, c.course_name, oc.oc_startdate, oc.oc_enddate;