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
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;
        if length(vrow.course_name) > 27 then 
            vname := rpad(vrow.course_name, 40) || '...';
        else
            vname := vrow.course_name;
        end if;
        dbms_output.put_line('|' || to_char(vrow.oc_seq, '99') || '|' || rpad(vname, 44) 
                                || '|' || vrow.oc_startdate || '~' || vrow.oc_enddate 
                                || '|' || vrow.room_name || '|' || vrow.room_capacity || '명|');
        dbms_output.put_line('---------------------------------------------------------------------------------');
    end loop;
end;


    /* 개설 과정 조회 프로시저 */
create or replace procedure procGetOpenCourse(
    presult out sys_refcursor
)
is
begin
    dbms_output.put_line('[개설 과정 조회]');
    dbms_output.put_line('---------------------------------------------------------------------------------');
    dbms_output.put_line('|No.|' || lpad('과정명', 24) || lpad('|', 21) 
                            || lpad('기간', 11) || lpad('|', 7) 
                            || ' 강의실' || '|' || '수용' || '|');
    dbms_output.put_line('---------------------------------------------------------------------------------');
    open presult
        for select * from vwOpenCourse
            order by oc_seq;
end procGetOpenCourse;


--------------------------------------------------------------------------------
-- 2. 개설 과정 등록; 과정번호, 시작일, 강의실 번호 입력
--------------------------------------------------------------------------------
begin
--    procAddOpenCourse(과정_번호, 강의실_번호, 시작일);
    procAddOpenCourse(3, 4, '21-12-25');
end;


    /* 개설 가능한 날짜 함수 */
create or replace function fnValidDate (
    pdate date
) return varchar2
is
    vcnt number;
    vcheck varchar2(1);
begin
    select count(*)
        into vcnt 
    from tblHoliday 
    where holiday_date = pdate;
    
    if to_char(pdate, 'd') in ('1', '7') 
        or pdate < sysdate 
        or vcnt > 0 then
        vcheck := 'N';
    else
        vcheck := 'Y';
    end if;
    
    return vcheck;
end fnValidDate;


    /* 개설 가능한 강의실 함수 */
create or replace function fnValidRoom (
    pseq number,
    pstartdate date
) return varchar2
is
    vdate date;
    vcheck varchar2(1);
begin
    select max(oc_enddate)
        into vdate 
    from vwOpenCourse 
    where room_seq = pseq;
    
    if vdate > pstartdate then
        vcheck := 'N';
    else
        vcheck := 'Y';
    end if;
    
    return vcheck;
end fnValidRoom;


    /* 개설 과정 종료일 계산 함수 */
create or replace function fnEnddate (
    pdate date,
    pperiod number
) return date
is
begin
    return add_months(pdate, pperiod);
end fnEnddate;


    /* 개설 과정 등록 프로시저 */
create or replace procedure procAddOpenCourse (
    pseq number, 
    prseq number,
    pstartdate date
)
is
    vc tblCourse%rowtype;
    vr tblRoom%rowtype;
    venddate date;
