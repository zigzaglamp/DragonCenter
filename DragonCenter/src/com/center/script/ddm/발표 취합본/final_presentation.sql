--프로젝트 발표
--------------------------------------------------------------------------------
-- A-1. 기초 정보 관리
--  1) 과정 정보 관리(조회, 등록, 수정, 삭제)
--  2) 과목 정보 관리(조회, 등록, 수정, 삭제)
--  3) 강의실 정보 관리(조회, 등록, 수정, 삭제)
--  4) 교재 정보 관리(조회, 등록, 수정, 삭제)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- A-1.1) 과정 정보 관리(tblCourse)
--------------------------------------------------------------------------------
-- 1. 과정 정보 조회; 번호, 이름, 기간 출력
--------------------------------------------------------------------------------
declare
    vresult sys_refcursor;
    vrow tblCourse%rowtype;
begin
    procGetCourse(vresult);
    
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;
        dbms_output.put_line('| ' || to_char(vrow.course_seq, '00') || '|' || vrow.course_name || chr(9)
                                || '|' || to_char(vrow.course_period, '0.0') || '개월|');
        dbms_output.put_line('--------------------------------------------------');
    end loop;
end;


    /* 과정 조회 프로시저 */
create or replace procedure procGetCourse(
    presult out sys_refcursor
)
is
begin
    dbms_output.put_line('[과정 정보 조회]');
        dbms_output.put_line('--------------------------------------------------');
    dbms_output.put_line('|No.|' || lpad('과정명', 43) || lpad('|', 39) 
                            || '   기간   |');
        dbms_output.put_line('--------------------------------------------------');
    open presult
        for select * from tblCourse order by course_seq;
end procGetCourse;


--------------------------------------------------------------------------------
-- 2. 과정 정보 등록; 이름, 기간(5.5, 6, 7) 입력
--------------------------------------------------------------------------------
begin
--    procAddCourse(과정명, 기간);
    procAddCourse('짱 쉬운 개발자 과정', 6);
end;


    /* 과정 기간 확인 함수 */
create or replace function fnIsValidPeriod (
    pperiod number
) return varchar2
is
    vcheck varchar2(1);
begin
    if pperiod in (5.5, 6, 7) then
        vcheck := 'Y';
    else 
        vcheck := 'N';
    end if;
    
    return vcheck;
end fnIsValidPeriod;


    /* 과정 등록 프로시저 */
create or replace procedure procAddCourse (
    pname varchar2,
    pperiod number
)
is
    vinfo varchar2(300);
begin
    dbms_output.put_line('[과정 정보 등록]' || chr(10) 
                            || 'No.' || course_seq.nextVal || ' ' 
                            || pname || '(' || pperiod || '개월)');
    
    if fnIsValidPeriod(pperiod) = 'N' then
        dbms_output.put_line(vinfo || '실패; 기간 부적합');
    else 
        insert into tblCourse (course_seq, course_name, course_period) 
            values (course_seq.currVal, pname, pperiod);
        
        dbms_output.put_line('성공!');    
    end if;
    
exception
    when others then
        dbms_output.put_line('실패; ' || sqlerrm);
end procAddCourse;


--------------------------------------------------------------------------------
-- 3. 과정 정보 수정; 해당 번호의 과정 수정
--------------------------------------------------------------------------------
begin
--    procUpdateCourse(번호, 과정명, 기간);
    procUpdateCourse(11, '약간 어려운 개발자 과정', 7);
end;


    /* 과정 수정 트리거 */
create or replace trigger trgUpdateCourse
    after
    update on tblCourse
    for each row
begin 
    dbms_output.put_line('수정 전: No.' || :old.course_seq || ' ' 
                            || :old.course_name || '(' 
                            || to_char(:old.course_period, '0.0') || '개월)');
    dbms_output.put_line('수정 후: No.' || :new.course_seq || ' ' 
                            || :new.course_name || '(' 
                            || to_char(:new.course_period, '0.0') || '개월)');
end;


    /* 과정 수정 프로시저 */
create or replace procedure procUpdateCourse (
    pseq number,
    pname varchar2,
    pperiod number    
)
is
    vinfo varchar2(1000);
begin
    dbms_output.put_line('[과정 정보 수정]'); 

    vinfo := 'No.' || pseq || ' ' || pname 
                || '(' || to_char(pperiod, '0.0') || '개월)' || chr(10); 
                            
    if fnIsValidPeriod(pperiod) = 'N' then
        dbms_output.put_line(vinfo || '실패; 기간 부적합');
    else 
        update tblCourse set course_name = pname, 
                             course_period = pperiod
        where course_seq = pseq;
        
        dbms_output.put_line('성공!');    
    end if;
exception
    when others then
        dbms_output.put_line(vinfo || '실패; ' || sqlerrm);
end procUpdateCourse;


--------------------------------------------------------------------------------
-- 4. 과정 정보 삭제; 해당 번호의 과정 삭제
--------------------------------------------------------------------------------
begin
--    procDeleteCourse(번호);
    procDeleteCourse(11);
end;


    /* 과정 삭제 프로시저 */
create or replace procedure procDeleteCourse (
    pseq number
)
is
    vc tblCourse%rowtype;
begin
    select *
        into vc from tblCourse 
    where course_seq = pseq;
    
    dbms_output.put_line('[과정 정보 삭제]' || chr(10) 
                            || 'No.' || pseq || ' ' || vc.course_name 
                            || '(' || vc.course_period || '개월)');    
    
    delete from tblCourse 
    where course_seq = pseq;
    
    dbms_output.put_line('성공!');
exception
    when others then
        dbms_output.put_line('실패; ' || sqlerrm);
end procDeleteCourse;


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
begin
    procGetOpenCourse(vresult);
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;
        dbms_output.put_line('| ' || to_char(vrow.oc_seq, '00') || '|' || vrow.course_name || chr(9)
                                || '|' || vrow.oc_startdate || '~' || vrow.oc_enddate 
                                || '|' || vrow.room_name || '|' || vrow.room_capacity || '명|');
        dbms_output.put_line('--------------------------------------------------------------------');
    end loop;
end;


    /* 개설 과정 조회 프로시저 */
