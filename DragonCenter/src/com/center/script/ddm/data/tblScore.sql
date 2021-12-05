create table tblScore (
	score_seq NUMBER,
	enrollment_seq NUMBER NOT NULL,
	os_seq NUMBER NOT NULL,
	sp_seq NUMBER NOT NULL,
	score_exam NUMBER NOT NULL ,
	score_skill NUMBER NOT NULL ,
	Score_attendance NUMBER NOT NULL 
);

create sequence score_seq;

alter table tblScore
    add constraint tbls_score_seq_pk primary key(score_seq);
    
alter table tblScore
    add constraint tbls_enrollment_seq_fk foreign key(enrollment_seq) references tblEnrollment(enrollment_seq);
    
alter table tblScore
    add constraint tbls_os_seq_fk foreign key(os_seq) references tblOpenSubject(os_seq);
    
alter table tblScore
    add constraint tbls_sp_seq_fk foreign key(sp_seq) references tblScorePercent(sp_seq);

alter table tblScore
    add constraint tbls_score_exam_ck check (score_exam BETWEEN 0 AND 50);

alter table tblScore
    add constraint tbls_score_skill_ck check (score_skill BETWEEN 0 AND 50);

alter table tblScore
    add constraint tbls_Score_attendance_ck check (Score_attendance BETWEEN 0 AND 50);




insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 1, 1, 2, 7, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 1, 1, 42, 29, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 1, 1, 31, 0, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 1, 1, 37, 22, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 1, 1, 38, 20, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 1, 1, 33, 15, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 1, 1, 8, 44, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 1, 1, 45, 48, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 1, 1, 8, 2, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 1, 1, 7, 30, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 1, 1, 29, 38, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 1, 1, 39, 25, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 1, 1, 34, 45, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 1, 1, 30, 21, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 1, 1, 11, 9, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 1, 1, 14, 7, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 1, 1, 32, 28, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 1, 1, 41, 15, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 1, 1, 27, 13, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 1, 1, 43, 11, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 1, 1, 47, 16, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 1, 1, 37, 38, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 1, 1, 19, 13, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 1, 1, 40, 42, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 1, 1, 30, 42, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 1, 1, 38, 41, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 1, 1, 1, 22, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 1, 1, 6, 25, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 1, 1, 3, 0, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 1, 1, 43, 36, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 2, 2, 29, 19, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 2, 2, 25, 36, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 2, 2, 15, 34, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 2, 2, 15, 37, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 2, 2, 37, 5, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 2, 2, 22, 49, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 2, 2, 41, 29, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 2, 2, 3, 44, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 2, 2, 18, 31, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 2, 2, 48, 17, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 2, 2, 6, 36, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 2, 2, 40, 2, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 2, 2, 43, 24, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 2, 2, 9, 0, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 2, 2, 43, 24, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 2, 2, 26, 35, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 2, 2, 12, 19, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 2, 2, 15, 13, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 2, 2, 1, 47, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 2, 2, 31, 15, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 2, 2, 20, 3, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 2, 2, 6, 33, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 2, 2, 6, 10, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 2, 2, 36, 46, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 2, 2, 6, 10, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 2, 2, 3, 43, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 2, 2, 48, 10, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 2, 2, 14, 27, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 2, 2, 11, 10, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 2, 2, 23, 48, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 3, 3, 18, 46, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 3, 3, 28, 5, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 3, 3, 5, 18, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 3, 3, 40, 15, 6);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 3, 3, 12, 33, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 3, 3, 25, 20, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 3, 3, 45, 2, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 3, 3, 47, 9, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 3, 3, 2, 29, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 3, 3, 7, 27, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 3, 3, 30, 36, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 3, 3, 3, 23, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 3, 3, 38, 11, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 3, 3, 8, 43, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 3, 3, 20, 32, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 3, 3, 6, 29, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 3, 3, 21, 7, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 3, 3, 25, 36, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 3, 3, 23, 19, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 3, 3, 40, 18, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 3, 3, 26, 18, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 3, 3, 1, 45, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 3, 3, 7, 3, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 3, 3, 12, 32, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 3, 3, 0, 20, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 3, 3, 45, 45, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 3, 3, 2, 31, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 3, 3, 3, 20, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 3, 3, 0, 42, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 3, 3, 35, 0, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 4, 4, 20, 47, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 4, 4, 29, 26, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 4, 4, 6, 15, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 4, 4, 46, 9, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 4, 4, 3, 22, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 4, 4, 6, 5, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 4, 4, 19, 34, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 4, 4, 39, 17, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 4, 4, 31, 10, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 4, 4, 41, 4, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 4, 4, 22, 16, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 4, 4, 15, 49, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 4, 4, 17, 23, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 4, 4, 13, 14, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 4, 4, 16, 27, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 4, 4, 28, 26, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 4, 4, 4, 45, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 4, 4, 3, 29, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 4, 4, 12, 28, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 4, 4, 30, 31, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 4, 4, 29, 20, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 4, 4, 48, 24, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 4, 4, 2, 1, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 4, 4, 26, 13, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 4, 4, 43, 21, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 4, 4, 23, 19, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 4, 4, 49, 12, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 4, 4, 27, 5, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 4, 4, 2, 41, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 4, 4, 29, 20, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 5, 5, 11, 48, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 5, 5, 20, 44, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 5, 5, 33, 3, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 5, 5, 43, 19, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 5, 5, 28, 16, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 5, 5, 44, 3, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 5, 5, 2, 19, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 5, 5, 8, 5, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 5, 5, 9, 5, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 5, 5, 42, 40, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 5, 5, 42, 42, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 5, 5, 18, 8, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 5, 5, 2, 28, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 5, 5, 26, 30, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 5, 5, 3, 26, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 5, 5, 24, 43, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 5, 5, 49, 17, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 5, 5, 7, 22, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 5, 5, 7, 22, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 5, 5, 1, 45, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 5, 5, 12, 34, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 5, 5, 38, 40, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 5, 5, 49, 6, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 5, 5, 15, 30, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 5, 5, 18, 16, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 5, 5, 17, 35, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 5, 5, 19, 10, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 5, 5, 20, 39, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 5, 5, 42, 32, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 5, 5, 33, 22, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 6, 6, 21, 10, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 6, 6, 46, 11, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 6, 6, 26, 27, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 6, 6, 18, 43, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 6, 6, 21, 22, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 6, 6, 43, 45, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 6, 6, 10, 29, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 6, 6, 46, 47, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 6, 6, 5, 12, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 6, 6, 29, 13, 6);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 6, 6, 47, 0, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 6, 6, 4, 29, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 6, 6, 23, 13, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 6, 6, 43, 41, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 6, 6, 14, 21, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 6, 6, 36, 20, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 6, 6, 25, 19, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 6, 6, 25, 22, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 6, 6, 2, 23, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 6, 6, 0, 15, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 6, 6, 41, 45, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 6, 6, 2, 18, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 6, 6, 47, 11, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 6, 6, 45, 13, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 6, 6, 21, 13, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 6, 6, 29, 16, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 6, 6, 22, 13, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 6, 6, 10, 5, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 6, 6, 11, 22, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 6, 6, 13, 15, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 7, 7, 38, 25, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 7, 7, 7, 48, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 7, 7, 2, 43, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 7, 7, 19, 18, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 7, 7, 3, 7, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 7, 7, 39, 47, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 7, 7, 15, 28, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 7, 7, 22, 19, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 7, 7, 41, 44, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 7, 7, 35, 37, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 7, 7, 43, 45, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 7, 7, 5, 5, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 7, 7, 5, 47, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 7, 7, 6, 12, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 7, 7, 13, 46, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 7, 7, 27, 5, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 7, 7, 47, 42, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 7, 7, 9, 42, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 7, 7, 13, 14, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 7, 7, 47, 13, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 7, 7, 26, 19, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 7, 7, 40, 5, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 7, 7, 31, 32, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 7, 7, 15, 42, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 7, 7, 8, 17, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 7, 7, 4, 8, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 7, 7, 36, 19, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 7, 7, 26, 14, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 7, 7, 21, 5, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 7, 7, 30, 47, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 8, 8, 14, 23, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 8, 8, 10, 45, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 8, 8, 3, 21, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 8, 8, 26, 9, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 8, 8, 13, 22, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 8, 8, 39, 47, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 8, 8, 21, 8, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 8, 8, 12, 40, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 8, 8, 37, 35, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 8, 8, 39, 42, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 8, 8, 36, 32, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 8, 8, 48, 28, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 8, 8, 3, 4, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 8, 8, 15, 17, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 8, 8, 28, 31, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 8, 8, 33, 40, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 8, 8, 9, 33, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 8, 8, 10, 41, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 8, 8, 12, 15, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 8, 8, 8, 17, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 8, 8, 33, 40, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 8, 8, 33, 2, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 8, 8, 48, 7, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 8, 8, 7, 5, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 8, 8, 2, 4, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 8, 8, 8, 44, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 8, 8, 45, 17, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 8, 8, 17, 32, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 8, 8, 9, 44, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 8, 8, 3, 4, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 9, 9, 34, 15, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 9, 9, 12, 14, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 9, 9, 25, 25, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 9, 9, 26, 3, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 9, 9, 30, 34, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 9, 9, 37, 24, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 9, 9, 27, 13, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 9, 9, 30, 43, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 9, 9, 49, 12, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 9, 9, 48, 33, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 9, 9, 10, 40, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 9, 9, 30, 32, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 9, 9, 17, 7, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 9, 9, 41, 46, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 9, 9, 13, 18, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 9, 9, 2, 1, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 9, 9, 20, 0, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 9, 9, 29, 9, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 9, 9, 25, 34, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 9, 9, 27, 35, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 9, 9, 14, 8, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 9, 9, 9, 33, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 9, 9, 32, 21, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 9, 9, 12, 19, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 9, 9, 16, 21, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 9, 9, 30, 9, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 9, 9, 44, 35, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 9, 9, 1, 32, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 9, 9, 19, 1, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 9, 9, 10, 3, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 10, 10, 34, 10, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 10, 10, 32, 20, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 10, 10, 5, 29, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 10, 10, 37, 20, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 10, 10, 4, 16, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 10, 10, 46, 11, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 10, 10, 8, 18, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 10, 10, 20, 37, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 10, 10, 49, 22, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 10, 10, 4, 36, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 10, 10, 31, 12, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 10, 10, 9, 48, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 10, 10, 25, 1, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 10, 10, 46, 23, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 10, 10, 47, 39, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 10, 10, 0, 41, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 10, 10, 42, 35, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 10, 10, 36, 30, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 10, 10, 3, 26, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 10, 10, 17, 31, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 10, 10, 36, 12, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 10, 10, 29, 5, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 10, 10, 22, 32, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 10, 10, 2, 40, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 10, 10, 17, 40, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 10, 10, 44, 41, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 10, 10, 11, 44, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 10, 10, 44, 21, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 10, 10, 26, 41, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 10, 10, 22, 42, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 11, 11, 39, 47, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 11, 11, 45, 9, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 11, 11, 22, 22, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 11, 11, 44, 19, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 11, 11, 37, 23, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 11, 11, 36, 1, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 11, 11, 22, 25, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 11, 11, 8, 23, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 11, 11, 10, 42, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 11, 11, 41, 14, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 11, 11, 25, 41, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 11, 11, 27, 31, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 11, 11, 22, 38, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 11, 11, 2, 43, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 11, 11, 20, 8, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 11, 11, 42, 21, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 11, 11, 41, 18, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 11, 11, 41, 12, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 11, 11, 15, 1, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 11, 11, 22, 26, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 11, 11, 7, 32, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 11, 11, 22, 24, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 11, 11, 15, 47, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 11, 11, 11, 30, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 11, 11, 28, 33, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 11, 11, 19, 46, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 11, 11, 17, 23, 6);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 11, 11, 20, 26, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 11, 11, 32, 38, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 11, 11, 7, 47, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 12, 12, 3, 46, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 12, 12, 37, 9, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 12, 12, 27, 48, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 12, 12, 28, 47, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 12, 12, 44, 0, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 12, 12, 23, 13, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 12, 12, 29, 42, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 12, 12, 41, 36, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 12, 12, 10, 26, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 12, 12, 21, 21, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 12, 12, 45, 24, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 12, 12, 6, 0, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 12, 12, 36, 23, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 12, 12, 20, 13, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 12, 12, 6, 46, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 12, 12, 36, 23, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 12, 12, 20, 38, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 12, 12, 31, 35, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 12, 12, 22, 4, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 12, 12, 38, 46, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 12, 12, 42, 2, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 12, 12, 22, 1, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 12, 12, 11, 30, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 12, 12, 14, 6, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 12, 12, 49, 3, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 12, 12, 11, 4, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 12, 12, 33, 21, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 12, 12, 20, 36, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 12, 12, 39, 41, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 12, 12, 33, 48, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 13, 13, 29, 40, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 13, 13, 36, 48, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 13, 13, 36, 7, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 13, 13, 40, 49, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 13, 13, 28, 16, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 13, 13, 49, 9, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 13, 13, 37, 40, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 13, 13, 12, 8, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 13, 13, 32, 44, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 13, 13, 13, 26, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 13, 13, 23, 25, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 13, 13, 6, 18, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 13, 13, 16, 24, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 13, 13, 32, 41, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 13, 13, 31, 46, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 13, 13, 41, 33, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 13, 13, 11, 13, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 13, 13, 22, 32, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 13, 13, 42, 45, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 13, 13, 6, 8, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 13, 13, 5, 24, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 13, 13, 41, 19, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 13, 13, 40, 29, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 13, 13, 4, 47, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 13, 13, 18, 30, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 13, 13, 14, 26, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 13, 13, 0, 22, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 13, 13, 14, 5, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 13, 13, 38, 38, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 13, 13, 46, 1, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 14, 14, 9, 23, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 14, 14, 47, 10, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 14, 14, 49, 6, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 14, 14, 49, 2, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 14, 14, 33, 44, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 14, 14, 43, 42, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 14, 14, 11, 27, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 14, 14, 3, 39, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 14, 14, 22, 17, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 14, 14, 29, 19, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 14, 14, 15, 13, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 14, 14, 27, 42, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 14, 14, 14, 38, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 14, 14, 12, 34, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 14, 14, 43, 9, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 14, 14, 24, 15, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 14, 14, 9, 24, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 14, 14, 1, 25, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 14, 14, 37, 49, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 14, 14, 13, 44, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 14, 14, 21, 47, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 14, 14, 13, 14, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 14, 14, 34, 26, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 14, 14, 7, 2, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 14, 14, 2, 36, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 14, 14, 26, 12, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 14, 14, 5, 46, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 14, 14, 15, 12, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 14, 14, 43, 2, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 14, 14, 35, 15, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 15, 15, 43, 8, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 15, 15, 27, 23, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 15, 15, 44, 16, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 15, 15, 1, 44, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 15, 15, 7, 41, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 15, 15, 26, 43, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 15, 15, 41, 1, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 15, 15, 38, 48, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 15, 15, 44, 5, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 15, 15, 15, 3, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 15, 15, 35, 15, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 15, 15, 12, 24, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 15, 15, 40, 27, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 15, 15, 19, 25, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 15, 15, 33, 7, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 15, 15, 43, 25, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 15, 15, 8, 25, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 15, 15, 14, 36, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 15, 15, 13, 44, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 15, 15, 36, 15, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 15, 15, 6, 18, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 15, 15, 31, 33, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 15, 15, 22, 36, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 15, 15, 3, 21, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 15, 15, 30, 20, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 15, 15, 12, 36, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 15, 15, 48, 35, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 15, 15, 15, 11, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 15, 15, 37, 26, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 15, 15, 2, 41, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 16, 16, 13, 26, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 16, 16, 36, 12, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 16, 16, 29, 26, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 16, 16, 5, 30, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 16, 16, 27, 34, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 16, 16, 0, 10, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 16, 16, 6, 24, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 16, 16, 25, 42, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 16, 16, 13, 48, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 16, 16, 28, 13, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 16, 16, 22, 34, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 16, 16, 37, 17, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 16, 16, 23, 18, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 16, 16, 39, 13, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 16, 16, 12, 37, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 16, 16, 0, 12, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 16, 16, 9, 5, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 16, 16, 48, 26, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 16, 16, 42, 24, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 16, 16, 31, 48, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 16, 16, 43, 46, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 16, 16, 39, 23, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 16, 16, 16, 36, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 16, 16, 27, 31, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 16, 16, 3, 46, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 16, 16, 27, 16, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 16, 16, 18, 49, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 16, 16, 16, 21, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 16, 16, 49, 32, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 16, 16, 28, 23, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 17, 17, 31, 39, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 17, 17, 0, 3, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 17, 17, 6, 20, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 17, 17, 31, 19, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 17, 17, 25, 42, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 17, 17, 27, 9, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 17, 17, 3, 1, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 17, 17, 37, 6, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 17, 17, 35, 48, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 17, 17, 15, 10, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 17, 17, 28, 11, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 17, 17, 11, 10, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 17, 17, 24, 20, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 17, 17, 34, 41, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 17, 17, 47, 7, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 17, 17, 10, 16, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 17, 17, 26, 21, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 17, 17, 23, 17, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 17, 17, 41, 19, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 17, 17, 18, 15, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 17, 17, 47, 20, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 17, 17, 2, 12, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 17, 17, 20, 37, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 17, 17, 15, 39, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 17, 17, 8, 1, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 17, 17, 40, 29, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 17, 17, 1, 28, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 17, 17, 11, 37, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 17, 17, 40, 49, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 17, 17, 14, 16, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 18, 18, 23, 37, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 18, 18, 4, 34, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 18, 18, 49, 31, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 18, 18, 28, 5, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 18, 18, 7, 38, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 18, 18, 43, 18, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 18, 18, 6, 26, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 18, 18, 41, 32, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 18, 18, 28, 11, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 18, 18, 25, 10, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 18, 18, 0, 27, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 18, 18, 21, 29, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 18, 18, 29, 9, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 18, 18, 22, 15, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 18, 18, 5, 36, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 18, 18, 25, 32, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 18, 18, 4, 22, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 18, 18, 0, 18, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 18, 18, 34, 33, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 18, 18, 25, 23, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 18, 18, 42, 37, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 18, 18, 17, 26, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 18, 18, 15, 43, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 18, 18, 48, 26, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 18, 18, 35, 2, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 18, 18, 27, 9, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 18, 18, 9, 22, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 18, 18, 22, 5, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 18, 18, 11, 0, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 18, 18, 28, 22, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 19, 19, 1, 10, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 19, 19, 8, 46, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 19, 19, 30, 33, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 19, 19, 2, 3, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 19, 19, 41, 36, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 19, 19, 14, 10, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 19, 19, 17, 15, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 19, 19, 22, 33, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 19, 19, 6, 13, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 19, 19, 11, 49, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 19, 19, 25, 0, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 19, 19, 32, 5, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 19, 19, 12, 11, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 19, 19, 36, 11, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 19, 19, 18, 42, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 19, 19, 0, 30, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 19, 19, 36, 42, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 19, 19, 31, 17, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 19, 19, 2, 0, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 19, 19, 43, 21, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 19, 19, 25, 30, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 19, 19, 19, 35, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 19, 19, 13, 2, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 19, 19, 26, 39, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 19, 19, 15, 18, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 19, 19, 17, 28, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 19, 19, 28, 38, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 19, 19, 36, 22, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 19, 19, 11, 25, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 19, 19, 30, 11, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 20, 20, 12, 48, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 20, 20, 5, 23, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 20, 20, 24, 4, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 20, 20, 46, 30, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 20, 20, 28, 8, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 20, 20, 19, 41, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 20, 20, 12, 3, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 20, 20, 20, 49, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 20, 20, 3, 21, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 20, 20, 34, 8, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 20, 20, 18, 5, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 20, 20, 35, 38, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 20, 20, 37, 30, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 20, 20, 35, 43, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 20, 20, 42, 20, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 20, 20, 33, 0, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 20, 20, 24, 27, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 20, 20, 13, 38, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 20, 20, 25, 26, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 20, 20, 46, 13, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 20, 20, 14, 46, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 20, 20, 37, 35, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 20, 20, 18, 2, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 20, 20, 11, 8, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 20, 20, 14, 27, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 20, 20, 26, 19, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 20, 20, 44, 37, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 20, 20, 44, 5, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 20, 20, 14, 37, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 20, 20, 15, 28, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 21, 21, 41, 8, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 21, 21, 29, 12, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 21, 21, 6, 45, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 21, 21, 9, 21, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 21, 21, 14, 13, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 21, 21, 7, 11, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 21, 21, 13, 4, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 21, 21, 23, 38, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 21, 21, 30, 34, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 21, 21, 48, 6, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 21, 21, 0, 28, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 21, 21, 46, 16, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 21, 21, 43, 40, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 21, 21, 37, 24, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 21, 21, 42, 42, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 21, 21, 35, 4, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 21, 21, 24, 34, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 21, 21, 3, 29, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 21, 21, 14, 40, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 21, 21, 42, 33, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 21, 21, 11, 35, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 21, 21, 5, 34, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 21, 21, 25, 43, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 21, 21, 29, 10, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 21, 21, 12, 15, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 21, 21, 10, 24, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 21, 21, 0, 20, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 21, 21, 6, 20, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 21, 21, 38, 18, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 21, 21, 20, 5, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 22, 22, 44, 1, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 22, 22, 18, 9, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 22, 22, 22, 24, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 22, 22, 46, 6, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 22, 22, 26, 37, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 22, 22, 33, 24, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 22, 22, 32, 40, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 22, 22, 26, 19, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 22, 22, 41, 14, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 22, 22, 21, 20, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 22, 22, 30, 43, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 22, 22, 25, 48, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 22, 22, 40, 6, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 22, 22, 47, 19, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 22, 22, 23, 14, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 22, 22, 20, 45, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 22, 22, 18, 12, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 22, 22, 46, 25, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 22, 22, 41, 49, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 22, 22, 48, 27, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 22, 22, 44, 36, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 22, 22, 28, 17, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 22, 22, 33, 39, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 22, 22, 37, 31, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 22, 22, 3, 21, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 22, 22, 9, 2, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 22, 22, 8, 27, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 22, 22, 39, 38, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 22, 22, 32, 29, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 22, 22, 17, 22, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 23, 23, 44, 8, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 23, 23, 19, 34, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 23, 23, 39, 2, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 23, 23, 23, 8, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 23, 23, 9, 49, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 23, 23, 9, 37, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 23, 23, 11, 24, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 23, 23, 9, 4, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 23, 23, 34, 13, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 23, 23, 49, 14, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 23, 23, 39, 14, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 23, 23, 31, 8, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 23, 23, 0, 7, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 23, 23, 37, 28, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 23, 23, 22, 3, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 23, 23, 10, 49, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 23, 23, 44, 38, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 23, 23, 20, 3, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 23, 23, 11, 26, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 23, 23, 21, 44, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 23, 23, 6, 42, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 23, 23, 40, 0, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 23, 23, 43, 24, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 23, 23, 37, 0, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 23, 23, 46, 48, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 23, 23, 9, 24, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 23, 23, 32, 20, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 23, 23, 23, 30, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 23, 23, 34, 0, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 23, 23, 0, 28, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 24, 24, 28, 41, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 24, 24, 15, 41, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 24, 24, 11, 10, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 24, 24, 48, 40, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 24, 24, 46, 6, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 24, 24, 8, 29, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 24, 24, 34, 7, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 24, 24, 23, 37, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 24, 24, 13, 30, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 24, 24, 14, 14, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 24, 24, 27, 20, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 24, 24, 27, 24, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 24, 24, 12, 38, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 24, 24, 32, 48, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 24, 24, 38, 5, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 24, 24, 45, 47, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 24, 24, 21, 22, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 24, 24, 26, 41, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 24, 24, 13, 8, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 24, 24, 35, 10, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 24, 24, 3, 13, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 24, 24, 11, 49, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 24, 24, 22, 1, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 24, 24, 34, 30, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 24, 24, 36, 41, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 24, 24, 30, 22, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 24, 24, 3, 42, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 24, 24, 44, 20, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 24, 24, 10, 36, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 24, 24, 25, 22, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 25, 25, 29, 38, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 25, 25, 11, 27, 6);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 25, 25, 1, 42, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 25, 25, 25, 43, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 25, 25, 36, 10, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 25, 25, 43, 31, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 25, 25, 37, 30, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 25, 25, 44, 48, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 25, 25, 12, 0, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 25, 25, 37, 20, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 25, 25, 16, 9, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 25, 25, 19, 8, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 25, 25, 34, 36, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 25, 25, 11, 26, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 25, 25, 18, 18, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 25, 25, 42, 42, 24);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 25, 25, 33, 5, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 25, 25, 36, 36, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 25, 25, 33, 25, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 25, 25, 4, 35, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 25, 25, 34, 14, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 25, 25, 12, 8, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 25, 25, 14, 43, 31);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 25, 25, 37, 44, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 25, 25, 30, 22, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 25, 25, 14, 18, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 25, 25, 8, 19, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 25, 25, 5, 22, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 25, 25, 2, 18, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 25, 25, 0, 11, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 26, 26, 41, 25, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 26, 26, 35, 42, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 26, 26, 16, 30, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 26, 26, 20, 41, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 26, 26, 46, 10, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 26, 26, 28, 39, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 26, 26, 23, 32, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 26, 26, 48, 34, 19);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 26, 26, 41, 30, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 26, 26, 33, 29, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 26, 26, 6, 14, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 26, 26, 35, 43, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 26, 26, 22, 38, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 26, 26, 8, 30, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 26, 26, 19, 29, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 26, 26, 12, 47, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 26, 26, 8, 8, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 26, 26, 9, 1, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 26, 26, 2, 6, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 26, 26, 24, 32, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 26, 26, 11, 28, 28);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 26, 26, 28, 49, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 26, 26, 1, 30, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 26, 26, 47, 36, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 26, 26, 49, 42, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 26, 26, 14, 27, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 26, 26, 6, 4, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 26, 26, 23, 4, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 26, 26, 48, 30, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 26, 26, 40, 46, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 27, 27, 42, 46, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 27, 27, 0, 37, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 27, 27, 21, 9, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 27, 27, 2, 9, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 27, 27, 3, 7, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 27, 27, 33, 8, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 27, 27, 35, 37, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 27, 27, 39, 15, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 27, 27, 15, 44, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 27, 27, 39, 41, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 27, 27, 15, 28, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 27, 27, 20, 19, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 27, 27, 17, 26, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 27, 27, 33, 28, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 27, 27, 27, 43, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 27, 27, 4, 8, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 27, 27, 27, 21, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 27, 27, 14, 21, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 27, 27, 25, 35, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 27, 27, 7, 1, 6);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 27, 27, 26, 15, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 27, 27, 16, 37, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 27, 27, 26, 44, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 27, 27, 19, 39, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 27, 27, 45, 34, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 27, 27, 42, 34, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 27, 27, 12, 6, 6);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 27, 27, 36, 35, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 27, 27, 19, 31, 47);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 27, 27, 29, 0, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 28, 28, 40, 30, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 28, 28, 3, 36, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 28, 28, 2, 34, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 28, 28, 5, 36, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 28, 28, 5, 5, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 28, 28, 40, 13, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 28, 28, 9, 14, 17);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 28, 28, 22, 36, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 28, 28, 33, 42, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 28, 28, 12, 4, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 28, 28, 27, 25, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 28, 28, 18, 46, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 28, 28, 7, 35, 4);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 28, 28, 18, 26, 48);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 28, 28, 22, 26, 38);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 28, 28, 10, 47, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 28, 28, 45, 22, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 28, 28, 22, 20, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 28, 28, 39, 18, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 28, 28, 22, 16, 20);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 28, 28, 14, 41, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 28, 28, 1, 23, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 28, 28, 18, 14, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 28, 28, 37, 35, 36);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 28, 28, 35, 37, 3);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 28, 28, 34, 3, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 28, 28, 21, 33, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 28, 28, 41, 33, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 28, 28, 38, 0, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 28, 28, 40, 34, 13);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 29, 29, 20, 37, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 29, 29, 48, 24, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 29, 29, 27, 23, 18);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 29, 29, 34, 5, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 29, 29, 20, 15, 0);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 29, 29, 9, 42, 10);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 29, 29, 11, 18, 8);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 29, 29, 23, 36, 32);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 29, 29, 23, 1, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 29, 29, 38, 43, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 29, 29, 32, 33, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 29, 29, 10, 36, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 29, 29, 37, 14, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 29, 29, 23, 9, 27);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 29, 29, 48, 43, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 29, 29, 39, 48, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 29, 29, 39, 6, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 29, 29, 8, 17, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 29, 29, 5, 4, 29);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 29, 29, 5, 10, 33);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 29, 29, 30, 38, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 29, 29, 43, 27, 45);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 29, 29, 1, 26, 26);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 29, 29, 22, 24, 16);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 29, 29, 46, 8, 14);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 29, 29, 35, 5, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 29, 29, 25, 5, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 29, 29, 45, 26, 37);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 29, 29, 20, 13, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 29, 29, 2, 19, 30);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 1, 30, 30, 32, 36, 15);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 2, 30, 30, 17, 4, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 3, 30, 30, 20, 8, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 4, 30, 30, 11, 15, 42);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 5, 30, 30, 40, 31, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 6, 30, 30, 27, 19, 21);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 7, 30, 30, 31, 31, 23);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 8, 30, 30, 27, 16, 46);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 9, 30, 30, 21, 31, 25);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 10, 30, 30, 36, 12, 44);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 11, 30, 30, 39, 1, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 12, 30, 30, 19, 24, 2);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 13, 30, 30, 36, 38, 41);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 14, 30, 30, 24, 4, 40);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 15, 30, 30, 14, 40, 49);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 16, 30, 30, 38, 23, 39);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 17, 30, 30, 43, 36, 34);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 18, 30, 30, 46, 34, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 19, 30, 30, 36, 9, 11);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 20, 30, 30, 45, 18, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 21, 30, 30, 5, 30, 7);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 22, 30, 30, 18, 31, 1);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 23, 30, 30, 5, 20, 22);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 24, 30, 30, 11, 10, 5);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 25, 30, 30, 27, 3, 35);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 26, 30, 30, 5, 45, 43);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 27, 30, 30, 17, 18, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 28, 30, 30, 21, 15, 9);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 29, 30, 30, 36, 0, 12);
insert into tblScore (score_seq, enrollment_seq, os_seq, sp_seq, score_exam, score_skill, score_attendance)
    values (score_seq.nextVal, 30, 30, 30, 11, 40, 24);

commit;