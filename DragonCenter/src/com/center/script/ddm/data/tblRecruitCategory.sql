create table tblRecruitCategory
(
    rc_seq number,
    rc_name varchar2(100) not null
);

create sequence rc_seq;

alter table tblRecruitCategory
    add constraint tblrc_rc_seq_pk primary key(rc_seq);

alter table tblRecruitCategory
    add constraint tblrc_rc_name_uq unique (rc_name);




insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'web_designer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'game_designer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'web_planner');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'game_planner');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'web_programmer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'application_programmer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'system_programmer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'embedded_programmer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'game_programmer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'security_programmer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'network_engineer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'white_hacker');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'server_engineer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'it_consultant');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'project_manager');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'datavase_administrator');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'security_consultant');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'machine_learning_engineer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'full_stack_developer');
insert into tblRecruitCategory(rc_seq,rc_name) values (rc_seq.nextVal,'python_developer');

commit;