create or replace procedure procGetOpenCourse(
    presult out sys_refcursor
)
is
begin
    dbms_output.put_line('[개설 과정 조회]');
    dbms_output.put_line('--------------------------------------------------------------------');
    dbms_output.put_line('|No.|' || lpad('과정명', 43) || lpad('|', 39) 
                            || lpad('기간', 17) || lpad('|', 13) 
                            || '  강의실|수용|');
    dbms_output.put_line('--------------------------------------------------------------------');
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
create or replace function fnIsValidDate (
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
end fnIsValidDate;


    /* 개설 가능한 강의실 함수 */
create or replace function fnIsValidRoom (
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
end fnIsValidRoom;


    /* 개설 과정 종료일 계산 함수 */
create or replace function fnIsEnddate (
    pdate date,
    pperiod number
) return date
is
begin
    return add_months(pdate, pperiod);
end fnIsEnddate;


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
    
    venddate := fnIsEnddate(pstartdate, vc.course_period);
    
    dbms_output.put_line('[개설 과정 등록]' || chr(10) 
                            || 'No.' || oc_seq.nextVal || ' ' || vc.course_name 
                            || '(' || pstartdate || ' ~ ' || venddate 
                            || ', ' || vr.room_name || ')');

    if fnIsValidDate(pstartdate) = 'N' then
        dbms_output.put_line('실패; 시작일 부적합');
    elsif fnIsValidDate(venddate) = 'N' then
        dbms_output.put_line('실패; 종료일 부적합');
    elsif fnIsValidRoom(prseq, pstartdate) = 'N' then
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


    /* 과목명 반환 함수 */
create or replace function fnGetCourseName (
    pseq number
) return varchar2
is
    vname tblCourse.course_name%type;
begin
    select course_name 
        into vname 
    from tblCourse
    where course_seq = pseq;
    
    return vname;
end fnGetCourseName;


    /* 강의실명 반환 함수 */
create or replace function fnGetRoomName (
    pseq number
) return varchar2
is
    vname tblRoom.room_name%type;
begin
    select room_name 
        into vname 
    from tblRoom
    where room_seq = pseq;
    
    return vname;
end fnGetRoomName;
    
    
    /* 개설 과정 수정 트리거 */
create or replace trigger trgUpdateOpenCourse
    after
    update on tblOpenCourse
    for each row
begin 
    dbms_output.put_line('수정 전: No.' || :old.oc_seq || ' ' 
                            || fnGetCourseName(:old.course_seq)
                            || '(' || :old.oc_startdate || ' ~ ' || :old.oc_enddate 
                            || ', ' || fnGetRoomName(:old.room_seq) || ')');
    dbms_output.put_line('수정 후: No.' || :new.oc_seq || ' ' 
                            || fnGetCourseName(:new.course_seq)
                            || '(' || :new.oc_startdate || ' ~ ' || :new.oc_enddate 
                            || ', ' || fnGetRoomName(:new.room_seq) || ')');
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
    vinfo varchar2(1000);
begin
    dbms_output.put_line('[개설 과정 수정]');
    
    vinfo := 'No.' || pseq || ' ' || fnGetCourseName(pcseq)
                || '(' || pstartdate || ' ~ ' || penddate 
                || ', ' || fnGetRoomName(prseq) || ')' || chr(10); 
    
    if fnisValidDate(pstartdate) = 'N' then
        dbms_output.put_line(vinfo || '실패; 시작일 부적합');
    elsif fnisvaliddate(penddate) = 'N' 
        or penddate < pstartdate then
        dbms_output.put_line(vinfo || '실패; 종료일 부적합');
    elsif fnisvalidRoom(prseq, pstartdate) = 'N' then
        dbms_output.put_line(vinfo || '실패; 강의실 부적합');
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
        dbms_output.put_line(vinfo || '실패; ' || sqlerrm);
end procUpdateOpenCourse;


--------------------------------------------------------------------------------
-- 4. 개설 과정 삭제; 해당 번호의 개설 과정 정보 삭제
--------------------------------------------------------------------------------
begin
--    procDeleteOpenCourse(번호);
    procDeleteOpenCourse(11);
end;


    /* 개설 과정 삭제 프로시저 */
create or replace procedure procDeleteOpenCourse (
    pseq number
)
is
    voc tblOpenCourse%rowtype;
begin
    select * into voc from tblOpenCourse
    where oc_seq = pseq;
    
    dbms_output.put_line('[개설 과정 삭제]' || chr(10) 
                            || 'No.' || pseq || ' ' || fnGetCourseName(voc.course_seq)
                            || '(' || voc.oc_startdate || ' ~ ' || voc.oc_enddate 
                            || ', ' || fnGetRoomName(voc.room_seq) || ')');
                            
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
    procGetOpenCourseInfo(vresult);
    
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;
        dbms_output.put_line('| ' || to_char(vrow.oc_seq, '00') || '|' || vrow.course_name || chr(9)
                                || '|' || vrow.oc_startdate || '~' || vrow.oc_enddate 
                                || '|' || vrow.room_name || '|' 
                                || to_char(vrow.num, '00') || '명|      '
                                || vrow.regsub || '     |');
        dbms_output.put_line('----------------------------------------------------------------------------');
    end loop;
end;


    /* 개설 과정 상세 조회 프로시저 */
create or replace procedure procGetOpenCourseInfo(
    presult out sys_refcursor
)
is
begin
    dbms_output.put_line('[개설 과정 상세 조회]');
    dbms_output.put_line('----------------------------------------------------------------------------');
    dbms_output.put_line('|No.|' || lpad('과정명', 43) || lpad('|', 39) 
                            || lpad('기간', 17) || lpad('|', 13) 
                            || ' 강의실|  등록|과목 개설|');
    dbms_output.put_line('----------------------------------------------------------------------------');
    open presult
        for select * from vwOpenCourse
            order by oc_seq;
end procGetOpenCourseInfo;


--------------------------------------------------------------------------------

------------------------------개설 과목 입력------------------------------------
--유효성 검사 날짜 범위?
begin
procNewSubject(17,5,'20-10-24','20-11-30');
end; -- 기초과목번호 subject_seq, 소속개설과정번호 oc_seq
--------------------------------------------------------------------------------
create or replace procedure procNewSubject(
    psub1 number,
    poc1 number,
    posdate1 date,
    posdate2 date
    --select * from tblcourse;
    --select * from tblsubject;
    --select * from tblopencourse;
    --select * from tblopensubject;
)
is
    psub1check number;
    poc1check number;
    posdate1check date;
    posdate2check date;
begin

    select subject_seq into psub1check from tblsubject where subject_seq = psub1;
    select oc_seq into poc1check from tblopencourse where oc_seq = poc1;
    select oc_startdate into posdate1check from tblopencourse where oc_seq = poc1;
    select oc_enddate into posdate2check from tblopencourse where oc_seq = poc1;
    if psub1 = psub1check and
       poc1 = poc1check and
       posdate1 >= posdate1check and
       posdate2 <= posdate2check then
        insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
               values ((select max(os_seq)+1 from tblopensubject), psub1, poc1, posdate1, posdate2);
       dbms_output.put_line('해당개설과정이 성공적으로 등록되었습니다.');
    else
    dbms_output.put_line('해당개설과정의 날짜범위를 벗어났습니다.');
    end if;
exception
    when NO_DATA_FOUND then
    psub1check := 0;
    poc1check := 0;
    dbms_output.put_line('유효하지않는값존재');
end procNewsubject;
------------------------------개설 과목 출력------------------------------------
begin
procOpenSubjectOutput(29);
end; -- 개설과목번호 os_seq(29...33해당os_seq미존재:기초과목테이블에는있음)
-------------------------------------------------------------------------------
update tblopensubject set os_startdate = '19-02-01', os_enddate = '19-03-14' where os_seq = 1;
update tblopensubject set os_startdate = '19-03-15', os_enddate = '19-05-01' where os_seq = 2;
update tblopensubject set os_startdate = '19-05-02', os_enddate = '19-06-01' where os_seq = 3;
update tblopensubject set os_startdate = '19-06-02', os_enddate = '19-07-01' where os_seq = 4;
update tblopensubject set os_startdate = '19-07-02', os_enddate = '19-08-02' where os_seq = 29;
update tblopensubject set os_startdate = '19-08-03', os_enddate = '19-09-01' where os_seq = 32;

--
update tblopensubject set subject_seq = 40, oc_seq = 1 where os_seq = 29;
update tblopensubject set subject_seq = 22, oc_seq = 1 where os_seq = 32;
--
select * from tblopensubject where oc_seq = 1;
-- 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 교사명
-------------------------------------------------------------------------------
create or replace procedure procOpenSubjectOutput(
    pos1 number
)
is
    vrow tblOpenSubject%rowtype;
    psub_seq number;
    psub_name varchar2(60);
    pteacher_name varchar2(30);
    pbook_name varchar2(100);
begin
    select * into vrow from tblopensubject where os_seq = pos1;
    select subject_seq into psub_seq from tblopensubject where os_seq = pos1;
    select subject_name into psub_name from tblsubject where subject_seq = psub_seq;
    select t.teacher_name into pteacher_name from tblteacher t where teacher_seq
    = (select tm.teacher_seq from tblteachermanagement tm where oc_seq
    = (select os.oc_seq from tblopensubject os where os_seq = pos1));
    select book_name into pbook_name from tblbook where subject_seq = pos1;
    dbms_output.put_line('개설과목명: ' || psub_name);
    dbms_output.put_line('시작년월일: ' || vrow.os_startdate);
    dbms_output.put_line('종료년월일: ' || vrow.os_enddate);
    dbms_output.put_line('교사명: ' || pteacher_name);
    dbms_output.put_line('교재명: ' || pbook_name);
exception
    when NO_DATA_FOUND then
    dbms_output.put_line('해당os_seq가 존재하지않습니다');
end procOpenSubjectOutput;
--------------------------------------------------------------------------------
/*
개설과목과 기초과목테이블 1:1매칭아님
교사가 os가 아닌 oc별로 할당되어있음
*/

--------------------------------------------------------------------------------
-- A-5 교육생 관리
-- A-5-1 교육생 추가

-- 프로시저(교육생 추가)
create or replace procedure procAddStudent
(
    pname varchar2, -- 교육생 이름
    pssn varchar2, -- 교육생 주민등록번호
    ptel varchar2, -- 교육생 전화번호
    pseq number, -- 교육생 수강횟수
    presult out sys_refcursor
)
is
begin

    insert into tblstudent values(student_seq.nextval, pname, pssn, ptel, pseq);

    open presult
        for select * from tblstudent order by student_seq;
        
exception
    when others then
        dbms_output.put_line('잘못된 값입니다');            
    
end procAddStudent;

-- #면접 합격자 조회
select ir.interviewer_name as 합격자 from tblinterviewer ir inner join tblinterview i on i.interviewer_seq = ir.interviewer_seq where upper(i.interview_result) = upper('Y') order by ir.interviewer_seq desc; 

-- #테스트(교육생 추가)
declare
    vname varchar2(20) := '탁연아'; -- 교육생 이름
    vssn varchar2(20) := '991207-2222222'; -- 교육생 주민등록번호
    vtel varchar2(20) := '010-9292-5959'; -- 교육생 전화번호
    vseq number := 0; -- 교육생 수강횟수
    vresult sys_refcursor;
    vname2 varchar2(20); -- 비교할 이름
    vrow tblstudent%rowtype;
begin
    
    -- 면접이 합격한 사람만 교육생 추가 가능
    select ir.interviewer_name into vname2 from tblinterviewer ir inner join tblinterview i on i.interviewer_seq = ir.interviewer_seq where instr(ir.interviewer_name, vname) != 0 and upper(i.interview_result) = upper('Y');  
    
    -- 추가할 이름과 합격한 면접자의 이름이 같으면 교육생 정보 추가  
    if(vname = vname2) 
        then procAddStudent(vname, vssn, vtel, vseq, vresult);
    end if;
    
    dbms_output.put_line(chr(10));
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    dbms_output.put_line('학생번호' || chr(9) || chr(9) || ' ' || '학생명' || chr(9)|| chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '주민등록번호' || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '연락처' || chr(9) || chr(9) || chr(9) || chr(9) || '  ' || '수강횟수');
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;    
        
        dbms_output.put_line(chr(9) || lpad(vrow.student_seq, 3, ' ') || chr(9) || chr(9) || chr(9) || lpad(vrow.student_name, 8, ' ') || ' ' || chr(9) || chr(9) || chr(9) || chr(9) || lpad(vrow.student_ssn, 14, ' ') || chr(9) || chr(9) || chr(9) || vrow.student_tel || chr(9) || chr(9) || chr(9) || chr(9) || vrow.student_coursenum);
        dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    end loop;
    
exception
    when no_data_found then
        dbms_output.put_line('존재하지 않는 값입니다');
    when others then 
        dbms_output.put_line('잘못된 값입니다');        
    
end;


--------------------------------------------------------------------------------
/*
A-6. 시험 관리 및 성적 조회
2) 교육생 개인이 수강한 모든 개설 과목에 대한 성적 정보(개설 과목명, 개설 과목 시작일, 개설 과목 종료일, 필기성적, 실기성적, 출결성적, 교사명) 출력
*/
-------------------------------------------------------------------------------
select * from tblopensubject where subject_seq =1;
-------------------------------------------------------------------------------
begin
    procStudentScoreInfo(3);
end;
-- 수강신청번호
-------------------------------------------------------------------------------
create or replace procedure procStudentScoreInfo(
    pes1 number
)
is
    cursor vcursor
        is select
        "개설과목명",
        "시작일",
        "종료일",
        "필기성적",
        "실기성적",
        "출결성적",
        "교사명",
        "a",
        "b",
        "c"
        from vwStudentScoreInfo where "수강번호" = pes1;
        
        vexam_result number;
        vskill_result number;
        vattendance_result number;
begin
    for vrow in vcursor loop
        
        vexam_result := vrow."a" * (vrow."필기성적"/50);
        vskill_result := vrow."b" * (vrow."실기성적"/50);
        vattendance_result := vrow."c" * (vrow."출결성적"/50);
        dbms_output.put_line(
        '['||vrow."개설과목명"||']'||'   '||
        '['||vrow."시작일"||']'||'   '||
        '['||vrow."종료일"||']'||'   '||
        '['||vexam_result||']'||'   '||
        '['||vskill_result||']'||'   '||
        '['||vattendance_result||']'||'   '||
        '['||vrow."교사명"||']');
    
    end loop;
end;
----------------------------------------------------------------------------------------------------------------------
--A-8. 면접 관리 (관리자는 비회원의 면접을 관리)
-- 면접 신청 일자와 가능일자를 비교하여 면접 확정일을 입력한다.
----------------------------------------------------------------------------------------------------------------------
--0. 오늘 자 이후 날짜 중 면접일 확정난 사람 명단
select 
interviewer_seq as "면접자 번호",
interview_date as "면접 일자",
interview_result as "면접 결과"
from tblinterview where interview_date>sysdate order by interviewer_seq;
----------------------------------------------------------------------------------------------------------------------
--이번 달 전체 면접 신청 일자 확인
----------------------------------------------------------------------------------------------------------------------
set serverout on;

DECLARE
vregdate date;
vname varchar2(50);
vseq number;

CURSOR EX_CUR --커서 선언
IS
SELECT
v.regdate as regdate, 
v.interviewer_name as name,
v.interviewer_seq as seq
FROM
vwThisMonthHopeDate v 
            left outer join tblinterview i on v.interviewer_seq = i.interviewer_seq;

BEGIN
OPEN EX_CUR;-- 2. 명시적 커서 오픈
dbms_output.put_line(chr(10)  ||chr(10)||  chr(10));   
DBMS_OUTPUT.PUT_LINE('---------------------------------------------------');

DBMS_OUTPUT.PUT_LINE(chr(9) ||chr(9) ||chr(9) ||chr(9) ||chr(9) ||'이번 달 면접 신청자 현황');
DBMS_OUTPUT.PUT_LINE('---------------------------------------------------');
DBMS_OUTPUT.PUT_LINE(chr(9)||'날짜'||chr(9) ||chr(9) ||chr(9) ||'면접 가능'||chr(9) ||'신청자 번호');
LOOP
FETCH EX_CUR INTO vregdate, vname, vseq; --커서에서 데이터 가져오기
EXIT WHEN EX_CUR %NOTFOUND; --커서가 없을 경우 종료
DBMS_OUTPUT.PUT_LINE(chr(9)||vregdate||chr(9)||vname||chr(9)||chr(9) ||chr(9) ||vseq);
END LOOP;

CLOSE EX_CUR; --커서 닫기
END;

----------------------------------------------------------------------------------------------------------------------
--면접일이 공휴일+주말이라 안되는 신청자
----------------------------------------------------------------------------------------------------------------------
DECLARE
vregdate date;
vname varchar2(30);
vseq number;

CURSOR EX_CUR --커서 선언
IS
select 
        tm.regdate, 
        n."이름",
        n."면접번호" 
        
from vwthismonthhopedate tm 
    inner join  vwinterviewnull n 
        on tm.interviewer_seq = n."면접번호"
            where n."확정 면접일" is null and instr(tm.interviewer_name,'*')>0;

BEGIN
OPEN EX_CUR;-- 2. 명시적 커서 오픈
dbms_output.put_line(chr(10)  ||chr(10)||  chr(10));   
DBMS_OUTPUT.PUT_LINE('---------------------------------------------------');

DBMS_OUTPUT.PUT_LINE(chr(9) ||chr(9) ||chr(9) ||chr(9) ||chr(9) ||'주말 * 공휴일 면접 신청자');
DBMS_OUTPUT.PUT_LINE('---------------------------------------------------'||  chr(10));
DBMS_OUTPUT.PUT_LINE(chr(9)||'날짜'||chr(9) ||chr(9) ||chr(9) ||'면접자 이름'||chr(9) ||'신청자 번호'||  chr(10));
LOOP
FETCH EX_CUR INTO vregdate, vname, vseq; --커서에서 데이터 가져오기
EXIT WHEN EX_CUR %NOTFOUND; --커서가 없을 경우 종료
DBMS_OUTPUT.PUT_LINE(chr(9)||vregdate||chr(9)||vname||chr(9)||chr(9) ||chr(9) ||vseq);
END LOOP;

CLOSE EX_CUR; --커서 닫기
END;

----------------------------------------------------------------------------------------------------------------------
--주말 * 공휴일 면접 신청자 임의 입력해주기
----------------------------------------------------------------------------------------------------------------------
--1. 평일 중 신청자가 없는 날짜 확인하기

DECLARE
vregdate date;

CURSOR EX_CUR --커서 선언
IS
select 
        v.regdate        
from vwThisMonthHopeDate v 
    left outer join tblinterview i 
        on v.interviewer_seq = i.interviewer_seq where v.interviewer_name is null;

BEGIN
OPEN EX_CUR;-- 2. 명시적 커서 오픈
dbms_output.put_line(chr(10)  ||chr(10)||  chr(10));   
DBMS_OUTPUT.PUT_LINE('---------------------------------------------------');

DBMS_OUTPUT.PUT_LINE(chr(9) ||chr(9) ||chr(9) ||chr(9) ||chr(9) ||'신청자가 없는 일자');
DBMS_OUTPUT.PUT_LINE('---------------------------------------------------'||  chr(10));
DBMS_OUTPUT.PUT_LINE(chr(9)||'날짜'||  chr(10));
LOOP
FETCH EX_CUR INTO vregdate; --커서에서 데이터 가져오기
EXIT WHEN EX_CUR %NOTFOUND; --커서가 없을 경우 종료
DBMS_OUTPUT.PUT_LINE(chr(9)||vregdate);
END LOOP;

CLOSE EX_CUR; --커서 닫기
END;


------------------------------
--2-0. 등록 프로시저
create or replace procedure procAddInterview (
    pseq number,
    pdate date
)
is
begin
    insert into tblInterview(interviewer_seq, interview_date, interview_result) 
        values (pseq, pdate, null);
     DBMS_OUTPUT.PUT_LINE('------------------------------');   
    dbms_output.put_line('면접일 등록: ' || pdate || '로 등록되었습니다.');
    DBMS_OUTPUT.PUT_LINE('------------------------------');   
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('------------------------------');   
        dbms_output.put_line('면접일 실패: No.' || pdate || '로 등록 실패했습니다.');
        DBMS_OUTPUT.PUT_LINE('------------------------------');   
        dbms_output.put_line(sqlerrm);
end procAddInterview;



------------------------------
--2-1. 신민석
begin
--    procAddInterview(면접자 번호, 확정면접일);
    procAddInterview(301, to_date('21/12/20','yy/mm/dd'));
end;
------------------------------
--2-2. 정경림
begin
--    procAddInterview(면접자 번호, 확정면접일);
    procAddInterview(309, to_date('21/12/21','yy/mm/dd'));
end;

------------------------------
--3. 확인해보기
DECLARE
vregdate date;
vname varchar2(30);
vseq number;

CURSOR EX_CUR --커서 선언
IS
select 
        tm.regdate, 
        n."이름",
        n."면접번호" 
        
from vwthismonthhopedate tm 
    inner join  vwinterviewnull n 
        on tm.interviewer_seq = n."면접번호"
            where n."확정 면접일" is null and instr(tm.interviewer_name,'*')>0;

BEGIN
OPEN EX_CUR;-- 2. 명시적 커서 오픈
dbms_output.put_line(chr(10)  ||chr(10)||  chr(10));   
DBMS_OUTPUT.PUT_LINE('---------------------------------------------------');

DBMS_OUTPUT.PUT_LINE(chr(9) ||chr(9) ||chr(9) ||chr(9) ||chr(9) ||'주말 * 공휴일 면접 신청자');
DBMS_OUTPUT.PUT_LINE('---------------------------------------------------'||  chr(10));
DBMS_OUTPUT.PUT_LINE(chr(9)||'날짜'||chr(9) ||chr(9) ||chr(9) ||'면접자 이름'||chr(9) ||'신청자 번호'||  chr(10));
LOOP
FETCH EX_CUR INTO vregdate, vname, vseq; --커서에서 데이터 가져오기
EXIT WHEN EX_CUR %NOTFOUND; --커서가 없을 경우 종료
DBMS_OUTPUT.PUT_LINE(chr(9)||vregdate||chr(9)||vname||chr(9)||chr(9) ||chr(9) ||vseq);
END LOOP;

CLOSE EX_CUR; --커서 닫기
END;

----------------------------------------------------------------------------------------------------------------------
--희망 면접일이 평일인 경우 확정일자 반복해서 입력
----------------------------------------------------------------------------------------------------------------------
Declare
    vseq number;
    vname varchar2(30);
    vdate date;
    
Cursor cu1 is 
 select 
 tm.interviewer_seq,
 tm.interviewer_name,
 tm.regdate
 from 
 vwthismonthhopedate tm 
    inner join  vwinterviewnull n 
        on tm.interviewer_seq = n."면접번호" where n."확정 면접일" is null
    and instr(tm.interviewer_name,'*')=0; 
 
 begin
     open cu1;
     
     
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------'||  chr(10));
     loop
        fetch cu1 into vseq,vname, vdate;      --fetch 커서에서 값을 꺼내오는 것
        exit when cu1%NotFound; --커서에 있는 데이터를 fatch하여 넣어주는데
                                                   --더이상 변수에 할당할 레코드가 없을 때 빠져나간다
        insert into tblinterview(interviewer_seq, interview_date, interview_result) 
        values (vseq, vdate,null);
        DBMS_OUTPUT.PUT_LINE(vname||chr(9)||'면접일 입력 성공');
        end loop;
        close cu1;
        end;
        
------------------------------
--0. re 12월 달에 면접일 확정난 사람 명단
select 
interviewer_seq as "면접자 번호",
interview_date as "면접 일자",
interview_result as "면접 결과"
from tblinterview where interview_date>sysdate order by interview_date;

----------------------------------------------------------------------------------------------------------------------
--A-8. 면접 관리 (관리자는 비회원의 면접을 관리)
--면접 합격자의 수강 과정은 희망 과정을 참고하며, 변경할 수 있다.
----------------------------------------------------------------------------------------------------------------------
--0. 오늘 면접 본 304번
UPDATE tblInterview SET interview_result = 'Y' 
    WHERE interview_date =to_date('21/12/07', 'yy/mm/dd')-- 날짜 선택
    and interviewer_seq = 304;--면접자 번호
 
------------------------------
--0-1. 면접 결과 입력 확인하기
select 
seq as "면접 번호",
name as "면접자명",
ensuredate as "면접 일자",
oc_seq as "희망과정번호",
result as "면접 결과"
from vwinterviewinfo
    where seq = 304;


------------------------------
-- 304번 면접 합격자 교육생에 넣기 
--(희망과정에 정원이 있을 경우)
------------------------------
--1. 현재 개설 예정 강의 중 정원확인하기
select 
    o.oc_seq as "개설과정 번호",
    s.ccourse_name as "개설과정명", 
    count(*) as "정원"
from vwstudentinfo s 
    left join tblenrollment e
        on s.eseq = e.enrollment_seq
            inner join tblopencourse o
                on e.oc_seq = o.oc_seq
where o.oc_startdate>sysdate
group by o.oc_seq, s.ccourse_name order by count(*) desc;



------------------------------
--개설 예정 과정이 정원 초과가 아니라면 입력하기
--강의실 정보 26명 혹은 30명
--26명이 넘어갈 경우 강의실 현황을 보고 수기 입력 알림

declare
    vcnt number;
begin
    select count(*) as cnt
     into vcnt
from vwstudentinfo s 
    inner join tblenrollment e
        on s.eseq = e.enrollment_seq
            inner join tblopencourse o
                on e.oc_seq = o.oc_seq
                    where o.oc_startdate> sysdate and o.oc_seq =22; --희망과정 번호

     if vcnt <= 25 then
        insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)
        values (student_seq.nextval, 
        (select name from vwinterviewinfo where result = 'Y' and seq = 304),--면접자 번호 수기 입력
        '951219-1000001',--수기 입력
        (select tel from vwinterviewinfo where result = 'Y' and seq = 304),--면접자 번호 수기 입력
        (select oc_seq from vwinterviewinfo where result = 'Y' and seq = 304)--면접자 번호 수기 입력
                );
        dbms_output.put_line('합격한 면접자 교육생으로 입력 완료되었습니다 ^0^');  
        elsif vcnt >25 and vcnt<=29 then
        dbms_output.put_line('수강 인원 확인 후 입력해주세요 :0');  
        else 
        DBMS_OUTPUT.PUT_LINE('다른 개설과정으로 입력하세요 :(');
    end if;
end;
----------------------------------------------------------------------------------------------------------------------
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
    
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;
        if length(vrow.course_name) > 25 then 
            vname := rpad(vrow.course_name, 51) || '...';
        else
            vname := vrow.course_name;
        end if;
        dbms_output.put_line('|' || rpad(vname, 54) 
                                || '|' || vrow.oc_startdate || '~' || vrow.oc_enddate 
                                || '|' || vrow.state || '|');
        dbms_output.put_line('-------------------------------------------------------------------------------');
    end loop;
end;


    /* 강의 스케줄 조회 프로시저 */
create or replace procedure procGetTeacherSchedule(
    presult out sys_refcursor,
    pseq number
)
is
    vc tblTeacher%rowtype;
begin
    select * 
        into vc 
    from tblTeacher
    where teacher_seq = pseq;
    
    dbms_output.put_line('[' || vc.teacher_name || ' 선생님 강의 스케줄 조회]');
    dbms_output.put_line('-------------------------------------------------------------------------------');
    dbms_output.put_line('|' || lpad('과정명', 29) || lpad('|', 26) 
                            || lpad('기간', 11) || lpad('|', 7) 
                            || '상태|');
    dbms_output.put_line('-------------------------------------------------------------------------------');
    
    open presult
        for select * from vwTeacherSchedule
            where teacher_seq = pseq
            order by oc_startdate desc;
end procGetTeacherSchedule;
----------------------------------------------------------------------------------------------------------------------
-- B-5. 교사 -> 교사 평가 조회
-- 특정 과정, 전체 평가 조회
----------------------------------------------------------------------------------------------------------------------

-- 프로시저(교사 -> 교사 평가 조회)
create or replace procedure procEvaluationCheck
(
    ptseq number, -- 교사 번호
    pcseq number, -- 과정 번호
    presult out sys_refcursor
)
is
begin
    open presult
        for select * from vwteacherevaluation where "교사번호" = ptseq and "과정번호" = pcseq;
        
exception
    when others then
        dbms_output.put_line('잘못된 값입니다'); 

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
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    dbms_output.put_line('교사이름' || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) 
                                        || chr(9) || '과정명' || chr(9)|| chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '과정종료일' || chr(9) || chr(9)
                                        || '준비' || chr(9) || '실행' || chr(9) || '전문성' || chr(9)
                                        || '태도' || chr(9) || '지원' || chr(9) || '총점' || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '기타의견');
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;    
        
        dbms_output.put_line(lpad(vrow."교사이름", 8, ' ') || chr(9) || chr(9) || chr(9) || vrow."과정명" || chr(9) || chr(9) || ' ' || vrow."과정종료일" || chr(9) || chr(9) || '  ' 
        || vrow."수업준비" || chr(9) ||  '  ' || vrow."수업실행" || chr(9) || chr(9) || vrow."전문성" 
        || chr(9) || chr(9) || '  ' || vrow."근무태도" || chr(9) || '  ' || vrow."학생지원" || chr(9) ||  ' ' || lpad(vrow."총점", 3, ' ') ||  chr(9) || chr(9) || vrow."후기");
        dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
        
    end loop;
    
