----------------------------------------------------------------------------------------------------------------------
--A-8. 면접 관리 (관리자는 비회원의 면접을 관리)
----------------------------------------------------------------------------------------------------------------------
--A-8-1. 비회원의 면접 신청 정보를 조회한다.
----------------------------------------------------------------------------------------------------------------------
select 
        seq as "면접번호",
        name as "이름",
        tel as "전화번호",
        oc_seq as "희망과정",
        hopedate as "희망면접일",
        ensuredate as "확정면접일",
        result as "면접결과"
from vwinterviewinfo order by seq; --seq순 조회

select 
        seq as "면접번호",
        name as "이름",
        tel as "전화번호",
        oc_seq as "희망과정",
        hopedate as "희망면접일",
        ensuredate as "확정면접일",
        result as "면접결과"
from vwinterviewinfo 
    where hopedate between to_date('19-01-01', 'yy-mm-dd') and to_date('19-12-31', 'yy-mm-dd')--년도별 조회
order by seq, hopedate;

----------------------------------------------------------------------------------------------------------------------
-- A-8-2.면접 신청 일자와 가능일자를 비교하여 면접 확정일을 입력한다.
----------------------------------------------------------------------------------------------------------------------
--면접 일자 없는 것만 뽑아오기
select * from vwInterviewNull;


--이번 달 희망 면접일//면접 가능일자 확인하기
--vwThisMonthHopeDate로 확인
select v.regdate, v.interviewer_name,v.interviewer_seq from vwThisMonthHopeDate v left outer join tblinterview i on v.interviewer_seq = i.interviewer_seq;
 
 
 --희망면접일이 공휴일이 아니라 면접이 가능한 학생 번호 
 select tm.regdate, n."면접번호" from vwthismonthhopedate tm left join  vwinterviewnull n on tm.interviewer_seq = n."면접번호"
where n."확정 면접일" is null and instr(tm.interviewer_name,'*')=0;


--면접일이 공휴일+주말이라 안되는 신청자
select tm.regdate, n."면접번호" from vwthismonthhopedate tm inner join  vwinterviewnull n on tm.interviewer_seq = n."면접번호"
where n."확정 면접일" is null and instr(tm.interviewer_name,'*')>0;


--면접 확정일자 입력
insert into tblInterview(interviewer_seq, interview_date, interview_result) 
    values(803, 
    --'2019-01-06', --임의 입력
    (select interviewer_date from tblInterviewer where interviewer_seq = 803),--희망날짜 = 면접날짜
    null);


--평일인 경우 확정일자 반복해서 입력
--프로시저 loop 이용
DECLARE
      V_CNT NUMBER(2) := 0;    --초기값
      vcount number :=0;
BEGIN
    select count(*) into vcount from vwthismonthhopedate tm inner join  vwinterviewnull n on tm.interviewer_seq = n."면접번호"
where n."확정 면접일" is null and instr(tm.interviewer_name,'*')=0;
    LOOP
    EXIT WHEN V_CNT = vcount;
    V_CNT := V_CNT + 1;   
      insert into tblinterview(interviewer_seq, interview_date, interview_result) 
    values((select tm.interviewer_seq from vwthismonthhopedate tm inner join  vwinterviewnull n on tm.interviewer_seq = n."면접번호" where n."확정 면접일" is null
    and instr(tm.interviewer_name,'*')=0 and rownum =1),
    (select tm.regdate from vwthismonthhopedate tm inner join  vwinterviewnull n on tm.interviewer_seq = n."면접번호" where n."확정 면접일" is null
    and instr(tm.interviewer_name,'*')=0 and rownum =1),
    null);
    END LOOP;
END;


----------------------------------------------------------------------------------------------------------------------
-- A-8-3. 면접 응시 완료자들은 면접 합격 여부를 입력한다.
----------------------------------------------------------------------------------------------------------------------
UPDATE tblInterview 
    SET interview_result = 'Y' 
    --SET interview_result = 'N' 불합격 
    WHERE to_char(interview_date) =to_char(sysdate, 'yy/mm/dd')--오늘 날짜
    --WHERE to_char(interview_date) =to_char('21/10/30', 'yy/mm/dd')-- 날짜 선택
    and interviewer_seq = 802;--면접자 번호
    --관리자면 관리자 seq입력하면 됨




----------------------------------------------------------------------------------------------------------------------
-- A-8-4.면접 합격자의 수강 과정은 희망 과정을 참고하며, 변경할 수 있다.
----------------------------------------------------------------------------------------------------------------------
--면접 합격자 교육생에 넣기 (희망과정에 정원이 있을 경우)
--뷰 사용
--현재 개설예정 강의
select * from vwcourseinfo where oc_startdate>sysdate ;

select 
    o.oc_seq, s.ccourse_name , count(*) as cnt
from vwstudentinfo s 
    left join tblenrollment e
        on s.eseq = e.enrollment_seq
            inner join tblopencourse o
                on e.oc_seq = o.oc_seq
where o.oc_startdate>sysdate
group by o.oc_seq, s.ccourse_name order by count(*) desc;




--개설 예정 과정이 정원 초과인지 아닌지 확인하기
--프로시저 이용
declare
    vcnt number;
begin
    select count(*) as cnt
     into vcnt
from vwstudentinfo s 
    inner join tblenrollment e
        on s.enrollment_seq = e.enrollment_seq
            inner join tblopencourse o
                on e.oc_seq = o.oc_seq
                    where o.oc_startdate> sysdate;

     if vcnt <= 26 then
        insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)
        values (student_seq.nextval, 
        (select name from vwinterviewinfo where result = 'Y' and seq = 302),--면접자 번호 수기 입력
        '951219-0000001',--수기 입력
        (select tel from vwinterviewinfo where result = 'Y' and seq = 302),--면접자 번호 수기 입력
        (select oc_seq from vwinterviewinfo where result = 'Y' and seq = 302)--면접자 번호 수기 입력
                );
        dbms_output.put_line('입력 완료');  
        elsif vcnt >= 27 and vcnt<=30 then
        dbms_output.put_line('수강 인원 확인 후 입력해주세요');  
        else 
        DBMS_OUTPUT.PUT_LINE('다른 개설과정으로 입력하세요.');
    end if;
end;

--과정 수기 입력
--뷰사용
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) 
     values (student_seq.nextVal,
        (select name from vwinterviewinfo where result = 'Y' and seq = 300),--면접자 번호 수기 입력
        '951219-0000001',--수기 입력
        (select tel from vwinterviewinfo where result = 'Y' and seq = 300),--면접자 번호 수기 입력
         42--면접자 번호 수기 입력
                );



--면접 합격자 수강신청에 넣기 
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) 
    values (enrollment_seq.nextVal,과정번호,학생번호);