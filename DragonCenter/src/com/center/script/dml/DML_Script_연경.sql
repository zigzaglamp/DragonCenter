--save
----------------------------------------------------------------------------------------------------------------------
--A-8. 면접 관리 (관리자는 비회원의 면접을 관리)
----------------------------------------------------------------------------------------------------------------------
--A-8 비회원의 면접 신청 정보를 조회한다.
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
-- 면접 신청 일자와 가능일자를 비교하여 면접 확정일을 입력한다. > 관리자가 가능하다는 임의 날짜 ^^
----------------------------------------------------------------------------------------------------------------------
--면접 일자 없는 것만 뽑아오기
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

--면접 확정일자 입력
insert into tblInterview(interviewer_seq, interview_date, interview_result) 
    values(803, 
    --'2019-01-06', --임의 입력
    (select interviewer_date from tblInterviewer where interviewer_seq = 803),--희망날짜 = 면접날짜
    null);
    --insert문에도 조건if처럼 가능할지..? > interviewer_seq 면접일 null인거 가져오기

select * from tblinterview;

----------------------------------------------------------------------------------------------------------------------
-- 면접 응시 완료자들은 면접 합격 여부를 입력한다.
----------------------------------------------------------------------------------------------------------------------
UPDATE tblInterview 
    SET interview_result = 'Y' 
    --SET interview_result = 'N' 불합격 
    WHERE to_char(interview_date) =to_char(sysdate, 'yy/mm/dd')--오늘 날짜
    --WHERE to_char(interview_date) =to_char('21/10/30', 'yy/mm/dd')-- 날짜 선택
    and interviewer_seq = 802;--면접자 번호




----------------------------------------------------------------------------------------------------------------------
-- 면접 합격자의 수강 과정은 희망 과정을 참고하며, 변경할 수 있다.
----------------------------------------------------------------------------------------------------------------------


--면접 합격자 교육생에 넣기 (희망과정에 정원이 있을 경우)
--뷰 사용
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) 
     values (student_seq.nextVal,
        (select name from vwinterviewinfo where result = 'Y' and seq = 300),--면접자 번호 수기 입력
        '951219-0000001',--수기 입력
        (select tel from vwinterviewinfo where result = 'Y' and seq = 300),--면접자 번호 수기 입력
     (select oc_seq from vwinterviewinfo where result = 'Y' and seq = 300)--면접자 번호 수기 입력
                );


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
----------------------------------------------------------------------------------------------------------------------
--D-2. 면접 신청 및 일자 조회
--(조회한 교육 과정을 바탕으로 희망하는 교육과정과 일자를 선택하여 면접을 신청할 수 있다.)
----------------------------------------------------------------------------------------------------------------------
-- 희망하는 면접 일자를 선택하여 면접 신청을 한다.
----------------------------------------------------------------------------------------------------------------------

--뷰사용 (개설 교육과정을 과정명으로 검색하기)
select 
        oc_seq as "개설과정",
        course_name as "과정명",
        oc_startdate as "과정시작일"
from vwcourseinfo where  instr(course_name, '웹') >0 ;




--체크에 서브쿼리는 안됨... oc_date가 tblcourse의 시작일보다 빠른지 확인하고 입력하면 좋을텐데..
--해결책 : 집단지성.. > 프로시저 > 시작일 > min > where절
insert into tblInterviewer(interviewer_seq, interviewer_name, interviewer_tel, oc_seq, interviewer_date)
     values (interviewer_seq.nextval, 
     '희망', --이름
     '010-1111-2222', --번호 
     1, --희망과정
     --(select oc_seq from tblopencourse where oc_seq = 1),--희망과정 제대로 입력했는지 확인할 수 있게
     to_date('2019-01-01', --면접 희망날짜 <개설과정 시작일
     'YY-MM-DD') 
     );



----------------------------------------------------------------------------------------------------------------------
-- 면접 신청한 뒤 관리자의 승인을 받아 확정 면접일자가 결정된다. > 관리자 확정면접일자
-- 면접일자가 확정되면 확정 면접 일자 조회가 가능하다.
----------------------------------------------------------------------------------------------------------------------
--뷰사용
select ensuredate from vwinterviewinfo
--where seq = 1;--면접번호로 면접일자 조회
--where name ='탁경아';--면접자명로 면접일자 조회
where substr(tel, -4)= '2161';--전화번호 뒤 4자리로 면접일자 조회



----------------------------------------------------------------------------------------------------------------------
--추후 면접 실시 후 면접 통과 여부 조회가 가능하다. 
----------------------------------------------------------------------------------------------------------------------
--뷰사용
select result from vwinterviewinfo
--where seq = 1;
--where name ='탁경아';
where substr(tel, -4)= '2161';



----------------------------------------------------------------------------------------------------------------------
--C-5 사후 처리 입력
--체크에 서브쿼리는 안됨... 취업일이 수강신청의 종료일보다 빠른지 확인하고 입력하면 좋을텐데..
----------------------------------------------------------------------------------------------------------------------
-- 취업 상황(분야/취업일/고용보험 여부)을 기재
-- 취업 알선 희망 여부 등록
----------------------------------------------------------------------------------------------------------------------

select * from tblPostManagement;
insert into tblPostManagement (pm_seq,enrollment_seq,pm_employee,pm_jobseeker) 
    values (
    pm_seq.nextVal, --사후관리번호
    1,--수강신청번호
    'N',--취업여부
    'Y');--취업 알선 희망 여부

insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) 
     values (
     pm_seq,--사후번호
     7,--취업분야
     to_date('19/06/16', --취업일
     'rr/mm/dd'),
     'Y',--고용보험여부
     2700);--연봉

----------------------------------------------------------------------------------------------------------------------
-- 알선 희망시 연봉, 근무지, 분야 기재 
----------------------------------------------------------------------------------------------------------------------

insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq)
    values (11, --사후관리번호
    3200,--희망 연봉
    (select area_seq from tblArea where instr(area_name, '종로구') >0),--근무지
    (select rc_seq from tblrecruitcategory where instr(rc_name, 'game_designer') >0));--분야




----------------------------------------------------------------------------------------------------------------------
--A-9. 사후 처리
--(교육생에 대한 취업 지원 및 고용보험 가입(취업) 확인)
----------------------------------------------------------------------------------------------------------------------
-- 교육생 정보와 취업 여부, 취업지원 희망 여부를 입력 및 조회한다.
----------------------------------------------------------------------------------------------------------------------

  --사후 처리 기재된 전체 교육생
  select 
          p.pm_seq as "사후관리 여부",
          v.sname as " 학생명", 
          v.stel as "전화번호", 
          p.pm_employee as "취업여부", 
          p.pm_jobseeker as "취업지원 희망 여부" 
  from vwstudentinfo v 
    inner join tblpostmanagement p
        on v.eseq = p.enrollment_seq
            inner join tbljobseeker j
                on p.pm_seq = j.pm_seq;

--그 중 취업한 사람
  select 
          p.pm_seq as "사후관리 여부",
          v.sname as " 학생명", 
          v.stel as "전화번호", 
          p.pm_employee as "취업여부", 
          p.pm_jobseeker as "취업지원 희망 여부" 
  from vwstudentinfo v 
    inner join tblpostmanagement p
        on v.eseq = p.enrollment_seq
            inner join tbljobseeker j
                on p.pm_seq = j.pm_seq
                where p.pm_employee = 'Y'
                ;


----------------------------------------------------------------------------------------------------------------------
-- 취업자의 경우 취업분야, 취업일, 고용보험 가입 여부 확인 가능
----------------------------------------------------------------------------------------------------------------------
 select 
          v.sname as " 학생명", 
          v.stel as "전화번호", 
          --p.pm_employee as "취업여부",
          e.employee_hiredate as "취업일",
          e.employee_insurance as"고용 보험 가입 여부",
          rc.rc_name as "취업 분야"
  from vwstudentinfo v 
    inner join tblpostmanagement p
        on v.eseq = p.enrollment_seq
            inner join tblemployee e
                on p.pm_seq = e.pm_seq
                    inner join tblrecruitcategory rc
                        on rc.rc_seq = e.rc_seq
                        where p.pm_employee = 'Y';

----------------------------------------------------------------------------------------------------------------------
-- 취업 지원 희망자의 경우 희망 연봉, 근무지, 희망 분야를 확인 ( 수정)
----------------------------------------------------------------------------------------------------------------------
--다시 수정
select 
          p.pm_seq as "사후관리 여부",
          v.sname as " 학생명", 
          v.stel as "전화번호", 
          j.js_salary as "희망연봉",
          a.area_name as "희망근무지",
          rc.rc_name as "희망취업분야",
          --p.pm_jobseeker as "취업지원 희망 여부",
          p.pm_employee as "취업여부"
           
  from vwstudentinfo v 
    inner join tblpostmanagement p
        on v.eseq = p.enrollment_seq
            inner join tblemployee e
                on p.pm_seq = e.pm_seq
                    inner join tblrecruitcategory rc
                        on rc.rc_seq = e.rc_seq
                            inner join tbljobseeker j
                                on p.pm_seq = j.pm_seq
                                    inner join tblarea a
                                        on j.area_seq = a.area_seq
                                where p.pm_jobseeker ='Y';



----------------------------------------------------------------------------------------------------------------------
-- 알선하는 기업의 희망 근무자와 일치하는 교육생에게 연결한다. >B.7
----------------------------------------------------------------------------------------------------------------------



select 
        s.sname as "학생명", 
        s.stel as "학생번호",
        a.area_name as "지역명",
        c.company_name as "회사명",
        c.company_tel as "회사번호"
from tblRecruitInfo r
    inner join tblJobSeeker j
        on j.rc_seq = r.rc_seq
        and r.ri_salary = j.js_salary --연봉
                inner join tblcompany c
                    on r.company_seq = c.company_seq
                        inner join tblarea a
                            on c.area_seq = a.area_seq
                                inner join tblpostmanagement p
                                    on p.pm_seq = j.pm_seq 
                                        inner join vwstudentinfo s
                                            on p.enrollment_seq =s.eseq;



----------------------------------------------------------------------------------------------------------------------
--B-7. 사후 처리 조회
--(교육생에 대한 취업 지원 및 고용보험 가입 확인)
----------------------------------------------------------------------------------------------------------------------
-- 교육생 정보와 취업 여부, 취업지원 희망 여부를 입력 및 조회한다. >A-9
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
-- 취업자의 경우 취업분야, 취업일, 고용보험 가입 여부 확인 가능 >A-9
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
-- 취업 지원 희망자의 경우 희망 연봉, 근무지, 희망 분야를 확인 >A-9
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
-- 알선하는 기업의 희망 근무자와 일치하는 교육생에게 연결한다. > A-9
----------------------------------------------------------------------------------------------------------------------