exception
    when others then
        dbms_output.put_line('잘못된 값입니다');
    
end;  

-- #테스트(교사 평균 점수 조회)
-- 1번 교사, 1번 과정 조회
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

----------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- B-6. 상담일지 작성 및 조회
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 해당 교육생을 가르치는 교사는 교육생과 상담을 진행하여 그 내용을 기록 
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 상담 작성 dml

INSERT INTO tblCounselLog(cl_seq, enrollment_seq, cl_date, cc_seq, cl_content) 
	values(11,1,to_date('21-12-01', 'yy-mm-dd'),3,'취업연계과정에 대한 번반적인 설명');





--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 상담 작성 procedure

CREATE OR REPLACE PROCEDURE procInsertCounselLog(
	penrollment_seq NUMBER,
	pcl_date DATE,
	pcc_seq NUMBER,
	pcl_content varchar2
)
IS
BEGIN 
	insert into tblCounselLog(cl_seq, enrollment_seq, cl_date, cc_seq, cl_content) 
		values(cl_seq.nextVal, penrollment_seq, pcl_date, pcc_seq, pcl_content);
END procInsertCounselLog;





--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 상담 작성 procedure 사용법

BEGIN
	procInsertCounselLog(3, to_date('21-12-02', 'yy-mm-dd'), 3, '임시');
