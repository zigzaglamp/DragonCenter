

create table tblJobSeeker (
    pm_seq number,
    js_salary number not null,
    area_seq number not null,
    rc_seq number not null
);

alter table tblJobSeeker
    add constraint tbljs_pm_seq_pk primary key(pm_seq);
alter table tblJobSeeker
    add constraint tbljs_pm_seq_fk foreign key(pm_seq) references tblPostManagement(pm_seq);
alter table tblJobSeeker
    add constraint tbljs_area_seq_fk foreign key(area_seq) references tblArea(area_seq);
alter table tblJobSeeker
    add constraint tbljs_rc_seq_fk foreign key(rc_seq) references tblRecruitCategory(rc_seq);

--실제
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (1,3200,18,10);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (2,2800,17,8);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (3,2400,18,20);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (4,2600,3,8);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (5,3100,4,18);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq )values (6,3400,23,5);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (7,3000,14,3);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (8,400,23,20);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (9,2400,19,17);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (10,3500,19,12);

--더미
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (11,3400,16,4);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (12,3800,211,4);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (13,3600,55,10);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (14,3100,8,18);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (15,3000,73,7);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (16,2900,21,18);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (17,3500,67,15);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (18,3800,179,18);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (19,4000,10,10);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (20,3100,294,10);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (21,2800,239,14);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (22,4000,261,2);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (23,2600,194,9);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (24,3700,208,20);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (25,4000,237,8);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (26,2600,201,8);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (27,3000,174,17);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (28,3100,76,19);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (29,3600,91,13);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (30,2400,147,15);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (31,2700,126,11);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (32,2900,175,5);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (33,2400,223,15);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (34,4000,135,16);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (35,2900,114,18);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (36,3500,159,20);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (37,3400,97,7);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (38,4000,124,2);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (39,3100,172,19);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (40,3100,59,19);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (41,2600,138,20);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (42,2800,213,4);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (43,3000,70,16);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (44,2600,93,14);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (45,3400,12,19);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (46,2400,24,4);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (47,3400,260,12);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (48,3200,253,6);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (49,3500,47,11);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (50,2900,118,3);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (51,3700,31,13);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (52,3300,208,16);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (53,3600,233,10);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (54,2500,35,2);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (55,3300,82,12);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (56,2500,170,20);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (57,3100,33,8);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (58,3500,105,3);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (59,2900,64,11);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (60,3700,21,2);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (61,3800,233,2);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (62,2600,249,8);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (63,2600,145,18);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (64,3700,108,10);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (65,2400,262,19);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (66,3500,55,5);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (67,3600,89,12);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (68,3000,146,17);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (69,2500,238,5);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (70,3600,83,18);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (71,2500,219,6);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (72,4000,46,12);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (73,2700,78,7);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (74,3400,194,2);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (75,3500,106,1);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (76,2700,110,12);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (77,3700,136,16);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (78,3000,122,7);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (79,2400,114,7);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (80,3200,41,7);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (81,2600,31,2);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (82,3600,91,5);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (83,3800,146,17);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (84,2600,53,18);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (85,3500,159,1);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (86,2500,58,7);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (87,3200,297,13);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (88,3200,93,3);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (89,3100,43,12);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (90,3400,7,3);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (91,3200,3,3);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (92,3800,69,15);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (93,3500,109,17);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (94,4000,61,20);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (95,3100,27,2);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (96,3200,26,5);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (97,3300,47,14);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (98,3300,48,16);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (99,2400,18,18);
insert into tblJobSeeker (pm_seq,js_salary,area_seq,rc_seq) values (100,2600,217,20);

commit;