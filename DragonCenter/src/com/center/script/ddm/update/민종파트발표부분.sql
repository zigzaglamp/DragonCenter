------------------------------개설 과목 입력------------------------------------
begin
procNewSubject(60,5,'20-10-24','20-11-30');
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
procOpenSubjectOutput(10);
end; -- 개설과목번호 os_seq(29...33해당os_seq미존재:기초과목테이블에는있음)
-------------------------------------------------------------------------------
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
/*
개설과목과 기초과목테이블 1:1매칭아님
교사가 os가 아닌 oc별로 할당되어있음
*/
--------------------------------------------------------------------------------
/*
A-6. 시험 관리 및 성적 조회
2) 교육생 개인이 수강한 모든 개설 과목에 대한 성적 정보(개설 과목명, 개설 과목 시작일, 개설 과목 종료일, 필기성적, 실기성적, 출결성적, 교사명) 출력
*/
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
-------------------------------------------------------------------------------