END;





--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 상담 수정 dml

UPDATE tblCounselLog SET cl_content = '취업연계과정에 대한 전반적인 설명' WHERE cl_seq = 11;			





--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 상담 수정 procedure

CREATE OR REPLACE PROCEDURE procUpdateCounselLog(
	pcl_seq NUMBER,
	pcl_content varchar2
)
IS
BEGIN 
	UPDATE tblCounselLog SET cl_content = pcl_content WHERE cl_seq = pcl_seq;
EXCEPTION
	WHEN OTHERS THEN
		dbms_output.put_line('잘못된 번호 혹은 수정할 파일이 없습니다.');
END procUpdateCounselLog;





--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 상담 수정 procedure 사용법
BEGIN
	procUpdateCounselLog(310, '임시입니다.');
END;


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 상담 삭제 dml

delete from tblCounselLog where cl_seq = 11;





--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 상담 삭제 procedure
CREATE OR REPLACE PROCEDURE procDeleteCounselLog(
	pcl_seq NUMBER
)
IS
BEGIN 
	DELETE FROM tblCounselLog WHERE cl_seq = pcl_seq;
EXCEPTION
	WHEN OTHERS THEN
		dbms_output.put_line('삭제할 정보가 없습니다');
END procDeleteCounselLog;




--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 상담 삭제 procedure 사용법
BEGIN
	procDeleteCounselLog(310);
