
create table tblRecruitInfo (
    ri_seq number,
    company_seq number not null,
    rc_seq number not null,
    ri_salary number not null,
    ri_startdate date default sysdate not null,
    ri_enddate date not null
);


create sequence ri_seq;

alter table tblRecruitInfo
    add constraint tblri_ri_seq_pk primary key(ri_seq);
    
alter table tblRecruitInfo
    add constraint tblri_company_seq_fk foreign key(company_seq) references tblCompany(company_seq);

alter table tblRecruitInfo
    add constraint tblri_rc_seq_fk foreign key(rc_seq) references tblRecruitCategory(rc_seq);



--실제
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate)
    values (ri_seq.nextVal,1,10,3200,to_date('19/07/03','rr/mm/dd'),to_date('19/09/21','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate)
    values (ri_seq.nextVal,2,8,2800,to_date('19/07/06','rr/mm/dd'),to_date('19/09/01','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate)
    values (ri_seq.nextVal,3,20,2400,to_date('19/07/08','rr/mm/dd'),to_date('19/10/11','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate)
    values (ri_seq.nextVal,4,8,2600,to_date('19/07/11','rr/mm/dd'),to_date('19/11/25','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate)
    values (ri_seq.nextVal,5,18,3100,to_date('19/08/05','rr/mm/dd'),to_date('19/09/15','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate)
    values (ri_seq.nextVal,6,5,3400,to_date('19/08/10','rr/mm/dd'),to_date('19/09/22','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate)
    values (ri_seq.nextVal,7,3,3000,to_date('19/08/18','rr/mm/dd'),to_date('19/10/16','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate)
    values (ri_seq.nextVal,8,20,4000,to_date('19/08/19','rr/mm/dd'),to_date('19/11/25','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate)
    values (ri_seq.nextVal,9,17,2400,to_date('19/08/23','rr/mm/dd'),to_date('19/11/23','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate)
    values (ri_seq.nextVal,10,12,3500,to_date('19/08/25','rr/mm/dd'),to_date('19/12/22','rr/mm/dd'));

--더미

insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,5,12,3500,to_date('20/02/01','rr/mm/dd'),to_date('18/02/22','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,50,16,3600,to_date('18/03/03','rr/mm/dd'),to_date('18/01/06','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,20,17,3700,to_date('20/03/27','rr/mm/dd'),to_date('18/02/08','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,2,4,2400,to_date('18/01/10','rr/mm/dd'),to_date('19/01/02','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,47,2,2500,to_date('20/03/01','rr/mm/dd'),to_date('18/03/21','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,48,4,2900,to_date('18/01/10','rr/mm/dd'),to_date('19/02/27','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,42,6,2900,to_date('20/03/17','rr/mm/dd'),to_date('18/03/25','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,8,3,4000,to_date('20/03/05','rr/mm/dd'),to_date('20/03/27','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,17,13,3600,to_date('18/01/18','rr/mm/dd'),to_date('20/03/11','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,13,7,3500,to_date('18/01/27','rr/mm/dd'),to_date('20/01/17','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,43,2,3300,to_date('19/01/23','rr/mm/dd'),to_date('19/02/13','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,14,7,3800,to_date('19/03/14','rr/mm/dd'),to_date('18/03/12','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,3,13,2800,to_date('18/03/01','rr/mm/dd'),to_date('18/03/02','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,32,3,4000,to_date('20/01/19','rr/mm/dd'),to_date('19/01/09','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,2,7,2900,to_date('18/02/03','rr/mm/dd'),to_date('20/01/17','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,17,18,2900,to_date('18/03/12','rr/mm/dd'),to_date('19/01/11','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,12,19,2700,to_date('19/01/10','rr/mm/dd'),to_date('20/03/19','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,45,10,2400,to_date('18/03/13','rr/mm/dd'),to_date('19/01/16','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,45,7,2500,to_date('20/03/27','rr/mm/dd'),to_date('20/03/10','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,18,13,2600,to_date('18/02/18','rr/mm/dd'),to_date('18/03/25','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,9,20,2600,to_date('18/03/24','rr/mm/dd'),to_date('18/01/18','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,34,19,3500,to_date('18/01/28','rr/mm/dd'),to_date('19/02/03','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,7,12,3000,to_date('18/02/24','rr/mm/dd'),to_date('20/01/19','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,36,20,2500,to_date('20/01/07','rr/mm/dd'),to_date('18/03/13','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,11,9,3700,to_date('20/02/12','rr/mm/dd'),to_date('19/03/08','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,47,13,2800,to_date('20/02/01','rr/mm/dd'),to_date('20/02/19','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,48,1,3000,to_date('20/02/09','rr/mm/dd'),to_date('18/01/15','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,20,1,2400,to_date('18/01/17','rr/mm/dd'),to_date('18/02/19','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,38,13,3100,to_date('18/03/28','rr/mm/dd'),to_date('19/02/01','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,38,17,3300,to_date('18/03/10','rr/mm/dd'),to_date('18/03/07','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,31,10,3700,to_date('18/01/24','rr/mm/dd'),to_date('19/01/01','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,36,4,3700,to_date('18/01/18','rr/mm/dd'),to_date('19/01/03','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,35,13,2400,to_date('19/03/09','rr/mm/dd'),to_date('20/02/20','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,37,4,2700,to_date('18/02/02','rr/mm/dd'),to_date('19/02/02','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,24,15,2500,to_date('19/01/26','rr/mm/dd'),to_date('18/02/04','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,35,10,2400,to_date('18/03/06','rr/mm/dd'),to_date('20/02/04','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,10,10,3400,to_date('18/01/02','rr/mm/dd'),to_date('18/02/18','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,47,9,3100,to_date('19/02/03','rr/mm/dd'),to_date('20/01/15','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,32,8,2600,to_date('19/03/06','rr/mm/dd'),to_date('20/02/22','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,41,5,3800,to_date('20/01/10','rr/mm/dd'),to_date('20/01/19','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,48,5,3500,to_date('19/03/03','rr/mm/dd'),to_date('20/01/18','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,33,6,3300,to_date('18/01/27','rr/mm/dd'),to_date('18/01/21','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,47,2,3100,to_date('19/01/26','rr/mm/dd'),to_date('20/02/10','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,17,11,3000,to_date('18/02/22','rr/mm/dd'),to_date('18/02/19','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,4,7,3400,to_date('19/03/18','rr/mm/dd'),to_date('19/02/10','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,1,4,2600,to_date('20/02/14','rr/mm/dd'),to_date('18/03/15','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,8,4,2900,to_date('20/02/04','rr/mm/dd'),to_date('19/03/23','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,12,7,2600,to_date('18/02/07','rr/mm/dd'),to_date('19/02/06','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,17,3,2600,to_date('20/01/19','rr/mm/dd'),to_date('19/02/04','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,47,15,2600,to_date('20/01/04','rr/mm/dd'),to_date('19/03/09','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,47,18,3700,to_date('20/02/12','rr/mm/dd'),to_date('19/03/20','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,16,18,4000,to_date('19/02/09','rr/mm/dd'),to_date('20/01/04','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,48,7,3200,to_date('20/02/19','rr/mm/dd'),to_date('19/01/22','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,35,14,2500,to_date('19/03/17','rr/mm/dd'),to_date('20/01/27','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,17,8,2800,to_date('19/03/14','rr/mm/dd'),to_date('20/01/03','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,22,7,3500,to_date('18/01/23','rr/mm/dd'),to_date('18/01/21','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,12,8,4000,to_date('20/03/21','rr/mm/dd'),to_date('20/01/13','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,30,5,2400,to_date('19/03/24','rr/mm/dd'),to_date('18/03/16','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,4,4,3200,to_date('20/03/27','rr/mm/dd'),to_date('20/03/17','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,40,9,3100,to_date('19/01/20','rr/mm/dd'),to_date('18/03/17','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,21,16,2400,to_date('19/02/25','rr/mm/dd'),to_date('19/03/12','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,41,9,3300,to_date('20/03/20','rr/mm/dd'),to_date('18/01/19','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,3,4,3300,to_date('20/03/19','rr/mm/dd'),to_date('19/02/01','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,50,6,2800,to_date('19/01/04','rr/mm/dd'),to_date('19/02/07','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,38,13,3500,to_date('20/03/17','rr/mm/dd'),to_date('19/01/20','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,29,9,3200,to_date('20/01/19','rr/mm/dd'),to_date('20/01/18','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,45,9,2900,to_date('19/03/26','rr/mm/dd'),to_date('19/02/03','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,44,3,3700,to_date('19/02/17','rr/mm/dd'),to_date('19/01/26','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,40,11,3700,to_date('19/03/02','rr/mm/dd'),to_date('20/01/18','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,23,19,3300,to_date('20/02/15','rr/mm/dd'),to_date('20/01/15','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,30,2,2800,to_date('20/02/02','rr/mm/dd'),to_date('19/03/28','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,16,11,2500,to_date('19/01/13','rr/mm/dd'),to_date('18/01/01','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,25,10,3500,to_date('20/03/24','rr/mm/dd'),to_date('20/01/21','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,4,13,3700,to_date('19/02/13','rr/mm/dd'),to_date('18/03/24','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,39,20,3600,to_date('18/02/28','rr/mm/dd'),to_date('18/02/03','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,30,6,3600,to_date('20/02/19','rr/mm/dd'),to_date('19/03/21','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,49,4,2800,to_date('19/01/18','rr/mm/dd'),to_date('19/02/12','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,44,17,3400,to_date('18/03/17','rr/mm/dd'),to_date('20/01/18','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,50,18,2600,to_date('18/03/14','rr/mm/dd'),to_date('19/02/05','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,44,2,2400,to_date('19/02/16','rr/mm/dd'),to_date('20/03/08','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,36,18,2900,to_date('20/01/24','rr/mm/dd'),to_date('18/03/04','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,41,15,2800,to_date('20/03/08','rr/mm/dd'),to_date('19/03/15','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,16,2,3700,to_date('20/03/10','rr/mm/dd'),to_date('18/03/24','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,14,1,3400,to_date('19/02/26','rr/mm/dd'),to_date('19/01/16','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,5,3,2700,to_date('19/01/11','rr/mm/dd'),to_date('19/02/10','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,34,6,2800,to_date('19/02/15','rr/mm/dd'),to_date('18/01/11','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,29,17,3100,to_date('19/02/03','rr/mm/dd'),to_date('20/03/13','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,23,18,2500,to_date('19/01/23','rr/mm/dd'),to_date('20/02/18','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,27,14,4000,to_date('18/02/17','rr/mm/dd'),to_date('18/01/24','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,40,8,3000,to_date('18/03/18','rr/mm/dd'),to_date('20/02/23','rr/mm/dd'));
insert into tblRecruitInfo (ri_seq,company_seq,rc_seq,ri_salary,ri_startdate,ri_enddate) values (ri_seq.nextVal,48,13,3100,to_date('19/02/01','rr/mm/dd'),to_date('19/03/18','rr/mm/dd'));

commit;
