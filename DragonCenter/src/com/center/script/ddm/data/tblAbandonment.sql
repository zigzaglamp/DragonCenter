-- 중도 탈락


create table tblAbandonment (   
    abandonment_seq number not null,
    enrollment_seq number not null, 
    abandonment_date date default sysdate
);

create sequence abandonment_seq;



alter table tblAbandonment 
    add constraint tblat_abandonment_seq_pk primary key(abandonment_seq);
    
alter table tblAbandonment
    add constraint tblat_enrollment_seq_fk foreign key (enrollment_seq) references tblEnrollment(enrollment_seq);
        
    
-- 실제
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 103, '19-02-20');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 45, '19-03-02');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 123, '19-03-03');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 71, '19-04-06');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 131, '19-04-09');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 23, '19-04-12');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 111, '19-05-06');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 80, '19-05-10');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 25, '19-07-22');

-- 더미
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 5, '21-07-12');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 1, '21-11-02');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 1, '21-03-03');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 9, '21-02-06');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 6, '21-09-10');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 4, '21-07-09');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 9, '21-05-06');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 7, '21-11-10');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 2, '21-10-22');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 8, '21-01-02');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 7, '21-11-19');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 8, '21-09-19');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 8, '21-03-25');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 5, '21-05-20');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 6, '21-01-08');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 8, '21-10-26');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 7, '21-11-19');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 1, '21-02-16');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 4, '21-06-22');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 7, '21-01-25');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 8, '21-01-10');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 2, '21-09-04');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 2, '21-05-14');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 8, '21-04-17');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 9, '21-09-09');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 9, '21-02-18');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 1, '21-08-01');
insert into tblAbandonment(abandonment_seq, enrollment_seq, abandonment_date) values (abandonment_seq.nextVal, 4, '21-02-03');

commit;