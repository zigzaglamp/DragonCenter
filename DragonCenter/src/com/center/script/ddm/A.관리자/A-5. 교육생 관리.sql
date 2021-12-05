-- A-5 교육생 관리
-- 
-- #테스트(교육생 중도탈락 처리)
insert into tblabandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextval, 3, '19-05-01');

select * from vwstudent where "학생 수강신청 번호" = 3;

-- 전체 교육생 조회
select distinct "학생번호", "학생명", substr("학생 주민등록번호", 8) as "학생 주민등록번호", "학생 연락처", "학생 수강횟수" from vwstudent order by "학생번호";

-- 특정 교육생 조회
select 
    "학생명", 
    "과정명" , 
    "과정시작일", 
    "과정종료일", 
    "과정기간" || '개월' as 과정기간, 
    "강의실명",
    case 
        when "탈락일" is not null
            then '탈락'
        else '수료'
    end as "수료 여부",
    case 
        when "탈락일" is null then "수료일"
        else "탈락일"
    end as "수료/탈락일"
from vwstudent where "학생번호" = 3;

-- 프로시저(교육생 추가)
create or replace procedure procAddStudent
(
    pname varchar2,
    pssn varchar2,
    ptel varchar2,
    pseq number,
    presult out sys_refcursor
)
is
begin
    insert into tblstudent values (student_seq.nextval, pname, pssn, ptel, pseq);

    open presult
        for select * from tblstudent;
    
end procAddStudent;

-- #테스트(교육생 추가)
declare
    vname varchar2(20) := '탁연아';
    vssn varchar2(20) := '991207-1010101'; -- 주민등록번호
    vtel varchar2(20) := '010-9292-5959'; -- 전화번호
    vseq number := 0; -- 수강 신청 횟수
    vresult sys_refcursor;
    vnum varchar2(20);
    vrow tblstudent%rowtype;
begin
    
     select ir.interviewer_name into vnum from tblinterviewer ir where instr(ir.interviewer_name, '탁연아') != 0;
     
     if(vname = vnum) 
        then procAddStudent(vname, vssn, vtel, vseq, vresult);
     end if;
    
    loop
        fetch vresult into vrow;
        exit when vresult%notfound;    
        
        dbms_output.put_line(vrow.student_seq || vrow.student_name || chr(9) || vrow.student_ssn || vrow.student_tel || vrow.student_coursenum);
    end loop;
    
end;


-- 교육생 수정
update tblstudent
set
    student_seq = 3,
    student_name = '김경아',
    student_tel = '010-1234-5678',
    student_coursenum = 2
where student_seq = 3;

-- 교육생 삭제
delete tblstudent where student_seq = 3;
    

 