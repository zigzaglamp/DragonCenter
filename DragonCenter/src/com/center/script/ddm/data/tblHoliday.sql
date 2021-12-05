-- 공휴일

create table tblHoliday
(
    holiday_seq number,
    holiday_date date not null,
    holiday_name varchar2(30) default '공휴일' not null
);

create sequence holiday_seq;

alter table tblHoliday
    add constraint tblh_holiday_seq_pk primary key(holiday_seq);
    
--2019    
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-01-01', 'rr-mm-dd'), '1월 1일');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-02-04', 'rr-mm-dd'), '설날');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-02-05', 'rr-mm-dd'), '설 당일');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-02-06', 'rr-mm-dd'), '설날');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-03-01', 'rr-mm-dd'), '삼일절');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-05-06', 'rr-mm-dd'), '어린이날');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-06-06', 'rr-mm-dd'), '현충일');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-08-15', 'rr-mm-dd'), '현충일');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-09-12', 'rr-mm-dd'), '추석');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-09-13', 'rr-mm-dd'), '추석 당일');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-10-03', 'rr-mm-dd'), '개천절');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-10-09', 'rr-mm-dd'), '한글날');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('19-12-25', 'rr-mm-dd'), '크리스마스');

--2020
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-01-01', 'rr-mm-dd'), '1월 1일');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-01-24', 'rr-mm-dd'), '설날');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-01-27', 'rr-mm-dd'), '설날');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-04-15', 'rr-mm-dd'), '국회의원 선거');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-04-30', 'rr-mm-dd'), '석가탄신일');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-05-05', 'rr-mm-dd'), '어린이날');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-08-17', 'rr-mm-dd'), '광복절');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-09-30', 'rr-mm-dd'), '추석');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-10-01', 'rr-mm-dd'), '추석 당일');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-10-02', 'rr-mm-dd'), '추석');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-10-09', 'rr-mm-dd'), '한글날');
insert into tblHoliday(holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('20-12-25', 'rr-mm-dd'), '크리스마스');

--2021
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-01-01', 'rr-mm-dd'),'1월 1일');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-02-11', 'rr-mm-dd'),'설날');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-02-12', 'rr-mm-dd'),'설 당일');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-02-13', 'rr-mm-dd'),'설날');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-03-01', 'rr-mm-dd'),'삼일절');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-05-05', 'rr-mm-dd'),'어린이날');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-05-19', 'rr-mm-dd'),'부처님오신날');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-06-06', 'rr-mm-dd'),'현충일');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-08-15', 'rr-mm-dd'),'광복절');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-10-20', 'rr-mm-dd'),'추석');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-10-21', 'rr-mm-dd'),'추석 당일');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-10-22', 'rr-mm-dd'),'추석');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-10-03', 'rr-mm-dd'),'개천절');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-10-09', 'rr-mm-dd'),'한글날');
insert into tblHoliday (holiday_seq, holiday_date, holiday_name) values (holiday_seq.nextVal,to_date('21-12-25', 'rr-mm-dd'),'크리스마스');

commit;