END;


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- tblAnswer insert trigger
CREATE OR REPLACE TRIGGER trigInsertAnswer
    AFTER
    INSERT ON tblAnswer
BEGIN
    dbms_output.put_line('정상적으로 입력되었습니다.');
END;


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- tblAnswer update trigger
CREATE OR REPLACE TRIGGER trigUpdateAnswer
    AFTER
    UPDATE ON tblAnswer
BEGIN
    dbms_output.put_line('정상적으로 수정되었습니다.');
END;


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- tblAnswer delete trigger
CREATE OR REPLACE TRIGGER trigDeleteAnswer
    AFTER
    DELETE ON tblAnswer
BEGIN
    dbms_output.put_line('정상적으로 삭제되었습니다.');
END;

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- B-8. 질의응답 답변 작성 및 조회
--------------------------------------------------------------------------------------------------
-- 해당 교육생을 가르치는 교사는 문제 풀이를 진행하고 그 내용을 답변으로 기록
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 작성 dml
INSERT INTO tblAnswer(question_seq, teacher_seq, answer_regdate, answer_content) 
	VALUES (312, 4, '21-12-04', 'substr, instr을 사용해보는것이 좋을것 같습니다.');

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 작성 procedure
CREATE OR REPLACE PROCEDURE procAddAnswer(
	pquestion_seq NUMBER,
	pteacher_seq NUMBER,
	panswer_regdate DATE,
	panswer_content varchar2
)
IS 
BEGIN 
	
	INSERT INTO tblAnswer(question_seq, teacher_seq, answer_regdate, answer_content) 
		VALUES (pquestion_seq, pteacher_seq, panswer_regdate, panswer_content);