begin
    select * into vc from tblCourse
    where course_seq = pseq;

    select * into vr from tblRoom
    where room_seq = prseq;
    
    venddate := fnEnddate(pstartdate, vc.course_period);
    
    dbms_output.put_line('[개설 과정 등록]' || chr(10) 
                            || 'No.' || oc_seq.nextVal || ' ' || vc.course_name 
                            || '(' || pstartdate || ' ~ ' || venddate 
                            || ', ' || vr.room_name || ')');

    if fnValidDate(pstartdate) = 'N' then
        dbms_output.put_line('실패; 시작일 부적합');
    elsif fnValidDate(venddate) = 'N' then
        dbms_output.put_line('실패; 종료일 부적합');
    elsif fnvalidRoom(prseq, pstartdate) = 'N' then
        dbms_output.put_line('실패; 강의실 부적합');
    else
        insert into tblOpenCourse (oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
            values(oc_seq.currval, pseq, pstartdate, venddate, prseq);
            
        dbms_output.put_line('성공!');
    end if;
    
exception
    when others then
        dbms_output.put_line('실패; ' || sqlerrm);
end procAddOpenCourse;


--------------------------------------------------------------------------------
-- 3. 개설 과정 수정; 해당 번호의 과정 번호, 시작일, 종료일, 강의실 수정
--------------------------------------------------------------------------------
begin
--    procUpdateOpenCourse(번호, 과정_번호, 시작일, 종료일, 강의실_번호);
    procUpdateOpenCourse(50, 3, '21-12-13', '22-02-03', 2);
end;

    
    /*  개설 과정 수정 프로시저 */
create or replace procedure procUpdateOpenCourse (
    pseq number,
    pcseq number, 
    pstartdate date,
    penddate date,  
    prseq number
)
is
    voc tblOpenCourse%rowtype;
    vcbefore tblCourse%rowtype;
    vrbefore tblRoom%rowtype;
    vc tblCourse%rowtype;
    vr tblRoom%rowtype;
begin
    select * into voc from tblOpenCourse
    where oc_seq = pseq;

    select * into vcbefore from tblCourse
    where course_seq = voc.course_seq;

    select * into vrbefore from tblRoom
    where room_seq = voc.room_seq;

    dbms_output.put_line('[개설 과정 수정]' || chr(10) 
                            || 'No.' || pseq || ' ' || vcbefore.course_name 
                            || '(' || voc.oc_startdate || ' ~ ' || voc.oc_enddate 
                            || ', ' || vrbefore.room_name || ')');

    select * into vc from tblCourse
    where course_seq = pcseq;

    select * into vr from tblRoom
    where room_seq = prseq;
    
    dbms_output.put_line('-> No.' || pseq || ' ' || vc.course_name 
                            || '(' || pstartdate || ' ~ ' || penddate 
                            || ', ' || vr.room_name || ')');
    
    if fnValidDate(pstartdate) = 'N' then
        dbms_output.put_line('실패; 시작일 부적합');
    elsif fnValidDate(penddate) = 'N' 
        or penddate < pstartdate then
        dbms_output.put_line('실패; 종료일 부적합');
    elsif fnvalidRoom(prseq, pstartdate) = 'N' then
        dbms_output.put_line('실패; 강의실 부적합');
    else 
        update tblOpenCourse set course_seq = pcseq, 
                                 oc_startdate = pstartdate,
                                 oc_enddate = penddate,
                                 room_seq = prseq
        where oc_seq = pseq;
        
        dbms_output.put_line('성공!');
    end if;
    
exception
    when others then
        dbms_output.put_line('실패; ' || sqlerrm);
end procUpdateOpenCourse;


--------------------------------------------------------------------------------
-- 4. 개설 과정 삭제; 해당 번호의 개설 과정 정보 삭제
--------------------------------------------------------------------------------
begin
--    procDeleteOpenCourse(번호);
    procDeleteOpenCourse(51);
end;


    /* 개설 과정 삭제 프로시저 */
create or replace procedure procDeleteOpenCourse (
    pseq number
)
is
    voc tblOpenCourse%rowtype;
    vc tblCourse%rowtype;
    vr tblRoom%rowtype;
    venddate date;
begin
    select * into voc from tblOpenCourse
    where oc_seq = pseq;
    
    select * into vc from tblCourse
    where course_seq = voc.course_seq;

    select * into vr from tblRoom
    where room_seq = voc.room_seq;
    
    dbms_output.put_line('[개설 과정 삭제]' || chr(10) 
                            || 'No.' || pseq || ' ' || vc.course_name 
                            || '(' || voc.oc_startdate || ' ~ ' || voc.oc_enddate 
                            || ', ' || vr.room_name || ')');
                            
    delete from tblOpenCourse
    where oc_seq = pseq;
    
    dbms_output.put_line('성공!');
exception
    when others then
        dbms_output.put_line('실패; ' || sqlerrm);
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


