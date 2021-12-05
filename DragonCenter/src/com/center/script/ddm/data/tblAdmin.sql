-- 관리자
create table tblAdmin (
	admin_seq NUMBER,
	admin_name varchar2(20) NOT NULL,
	admin_ssn varchar2(14) NOT NULL,
	admin_tel varchar2(20) NOT NULL
);

create sequence admin_seq;

alter table tblAdmin
    add constraint tbladmin_admin_seq_pk primary key(admin_seq);

alter table tblAdmin
    add constraint tbladmin_admin_ssn_uq UNIQUE (admin_seq);


-- 실제, 더미
INSERT INTO tblAdmin(admin_seq, admin_name, admin_ssn, admin_tel) VALUES (1, '김첨지', '751023-1930294', '010-4373-8503');
INSERT INTO tblAdmin(admin_seq, admin_name, admin_ssn, admin_tel) VALUES (2, '유병학', '851103-1655846', '010-9209-7394');
INSERT INTO tblAdmin(admin_seq, admin_name, admin_ssn, admin_tel) VALUES (3, '김동경', '830527-2132444', '010-5284-6127');
INSERT INTO tblAdmin(admin_seq, admin_name, admin_ssn, admin_tel) VALUES (4, '최석', '900613-1748924','010-1073-7190');