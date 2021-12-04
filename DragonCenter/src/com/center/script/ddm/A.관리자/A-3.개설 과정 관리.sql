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
declare
    vresult sys_refcursor;
    vrow vwOpenCourse%rowtype;
    vname vwOpenCourse.course_name%type;
begin
    procGetOpenCourse(vresult);
    
    dbms_output.put_line('---------------------------------------------------------------------------------');
    dbms_output.put_line('|No.|' || lpad('과정명', 24) || lpad('|', 21) 
                            || lpad('기간', 11) || lpad('|', 7) 
                            || '강의실' || ' |' || '수용' || '|');
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;
        if length(vrow.course_name) > 27 then 
            vname := rpad(vrow.course_name, 40) || '...';
        else
            vname := vrow.course_name;
        end if;
        dbms_output.put_line('---------------------------------------------------------------------------------');
        dbms_output.put_line('|' || to_char(vrow.oc_seq, '99') || '|' || rpad(vname, 44) 
                                || '|' || vrow.oc_startdate || '~' || vrow.oc_enddate 
                                || '|' || vrow.room_name || '|' || vrow.room_capacity || '명|');
    end loop;
    dbms_output.put_line('---------------------------------------------------------------------------------');
end;


    /* 개설 과정 조회 프로시저 */
create or replace procedure procGetOpenCourse(
    presult out sys_refcursor
)
is
begin
    open presult
        for select * from vwOpenCourse
            order by oc_seq;
end procGetOpenCourse;


--------------------------------------------------------------------------------
-- 2. 개설 과정 등록; 과정번호, 시작일, 강의실 번호 입력
--------------------------------------------------------------------------------
declare
    vc tblCourse%rowtype;
    vr tblRoom%rowtype;
begin
--    procAddOpenCourse(과정_번호, 시작일, 강의실_번호, vcname, vcperiod, vrname);
    procAddOpenCourse(3, '21-12-05', 3, vc.course_name, vc.course_period, vr.room_name);
end;


    /* 개설 과정 등록 프로시저 */
create or replace procedure procAddOpenCourse (
    pcseq number, 
    pstartdate date, 
    prseq number,
    pcname out varchar2,
    pcperiod out number,
    prname out varchar2
)
is
    vinfo varchar2(300);
begin
    select course_name, course_period
        into pcname, pcperiod from tblCourse
    where course_seq = pcseq;
    select room_name
        into prname from tblRoom
    where room_seq = prseq;

    vinfo := ('No.' || oc_seq.currVal || ' ' || pcname 
                || '(' || pstartdate || ' ~ ' || add_months(pstartdate, pcperiod) 
                || ', ' || prname || ')');
    
    if pstartdate < sysdate then
        dbms_output.put_line('개설 과정 등록 실패: ' || '시작일 부적합');
    else
        insert into tblOpenCourse (oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
            values(oc_seq.nextval, pcseq, pstartdate, add_months(pstartdate, pcperiod), prseq);
        dbms_output.put_line('개설 과정 등록 성공: ' || vinfo);
    end if;
    
exception
    when others then
        dbms_output.put_line('개설 과정 등록 실패:');
        dbms_output.put_line(sqlerrm);
end procAddOpenCourse;


--------------------------------------------------------------------------------
-- 3. 개설 과정 수정; 해당 번호의 과정 번호, 시작일, 종료일, 강의실 수정
--------------------------------------------------------------------------------
declare
    vcname tblCourse.course_name%type;
    vrname tblRoom.room_name%type;
begin
--    procUpdateOpenCourse(번호, 과정_번호, 시작일, 종료일, 강의실_번호, vcname, vrname);
    procUpdateOpenCourse(43, 1, '21-12-13', '22-02-05', 3, vcname, vrname);
end;

    
    /*  개설 과정 수정 프로시저 */
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
    
    vinfo := ('No.' || oc_seq.currVal || ' ' || pcname 
                || '(' || pstartdate || ' ~ ' || add_months(pstartdate, pcperiod) 
                || ', ' || prname || ')');
        
    if pstartdate < sysdate then
        dbms_output.put_line('개설 과정 수정 실패: ' || '시작일 부적합');
    elsif penddate < pstartdate then
        dbms_output.put_line('개설 과정 수정 실패: ' || '종료일 부적합');
    else 
        insert into tblOpenCourse (oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
            values(oc_seq.nextval, pcseq, pstartdate, add_months(pstartdate, pcperiod), prseq);
        dbms_output.put_line('개설 과정 수정 성공: ' || vinfo);
    end if;
    
exception
    when others then
        dbms_output.put_line('개설 과정 수정 실패:');
        dbms_output.put_line(sqlerrm);
end procUpdateOpenCourse;


--------------------------------------------------------------------------------
-- 4. 개설 과정 삭제; 해당 번호의 개설 과정 정보 삭제
--------------------------------------------------------------------------------
declare
    vo tblOpenCourse%rowtype; 
    vc tblCourse%rowtype;
    vr tblRoom%rowtype;
begin
--    procDeleteOpenCourse(번호, vc.course_seq, vo.oc_startdate, vo.oc_enddate, vr.room_seq, vc.course_name, vr.room_name);
    procDeleteOpenCourse(43, vc.course_seq, vo.oc_startdate, vo.oc_enddate, vr.room_seq, vc.course_name, vr.room_name);
end;


    /* 개설 과정 삭제 프로시저 */
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
        dbms_output.put_line('개설 과정 삭제 실패:');
        dbms_output.put_line(sqlerrm);
end procDeleteOpenCourse;


--------------------------------------------------------------------------------
-- A-3.2) 개설 과정 상세 정보 조회
--------------------------------------------------------------------------------
-- 과정명, 기간, 강의실, 개설 과목 등록 여부, 교육생 등록 인원
--------------------------------------------------------------------------------
declare
    vresult sys_refcursor;
    vrow vwOpenCourse%rowtype;
    vname vwOpenCourse.course_name%type;
begin
    procGetOpenCourse(vresult);
    
    dbms_output.put_line('---------------------------------------------------------------------------------');
    dbms_output.put_line('|No.|' || lpad('과정명', 18) || lpad('|', 16) 
                            || lpad('기간', 11) || lpad('|', 7) 
                            || ' 강의실| 등록|과목 개설|');
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;
        if length(vrow.course_name) > 20 then 
            vname := rpad(vrow.course_name, 30) || '...';
        else
            vname := vrow.course_name;
        end if;
        dbms_output.put_line('---------------------------------------------------------------------------------');
        dbms_output.put_line('|' || to_char(vrow.oc_seq, '99') || '|' || rpad(vname, 33) 
                                || '|' || vrow.oc_startdate || '~' || vrow.oc_enddate 
                                || '|' || vrow.room_name || '|' 
                                || to_char(vrow.num, '99') || '명|    '
                                || vrow.regsub || '    |');
    end loop;
    dbms_output.put_line('---------------------------------------------------------------------------------');
end;



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
--where oc_seq = 개설_과정_번호
where oc_seq = 1
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
--where oc_seq = 개설_과정_번호
where oc_seq = 1
order by name;


