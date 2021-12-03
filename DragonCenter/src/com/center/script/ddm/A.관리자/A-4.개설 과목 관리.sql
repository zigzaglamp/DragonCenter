-- A-4. 개설 과목 관리
-- A-4.1) 개설과목 입력/수정/삭제
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
       values ((select max(os_seq)+1 from tblopensubject), 52, 13, '20-10-24', '20-11-30');
update tblopensubject set subject_seq = 56 where os_seq = 0;
update tblopensubject set oc_seq = 5 where os_seq = 0;
delete from tblopensubject where os_seq = 0;

-- A-4.2) 개설 과목 정보 출력
select
    distinct s.subject_name as "과목명",
    os.os_startdate || '~' || os.os_enddate as "기간",
    b.book_name as "교재명",
    t.teacher_name as "교사명"
from tblsubject s
 inner join tblopensubject os
  on s.subject_seq = os.subject_seq
   inner join tblbook b
    on s.subject_seq = b.subject_seq
     inner join tblopencourse oc
      on oc.oc_seq = os.oc_seq
       inner join tblteachermanagement tm
        on oc.oc_seq = tm.oc_seq
         inner join tblteacher t
          on tm.teacher_seq = t.teacher_seq;
-- A-4.3) 교재 정보 입력/출력/수정/삭제
insert into tblbook (book_seq, book_name, book_publisher, book_price, subject_seq)
       values ((select max(book_seq)+1 from tblbook), '함께하는 오라클', 쌍용북스, 15000, 3);
update tblbook set book_name where subject_seq = 3;
update tblbook set book_publisher where subject_seq = 3;
update tblbook set book_price where subject_seq = 3;
delete from tblbook where subject_seq = 3;