END procAddAnswer;







--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 작성 procedure 사용법
BEGIN
	procaddanswer(312, 4, '21-12-04', 'substr, instr을 해보는것이 좋을것 같습니다.');
END;



--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 수정 procedure
CREATE OR REPLACE PROCEDURE procUpdateAnswer(
	pquestion_seq NUMBER,
	panswer_content varchar2
)
IS 
BEGIN 
	
	UPDATE tblAnswer SET question_seq = pquestion_seq WHERE answer_content = panswer_content;

END procAddAnswer;




--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 수정 procedure 사용법
BEGIN
	procUpdateAnswer(312, 'substr, instr을 사용해보는것이 좋을것 같습니다.');
END;

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 삭제 procedure
CREATE OR REPLACE PROCEDURE proDeleteAnswer(
	pquestion_seq NUMBER
)
IS 
BEGIN 
	
	DELETE FROM tblCounselLog WHERE cl_seq = pcl_seq;

END procAddAnswer;




--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 삭제 procedure 사용법
BEGIN
	procUpdateAnswer(312);
END;

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 과정, 교육생, 날짜별로 질의 목록 조회 가능
--------------------------------------------------------------------------------------------------
SELECT 
	c.course_name,
	s.student_name,
	q.question_date,
	q.question_content
FROM tblCourse c
	LEFT OUTER JOIN tblOpenCourse oc ON  oc.course_seq = c.course_seq
		LEFT OUTER JOIN tblEnrollment e ON e.OC_SEQ = oc.OC_SEQ
			LEFT OUTER JOIN tblStudent s ON  s.student_seq = e.student_seq
				LEFT OUTER JOIN tblQuestion q ON q.student_seq = s.student_seq 
					LEFT OUTER JOIN tblAnswer a ON  a.question_seq = q.question_seq
						LEFT OUTER JOIN tblTeacher t ON t.teacher_seq = a.teacher_seq
							WHERE question_date BETWEEN TO_DATE('21-10', 'yy-mm') AND TO_DATE('21-11', 'yy-mm') -- 조회할 기간 설정
								ORDER BY question_date desc;

							
							
							
