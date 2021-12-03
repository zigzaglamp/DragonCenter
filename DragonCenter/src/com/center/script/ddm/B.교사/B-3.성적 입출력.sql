-- B-3. 성적 입출력
-- B-3.1) 특정 과목 선택시 교육생 이름, 교육생 전화번호, 중도탈락 및 출결, 필기, 실기 성적 출력
select
    distinct st.student_name as "교육생이름",
    st.student_tel as "교육생전화번호",
    a.abandonment_date as "중도탈락일",
    sc.score_attendance as "출결성적",
    sc.score_exam as "필기성적",
    sc.score_skill as "실기성적"
from tblenrollment e
 inner join tblstudent st
  on e.student_seq = st.student_seq
   inner join tblopencourse oc
    on e.oc_seq = oc.oc_seq
     inner join tblabandonment a
      on e.enrollment_seq = a.enrollment_seq
       inner join tblscore sc
        on e.enrollment_seq = sc.enrollment_seq
         inner join tblopensubject os
          on oc.oc_seq = os.oc_seq
           where os.os_seq = 1
            order by st.student_name;
-- B-3.1-2) 특정 교육생 정보 선택 시 해당 교육생의 시험 점수를 입력
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
       values
       ((select max(score_seq) from tblscore)+1,
       (select max(enrollment_seq)-- 더미데이터 존재로 max를 사용했으나 교육생이름과 수강신청번호는 1:1매칭이기때문에 실제데이터 구현시 max는 삭제
       from tblenrollment e
       inner join tblstudent s
       on e.student_seq = s.student_seq
       where s.student_name = '서민종'),
       16,
       3,
       22,
       16,
       19);
-- B-3.2) 교육생 전체에 대해서 성적을 등록했는지의 여부 출력
select
distinct s.student_name as "교육생이름",
case
    when sc.score_exam is not null then '등록'
    when sc.score_exam is null then '미등록'
end as "필기등록여부",
case
    when sc.score_skill is not null then '등록'
    when sc.score_skill is null then '미등록'
end as "실기등록여부",
case
    when sc.score_attendance is not null then '등록'
    when sc.score_attendance is null then '미등록'
end as "출결등록여부"
from tblenrollment e
 left outer join tblstudent s
  on e.student_seq = s.student_seq
   left outer join tblscore sc
    on sc.enrollment_seq = e.enrollment_seq
select * from tblscore;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
select count(distinct(enrollment_seq)) from tblscore;