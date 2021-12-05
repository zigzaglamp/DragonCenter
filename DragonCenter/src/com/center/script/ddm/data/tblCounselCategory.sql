-- 상담 분류
create table tblCounselCategory (
	cc_seq NUMBER,
	cc_content varchar2(300) NOT NULL
);

create sequence cc_seq;

ALTER TABLE tblCounselCategory
	ADD CONSTRAINT tblcc_cc_seq_pk PRIMARY KEY (cc_seq);


-- 실제, 더미
insert into tblCounselCategory(cc_seq, cc_content) values(cc_seq.nextVal, '공통');
insert into tblCounselCategory(cc_seq, cc_content) values(cc_seq.nextVal, '국기직종훈련');
insert into tblCounselCategory(cc_seq, cc_content) values(cc_seq.nextVal, '사업주위탁');
insert into tblCounselCategory(cc_seq, cc_content) values(cc_seq.nextVal, '직무적성');
insert into tblCounselCategory(cc_seq, cc_content) values(cc_seq.nextVal, '심리상담');

commit;


