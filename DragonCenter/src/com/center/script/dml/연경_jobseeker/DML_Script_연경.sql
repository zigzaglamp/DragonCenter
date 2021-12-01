--save
----------------------------------------------------------------------------------------------------------------------
--A-8. 면접 관리 (관리자는 비회원의 면접을 관리)
----------------------------------------------------------------------------------------------------------------------
-- 비회원의 면접 신청 정보를 조회한다.
----------------------------------------------------------------------------------------------------------------------
select 
        interviewer_seq,
        interviewer_name,
        interviewer_tel,
        interviewer_date
    from tblInterviewer
    order by interviewer_seq;--seq 순으로 조회

select
        interviewer_seq,
        interviewer_name,
        interviewer_tel,
        interviewer_date 
    from tblInterviewer where interviewer_date 
        between to_date('19-01-01', 'yy-mm-dd') and to_date('19-12-31', 'yy-mm-dd')
        --between to_date('20-01-01', 'yy-mm-dd') and to_date('20-12-31', 'yy-mm-dd')
        --between to_date('21-01-01', 'yy-mm-dd') and to_date('21-12-31', 'yy-mm-dd')
    order by interviewer_date;

----------------------------------------------------------------------------------------------------------------------
-- 면접 신청 일자와 가능일자를 비교하여 면접 확정일을 입력한다. > 관리자가 가능하다는 임의 날짜 ^^
----------------------------------------------------------------------------------------------------------------------
--면접 일자 없는 것만 뽑아오기
select * from tblInterviewer left join tblInterview on tblInterviewer.interviewer_seq = tblInterview.interviewer_seq 
    where tblInterview.interview_date is null;

--면접 확정일자 입력
insert into tblInterview(interviewer_seq, interview_date, interview_result) 
    values(801, 
    --'2019-01-06', --임의 입력
    (select interviewer_date from tblInterviewer where interviewer_seq = 801),--희망날짜 = 면접날짜
    null);
    --insert문에도 조건if처럼 가능할지..? > interviewer_seq 면접일 null인거 가져오기


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

select * from tblInterviewer;
select * from tblInterview;
select * from tblEnrollment;
select * from tblStudent;

--면접 합격자 교육생에 넣기
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) 
     values (student_seq.nextVal,
        (select 
            (select interviewer_name from tblInterviewer where tblInterviewer.interviewer_seq = tblInterview.interviewer_seq) 
                from tblInterview where interview_result = 'Y' and interviewer_seq = 802),--면접자 번호 수기 입력
        '951219-0000001',--수기 입력
        (select 
            (select interviewer_tel from tblInterviewer where tblInterviewer.interviewer_seq = tblInterview.interviewer_seq) 
                from tblInterview where interview_result = 'Y'and interviewer_seq = 802),--면접자 번호 수기 입력
     (select 
            (select oc_seq from tblInterviewer where tblInterviewer.interviewer_seq = tblInterview.interviewer_seq) 
                from tblInterview where interview_result = 'Y'and interviewer_seq = 802)--면접자 번호 수기 입력
                );
select * from tblStudent;

--면접 합격자 수강신청에 넣기
select * from tblEnrollment;

/*
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) 
    values 
    (
        enrollment_seq.nextVal,
        (select 
            (select oc_seq from tblStudent where student_seq = (select max(student_seq) from tblStudent)) --최신 학생 번호 수강신청에 넣기..흠..
        from tblStudent),
        (select max(student_seq) from tblStudent));
*/

select * from tblEnrollment order by student_seq;
select * from tblopencourse;
----------------------------------------------------------------------------------------------------------------------
--D-2. 면접 신청 및 일자 조회
--(조회한 교육 과정을 바탕으로 희망하는 교육과정과 일자를 선택하여 면접을 신청할 수 있다.)
----------------------------------------------------------------------------------------------------------------------
-- 희망하는 면접 일자를 선택하여 면접 신청을 한다.
----------------------------------------------------------------------------------------------------------------------

select tblopencourse.oc_seq, tblcourse.course_name, tblopencourse.oc_startdate 
    from tblopencourse inner join tblcourse on tblopencourse.course_seq = tblcourse.course_seq
    where instr(tblcourse.course_name, '웹') >0 ;--과정명 검색 : 개설 교육과정 조회


--체크에 서브쿼리는 안됨... oc_date가 tblcourse의 시작일보다 빠른지 확인하고 입력하면 좋을텐데..
insert into tblInterviewer(interviewer_seq, interviewer_name, interviewer_tel, oc_seq, interviewer_date)
     values (interviewer_seq.nextval, 
     '희망', --이름
     '010-1111-2222', --번호 
     1, --희망과정
     --(select oc_seq from tblopencourse where oc_seq = 1),--희망과정 제대로 입력했는지 확인할 수 있게
     to_date('2019-01-01', --희망날짜
     'YY-MM-DD') 
     );