--------------------------------------------------------------------------------------------------
-- tblAnswer insert trigger
CREATE OR REPLACE TRIGGER trigInsertAnswer
    AFTER
    INSERT ON tblAnswer
BEGIN
    dbms_output.put_line('정상적으로 입력되었습니다.');
END;


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- tblAnswer update trigger
CREATE OR REPLACE TRIGGER trigUpdateAnswer
    AFTER
    UPDATE ON tblAnswer
BEGIN
    dbms_output.put_line('정상적으로 수정되었습니다.');
END;


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- tblAnswer delete trigger
CREATE OR REPLACE TRIGGER trigDeleteAnswer
    AFTER
    DELETE ON tblAnswer
BEGIN
    dbms_output.put_line('정상적으로 삭제되었습니다.');
END;


--------------------------------------------------------------------------------------------------

-- C-2. 학생 -> 학생 출결 조회
-- 학생이 수강한 과정의 출결 조회

-- 프로시저(학생 -> 학생 출결 조회)
create or replace procedure procStudentAttendance
(
    pseq number, -- 학생 번호
    pyear number, -- 년
    pmonth number, -- 월
    pday number, -- 일
    presult out sys_refcursor
)
is
begin
    
    -- 특정 학생 전체 출결 조회
    if pseq != 0 and pyear = 0 and pmonth = 0 and pday = 0 then
        open presult
            for select * from vwstudentattendance where "학생번호" = pseq;
            
    -- 특정 학생, 특정 연도 출결 조회            
    elsif pseq != 0 and pyear != 0 and pmonth = 0 and pday = 0 then
        open presult
            for select * from vwstudentattendance where "학생번호" = pseq and to_char("출결일", 'YYYY') = to_char(pyear);
            
    -- 특정 학생, 특정 연도, 특정월 출결 조회               
    elsif pseq != 0 and pyear != 0 and pmonth != 0 and pday = 0 then
        open presult
            for select * from vwstudentattendance where "학생번호" = pseq and to_char("출결일", 'YYYY') = to_char(pyear) and to_number(to_char("출결일", 'MM')) = pmonth;
            
    -- 특정 학생, 특정 연도, 특정월, 특정일 출결 조회               
    elsif pseq != 0 and pyear != 0 and pmonth != 0 and pday != 0 then
        open presult
            for select * from vwstudentattendance where "학생번호" = pseq and to_char("출결일", 'YYYY') = to_char(pyear) and to_number(to_char("출결일", 'MM')) = pmonth and to_number(to_char("출결일", 'DD')) = pday;
    end if;
    
