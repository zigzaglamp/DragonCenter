-- 개설 과목

create table tblOpenSubject (
	os_seq number,
	subject_seq number not null,
	oc_seq number not null,
	os_startdate date default sysdate not null,
	os_enddate date not null
);

create sequence os_seq;

alter table tblOpenSubject
    add constraint tblos_os_seq_pk primary key(os_seq);
    
alter table tblOpenSubject
    add constraint tblos_subject_seq_fk foreign key(subject_seq) references tblSubject(subject_seq);

insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 1, 1, '19-02-01', '19-04-01'); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 2, 1, '19-04-02', '19-05-01'); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 4, 1, '19-05-02', '19-07-01'); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 7, 1, '19-07-02', '19-09-01'); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 1, 3, '19-02-05', '19-04-05');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 3, 4, '19-02-08', '19-02-27');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 2, 5, '19-02-10', '19-03-09');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 7, 6, '19-02-11', '19-04-10');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 2, 2, '19-02-21', '19-03-20');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 8, 6, '19-03-15', '19-04-15');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 9, 4, '19-02-27', '19-03-30');
    
    
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 25, 7, '19-09-02', add_months('2019-02-01', (select subject_period from tblSubject s where s.subject_seq = 25))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 11, 7, '19-11-22', add_months('2019-11-01', (select subject_period from tblSubject s where s.subject_seq = 7))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 14, 8, '19-08-11', add_months('2019-08-01', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 51, 8, '19-10-15', add_months('2019-10-15', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 32, 9, '19-08-05', add_months('2019-08-05', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 18, 9, '19-10-11', add_months('2019-10-11', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 44, 10, '19-09-10', add_months('2019-09-10', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 36, 10, '19-12-21', add_months('2019-12-21', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 42, 11, '20-02-09', add_months('2020-02-09', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 52, 11, '20-04-15', add_months('2020-04-15', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 19, 12, '20-03-02', add_months('2020-03-02', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 54, 12, '20-05-18', add_months('2020-05-18', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 59, 13, '20-03-08', add_months('2020-03-08', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 1, 13, '20-05-17', add_months('2020-05-17', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 54, 14, '20-04-11', add_months('2020-04-11', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 2, 14, '20-06-25', add_months('2020-06-25', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 9, 14, '20-09-08', add_months('2020-09-08', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 40, 15, '20-04-13', add_months('2020-04-13', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 1, 15, '20-06-23', add_months('2020-06-23', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 7, 16, '20-09-27', add_months('2020-09-27', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 22, 16, '20-12-06', add_months('2020-12-06', (select subject_period from tblSubject s where s.subject_seq = 5))); 
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 19, 17, '20-11-02', '21-01-15');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 35, 17, '21-01-16', '21-03-30');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 2, 17, '21-03-31', '21-07-01');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 48, 18, '20-10-29', '21-01-07');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 22, 18, '21-01-07', '21-03-30');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 34, 19, '20-11-02', '21-01-21');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 6, 19, '21-01-25', '21-04-10');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 38, 20, '21-05-11', '21-07-24');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 26, 20, '21-07-27', '21-10-09');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 8, 21, '21-05-15', '21-07-18');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 24, 22, '21-06-03', '21-08-06');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 30, 22, '21-08-19', '21-10-04');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 6, 23, '21-06-03', '21-07-28');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 11, 23, '21-07-29', '21-09-27');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 19, 24, '21-06-14', '21-08-16');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 22, 24, '21-08-16', '21-10-02');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 2, 25, '21-09-10', '21-11-02');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 2, 25, '21-11-11', '22-01-07');
insert into tblOpenSubject (os_seq, subject_seq, oc_seq, os_startdate, os_enddate)
    values (os_seq.nextVal, 2, 26, '21-11-07', '22-01-03');
    
    commit;