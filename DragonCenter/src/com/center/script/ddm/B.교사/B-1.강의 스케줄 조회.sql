--------------------------------------------------------------------------------
-- B-1. 교사 강의 스케쥴 조회 
--  1) 현재 강의 스케줄 확인 
--  2) 강의 스케줄 상세 조회
--  3) 해당 과정의 교육생 정보 조회
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- B-1.1) 현재 강의 스케줄 확인
--------------------------------------------------------------------------------
-- 해당 교사의 과정과 상태(예정/진행/종료) 출력
--------------------------------------------------------------------------------
declare
    vresult sys_refcursor;
    vrow vwTeacherSchedule%rowtype;
    vname vwTeacherSchedule.course_name%type;
begin
--    procGetTeacherSchedule(vresult, 교사_번호);
    procGetTeacherSchedule(vresult, 1);
    
    dbms_output.put_line('-------------------------------------------------------------------------------');
    dbms_output.put_line('|이  름|' || lpad('과정명', 26) || lpad('|', 22) 
                            || lpad('기간', 11) || lpad('|', 7) 
                            || '상태|');
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;
        if length(vrow.course_name) > 25 then 
            vname := rpad(vrow.course_name, 44) || '...';
        else
            vname := vrow.course_name;
        end if;
        dbms_output.put_line('-------------------------------------------------------------------------------');
        dbms_output.put_line('|' || vrow.teacher_name || '|' || rpad(vname, 47) 
                                || '|' || vrow.oc_startdate || '~' || vrow.oc_enddate 
                                || '|' || vrow.state || '|');
    end loop;
    dbms_output.put_line('-------------------------------------------------------------------------------');
end;


    /* 강의 스케줄 조회 프로시저 */
create or replace procedure procGetTeacherSchedule(
    presult out sys_refcursor,
    pseq number
)
is
begin
    open presult
        for select * from vwTeacherSchedule
            where teacher_seq = pseq
            order by oc_startdate desc;
end procGetTeacherSchedule;



--------------------------------------------------------------------------------
-- B-1.2) 강의 스케줄 상세 조회
--------------------------------------------------------------------------------
-- 해당 과정 번호의 과정명, 과목명 및 기간, 교재, 강의실, 등록 인원 출력
--------------------------------------------------------------------------------
select
    course_name as "과정명",
    oc_startdate as "과정 시작일",
    oc_enddate as "과정 종료일",
    subject_name as "과목명",
    os_startdate as "과목 시작일",
    os_enddate as "과목 종료일",
    room_name as "강의실",
    book_name as "교재",
    (select count(*) from tblEnrollment 
     group by oc_seq having oc_seq = v.oc_seq) as "등록 인원"
from vwOpenCourse v
--where teacher_seq = 교사_번호
--    and oc_seq = 개설_과정_번호;
where teacher_seq = 1
    and oc_seq = 20;


--------------------------------------------------------------------------------
-- B-1.3) 해당 과정의 교육생 정보 조회
--------------------------------------------------------------------------------
-- 해당 개설 과정 번호의 교육생 정보(이름, 연락처, 상태) 출력
--------------------------------------------------------------------------------
select
    name as "이름",
    tel as "연락처",
    case
        when (select count(*) from tblAbandonment 
              where enrollment_seq = v.enrollment_seq) = 1 then '중도 탈락'
        when oc_startdate > sysdate then '예정'
        when oc_enddate >= sysdate then '진행 중'
        when oc_enddate < sysdate then '수료'
    end as "상태"
from vwStudentInfo v
where oc.seq = 개설_과정_번호
order by name;