exception
    when others then
        dbms_output.put_line('잘못된 값입니다');

end procStudentAttendance;

-- #테스트(학생 -> 학생 출결 조회)
declare
    vseq number := 3; -- 학생 번호
    vyear number := 2019; -- 년
    vmonth number := 0; -- 월
    vday number := 0; -- 일
    vresult sys_refcursor;
    vrow vwstudentattendance%rowtype;
begin
    
    procstudentattendance(vseq, vyear, vmonth, vday, vresult);
    
    dbms_output.put_line(chr(10));
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    dbms_output.put_line(chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '과정명' 
                                        || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '출결일' || chr(9)|| chr(9) 
                                        || chr(9) || ' ' || '입실시간' || chr(9) || chr(9) || ' ' || '입실상태' || ' ' || chr(9) || chr(9) || ' ' || '퇴실시간' || chr(9) || chr(9) || ' ' || '퇴실상태');
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;
        
        dbms_output.put_line(vrow."과정명" || chr(9) || chr(9) || chr(9) || chr(9) || ' ' || vrow."출결일" || chr(9) || chr(9) || chr(9) || vrow."입실시간" || chr(9) || chr(9) || chr(9) || vrow."입실상태" 
        || chr(9) || chr(9) || ' ' || chr(9) || vrow."퇴실시간" || chr(9) || chr(9) || chr(9) || vrow."퇴실상태");
        dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
        
    end loop;
    
exception
    when others then
        dbms_output.put_line('잘못된 값입니다');
  
end;
----------------------------------------------------------------------------------------------------------------------
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
    vpreparing number := 9; -- 데이터 입력!
    vimplement number := 8; -- 데이터 입력!
    vprofessionalism number := 7; -- 데이터 입력!
    vattitude number := 5; -- 데이터 입력!
    vstudentsupport number := 6; -- 데이터 입력! 
    votheropinion varchar2(100) := '수업 잘 들었습니다.'; -- 데이터 입력!
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
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    dbms_output.put_line('교사이름' || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) 
                                        || chr(9) || '과정명' || chr(9)|| chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '과정종료일' || chr(9) || chr(9)
                                        || '준비' || chr(9) || '실행' || chr(9) || '전문성' || chr(9)
                                        || '태도' || chr(9) || '지원' || chr(9) || '총점' || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || chr(9) || '기타의견');
    dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;    
        
        dbms_output.put_line(lpad(vrow."교사이름", 8, ' ') || chr(9) || chr(9) || chr(9) || vrow."과정명" || chr(9) || chr(9) || ' ' || vrow."과정종료일" || chr(9) || chr(9) || '  ' 
        || vrow."수업준비" || chr(9) ||  '  ' || vrow."수업실행" || chr(9) || chr(9) || vrow."전문성" 
        || chr(9) || chr(9) || '  ' || vrow."근무태도" || chr(9) || '  ' || vrow."학생지원" || chr(9) ||  ' ' || lpad(vrow."총점", 3, ' ') ||  chr(9) || chr(9) || vrow."후기");
        dbms_output.put_line('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ');
    end loop;
    
exception
    when others then
        dbms_output.put_line('잘못된 값입니다');
    
end;  


----------------------------------------------------------------------------------------------------------------------
--D-2. 면접 신청 및 일자 조회
--(조회한 교육 과정을 바탕으로 희망하는 교육과정과 일자를 선택하여 면접을 신청할 수 있다.)
----------------------------------------------------------------------------------------------------------------------
--D-2-1. 희망하는 면접 일자를 선택하여 면접 신청을 한다.
----------------------------------------------------------------------------------------------------------------------

------------------------------
--뷰사용 (개설 교육과정을 과정명으로 검색하기)
select 
        oc_seq as "개설과정",
        course_name as "과정명",
        oc_startdate as "과정시작일"
from vwcourseinfo where oc_startdate>sysdate and 
instr(course_name, '웹') >0;

------------------------------
--면접일을 입력하는 시스템 시간이 과정 시작일보다 빠른지 확인한 뒤 insert
set serverout on;

declare
    vdate date;
begin
    select oc_startdate into vdate from vwCourseInfo where oc_seq =22;
     if vdate >= to_date(sysdate,'yy/mm/dd') then
        insert into tblInterviewer(interviewer_seq, interviewer_name, interviewer_tel, oc_seq, interviewer_date)
        values (interviewer_seq.nextval, 
        '김쌍용', --이름
        '010-1111-2222', --번호 
        26, --희망과정
        to_date('2021-12-21', --면접 희망날짜 <개설과정 시작일
        'YY-MM-DD') 
        );
        dbms_output.put_line('면접 신청 완료');  
    end if;
end;


------------------------------
--0. 입력 완료 되었는지 확인하기
select * from tblinterviewer where interviewer_name ='김쌍용';
----------------------------------------------------------------------------------------------------------------------



