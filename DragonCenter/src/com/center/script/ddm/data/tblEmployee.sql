drop table tblEmployee;

create table tblEmployee
(
    pm_seq number,
    rc_seq number not null,
    employee_hiredate date default sysdate not null,
    employee_insurance varchar2(1) not null,
    employee_salary number not null
);

alter table tblEmployee
    add constraint tblep_employee_seq_pk primary key(pm_seq);
alter table tblEmployee
    add constraint tblep_pm_seq_fk foreign key(pm_seq) references tblPostManagement(pm_seq);
    
    
alter table tblEmployee
    add constraint tblep_rc_seq_fk foreign key(rc_seq) references tblRecruitCategory(rc_seq);

alter table tblEmployee
    add constraint tblep_employee_insurance_ck check (employee_insurance in ('Y','N'));







insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (6,7,to_date('19/06/16','rr/mm/dd'),'Y',2700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (7,20,to_date('19/06/18','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (8,6,to_date('19/06/19','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (9,10,to_date('19/07/01','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (10,18,to_date('18/07/05','rr/mm/dd'),'N',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (16,18,to_date('20/03/24','rr/mm/dd'),'Y',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (17,5,to_date('19/01/26','rr/mm/dd'),'Y',2500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (18,4,to_date('18/03/27','rr/mm/dd'),'Y',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (19,7,to_date('18/01/26','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (20,20,to_date('19/03/26','rr/mm/dd'),'Y',3700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (21,17,to_date('18/02/24','rr/mm/dd'),'Y',2900);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (22,15,to_date('19/02/18','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (23,8,to_date('18/01/01','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (24,2,to_date('19/01/15','rr/mm/dd'),'Y',3700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (25,7,to_date('20/01/13','rr/mm/dd'),'N',3700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (26,9,to_date('19/02/27','rr/mm/dd'),'Y',2900);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (27,20,to_date('19/02/16','rr/mm/dd'),'Y',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (28,19,to_date('19/01/13','rr/mm/dd'),'Y',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (29,19,to_date('18/03/17','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (30,3,to_date('18/02/02','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (31,11,to_date('20/02/20','rr/mm/dd'),'Y',3800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (32,19,to_date('19/02/19','rr/mm/dd'),'Y',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (33,2,to_date('18/01/11','rr/mm/dd'),'N',2500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (34,17,to_date('20/03/17','rr/mm/dd'),'N',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (35,4,to_date('19/01/22','rr/mm/dd'),'Y',2500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (36,2,to_date('18/02/19','rr/mm/dd'),'Y',2900);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (37,9,to_date('20/01/04','rr/mm/dd'),'Y',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (38,20,to_date('20/02/07','rr/mm/dd'),'N',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (39,14,to_date('19/03/18','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (40,4,to_date('19/03/09','rr/mm/dd'),'N',3000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (41,17,to_date('20/03/10','rr/mm/dd'),'N',3200);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (42,11,to_date('19/01/11','rr/mm/dd'),'Y',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (43,20,to_date('18/02/06','rr/mm/dd'),'Y',3200);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (44,17,to_date('19/03/07','rr/mm/dd'),'Y',2700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (45,10,to_date('20/02/07','rr/mm/dd'),'N',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (46,4,to_date('18/01/22','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (47,6,to_date('19/02/14','rr/mm/dd'),'N',3200);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (48,3,to_date('19/03/01','rr/mm/dd'),'N',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (49,16,to_date('20/01/25','rr/mm/dd'),'N',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (50,18,to_date('18/02/16','rr/mm/dd'),'N',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (51,7,to_date('19/03/06','rr/mm/dd'),'Y',2700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (52,6,to_date('19/03/15','rr/mm/dd'),'N',3200);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (53,18,to_date('19/02/08','rr/mm/dd'),'Y',3700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (54,18,to_date('18/02/15','rr/mm/dd'),'Y',3000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (55,19,to_date('18/03/14','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (56,14,to_date('19/01/15','rr/mm/dd'),'Y',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (57,6,to_date('20/03/26','rr/mm/dd'),'N',3200);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (58,10,to_date('20/03/17','rr/mm/dd'),'Y',3000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (59,5,to_date('18/01/22','rr/mm/dd'),'Y',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (60,11,to_date('19/03/06','rr/mm/dd'),'N',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (61,20,to_date('20/02/05','rr/mm/dd'),'Y',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (62,11,to_date('18/03/14','rr/mm/dd'),'Y',3800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (63,16,to_date('19/03/13','rr/mm/dd'),'N',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (64,1,to_date('19/03/23','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (65,14,to_date('18/02/07','rr/mm/dd'),'N',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (66,14,to_date('20/03/03','rr/mm/dd'),'N',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (67,1,to_date('18/01/17','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (68,13,to_date('18/03/02','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (69,11,to_date('20/01/08','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (70,5,to_date('20/02/11','rr/mm/dd'),'N',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (71,17,to_date('20/01/08','rr/mm/dd'),'N',2900);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (72,11,to_date('19/01/04','rr/mm/dd'),'Y',3700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (73,10,to_date('19/02/25','rr/mm/dd'),'N',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (74,4,to_date('19/03/19','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (75,1,to_date('20/03/09','rr/mm/dd'),'N',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (76,11,to_date('19/02/11','rr/mm/dd'),'Y',2700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (77,19,to_date('20/01/23','rr/mm/dd'),'Y',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (78,13,to_date('20/02/21','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (79,1,to_date('19/02/17','rr/mm/dd'),'N',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (80,3,to_date('18/01/21','rr/mm/dd'),'N',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (81,1,to_date('19/02/12','rr/mm/dd'),'Y',3000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (82,15,to_date('20/03/03','rr/mm/dd'),'N',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (83,15,to_date('18/01/02','rr/mm/dd'),'Y',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (84,14,to_date('19/03/21','rr/mm/dd'),'Y',3000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (85,8,to_date('20/02/26','rr/mm/dd'),'Y',3200);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (86,12,to_date('20/03/02','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (87,9,to_date('18/01/10','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (88,11,to_date('18/01/06','rr/mm/dd'),'N',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (89,1,to_date('18/03/19','rr/mm/dd'),'N',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (90,6,to_date('19/03/22','rr/mm/dd'),'N',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (91,16,to_date('19/02/25','rr/mm/dd'),'Y',2700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (92,19,to_date('20/02/21','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (93,18,to_date('18/02/10','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (94,16,to_date('18/02/26','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (95,19,to_date('19/02/14','rr/mm/dd'),'Y',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (96,16,to_date('19/01/11','rr/mm/dd'),'N',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (97,14,to_date('19/03/07','rr/mm/dd'),'N',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (98,10,to_date('20/02/22','rr/mm/dd'),'Y',3000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (99,18,to_date('18/03/15','rr/mm/dd'),'N',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (100,1,to_date('19/02/02','rr/mm/dd'),'Y',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (101,6,to_date('19/02/17','rr/mm/dd'),'Y',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (102,7,to_date('19/01/07','rr/mm/dd'),'Y',2700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (103,9,to_date('19/03/17','rr/mm/dd'),'Y',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (104,1,to_date('18/01/02','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (105,14,to_date('19/02/13','rr/mm/dd'),'N',3700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (106,14,to_date('18/02/23','rr/mm/dd'),'N',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (107,10,to_date('18/01/21','rr/mm/dd'),'N',3200);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (108,14,to_date('18/03/19','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (109,6,to_date('20/03/05','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (110,12,to_date('18/02/24','rr/mm/dd'),'Y',2700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (111,17,to_date('19/03/27','rr/mm/dd'),'N',3700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (112,5,to_date('18/03/14','rr/mm/dd'),'Y',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (113,8,to_date('18/02/23','rr/mm/dd'),'N',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (114,20,to_date('18/03/03','rr/mm/dd'),'Y',2700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (115,1,to_date('19/01/16','rr/mm/dd'),'N',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (116,17,to_date('19/03/18','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (117,17,to_date('20/01/02','rr/mm/dd'),'Y',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (118,13,to_date('20/03/05','rr/mm/dd'),'Y',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (119,14,to_date('20/03/17','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (120,10,to_date('20/02/17','rr/mm/dd'),'N',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (121,8,to_date('20/03/12','rr/mm/dd'),'N',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (122,20,to_date('20/01/06','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (123,16,to_date('19/03/12','rr/mm/dd'),'N',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (124,6,to_date('19/01/14','rr/mm/dd'),'Y',2900);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (125,6,to_date('19/01/10','rr/mm/dd'),'Y',3700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (126,16,to_date('18/02/05','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (127,12,to_date('19/02/25','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (128,1,to_date('18/01/11','rr/mm/dd'),'Y',3000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (129,15,to_date('19/03/21','rr/mm/dd'),'N',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (130,14,to_date('20/02/17','rr/mm/dd'),'N',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (131,5,to_date('18/02/14','rr/mm/dd'),'Y',3800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (132,15,to_date('19/02/11','rr/mm/dd'),'Y',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (133,8,to_date('19/03/18','rr/mm/dd'),'N',2700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (134,16,to_date('20/02/04','rr/mm/dd'),'N',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (135,18,to_date('20/02/09','rr/mm/dd'),'Y',2900);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (136,17,to_date('19/01/09','rr/mm/dd'),'N',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (137,20,to_date('18/03/22','rr/mm/dd'),'Y',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (138,8,to_date('19/03/18','rr/mm/dd'),'N',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (139,9,to_date('19/02/08','rr/mm/dd'),'Y',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (140,4,to_date('19/02/25','rr/mm/dd'),'Y',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (141,2,to_date('19/03/25','rr/mm/dd'),'Y',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (142,10,to_date('19/01/08','rr/mm/dd'),'Y',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (143,1,to_date('18/03/27','rr/mm/dd'),'Y',3200);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (144,18,to_date('20/02/04','rr/mm/dd'),'Y',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (145,12,to_date('18/03/06','rr/mm/dd'),'Y',3800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (146,8,to_date('20/01/10','rr/mm/dd'),'N',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (147,5,to_date('20/01/25','rr/mm/dd'),'Y',2500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (148,13,to_date('18/03/28','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (149,7,to_date('19/02/12','rr/mm/dd'),'Y',2900);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (150,18,to_date('20/03/16','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (151,17,to_date('20/03/04','rr/mm/dd'),'N',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (152,6,to_date('18/03/23','rr/mm/dd'),'N',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (153,18,to_date('20/03/15','rr/mm/dd'),'N',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (154,10,to_date('20/02/25','rr/mm/dd'),'N',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (155,12,to_date('19/03/15','rr/mm/dd'),'Y',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (156,13,to_date('19/01/27','rr/mm/dd'),'N',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (157,10,to_date('19/01/15','rr/mm/dd'),'N',3700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (158,8,to_date('18/01/13','rr/mm/dd'),'N',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (159,10,to_date('19/01/17','rr/mm/dd'),'N',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (160,15,to_date('18/01/03','rr/mm/dd'),'N',3800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (161,5,to_date('20/02/19','rr/mm/dd'),'Y',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (162,20,to_date('18/03/26','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (163,8,to_date('20/01/27','rr/mm/dd'),'Y',3700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (164,17,to_date('18/01/14','rr/mm/dd'),'N',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (165,12,to_date('19/01/06','rr/mm/dd'),'Y',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (166,19,to_date('19/03/26','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (167,9,to_date('19/02/05','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (168,4,to_date('19/01/15','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (169,9,to_date('19/01/14','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (170,2,to_date('20/03/26','rr/mm/dd'),'N',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (171,3,to_date('20/03/20','rr/mm/dd'),'N',2700);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (172,1,to_date('19/01/14','rr/mm/dd'),'Y',3100);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (173,8,to_date('18/02/25','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (174,7,to_date('18/03/03','rr/mm/dd'),'Y',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (175,11,to_date('19/01/19','rr/mm/dd'),'Y',3800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (176,3,to_date('20/01/16','rr/mm/dd'),'Y',2500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (177,12,to_date('20/01/05','rr/mm/dd'),'N',3600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (178,5,to_date('19/03/06','rr/mm/dd'),'N',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (179,10,to_date('19/01/01','rr/mm/dd'),'N',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (180,19,to_date('20/01/17','rr/mm/dd'),'Y',3800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (181,5,to_date('20/02/15','rr/mm/dd'),'Y',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (182,5,to_date('18/01/28','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (183,11,to_date('18/02/17','rr/mm/dd'),'N',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (184,20,to_date('20/03/07','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (185,19,to_date('19/03/13','rr/mm/dd'),'Y',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (186,11,to_date('18/02/12','rr/mm/dd'),'N',2600);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (187,7,to_date('20/02/21','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (188,20,to_date('20/01/08','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (189,6,to_date('18/03/20','rr/mm/dd'),'N',3500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (190,5,to_date('20/02/23','rr/mm/dd'),'N',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (191,7,to_date('18/03/08','rr/mm/dd'),'N',3400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (192,18,to_date('18/03/18','rr/mm/dd'),'N',4000);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (193,11,to_date('20/02/10','rr/mm/dd'),'Y',2400);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (194,17,to_date('18/03/09','rr/mm/dd'),'Y',2800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (195,3,to_date('20/03/20','rr/mm/dd'),'N',3800);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (196,18,to_date('18/02/23','rr/mm/dd'),'Y',2500);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (197,20,to_date('18/01/22','rr/mm/dd'),'N',3200);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (198,3,to_date('18/01/13','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (199,14,to_date('18/01/26','rr/mm/dd'),'Y',3300);
insert into tblEmployee (pm_seq,rc_seq,employee_hiredate,employee_insurance,employee_salary) values (200,12,to_date('18/02/26','rr/mm/dd'),'N',2700);

commit;