----------------------------------------------------------------------------------------------------------------------
-- 면접 신청한 뒤 관리자의 승인을 받아 확정 면접일자가 결정된다.
-- 면접일자가 확정되면 확정 면접 일자 조회가 가능하다.
----------------------------------------------------------------------------------------------------------------------
select tblInterview.interview_date from tblInterviewer inner join tblInterview on tblInterview.interviewer_seq = tblInterviewer.interviewer_seq
    --where tblInterviewer.interviewer_seq = 4;--면접번호로 면접일자 조회
    --where tblInterviewer.interviewer_name= '이석호';--면접번호로 면접일자 조회
    where substr(tblInterviewer.interviewer_tel, -4)= '5451';--면접번호로 면접일자 조회


----------------------------------------------------------------------------------------------------------------------
--추후 면접 실시 후 면접 통과 여부 조회가 가능하다. 
----------------------------------------------------------------------------------------------------------------------
select tblInterview.interview_result from tblInterviewer inner join tblInterview on tblInterview.interviewer_seq = tblInterviewer.interviewer_seq
    where  tblInterview.interview_result is not null and
    -- tblInterviewer.interviewer_seq = 4;--면접번호로 면접일자 조회
    -- tblInterviewer.interviewer_name= '이석호';--면접번호로 면접일자 조회
    substr(tblInterviewer.interviewer_tel, -4)= '5451';--면접번호로 면접일자 조회




----------------------------------------------------------------------------------------------------------------------
--C-5 사후 처리 입력
--(종강 후 사후처리)
--체크에 서브쿼리는 안됨... 취업일이 수강신청의 종료일보다 빠른지 확인하고 입력하면 좋을텐데..
--사후 관리가 먼저라서 조기 취업의 경우 입력할 수 없음
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
     employee_seq.nextVal,--취업번호
     7,--취업분야
     to_date('19/06/16', --취업일
     'rr/mm/dd'),
     'Y',--고용보험여부
     2700);--연봉
select * from tblemployee;

----------------------------------------------------------------------------------------------------------------------
-- 알선 희망시 연봉, 근무지, 분야 기재 
-->rc로 하는게 나을듯 ri로 하면 연봉+근무지+분야가 다 같은 여러개가 출력됨 > ri_seq 가져오기 곤란
-->not null인데 null값이 들어갈 수 있음
----------------------------------------------------------------------------------------------------------------------
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq)
    values (11, --사후관리번호
    3200,--희망 연봉
    (select area_seq from tblArea where instr(area_name, '종로구') >0),--근무지
    (select rc_seq from tblrecruitcategory where instr(rc_name, 'game_designer') >0));--분야


select * from tbljobSeeker;
select* from tblarea;
select * from tblrecruitcategory;

----------------------------------------------------------------------------------------------------------------------
--A-9. 사후 처리
--(교육생에 대한 취업 지원 및 고용보험 가입(취업) 확인)
----------------------------------------------------------------------------------------------------------------------
-- 교육생 정보와 취업 여부, 취업지원 희망 여부를 입력 및 조회한다.
----------------------------------------------------------------------------------------------------------------------
--교육생 정보
select distinct s.student_name, s.student_tel
from tblStudent s, tblEnrollment e,  tblpostmanagement p, tblJobSeeker j
where  s.student_coursenum = e.oc_seq
  and e.enrollment_seq=p.enrollment_seq
  and p.pm_seq = j.pm_seq;

--취업여부--취업지원 희망 여부
select 
pm_seq as "사후관리 번호",
pm_employee as "취업여부",
pm_jobseeker as "취업지원희망여부"
from tblpostmanagement;

--취업한 사람
select tblpostmanagement.pm_seq as "사후관리 번호",
tblpostmanagement.pm_employee as "취업여부",
tblpostmanagement.pm_jobseeker as "취업지원희망여부",
tblemployee.employee_insurance as "고용보험여부"
from tblpostmanagement inner join tblemployee on tblpostmanagement.pm_seq = tblemployee.pm_seq;

----------------------------------------------------------------------------------------------------------------------
-- 취업자의 경우 취업분야, 취업일, 고용보험 가입 여부 확인 가능
----------------------------------------------------------------------------------------------------------------------
select 
    (select tblRecruitCategory.rc_name from tblRecruitCategory where tblRecruitCategory.rc_seq = tblemployee.rc_seq) as "취업 분야",
    employee_hiredate as "취업일",
    employee_insurance as"고용 보험 가입 여부"
from tblemployee;


----------------------------------------------------------------------------------------------------------------------
-- 취업 지원 희망자의 경우 희망 연봉, 근무지, 희망 분야를 확인
----------------------------------------------------------------------------------------------------------------------
select 
    (select tblRecruitCategory.rc_name from tblRecruitCategory where tblRecruitCategory.rc_seq = tblemployee.rc_seq) as "취업 분야",
    employee_hiredate as "취업일",
    employee_insurance as"고용 보험 가입 여부"
from tblemployee;

select * from tblJobSeeker;
select js_salary as "희망연봉" 

from tblJobSeeker;
----------------------------------------------------------------------------------------------------------------------
-- 알선하는 기업의 희망 근무자와 일치하는 교육생에게 연결한다. >B.7
----------------------------------------------------------------------------------------------------------------------

select * from tblRecruitInfo inner join tblJobSeeker 
on tblJobSeeker.rc_seq = tblRecruitInfo.rc_seq
and tblRecruitInfo.ri_salary = tblJobSeeker.js_salary --연봉
and tblRecruitInfo.company_seq = tblJobSeeker.area_seq --지역
;




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
