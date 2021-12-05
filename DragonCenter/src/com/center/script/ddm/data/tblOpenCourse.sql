create table tblOpenCourse (
    oc_seq number not null,
    course_seq number not null,
    oc_startdate date default sysdate not null,
    oc_enddate date not null,
    room_seq number not null
); 

create sequence oc_seq;

alter table tblOpenCourse
    add constraint tbloc_oc_seq_pk primary key(oc_seq);
    
alter table tblOpenCourse
    add constraint tbloc_course_seq_fk foreign key(course_seq) references tblCourse(course_seq);
    
alter table tblOpenCourse
    add constraint tbloc_room_seq_fk foreign key(room_seq) references tblroom(room_seq);

insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values(oc_seq.nextval, 1, '2019-02-01', add_months('2019-02-01', (select course_period from tblcourse c where c.course_seq = 1)), 1);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values(oc_seq.nextval, 8, '2019-02-02', add_months('2019-02-02', (select course_period from tblcourse c where c.course_seq = 8)), 2);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values(oc_seq.nextval, 8, '2019-02-05', add_months('2019-02-05', (select course_period from tblcourse c where c.course_seq = 8)), 3);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values(oc_seq.nextval, 3, '2019-02-08', add_months('2019-02-08', (select course_period from tblcourse c where c.course_seq = 3)), 4);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values(oc_seq.nextval, 2, '2019-02-10', add_months('2019-02-10', (select course_period from tblcourse c where c.course_seq = 2)), 5);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values(oc_seq.nextval, 4, '2019-02-11', add_months('2019-02-11', (select course_period from tblcourse c where c.course_seq = 4)), 6);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values(oc_seq.nextval, 5, '2019-09-02', add_months('2019-09-02', (select course_period from tblcourse c where c.course_seq = 5)), 1);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq)
    values(oc_seq.nextval, 6, '2019-08-02', add_months('2019-08-11', (select course_period from tblcourse c where c.course_seq = 6)), 2);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values(oc_seq.nextval, 9, '2019-08-05', add_months('2019-08-05', (select course_period from tblcourse c where c.course_seq = 9)), 4);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values(oc_seq.nextval, 8, '2019-08-08', add_months('2019-09-10', (select course_period from tblcourse c where c.course_seq = 8)), 5);
    
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values (oc_seq.nextval, 1, '2020-10-09', add_months('2020-10-09', (select course_period from tblcourse c where c.course_seq = 1)), 4);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values (oc_seq.nextval, 8, '2020-04-10', add_months('2020-04-10', (select course_period from tblcourse c where c.course_seq = 8)), 6);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values (oc_seq.nextval, 7, '2020-02-08', add_months('2020-02-08', (select course_period from tblcourse c where c.course_seq = 7)), 2);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq)
    values (oc_seq.nextval, 4, '2021-09-02', add_months('2021-09-02', (select course_period from tblcourse c where c.course_seq = 4)), 2);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq)
    values (oc_seq.nextval, 6, '2020-07-18', add_months('2020-07-18', (select course_period from tblcourse c where c.course_seq = 6)), 3);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq)
    values (oc_seq.nextval, 3, '2020-01-27', add_months('2020-01-27', (select course_period from tblcourse c where c.course_seq = 3)), 5);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values (oc_seq.nextval, 2, '2020-06-23', add_months('2020-06-23', (select course_period from tblcourse c where c.course_seq = 2)), 4);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values (oc_seq.nextval, 8, '2020-11-22', add_months('2020-11-22', (select course_period from tblcourse c where c.course_seq = 8)), 4);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values (oc_seq.nextval, 5, '2020-06-07', add_months('2020-06-07', (select course_period from tblcourse c where c.course_seq = 5)), 3);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq)
    values (oc_seq.nextval, 1, '2020-05-11', add_months('2020-05-11', (select course_period from tblcourse c where c.course_seq = 1)), 4);


--실제 tblopencourse 개설예정
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq)
    values (oc_seq.nextval, 6, '2021-12-18', add_months('2021-12-18', (select course_period from tblcourse c where c.course_seq = 6)), 3);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq)
    values (oc_seq.nextval, 3, '2022-01-27', add_months('2022-01-27', (select course_period from tblcourse c where c.course_seq = 3)), 5);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values (oc_seq.nextval, 2, '2022-02-23', add_months('2022-02-23', (select course_period from tblcourse c where c.course_seq = 2)), 4);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values (oc_seq.nextval, 8, '2022-01-22', add_months('2022-01-22', (select course_period from tblcourse c where c.course_seq = 8)), 4);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq) 
    values (oc_seq.nextval, 5, '2022-01-07', add_months('2022-01-07', (select course_period from tblcourse c where c.course_seq = 5)), 3);
insert into tblOpenCourse(oc_seq, course_seq, oc_startdate, oc_enddate, room_seq)
    values (oc_seq.nextval, 1, '2021-12-11', add_months('2021-12-11', (select course_period from tblcourse c where c.course_seq = 1)), 4);

commit;