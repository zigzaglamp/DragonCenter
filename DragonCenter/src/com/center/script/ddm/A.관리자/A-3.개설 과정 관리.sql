--------------------------------------------------------------------------------
-- A-3. 개설 과정 관리 
--  1) 개설 과정 정보 관리(조회, 등록, 수정, 삭제)
--  2) 과정 상세 정보 조회
--      -과정명, 기간, 강의실, 개설 과목 등록 여부, 교육생 등록 인원
--  3) 특정 개설 과정 선택시 개설 과목 정보 조회
--  4) 특정 개설 과정 선택시 등록된 교육생 정보 조회
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- A-3.1) 개설 과정 정보 관리(tblOpenCourse)
--------------------------------------------------------------------------------
-- 1. 개설 과정 조회; 번호, 과정명, 시작일, 종료일, 강의실 출력
--------------------------------------------------------------------------------
select 
    distinct oc_seq as "번호",
    course_name as "과정명",
    oc_startdate as "과정 시작일",
    oc_enddate as "과정 종료일",
    room_name as "강의실",
    room_capacity || '명' as "수용 인원"
from vwOpenCourse
order by oc_startdate desc;


--------------------------------------------------------------------------------
-- 2. 개설 과정 등록; 과정번호, 시작일, 강의실 번호 입력
--------------------------------------------------------------------------------
create or replace procedure procAddOpenCourse (
    pcseq number, 
    pstartdate date, 
    prseq number,
    pcname out varchar2,
    pcperiod out number,
    prname out varchar2
)
is
begin
    select course_name, course_period
        into pcname, pcperiod from tblCourse
    where course_seq = pcseq;
    select room_name
        into prname from tblRoom
    where room_seq = prseq;
    insert into tblOpenCourse (oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
        values(oc_seq.nextval, pcseq, pstartdate, add_months(pstartdate, pcperiod), prseq);
        
    dbms_output.put_line('개설 과정 등록 성공: No.' || oc_seq.currVal || ' ' || pcname 
                            || '(' || pstartdate || ' ~ ' || add_months(pstartdate, pcperiod) 
                            || ', ' || prname || ')');
exception
    when others then
        dbms_output.put_line('개설 과정 등록 실패: No.' || oc_seq.currVal || ' ' || pcname 
                                || '(' || pstartdate || ' ~ ' || add_months(pstartdate, pcperiod) 
                                || ', ' || prname || ')');
        dbms_output.put_line(sqlerrm);
end procAddOpenCourse;

declare
    vcname tblCourse.course_name%type;
    vcperiod tblCourse.course_period%type;
    vrname tblRoom.room_name%type;
begin
    procAddOpenCourse(과정_번호, 시작일, 강의실_번호, vcname, vcperiod, vname);
end;


--------------------------------------------------------------------------------
-- 3. 개설 과정 수정; 해당 번호의 과정 번호, 시작일, 종료일, 강의실 수정
--------------------------------------------------------------------------------
create or replace procedure procUpdateOpenCourse (
    pseq number,
    pcseq number, 
    pstartdate date,
    penddate date,  
    prseq number,
    pcname out varchar2,
    prname out varchar2
)
is
begin
    select course_name
        into pcname from tblCourse
    where course_seq = pcseq;
    select room_name
        into prname from tblRoom
    where room_seq = prseq;
    update tblOpenCourse set course_seq = pcseq,
                             oc_startdate = pstartdate,
                             oc_enddate = penddate,
                             room_seq = prseq
    where oc_seq = pseq;
        
    dbms_output.put_line('개설 과정 수정 성공: No.' || pseq || ' ' || pcname 
                            || '(' || pstartdate || ' ~ ' || penddate 
                            || ', ' || prname || ')');
exception
    when others then
        dbms_output.put_line('개설 과정 수정 실패: No.' || pseq || ' ' || pcname 
                                || '(' || pstartdate || ' ~ ' || penddate 
                                || ', ' || prname || ')');
        dbms_output.put_line(sqlerrm);
end procUpdateOpenCourse;

declare
    vcname tblCourse.course_name%type;
    vrname tblRoom.room_name%type;
begin
    procUpdateOpenCourse(번호, 과정_번호, 시작일, 종료일, 강의실_번호, vcname, vrname);
end;


--------------------------------------------------------------------------------
-- 4. 개설 과정 삭제; 해당 번호의 개설 과정 정보 삭제
--------------------------------------------------------------------------------
create or replace procedure procDeleteOpenCourse (
    pseq number,
    pcseq out number, 
    pstartdate out date,
    penddate out date,  
    prseq out number,
    pcname out varchar2,
    prname out varchar2
)
is
begin
    select course_seq, oc_startdate, oc_enddate, room_seq
        into pcseq, pstartdate, penddate, prseq from tblOpenCourse
    where oc_seq = pseq;
    select course_name
        into pcname from tblCourse
    where course_seq = pcseq;
    select room_name
        into prname from tblRoom
    where room_seq = prseq;
    delete from tblOpenCourse
    where oc_seq = pseq;
    
    dbms_output.put_line('개설 과정 삭제 성공: No.' || pseq || ' ' || pcname 
                            || '(' || pstartdate || ' ~ ' || penddate 
                            || ', ' || prname || ')');
exception
    when others then
        dbms_output.put_line('개설 과정 삭제 실패: No.' || pseq || ' ' || pcname 
                                || '(' || pstartdate || ' ~ ' || penddate 
                                || ', ' || prname || ')');
        dbms_output.put_line(sqlerrm);
end procDeleteOpenCourse;

declare
    vcseq tblOpenCourse.course_seq%type; 
    vstartdate tblOpenCourse.oc_startdate%type;
    venddate tblOpenCourse.oc_enddate%type;
    vrseq tblOpenCourse.room_seq%type;
    vcname tblCourse.course_name%type;
    vrname tblRoom.room_name%type;
begin
    procDeleteOpenCourse(21, vcseq, vstartdate, venddate, vrseq, vcname, vrname);
end;



--------------------------------------------------------------------------------
-- A-3.2) 개설 과정 상세 정보 조회
--------------------------------------------------------------------------------
-- 과정명, 기간, 강의실, 개설 과목 등록 여부, 교육생 등록 인원
--------------------------------------------------------------------------------
select 
    distinct oc_seq as "번호",
    course_name as "과정명",
    oc_startdate as "시작일",
    oc_enddate as "종료일",
    room_name as "강의실",
    case
        when (select count(*) from tblOpenSubject 
              group by oc_seq having oc_seq = v.oc_seq) > 0 then 'Y'
        else 'N'
    end as "과목 등록",
    (select count(*) from tblEnrollment 
     group by oc_seq having oc_seq = v.oc_seq) || '명' as "등록 인원"
from vwOpenCourse v
order by oc_startdate desc;



--------------------------------------------------------------------------------
-- A-3.3) 특정 개설 과정 선택시 개설 과목 정보 조회
--------------------------------------------------------------------------------
-- 개설 과목명, 기간 출력
--------------------------------------------------------------------------------
select
    distinct subject_name as "개설 과목명",
    os_startdate as "시작일",
    os_enddate as "종료일"
from vwOpenCourse
where oc_seq = 개설_과정_번호
order by os_startdate desc;



--------------------------------------------------------------------------------
-- A-3.4) 특정 개설 과정 선택시 교육생 정보 조회
--------------------------------------------------------------------------------
-- 이름, 주민등록번호, 연락처 출력
--------------------------------------------------------------------------------
select
    name as "이름",
    ssn as "주민등록번호",
    tel as "연락처"
from vwStudentInfo
where os_seq = 개설_과정_번호
order by name;

