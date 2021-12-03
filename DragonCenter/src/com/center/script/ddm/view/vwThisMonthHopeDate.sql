--일련의 날짜
create or replace function fnDate(
pdate date
)return varchar2
is
begin
return to_char(last_day(pdate),'dd');
end fnDate;

create or replace view vwDate
as
select
    to_date(to_char(sysdate, 'yymm')||'01','yymmdd')+level-1 as regdate
from dual
    connect by level<=(to_date(to_char(sysdate, 'yymm')||fnDate(sysdate),'yymmdd')-to_date(to_char(sysdate, 'yymm')||'01','yymmdd')+1);
 

--이번 달 희망 면접일//면접 가능일자 확인하기
create or replace view vwThisMonthHopeDate
as
select
v.regdate,
    case
        when h.holiday_name is not null then '*'||h.holiday_name||'*'
        when to_char(v.regdate,'d') in ('1','7') then '*주말*'
        else i.interviewer_name
    end as interviewer_name,
    i.interviewer_seq
from vwDate v
    left outer join tblInterViewer i
        on v.regdate=i.interviewer_date
            left outer join tblholiday h
            on v.regdate = h.holiday_date
                order by v.regdate asc;