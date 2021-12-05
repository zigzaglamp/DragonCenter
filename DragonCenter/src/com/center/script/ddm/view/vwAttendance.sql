-- 교사/관리자 출석 조회 뷰
create or replace view vwAttendance 
as
select
    distinct ad.attendance_seq as 출결번호,
    s.student_seq as 학생번호,
    s.student_name as 학생명,
    oc.oc_seq as 과정번호,
    c.course_name as 과정명,
    t.teacher_seq as 교사번호,
    t.teacher_name as 교사명,
    tm.tm_state as 교사상태,
    ad.attendance_date as 출결일,
    to_char(ad.attendance_entertime, 'HH24:MI:SS') as 입실시간,
    case
        when to_char(ad.attendance_entertime, 'YYYY-MM-DD HH24:MI:SS') between to_char(ad.attendance_date + 9/24, 'YYYY-MM-DD HH24:MI:SS') and to_char(ad.attendance_date + 9/24 + 5/1440, 'YYYY-MM-DD HH24:MI:SS')
            then '정상'
        when to_char(ad.attendance_entertime, 'YYYY-MM-DD HH24:MI:SS') between to_char(ad.attendance_date + 9/24 + 5/1440 + 1/(1440*60), 'YYYY-MM-DD HH24:MI:SS') and to_char(ad.attendance_date + 13/24 + 59/1440 + 59/(1440*60), 'YYYY-MM-DD HH24:MI:SS')
            then '지각'
        else '결석'
    end as 입실상태,
    to_char(ad.attendance_leavetime, 'HH24:MI:SS') as 퇴실시간,
    case
        when to_char(ad.attendance_leavetime, 'YYYY-MM-DD HH24:MI:SS') between to_char(ad.attendance_date + 17/24 + 50/1440, 'YYYY-MM-DD HH24:MI:SS') and to_char(ad.attendance_date + 23/24 + 59/1440 + 59/(1440*60), 'YYYY-MM-DD HH24:MI:SS')
            then '정상'
        when to_char(ad.attendance_leavetime, 'YYYY-MM-DD HH24:MI:SS') between to_char(ad.attendance_date + 9/24 + 5/1440 + 1/(1440*60), 'YYYY-MM-DD HH24:MI:SS') and to_char(ad.attendance_date + 17/24 + 49/1440 + 59/(1440*60), 'YYYY-MM-DD HH24:MI:SS')
            then '조퇴'
        else '결석'
    end as 퇴실상태
from tblenrollment en
    inner join tblstudent s
        on en.student_seq = s.student_seq
            inner join tblattendance ad
                on ad.enrollment_seq = en.enrollment_seq
                            inner join tblopencourse oc
                                on oc.oc_seq = en.enrollment_seq
                                    inner join tblteachermanagement tm
                                        on tm.oc_seq = oc.oc_seq
                                            inner join tblcourse c
                                                on c.course_seq = oc.course_seq
                                                    left join tblholiday h
                                                        on ad.attendance_date = h.holiday_date
                                                            inner join tblteacher t
                                                                on t.teacher_seq = tm.teacher_seq
where h.holiday_date is null and to_char(ad.attendance_date, 'd') not in ('1', '7')
order by ad.attendance_date, s.student_name, oc.oc_seq;
commit;